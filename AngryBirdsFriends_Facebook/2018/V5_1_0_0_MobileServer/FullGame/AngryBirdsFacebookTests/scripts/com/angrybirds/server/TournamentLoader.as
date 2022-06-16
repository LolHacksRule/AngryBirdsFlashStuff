package com.angrybirds.server
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.data.DataModelFriends;
   import com.angrybirds.data.level.LevelManager;
   import com.angrybirds.data.level.LevelModel;
   import com.angrybirds.league.LeagueModel;
   import com.angrybirds.popups.ErrorPopup;
   import com.angrybirds.server.interfaces.ITournamentLoader;
   import com.angrybirds.tournament.TournamentModel;
   import com.angrybirds.tournament.events.TournamentEvent;
   import com.angrybirds.tournamentEvents.TournamentEventManager;
   import com.rovio.factory.Log;
   import com.rovio.loader.AssetLoader;
   import com.rovio.loader.LoadManager;
   import com.rovio.loader.PackageLoader;
   import com.rovio.server.ABFLoader;
   import com.rovio.server.Server;
   import com.rovio.server.URLRequestFactory;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class TournamentLoader extends EventDispatcher implements ITournamentLoader
   {
      
      private static const PATH_CHALLENGE_SENT:String = "/challenge/mark";
      
      private static var smStandingsLastLoadingTime:Number = 0;
       
      
      private var mCurrentTournamentLoader:ABFLoader;
      
      private var mUnconcludedTournamentLoader:ABFLoader;
      
      private var mPreviousTournamentLoader:ABFLoader;
      
      private var mPlayerCurrentTournamentLevelScores:ABFLoader;
      
      private var mCurrentTournamentStandingsLoader:ABFLoader;
      
      private var mClaimTournamentRewardLoader:ABFLoader;
      
      private var mContentType:Array;
      
      private const PATH_TOURNAMENT:String = "/tournament";
      
      private const PATH_CURRENT_TOURNAMENT_INFO:String = "/currentTournamentInfo";
      
      private const PATH_UNCONCLUDED_TOURNAMENT:String = "/unconcludedTournament";
      
      private const PATH_PREVIOUS_TOURNAMENT_RESULTS:String = "/previousTournamentResults";
      
      private const PATH_CLAIM_TOURNAMENT_REWARD:String = "/claimTournamentReward";
      
      private const PATH_PLAYERS_CURRENT_TOURNAMENT_LEVEL_SCORE:String = "/scores/getOwnEpisodeScores?episode=2000";
      
      private const PATH_EPISODE_SCORES:String = "/scores/getTotalEpisodeScores?limit=5000&episode=2000";
      
      private const PATH_LEVEL_SCORES:String = "/scores/levelScores?limit=5000&episodeName=2000&levelName={level_name}";
      
      private var mCachedTournamentData:Object;
      
      private var mBrandedTournamentAssetLoader:AssetLoader;
      
      private var mloadedSWF:String;
      
      private var mLoadManager:LoadManager;
      
      private var mPackageLoader:PackageLoader;
      
      public function TournamentLoader()
      {
         this.mContentType = [97,112,112,108,105,99,97,116,105,111,110,47,106,115,111,110];
         super();
      }
      
      public function loadCurrentTournament() : void
      {
         var urlRequest:URLRequest = URLRequestFactory.getNonCachingURLRequest(AngryBirdsBase.SERVER_ROOT + this.PATH_TOURNAMENT + this.PATH_CURRENT_TOURNAMENT_INFO);
         urlRequest.method = URLRequestMethod.GET;
         urlRequest.contentType = this.getContentType();
         this.mCurrentTournamentLoader = new ABFLoader();
         this.mCurrentTournamentLoader.addEventListener(Event.COMPLETE,this.onCurrentTournamentLoaded);
         this.mCurrentTournamentLoader.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.mCurrentTournamentLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.mCurrentTournamentLoader.dataFormat = URLLoaderDataFormat.TEXT;
         this.mCurrentTournamentLoader.load(urlRequest);
      }
      
      public function loadCurrentTournamentCached() : void
      {
         this.onCurrentTournamentLoaded(null);
      }
      
      public function loadUnconcludedTournament() : void
      {
         var urlRequest:URLRequest = URLRequestFactory.getNonCachingURLRequest(AngryBirdsBase.SERVER_ROOT + this.PATH_TOURNAMENT + this.PATH_UNCONCLUDED_TOURNAMENT);
         urlRequest.method = URLRequestMethod.GET;
         urlRequest.contentType = this.getContentType();
         this.mUnconcludedTournamentLoader = new ABFLoader();
         this.mUnconcludedTournamentLoader.addEventListener(Event.COMPLETE,this.onUnconcludedTournamentTournamentLoaded);
         this.mUnconcludedTournamentLoader.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.mUnconcludedTournamentLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.mUnconcludedTournamentLoader.dataFormat = URLLoaderDataFormat.TEXT;
         this.mUnconcludedTournamentLoader.load(urlRequest);
      }
      
      public function loadPreviousTournamentResults() : void
      {
         var urlRequest:URLRequest = URLRequestFactory.getNonCachingURLRequest(AngryBirdsBase.SERVER_ROOT + this.PATH_TOURNAMENT + this.PATH_PREVIOUS_TOURNAMENT_RESULTS);
         urlRequest.url += "?" + TournamentModel.instance.getCurrentTournamentIdParameter();
         urlRequest.method = URLRequestMethod.GET;
         urlRequest.contentType = this.getContentType();
         this.mPreviousTournamentLoader = new ABFLoader();
         this.mPreviousTournamentLoader.addEventListener(Event.COMPLETE,this.onPreviousTournamentResultsLoaded);
         this.mPreviousTournamentLoader.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.mPreviousTournamentLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.mPreviousTournamentLoader.dataFormat = URLLoaderDataFormat.TEXT;
         this.mPreviousTournamentLoader.load(urlRequest);
      }
      
      public function loadPlayersCurrentTournamentLevelScores(useCache:Boolean = false) : void
      {
         if(useCache)
         {
            this.onPlayersCurrentTournamentLevelScoresLoaded(new TournamentEvent(TournamentEvent.CURRENT_TOURNAMENT_LEVEL_SCORES_LOADED,TournamentModel.instance.currentTournament));
            return;
         }
         var urlRequest:URLRequest = URLRequestFactory.getNonCachingURLRequest(AngryBirdsBase.SERVER_ROOT + this.PATH_PLAYERS_CURRENT_TOURNAMENT_LEVEL_SCORE);
         urlRequest.method = URLRequestMethod.GET;
         urlRequest.contentType = this.getContentType();
         this.mPlayerCurrentTournamentLevelScores = new ABFLoader();
         this.mPlayerCurrentTournamentLevelScores.addEventListener(Event.COMPLETE,this.onPlayersCurrentTournamentLevelScoresLoaded);
         this.mPlayerCurrentTournamentLevelScores.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.mPlayerCurrentTournamentLevelScores.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.mPlayerCurrentTournamentLevelScores.dataFormat = URLLoaderDataFormat.TEXT;
         this.mPlayerCurrentTournamentLevelScores.load(urlRequest);
      }
      
      public function loadCurrentTournamentStandings() : void
      {
         var urlRequest:URLRequest = URLRequestFactory.getNonCachingURLRequest(AngryBirdsBase.SERVER_ROOT + this.PATH_EPISODE_SCORES + "&" + TournamentModel.instance.getCurrentTournamentIdParameter());
         urlRequest.method = URLRequestMethod.GET;
         urlRequest.contentType = this.getContentType();
         this.mCurrentTournamentStandingsLoader = new ABFLoader();
         this.mCurrentTournamentStandingsLoader.addEventListener(Event.COMPLETE,this.onCurrentTournamentStandings);
         this.mCurrentTournamentStandingsLoader.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.mCurrentTournamentStandingsLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.mCurrentTournamentStandingsLoader.dataFormat = URLLoaderDataFormat.TEXT;
         this.mCurrentTournamentStandingsLoader.load(urlRequest);
      }
      
      public function claimTournamentReward() : void
      {
         var urlRequest:URLRequest = URLRequestFactory.getNonCachingURLRequest(AngryBirdsBase.SERVER_ROOT + this.PATH_TOURNAMENT + this.PATH_CLAIM_TOURNAMENT_REWARD);
         urlRequest.method = URLRequestMethod.GET;
         urlRequest.contentType = this.getContentType();
         this.mClaimTournamentRewardLoader = new ABFLoader();
         this.mClaimTournamentRewardLoader.addEventListener(Event.COMPLETE,this.onClaimTournamentReward);
         this.mClaimTournamentRewardLoader.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.mClaimTournamentRewardLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.mClaimTournamentRewardLoader.dataFormat = URLLoaderDataFormat.TEXT;
         this.mClaimTournamentRewardLoader.load(urlRequest);
      }
      
      protected function onClaimTournamentReward(event:Event) : void
      {
         TournamentModel.instance.clearUnconcludedData();
         dispatchEvent(new TournamentEvent(TournamentEvent.CURRENT_TOURNAMENT_REWARD_CLAIMED,event.currentTarget.data));
      }
      
      protected function onError(e:ErrorEvent) : void
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.ERROR_GENERAL,"Tournament error:" + e.text + " id: " + e.errorID));
      }
      
      protected function onCurrentTournamentLoaded(e:Event) : void
      {
         if(e && e.currentTarget)
         {
            this.mCachedTournamentData = e.currentTarget.data;
         }
         TournamentEventManager.instance.setData(this.mCachedTournamentData.eventInfo);
         dispatchEvent(new TournamentEvent(TournamentEvent.CURRENT_TOURNAMENT_INFO_LOADED,this.mCachedTournamentData));
         if(!LeagueModel.instance || !LeagueModel.instance.active)
         {
            this.loadPreviousTournamentResults();
         }
         if(e == null && this.useCacheForStandingsLoading() && TournamentModel.instance.currentStandings)
         {
            dispatchEvent(new TournamentEvent(TournamentEvent.CURRENT_TOURNAMENT_STANDINGS_LOADED,TournamentModel.instance.currentStandings));
            return;
         }
         this.loadCurrentTournamentStandings();
      }
      
      public function loadAssets(brandedTournamentAssetId:String, levels:Array, mLevelManager:LevelManager) : void
      {
         var swfURL:* = null;
         var packURL:* = null;
         var levelURL:* = null;
         var levelObj:Object = null;
         var level:LevelModel = null;
         var i:int = 0;
         var xml:XML = null;
         var loadQueue:Array = [];
         if(brandedTournamentAssetId.length > 0)
         {
            swfURL = AngryBirdsFacebook.TOURNAMENT_SWF_FOLDER + brandedTournamentAssetId + ".swf";
            packURL = AngryBirdsFacebook.PACKAGES_FOLDER + "tournament_" + brandedTournamentAssetId + ".pak";
            if(this.mloadedSWF != swfURL)
            {
               this.mloadedSWF = swfURL;
               if(this.mPackageLoader)
               {
                  this.mPackageLoader.dispose();
                  this.mPackageLoader = null;
               }
               this.mPackageLoader = new PackageLoader();
               loadQueue.push(<pack url="{packURL}"/>);
               loadQueue.push(<library swf="{swfURL}"/>);
            }
         }
         if(mLevelManager)
         {
            for each(levelObj in levels)
            {
               level = mLevelManager.getLevelForId(levelObj.levelId);
               if(level == null)
               {
                  if(AngryBirdsBase.DEBUG_MODE_ENABLED)
                  {
                     levelURL = AngryBirdsFacebook.TOURNAMENT_JSON_LEVELS_FOLDER + "Level" + levelObj.levelId + ".lvl";
                  }
                  else
                  {
                     levelURL = AngryBirdsFacebook.TOURNAMENT_JSON_LEVELS_FOLDER_PREFIX + levelObj.levelId.substr(0,6) + "/Level" + levelObj.levelId + ".lvl";
                  }
                  loadQueue.push(<level url="{levelURL}" id="{levelObj.levelId}"/>);
               }
            }
         }
         if(loadQueue.length > 0)
         {
            this.mLoadManager = new LoadManager(true);
            this.mLoadManager.init(Server.getExternalAssetDirectoryPaths(),"",AngryBirdsFacebook.sSingleton.getBuildNumber(),this.mPackageLoader,null,(AngryBirdsEngine.smApp as AngryBirdsFacebook).getLevelLoader());
            this.mLoadManager.startQueue();
            for(i = 0; i < loadQueue.length; i++)
            {
               xml = loadQueue[i];
               this.mLoadManager.addToQueue(xml);
            }
            this.mLoadManager.loadQueue(this.onTournamentAssetsLoaded);
         }
         else
         {
            dispatchEvent(new TournamentEvent(TournamentEvent.CURRENT_TOURNAMENT_ASSETS_LOADED,new PackageLoader()));
         }
      }
      
      private function onTournamentAssetsLoaded() : void
      {
         dispatchEvent(new TournamentEvent(TournamentEvent.CURRENT_TOURNAMENT_ASSETS_LOADED,this.mPackageLoader));
         this.mLoadManager = null;
      }
      
      protected function onUnconcludedTournamentTournamentLoaded(e:Event) : void
      {
         dispatchEvent(new TournamentEvent(TournamentEvent.UNCONCLUDED_TOURNAMENT_LOADED,e.currentTarget.data));
      }
      
      protected function onPreviousTournamentResultsLoaded(e:Event) : void
      {
         dispatchEvent(new TournamentEvent(TournamentEvent.PREVIOUS_TOURNAMENT_RESULT_LOADED,e.currentTarget.data));
      }
      
      protected function onPlayersCurrentTournamentLevelScoresLoaded(e:Event) : void
      {
         if(this.mPlayerCurrentTournamentLevelScores)
         {
            this.mPlayerCurrentTournamentLevelScores.removeEventListener(Event.COMPLETE,this.onPlayersCurrentTournamentLevelScoresLoaded);
            this.mPlayerCurrentTournamentLevelScores.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.mPlayerCurrentTournamentLevelScores.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            this.mPlayerCurrentTournamentLevelScores = null;
         }
         dispatchEvent(new TournamentEvent(TournamentEvent.CURRENT_TOURNAMENT_LEVEL_SCORES_LOADED,!!e.currentTarget ? e.currentTarget.data : TournamentEvent(e).data));
      }
      
      protected function onCurrentTournamentStandings(e:Event) : void
      {
         if(this.mCurrentTournamentStandingsLoader)
         {
            this.mCurrentTournamentStandingsLoader.removeEventListener(Event.COMPLETE,this.onCurrentTournamentStandings);
            this.mCurrentTournamentStandingsLoader.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.mCurrentTournamentStandingsLoader.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            this.mCurrentTournamentStandingsLoader = null;
         }
         dispatchEvent(new TournamentEvent(TournamentEvent.CURRENT_TOURNAMENT_STANDINGS_LOADED,e.currentTarget.data));
      }
      
      private function getContentType() : String
      {
         return this.getText(this.mContentType);
      }
      
      private function getText(data:Array) : String
      {
         var i:int = 0;
         var name:String = "";
         for each(i in data)
         {
            name += String.fromCharCode(i);
         }
         return name;
      }
      
      public function markChallengeSent(userIDs:Array) : void
      {
         var urlRequest:URLRequest = URLRequestFactory.getNonCachingURLRequest(AngryBirdsBase.SERVER_ROOT + PATH_CHALLENGE_SENT);
         urlRequest.data = JSON.stringify(userIDs);
         urlRequest.method = URLRequestMethod.POST;
         urlRequest.contentType = "application/json";
         var challengeSentLoader:ABFLoader = new ABFLoader();
         challengeSentLoader.addEventListener(Event.COMPLETE,this.onMarkChallengeSent);
         challengeSentLoader.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         challengeSentLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         challengeSentLoader.dataFormat = URLLoaderDataFormat.TEXT;
         challengeSentLoader.load(urlRequest);
      }
      
      protected function onMarkChallengeSent(event:Event) : void
      {
         Log.log("Tournament challenge sent");
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
