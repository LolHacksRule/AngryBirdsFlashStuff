package com.angrybirds.league
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.data.DataModelFriends;
   import com.angrybirds.data.LeagueScoreVO;
   import com.angrybirds.friendsbar.FriendsBar;
   import com.angrybirds.friendsbar.data.CachedFacebookFriends;
   import com.angrybirds.league.events.LeagueEvent;
   import com.angrybirds.server.LeagueLoader;
   import com.angrybirds.tournament.TournamentModel;
   import data.user.FacebookUserProgress;
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   
   public class LeagueModel extends EventDispatcher
   {
      
      private static var sInstance:LeagueModel;
      
      private static const LOADER_REPORT_PROFILE:String = "Profile";
      
      private static const LOADER_REPORT_STANDINGS:String = "Standings";
      
      private static const LOADER_REPORT_ALL_UNCONCLUDED:String = "AllUnconcluded";
      
      private static const LOADER_REPORT_ALL_PREVIOUS:String = "AllPrevious";
      
      public static const CACHE_PLAYER_LEAGUE_STANDINGS:String = "CachePlayerLeagueStandings";
      
      private static var sHaveLeagueLevelScoresBeenReset:Boolean = false;
      
      public static var LEAGUE_PLAYERS_NEEDED_FOR_CACHING:int = 2;
       
      
      private var mLeagueDefinition:LeagueDefinition;
      
      private var mCurrentStandingsObject:Object;
      
      private var mCurrentStandingsScoreVO:Array;
      
      private var mLeaguePlayerProfile:Object;
      
      private var mDataUnconcludedLeague:Object;
      
      private var mPreviousResult:Object;
      
      private var mLeagueLoader:LeagueLoader;
      
      private var mActive:Boolean = false;
      
      private var mLoaderReports:Object;
      
      private var mCacheTimeStamps:Dictionary;
      
      private var mCachedLeagueStandingsData:Object;
      
      public function LeagueModel()
      {
         this.mCacheTimeStamps = new Dictionary();
         super();
         this.mLeagueLoader = new LeagueLoader();
         this.mLeagueLoader.addEventListener(LeagueEvent.ALL_REWARDS_CLAIMED,this.onRewardsClaimed);
         this.mLoaderReports = new Object();
         this.mCacheTimeStamps[CACHE_PLAYER_LEAGUE_STANDINGS] = TournamentModel.CACHE_VALIDITY_SECONDS;
      }
      
      public static function get instance() : LeagueModel
      {
         if(sInstance == null)
         {
            sInstance = new LeagueModel();
         }
         return sInstance;
      }
      
      public function set active(value:Boolean) : void
      {
         this.mActive = value;
      }
      
      protected function onUnconcludedAllLoaded(e:LeagueEvent) : void
      {
         this.mDataUnconcludedLeague = e.data;
         if(e.data.l || e.data.t)
         {
            this.mPreviousResult = e.data;
         }
         dispatchEvent(new LeagueEvent(LeagueEvent.UNCONCLUDED_ALL_UPDATED));
         this.mLeagueLoader.removeEventListener(LeagueEvent.ALL_UNCONCLUDED_LOADED,this.onUnconcludedAllLoaded);
         this.reportCompletedLoading(LOADER_REPORT_ALL_UNCONCLUDED);
      }
      
      protected function onAllPreviousResultLoaded(e:LeagueEvent) : void
      {
         this.mLeagueLoader.removeEventListener(LeagueEvent.ALL_PREVIOUS_RESULT_LOADED,this.onAllPreviousResultLoaded);
         if(!this.mDataUnconcludedLeague || !this.mPreviousResult)
         {
            this.mPreviousResult = e.data;
         }
         this.reportCompletedLoading(LOADER_REPORT_ALL_PREVIOUS);
      }
      
      public function loadData() : void
      {
         this.mLoaderReports = new Object();
         this.mLeagueLoader.addEventListener(LeagueEvent.LEAGUE_PROFILE_LOADED,this.onLeagueProfileLoaded);
         this.mLoaderReports[LOADER_REPORT_PROFILE] = false;
         this.mLeagueLoader.loadLeagueProfile();
         this.mLeagueLoader.addEventListener(LeagueEvent.LEAGUE_CURRENT_STANDINGS_LOADED,this.onCurrentLeagueStandingsLoaded);
         this.mLoaderReports[LOADER_REPORT_STANDINGS] = false;
         this.mLeagueLoader.loadLeagueStandings();
         if(AngryBirdsFacebook.smLoadLeaguePreviousData)
         {
            this.mLeagueLoader.addEventListener(LeagueEvent.ALL_UNCONCLUDED_LOADED,this.onUnconcludedAllLoaded);
            this.mLoaderReports[LOADER_REPORT_ALL_UNCONCLUDED] = false;
            this.mLeagueLoader.loadAllUnconcluded();
            this.mLeagueLoader.addEventListener(LeagueEvent.ALL_PREVIOUS_RESULT_LOADED,this.onAllPreviousResultLoaded);
            this.mLoaderReports[LOADER_REPORT_ALL_PREVIOUS] = false;
            this.mLeagueLoader.loadAllPreviousResults();
            AngryBirdsFacebook.smLoadLeaguePreviousData = false;
         }
      }
      
      private function reportCompletedLoading(type:String) : void
      {
         var report:Boolean = false;
         if(!this.mLoaderReports)
         {
            return;
         }
         this.mLoaderReports[type] = true;
         for each(report in this.mLoaderReports)
         {
            if(!report)
            {
               return;
            }
         }
         dispatchEvent(new LeagueEvent(LeagueEvent.ALL_DATA_LOADED));
      }
      
      public function claimRewards() : void
      {
         this.mLeagueLoader.claimAllRewards();
      }
      
      public function claimLeagueReward() : void
      {
         this.mLeagueLoader.claimLeagueReward();
      }
      
      public function clearPreviousLeagueData() : void
      {
         this.mCurrentStandingsObject = null;
         this.mCachedLeagueStandingsData = null;
         this.mCurrentStandingsScoreVO = null;
         this.clearUnconcludedData();
         this.mPreviousResult = null;
      }
      
      public function clearUnconcludedData() : void
      {
         this.mDataUnconcludedLeague = null;
      }
      
      protected function onCurrentLeagueStandingsLoaded(e:LeagueEvent) : void
      {
         var levelId:String = null;
         this.mLeagueLoader.removeEventListener(LeagueEvent.LEAGUE_CURRENT_STANDINGS_LOADED,this.onCurrentLeagueStandingsLoaded);
         if(e.data.li && e.data.p)
         {
            this.mCachedLeagueStandingsData = e.data;
            this.mLeagueDefinition = LeagueType.setLeagueDataFromServer(e.data.li);
            this.mCurrentStandingsObject = e.data.p;
            if(!sHaveLeagueLevelScoresBeenReset && this.countPlayersWithScores() >= LEAGUE_PLAYERS_NEEDED_FOR_CACHING)
            {
               sHaveLeagueLevelScoresBeenReset = true;
               for each(levelId in TournamentModel.instance.levelIDs)
               {
                  if(this.mLeagueLoader && this.mLeagueLoader.getCachedScoresForLevel(levelId))
                  {
                     this.mLeagueLoader.getCachedScoresForLevel(levelId).cacheTime = 0;
                  }
               }
            }
            this.createLeagueScoreVOs();
         }
         else
         {
            this.mLeagueDefinition = null;
            this.mCurrentStandingsObject = null;
            this.mCurrentStandingsScoreVO = null;
            this.mCachedLeagueStandingsData = null;
         }
         this.reportCompletedLoading(LOADER_REPORT_STANDINGS);
      }
      
      public function countPlayersWithScores() : int
      {
         var o:Object = null;
         if(!this.mCurrentStandingsObject)
         {
            return 0;
         }
         var count:int = 0;
         for(var i:int = 0; i < this.mCurrentStandingsObject.length; i++)
         {
            o = this.mCurrentStandingsObject[i];
            if(o.ts > 0 && o.u && o.n)
            {
               count++;
            }
         }
         return count;
      }
      
      protected function onLeagueProfileLoaded(e:LeagueEvent) : void
      {
         this.mLeagueLoader.removeEventListener(LeagueEvent.LEAGUE_PROFILE_LOADED,this.onLeagueProfileLoaded);
         this.mLeaguePlayerProfile = e.data;
         this.reportCompletedLoading(LOADER_REPORT_PROFILE);
      }
      
      protected function onRewardsClaimed(event:LeagueEvent) : void
      {
         dispatchEvent(new LeagueEvent(LeagueEvent.ALL_REWARDS_CLAIMED,event.data));
      }
      
      public function getCurrentStandingsScoreVO() : Array
      {
         return this.mCurrentStandingsScoreVO;
      }
      
      public function updatePlayerData(nickname:String, profilePicture:String) : void
      {
         var obj:Object = null;
         var userVO:LeagueScoreVO = null;
         if(!nickname || nickname == "")
         {
            nickname = (AngryBirdsBase.singleton.dataModel.userProgress as FacebookUserProgress).userName;
         }
         if(this.unconcludedResult)
         {
            for each(obj in this.mDataUnconcludedLeague.l.p)
            {
               if(obj.me)
               {
                  obj.ni = nickname;
                  obj.ir = profilePicture;
                  break;
               }
            }
         }
         if(this.previousResult && this.previousResult.l)
         {
            for each(obj in this.mPreviousResult.l.p)
            {
               if(obj.me)
               {
                  obj.ni = nickname;
                  obj.ir = profilePicture;
               }
            }
         }
         if(this.mCurrentStandingsObject)
         {
            for each(obj in this.mCurrentStandingsObject)
            {
               if(obj.me)
               {
                  obj.ni = nickname;
                  obj.ir = profilePicture;
                  break;
               }
            }
         }
         if(this.mCurrentStandingsScoreVO)
         {
            for each(userVO in this.mCurrentStandingsScoreVO)
            {
               if(userVO.isMe)
               {
                  userVO.nickName = nickname;
                  userVO.profilePicture = profilePicture;
               }
            }
         }
         dispatchEvent(new LeagueEvent(LeagueEvent.PLAYER_PROFILE_DATA_UPDATED));
      }
      
      public function setToLeagueScore(score:Number) : void
      {
         var obj:Object = null;
         if(this.mCurrentStandingsObject)
         {
            for each(obj in this.mCurrentStandingsObject)
            {
               if(obj.me)
               {
                  obj.ts += score;
                  this.createLeagueScoreVOs();
                  break;
               }
            }
         }
      }
      
      private function createLeagueScoreVOs() : void
      {
         var player:Object = null;
         this.mCurrentStandingsScoreVO = new Array();
         var rankCounter:int = 1;
         for each(player in this.mCurrentStandingsObject)
         {
            player.rank = rankCounter++;
            this.mCurrentStandingsScoreVO.push(LeagueScoreVO.fromServerObject(player));
         }
         (AngryBirdsEngine.smApp as AngryBirdsFacebook).setFriendsBarData(FriendsBar.SCORE_LIST_TYPE_LEAGUE,this.mCurrentStandingsScoreVO);
      }
      
      public function currentLeague() : LeagueDefinition
      {
         return this.mLeagueDefinition;
      }
      
      public function getThePlayerRank() : int
      {
         var userVO:LeagueScoreVO = null;
         if(this.mCurrentStandingsScoreVO)
         {
            for each(userVO in this.mCurrentStandingsScoreVO)
            {
               if(userVO.isMe)
               {
                  return userVO.rank;
               }
            }
         }
         return -1;
      }
      
      public function getScoresForLevel(levelId:String, cache:Boolean = false) : CachedFacebookFriends
      {
         return this.mLeagueLoader.getScoresForLevel(levelId,cache);
      }
      
      public function get active() : Boolean
      {
         return this.mActive;
      }
      
      public function isLeagueScoreLoading() : Boolean
      {
         return this.mLeagueLoader.isLoading();
      }
      
      public function getCachedLeagueStandingsData() : Object
      {
         return this.mCachedLeagueStandingsData;
      }
      
      public function getPlayerCurrentLeagueStanding() : Object
      {
         var obj:Object = null;
         if(this.mCurrentStandingsObject)
         {
            for each(obj in this.mCurrentStandingsObject)
            {
               if(obj.me)
               {
                  return obj;
               }
            }
         }
         return null;
      }
      
      public function getPlayerProfileForLeague() : Object
      {
         return this.mLeaguePlayerProfile;
      }
      
      public function get unconcludedResult() : Object
      {
         if(this.mDataUnconcludedLeague && (this.mDataUnconcludedLeague.t || this.mDataUnconcludedLeague.l && this.mDataUnconcludedLeague.l.p))
         {
            return this.mDataUnconcludedLeague;
         }
         return null;
      }
      
      public function get previousResult() : Object
      {
         if(this.mPreviousResult && (this.mPreviousResult.t || this.mPreviousResult.l))
         {
            return this.mPreviousResult;
         }
         return null;
      }
      
      public function get isRewardClaimable() : Boolean
      {
         return this.unconcludedResult;
      }
      
      public function get bronzeTrophies() : int
      {
         if(this.unconcludedResult && this.unconcludedResult.t)
         {
            return this.unconcludedResult.t.bronzeTrophies;
         }
         if(this.previousResult && this.previousResult.t)
         {
            return this.previousResult.t.bronzeTrophies;
         }
         return 0;
      }
      
      public function get silverTrophies() : int
      {
         if(this.unconcludedResult && this.unconcludedResult.t)
         {
            return this.unconcludedResult.t.silverTrophies;
         }
         if(this.previousResult && this.previousResult.t)
         {
            return this.previousResult.t.silverTrophies;
         }
         return 0;
      }
      
      public function get goldTrophies() : int
      {
         if(this.unconcludedResult && this.unconcludedResult.t)
         {
            return this.unconcludedResult.t.goldTrophies;
         }
         if(this.previousResult && this.previousResult.t)
         {
            return this.previousResult.t.goldTrophies;
         }
         return 0;
      }
      
      public function cacheTime(cacheType:String) : Number
      {
         return this.mCacheTimeStamps[cacheType];
      }
      
      public function useCache(cacheType:String) : Boolean
      {
         var now:Number = (AngryBirdsBase.singleton.dataModel as DataModelFriends).serverSynchronizedTime.synchronizedTimeStamp;
         var seconds:int = (now - this.mCacheTimeStamps[cacheType]) / 1000;
         seconds = Math.max(0,seconds);
         if(seconds < TournamentModel.CACHE_VALIDITY_SECONDS)
         {
            return true;
         }
         this.mCacheTimeStamps[cacheType] = now;
         return false;
      }
   }
}
