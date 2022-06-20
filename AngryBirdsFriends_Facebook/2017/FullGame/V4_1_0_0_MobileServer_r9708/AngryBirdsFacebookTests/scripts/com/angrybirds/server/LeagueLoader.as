package com.angrybirds.server
{
   import com.angrybirds.data.DataModelFriends;
   import com.angrybirds.friendsbar.data.CachedFacebookFriends;
   import com.angrybirds.league.LeagueModel;
   import com.angrybirds.league.events.LeagueEvent;
   import com.angrybirds.popups.ErrorPopup;
   import com.angrybirds.popups.PopupLayerIndexFacebook;
   import com.angrybirds.popups.WarningPopup;
   import com.angrybirds.server.interfaces.ILeagueLoader;
   import com.angrybirds.tournament.TournamentModel;
   import com.rovio.server.ABFLoader;
   import com.rovio.server.RetryingURLLoaderErrorEvent;
   import com.rovio.server.URLRequestFactory;
   import com.rovio.ui.popup.IPopup;
   import com.rovio.ui.popup.PopupPriorityType;
   import data.user.FacebookUserProgress;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.utils.Timer;
   
   public class LeagueLoader extends EventDispatcher implements ILeagueLoader
   {
      
      private static const CURRENT_LEAGUE_RELOAD_TIME:int = 30000;
      
      public static const PATH_LEAGUE:String = "/league";
      
      private static const PATH_CURRENT_LEAGUE_STANDINGS:String = "/currentStandings";
      
      private static const PATH_CURRENT_LEVEL_STANDINGS:String = "/currentLevelStandings";
      
      private static const PATH_UNCONCLUDED_LEAGUE:String = "/unconcludedLeague";
      
      private static const PATH_CLAIM_LEAGUE_REWARD:String = "/claimLeagueReward";
      
      private static const PATH_LEAGUE_PREVIOUS_RESULT:String = "/previousLeagueResults";
      
      private static const PATH_LEAGUE_GET_PROFILE:String = "/getProfile";
      
      public static const PATH_LEAGUE_SAVE_PROFILE:String = "/saveProfile";
      
      private static var smStandingsLastLoadingTime:Number = 0;
       
      
      private var mCurrentLeagueReloadTimer:Timer;
      
      private var mLeagueLoader:ABFLoader;
      
      private var mLeagueProfileLoader:ABFLoader;
      
      private var mUnconcludedLeagueLoader:ABFLoader;
      
      private var mClaimLeagueRewardLoader:ABFLoader;
      
      private var mPreviousLeagueResultLoader:ABFLoader;
      
      private const PATH_ALL_UNCONCLUDED:String = "/getAllUnconcludedResults";
      
      private const PATH_ALL_CLAIM_REWARDS:String = "/claimAllRewards";
      
      private const PATH_ALL_PREVIOUS_RESULT:String = "/getAllPreviousResults";
      
      protected var mLevelsScores:Object;
      
      private var sHaveLeagueLevelScoresBeenReset:Boolean;
      
      public function LeagueLoader(target:IEventDispatcher = null)
      {
         this.mLevelsScores = {};
         super(target);
      }
      
      public function loadLeagueStandings(useCache:Boolean = false) : void
      {
         if(useCache && this.useCacheForStandingsLoading() && LeagueModel.instance.getCachedLeagueStandingsData())
         {
            this.onLoadCurrentLeague(new LeagueEvent(LeagueEvent.LEAGUE_CURRENT_STANDINGS_LOADED,LeagueModel.instance.getCachedLeagueStandingsData()));
            return;
         }
         this.mLeagueLoader = new ABFLoader();
         this.mLeagueLoader.dataFormat = URLLoaderDataFormat.TEXT;
         this.mLeagueLoader.addEventListener(Event.COMPLETE,this.onLoadCurrentLeague);
         this.mLeagueLoader.addEventListener(IOErrorEvent.IO_ERROR,this.onLoaderError);
         this.mLeagueLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onLoaderError);
         this.mLeagueLoader.addEventListener(RetryingURLLoaderErrorEvent.THIRD_PARTY_COOKIES_DISABLED,this.onLoaderError);
         var urlRequest:URLRequest = URLRequestFactory.getNonCachingURLRequest(AngryBirdsBase.SERVER_ROOT + PATH_LEAGUE + PATH_CURRENT_LEAGUE_STANDINGS);
         urlRequest.method = URLRequestMethod.GET;
         urlRequest.contentType = "application/json";
         this.mLeagueLoader.load(urlRequest);
      }
      
      public function loadLeagueProfile() : void
      {
         this.mLeagueProfileLoader = new ABFLoader();
         this.mLeagueProfileLoader.dataFormat = URLLoaderDataFormat.TEXT;
         this.mLeagueProfileLoader.addEventListener(Event.COMPLETE,this.onLoadLeagueProfile);
         this.mLeagueProfileLoader.addEventListener(IOErrorEvent.IO_ERROR,this.onLoaderError);
         this.mLeagueProfileLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onLoaderError);
         this.mLeagueProfileLoader.addEventListener(RetryingURLLoaderErrorEvent.THIRD_PARTY_COOKIES_DISABLED,this.onLoaderError);
         var urlRequest:URLRequest = URLRequestFactory.getNonCachingURLRequest(AngryBirdsBase.SERVER_ROOT + PATH_LEAGUE + PATH_LEAGUE_GET_PROFILE);
         urlRequest.method = URLRequestMethod.GET;
         urlRequest.contentType = "application/json";
         this.mLeagueProfileLoader.load(urlRequest);
      }
      
      public function claimLeagueReward() : void
      {
         var urlRequest:URLRequest = URLRequestFactory.getNonCachingURLRequest(AngryBirdsBase.SERVER_ROOT + PATH_LEAGUE + PATH_CLAIM_LEAGUE_REWARD);
         urlRequest.method = URLRequestMethod.GET;
         urlRequest.contentType = "application/json";
         this.mClaimLeagueRewardLoader = new ABFLoader();
         this.mClaimLeagueRewardLoader.addEventListener(Event.COMPLETE,this.onClaimLeagueReward);
         this.mClaimLeagueRewardLoader.addEventListener(IOErrorEvent.IO_ERROR,this.onClaimError);
         this.mClaimLeagueRewardLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onClaimError);
         this.mClaimLeagueRewardLoader.dataFormat = URLLoaderDataFormat.TEXT;
         this.mClaimLeagueRewardLoader.load(urlRequest);
      }
      
      public function loadAllUnconcluded() : void
      {
         var urlRequestLeague:URLRequest = URLRequestFactory.getNonCachingURLRequest(AngryBirdsBase.SERVER_ROOT + this.PATH_ALL_UNCONCLUDED);
         urlRequestLeague.method = URLRequestMethod.GET;
         urlRequestLeague.contentType = "application/json";
         this.mUnconcludedLeagueLoader = new ABFLoader();
         this.mUnconcludedLeagueLoader.addEventListener(Event.COMPLETE,this.onAllUnconcludedLoaded);
         this.mUnconcludedLeagueLoader.addEventListener(IOErrorEvent.IO_ERROR,this.onLoaderError);
         this.mUnconcludedLeagueLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onLoaderError);
         this.mUnconcludedLeagueLoader.addEventListener(RetryingURLLoaderErrorEvent.THIRD_PARTY_COOKIES_DISABLED,this.onLoaderError);
         this.mUnconcludedLeagueLoader.dataFormat = URLLoaderDataFormat.TEXT;
         this.mUnconcludedLeagueLoader.load(urlRequestLeague);
      }
      
      public function claimAllRewards() : void
      {
         var urlRequest:URLRequest = URLRequestFactory.getNonCachingURLRequest(AngryBirdsBase.SERVER_ROOT + this.PATH_ALL_CLAIM_REWARDS);
         urlRequest.method = URLRequestMethod.GET;
         urlRequest.contentType = "application/json";
         this.mClaimLeagueRewardLoader = new ABFLoader();
         this.mClaimLeagueRewardLoader.addEventListener(Event.COMPLETE,this.onClaimAllRewards);
         this.mClaimLeagueRewardLoader.addEventListener(IOErrorEvent.IO_ERROR,this.onClaimError);
         this.mClaimLeagueRewardLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onClaimError);
         this.mClaimLeagueRewardLoader.dataFormat = URLLoaderDataFormat.TEXT;
         this.mClaimLeagueRewardLoader.load(urlRequest);
      }
      
      public function loadAllPreviousResults() : void
      {
         var urlRequestLeague:URLRequest = URLRequestFactory.getNonCachingURLRequest(AngryBirdsBase.SERVER_ROOT + this.PATH_ALL_PREVIOUS_RESULT);
         urlRequestLeague.method = URLRequestMethod.GET;
         urlRequestLeague.contentType = "application/json";
         this.mPreviousLeagueResultLoader = new ABFLoader();
         this.mPreviousLeagueResultLoader.addEventListener(Event.COMPLETE,this.onAllPreviousResultLoaded);
         this.mPreviousLeagueResultLoader.addEventListener(IOErrorEvent.IO_ERROR,this.onLoaderError);
         this.mPreviousLeagueResultLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onLoaderError);
         this.mPreviousLeagueResultLoader.addEventListener(RetryingURLLoaderErrorEvent.THIRD_PARTY_COOKIES_DISABLED,this.onLoaderError);
         this.mPreviousLeagueResultLoader.dataFormat = URLLoaderDataFormat.TEXT;
         this.mPreviousLeagueResultLoader.load(urlRequestLeague);
      }
      
      protected function onAllUnconcludedLoaded(e:Event) : void
      {
         this.mUnconcludedLeagueLoader.removeEventListener(Event.COMPLETE,this.onAllUnconcludedLoaded);
         this.mUnconcludedLeagueLoader.removeEventListener(IOErrorEvent.IO_ERROR,this.onLoaderError);
         this.mUnconcludedLeagueLoader.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onLoaderError);
         this.mUnconcludedLeagueLoader.removeEventListener(RetryingURLLoaderErrorEvent.THIRD_PARTY_COOKIES_DISABLED,this.onLoaderError);
         dispatchEvent(new LeagueEvent(LeagueEvent.ALL_UNCONCLUDED_LOADED,e.currentTarget.data));
      }
      
      protected function onClaimAllRewards(e:Event) : void
      {
         if(this.mClaimLeagueRewardLoader)
         {
            this.mClaimLeagueRewardLoader.removeEventListener(Event.COMPLETE,this.onClaimAllRewards);
            this.mClaimLeagueRewardLoader.removeEventListener(IOErrorEvent.IO_ERROR,this.onClaimError);
            this.mClaimLeagueRewardLoader.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onClaimError);
            this.mClaimLeagueRewardLoader = null;
         }
         dispatchEvent(new LeagueEvent(LeagueEvent.ALL_REWARDS_CLAIMED,e.currentTarget.data));
      }
      
      protected function onAllPreviousResultLoaded(e:Event) : void
      {
         var data:Object = null;
         if(this.mPreviousLeagueResultLoader)
         {
            this.mPreviousLeagueResultLoader.removeEventListener(Event.COMPLETE,this.onAllPreviousResultLoaded);
            this.mPreviousLeagueResultLoader.removeEventListener(IOErrorEvent.IO_ERROR,this.onClaimError);
            this.mPreviousLeagueResultLoader.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onClaimError);
            this.mPreviousLeagueResultLoader = null;
            if(e && e.currentTarget)
            {
               data = e.currentTarget.data;
            }
            dispatchEvent(new LeagueEvent(LeagueEvent.ALL_PREVIOUS_RESULT_LOADED,data));
         }
      }
      
      private function onLoadCurrentLeague(e:Event) : void
      {
         var data:Object = null;
         if(this.mLeagueLoader)
         {
            this.mLeagueLoader.removeEventListener(Event.COMPLETE,this.onLoadCurrentLeague);
            this.mLeagueLoader.removeEventListener(IOErrorEvent.IO_ERROR,this.onLoaderError);
            this.mLeagueLoader.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onLoaderError);
            this.mLeagueLoader.removeEventListener(RetryingURLLoaderErrorEvent.THIRD_PARTY_COOKIES_DISABLED,this.onLoaderError);
            this.mLeagueLoader = null;
         }
         if(e && e.currentTarget)
         {
            data = e.currentTarget.data;
         }
         else if(e && LeagueEvent(e) && LeagueEvent(e).data)
         {
            data = LeagueEvent(e).data;
         }
         dispatchEvent(new LeagueEvent(LeagueEvent.LEAGUE_CURRENT_STANDINGS_LOADED,data));
      }
      
      private function onLeagueRefreshTimerCompleted(e:TimerEvent) : void
      {
         this.mCurrentLeagueReloadTimer.stop();
         this.mCurrentLeagueReloadTimer.removeEventListener(TimerEvent.TIMER_COMPLETE,this.onLeagueRefreshTimerCompleted);
         this.mCurrentLeagueReloadTimer = null;
         this.loadLeagueStandings();
      }
      
      private function onLoadLeagueProfile(e:Event) : void
      {
         var data:Object = null;
         if(this.mLeagueProfileLoader)
         {
            this.mLeagueProfileLoader.removeEventListener(Event.COMPLETE,this.onLoadLeagueProfile);
            this.mLeagueProfileLoader.removeEventListener(IOErrorEvent.IO_ERROR,this.onLoaderError);
            this.mLeagueProfileLoader.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onLoaderError);
            this.mLeagueProfileLoader.removeEventListener(RetryingURLLoaderErrorEvent.THIRD_PARTY_COOKIES_DISABLED,this.onLoaderError);
            this.mLeagueProfileLoader = null;
         }
         if(e && e.currentTarget)
         {
            data = e.currentTarget.data;
         }
         dispatchEvent(new LeagueEvent(LeagueEvent.LEAGUE_PROFILE_LOADED,data));
      }
      
      protected function onClaimLeagueReward(event:Event) : void
      {
         this.mClaimLeagueRewardLoader.removeEventListener(Event.COMPLETE,this.onClaimLeagueReward);
         this.mClaimLeagueRewardLoader.removeEventListener(IOErrorEvent.IO_ERROR,this.onClaimError);
         this.mClaimLeagueRewardLoader.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onClaimError);
         this.mClaimLeagueRewardLoader = null;
         dispatchEvent(new LeagueEvent(LeagueEvent.LEAGUE_REWARD_CLAIMED,event.currentTarget.data));
      }
      
      private function onLoaderError(event:Event) : void
      {
         var popup:IPopup = null;
         if(this.mLeagueLoader)
         {
            this.mLeagueLoader.removeEventListener(Event.COMPLETE,this.onLoadCurrentLeague);
            this.mLeagueLoader.removeEventListener(IOErrorEvent.IO_ERROR,this.onLoaderError);
            this.mLeagueLoader.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onLoaderError);
            this.mLeagueLoader.removeEventListener(RetryingURLLoaderErrorEvent.THIRD_PARTY_COOKIES_DISABLED,this.onLoaderError);
            this.mLeagueLoader = null;
         }
         if(this.mCurrentLeagueReloadTimer)
         {
            this.mCurrentLeagueReloadTimer.stop();
            this.mCurrentLeagueReloadTimer.removeEventListener(TimerEvent.TIMER_COMPLETE,this.onLeagueRefreshTimerCompleted);
            this.mCurrentLeagueReloadTimer = null;
         }
         if(event.type == RetryingURLLoaderErrorEvent.THIRD_PARTY_COOKIES_DISABLED)
         {
            popup = new ErrorPopup(PopupLayerIndexFacebook.ERROR,PopupPriorityType.TOP,ErrorPopup.ERROR_THIRD_PARTY_COOKIES_DISABLED);
         }
         else
         {
            popup = new WarningPopup(PopupLayerIndexFacebook.ALERT,PopupPriorityType.TOP);
         }
         AngryBirdsBase.singleton.popupManager.openPopup(popup);
      }
      
      private function onClaimError(event:Event) : void
      {
         var popup:IPopup = null;
         if(this.mClaimLeagueRewardLoader)
         {
            this.mClaimLeagueRewardLoader.removeEventListener(Event.COMPLETE,this.onClaimAllRewards);
            this.mClaimLeagueRewardLoader.removeEventListener(IOErrorEvent.IO_ERROR,this.onClaimError);
            this.mClaimLeagueRewardLoader.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onClaimError);
            this.mClaimLeagueRewardLoader = null;
         }
         if(event.type == RetryingURLLoaderErrorEvent.THIRD_PARTY_COOKIES_DISABLED)
         {
            popup = new ErrorPopup(PopupLayerIndexFacebook.ERROR,PopupPriorityType.TOP,ErrorPopup.ERROR_THIRD_PARTY_COOKIES_DISABLED);
         }
         else
         {
            popup = new WarningPopup(PopupLayerIndexFacebook.ALERT,PopupPriorityType.TOP);
         }
         AngryBirdsBase.singleton.popupManager.openPopup(popup);
      }
      
      public function getScoresForLevel(levelId:String, useCache:Boolean = true) : CachedFacebookFriends
      {
         var o:Object = null;
         if(useCache && this.mLevelsScores[levelId] && CachedFacebookFriends(this.mLevelsScores[levelId]).cacheValidForLevel() && this.mLevelsScores[levelId].data.length > 0)
         {
            if(LeagueModel.instance.countPlayersWithScores() >= LeagueModel.LEAGUE_PLAYERS_NEEDED_FOR_CACHING)
            {
               this.clearCacheForLeagueLevelScores();
               this.mLevelsScores[levelId].data.sortOn("levelScore",Array.DESCENDING | Array.NUMERIC);
            }
            for each(o in this.mLevelsScores[levelId].data)
            {
               if(o.targetOffset)
               {
                  o.targetOffset = 0;
               }
               if(o.offset)
               {
                  o.offset = 0;
               }
            }
            return this.mLevelsScores[levelId];
         }
         return this.mLevelsScores[levelId] = new CachedFacebookFriends((AngryBirdsBase.singleton.dataModel.userProgress as FacebookUserProgress).userID,(AngryBirdsBase.singleton.dataModel.userProgress as FacebookUserProgress).userName,AngryBirdsBase.SERVER_ROOT + PATH_LEAGUE + PATH_CURRENT_LEVEL_STANDINGS + "?level=" + levelId,false,null,true,false,true);
      }
      
      private function clearCacheForLeagueLevelScores() : void
      {
         var levelId:String = null;
         if(!this.sHaveLeagueLevelScoresBeenReset)
         {
            this.sHaveLeagueLevelScoresBeenReset = true;
            for each(levelId in TournamentModel.instance.levelIDs)
            {
               if(this.getCachedScoresForLevel(levelId))
               {
                  this.getCachedScoresForLevel(levelId).cacheTime = 0;
               }
            }
         }
      }
      
      public function destroyLevelScores(levels:Array) : void
      {
         var levelId:String = null;
         for each(levelId in levels)
         {
            if(this.mLevelsScores[levelId])
            {
               this.mLevelsScores[levelId] = null;
            }
         }
      }
      
      public function getCachedScoresForLevel(levelId:String) : CachedFacebookFriends
      {
         return this.mLevelsScores[levelId];
      }
      
      public function getLevelScoresForUser(levelId:String, userId:String) : Number
      {
         var objScore:CachedFacebookFriends = this.mLevelsScores[levelId] as CachedFacebookFriends;
         return objScore.getUserScore(userId);
      }
      
      public function isLoading() : Boolean
      {
         return this.mLeagueLoader != null;
      }
      
      private function useCacheForStandingsLoading() : Boolean
      {
         var now:Number = (AngryBirdsBase.singleton.dataModel as DataModelFriends).serverSynchronizedTime.synchronizedTimeStamp;
         var seconds:int = (now - smStandingsLastLoadingTime) / 1000;
         seconds = Math.max(0,seconds);
         if(seconds < TournamentModel.CACHE_VALIDITY_SECONDS)
         {
            return true;
         }
         smStandingsLastLoadingTime = now;
         return false;
      }
   }
}
