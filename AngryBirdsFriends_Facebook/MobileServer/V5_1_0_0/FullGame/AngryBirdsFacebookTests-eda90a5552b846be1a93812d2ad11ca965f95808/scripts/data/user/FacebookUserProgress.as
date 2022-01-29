package data.user
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.data.level.EpisodeModel;
   import com.angrybirds.data.level.FacebookLevelManager;
   import com.angrybirds.data.level.LevelManager;
   import com.angrybirds.data.user.UserProgress;
   import com.angrybirds.data.user.UserProgressEvent;
   import com.angrybirds.engine.FacebookLevelMain;
   import com.angrybirds.engine.ScoreCollector;
   import com.angrybirds.popups.EggCollectedPopup;
   import com.angrybirds.popups.ErrorPopup;
   import com.angrybirds.popups.PopupLayerIndexFacebook;
   import com.angrybirds.states.StateFacebookPlay;
   import com.angrybirds.tournament.TournamentModel;
   import com.angrybirds.tournamentEvents.ItemsCollection.ItemsCollectionManager;
   import com.angrybirds.tournamentEvents.TournamentEventManager;
   import com.rovio.adobe.crypto.SHA1;
   import com.rovio.factory.Base64;
   import com.rovio.server.ABFLoader;
   import com.rovio.server.RetryingURLLoader;
   import com.rovio.server.RetryingURLLoaderErrorEvent;
   import com.rovio.server.URLRequestFactory;
   import com.rovio.ui.popup.PopupPriorityType;
   import com.rovio.utils.Integer;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.utils.Dictionary;
   
   public class FacebookUserProgress extends UserProgress
   {
      
      public static const TOURNAMENT_TUTORIAL:String = "tt";
      
      public static const BRANDED_TOURNAMENT_TUTORIAL:String = "btt";
      
      public static const ENTER_RAFFLE:String = "RAFFLE_";
      
      public static const END_RAFFLE:String = "END_RAFFLE_";
      
      public static const END_RAFFLE_WINNERS:String = "END_RAFFLE_WINNERS_";
       
      
      protected var mLevelRank:Dictionary;
      
      private var mTournamentLevelRanks:Dictionary;
      
      private var mTournamentLevelScores:Dictionary;
      
      private var mLeagueLevelRanks:Dictionary;
      
      protected var mUserName:String;
      
      protected var mAvatarString:String;
      
      protected var mUserID:String;
      
      private var mAddress:Array;
      
      private var mDefaultEpisode:Array;
      
      private var mContentType:Array;
      
      private var mActualLevel:Array;
      
      private var mEpisode:Array;
      
      private var mLevel:Array;
      
      private var mPoints:Array;
      
      private var mStars:Array;
      
      private var mTournamentId:Array;
      
      private var mDestructionPercentages:Array;
      
      private var mName:Array;
      
      private var mSecurity:Array;
      
      private var mBlocks:Array;
      
      private var mPlaySessionToken:Array;
      
      private var mCountConsumables:Array;
      
      private var mCollectedItems:Array;
      
      private var mSavingUrlLoader:RetryingURLLoader;
      
      private var mUnlockedGoldenEggs:Array;
      
      private var mEggSavingUrlLoader:RetryingURLLoader;
      
      private var mTutorialsSeen:Array;
      
      public function FacebookUserProgress(serverRoot:String, levelManager:LevelManager)
      {
         this.mAddress = [47,115,117,98,109,105,116,115,99,111,114,101];
         this.mDefaultEpisode = [117,110,107,110,111,119,110,69,112,105,115,111,100,101];
         this.mContentType = [97,112,112,108,105,99,97,116,105,111,110,47,106,115,111,110];
         this.mActualLevel = [97,99,116,117,97,108,76,101,118,101,108];
         this.mEpisode = [101,112,105,115,111,100,101];
         this.mLevel = [108,101,118,101,108];
         this.mPoints = [112,111,105,110,116,115];
         this.mStars = [115,116,97,114,115];
         this.mTournamentId = [116,111,117,114,110,97,109,101,110,116,73,100];
         this.mDestructionPercentages = [100,101,115,116,114,117,99,116,105,111,110,80,101,114,99,101,110,116,97,103,101];
         this.mName = [100,115,107,102,83,33,110,117,68,121,50,105,55,114,110,68,105,99,115,107,51,56];
         this.mSecurity = [115,101,99,117,114,105,116,121];
         this.mBlocks = [98,108,111,99,107,115];
         this.mPlaySessionToken = [112,108,97,121,83,101,115,115,105,111,110,84,111,107,101,110];
         this.mCountConsumables = [117,115,101,100,67,111,110,115,117,109,97,98,108,101,73,116,101,109,73,100,115];
         this.mCollectedItems = [99,111,108,108,101,99,116,101,100,73,116,101,109,115];
         this.mTutorialsSeen = [];
         super(serverRoot,levelManager);
         this.mLevelRank = new Dictionary();
         this.mUnlockedGoldenEggs = [];
         this.mTournamentLevelRanks = new Dictionary();
         this.mLeagueLevelRanks = new Dictionary();
         this.mTournamentLevelScores = new Dictionary();
      }
      
      override public function getTotalStars() : int
      {
         var episode:EpisodeModel = null;
         var chapterStars:int = 0;
         var total:int = 0;
         for(var i:int = 0; i < mLevelManager.getEpisodeCount(); i++)
         {
            episode = mLevelManager.getEpisode(i);
            if(episode.name != "2000")
            {
               chapterStars = getStarsForEpisode(episode);
               total += chapterStars;
            }
         }
         return total;
      }
      
      public function getTotalMaxStars() : int
      {
         var episode:EpisodeModel = null;
         var chapterStars:int = 0;
         var total:int = 0;
         for(var i:int = 0; i < mLevelManager.getEpisodeCount(); i++)
         {
            episode = mLevelManager.getEpisode(i);
            if(episode.name != "2000")
            {
               chapterStars = getMaxStarsForEpisode(episode);
               total += chapterStars;
            }
         }
         return total;
      }
      
      public function getTotalMaxFeathers() : int
      {
         var episode:EpisodeModel = null;
         var chapterStars:int = 0;
         var total:int = 0;
         for(var i:int = 0; i < mLevelManager.getEpisodeCount(); i++)
         {
            episode = mLevelManager.getEpisode(i);
            if(episode.name != "2000")
            {
               chapterStars = getMaxEagleFeathersForEpisode(episode);
               total += chapterStars;
            }
         }
         return total;
      }
      
      public function getLevelsCompletedInEpisodes() : Dictionary
      {
         var amount:int = 0;
         var episode:EpisodeModel = null;
         var level:String = null;
         var episodes:Dictionary = new Dictionary();
         for(var i:int = 0; i < mLevelManager.getEpisodeCount(); i++)
         {
            amount = 0;
            episode = mLevelManager.getEpisode(i);
            for each(level in episode.getLevelNames())
            {
               if(getStarsForLevel(level) > 0)
               {
                  amount++;
               }
            }
            episodes[episode.writtenName] = amount;
         }
         return episodes;
      }
      
      public function getAllLevelsCompleted() : Boolean
      {
         var episode:EpisodeModel = null;
         var level:String = null;
         var isCompleted:* = false;
         for(var i:int = 0; i < mLevelManager.getEpisodeCount(); i++)
         {
            episode = mLevelManager.getEpisode(i);
            for each(level in episode.getLevelNames())
            {
               isCompleted = getScoreForLevel(level) > 0;
               if(!isCompleted)
               {
                  return false;
               }
            }
         }
         return isCompleted;
      }
      
      public function areAllTheLevelsCompleted(levelIds:Array) : Boolean
      {
         var levelId:String = null;
         for each(levelId in levelIds)
         {
            if(!isLevelPassed(levelId) && this.getTournamentScoreForLevel(levelId) == 0)
            {
               return false;
            }
         }
         return true;
      }
      
      public function getTournamentScoreForLevel(levelId:String) : int
      {
         var scoreInteger:Integer = null;
         if(this.mTournamentLevelScores[levelId])
         {
            scoreInteger = this.mTournamentLevelScores[levelId];
            return scoreInteger.getValue();
         }
         return 0;
      }
      
      public function getTournamentRankForLevel(levelName:String) : int
      {
         if(this.mTournamentLevelRanks[levelName])
         {
            return this.mTournamentLevelRanks[levelName];
         }
         return 0;
      }
      
      public function setTournamentRankForLevel(levelName:String, rank:int) : void
      {
         this.mTournamentLevelRanks[levelName] = rank;
      }
      
      public function setTournamentScoreForLevel(levelId:String, score:int) : void
      {
         var scoreInteger:Integer = new Integer(score);
         this.mTournamentLevelScores[levelId] = scoreInteger;
      }
      
      public function getRankForLevel(levelId:String) : int
      {
         if(this.mLevelRank[levelId])
         {
            return this.mLevelRank[levelId];
         }
         return 0;
      }
      
      public function setRankForLevel(levelId:String, rank:int) : void
      {
         this.mLevelRank[levelId] = rank;
      }
      
      public function setLeagueRankForLevel(levelName:String, rank:int) : void
      {
         this.mLeagueLevelRanks[levelName] = rank;
      }
      
      public function getLeagueRankForLevel(levelName:String) : int
      {
         if(this.mLeagueLevelRanks[levelName])
         {
            return this.mLeagueLevelRanks[levelName];
         }
         return 0;
      }
      
      public function init(userName:String, userId:String, tutorials:Array) : void
      {
         this.mUserName = userName;
         this.mUserID = userId;
         this.mTutorialsSeen = tutorials || [];
      }
      
      public function injectTournamentProgress(tournamentScores:Array) : void
      {
         var levelScore:Object = null;
         this.mTournamentLevelRanks = new Dictionary();
         this.mTournamentLevelScores = new Dictionary();
         this.mLeagueLevelRanks = new Dictionary();
         for each(levelScore in tournamentScores)
         {
            if(levelScore.p)
            {
               this.setTournamentScoreForLevel(levelScore.l,levelScore.p);
            }
            if(levelScore.r)
            {
               this.setTournamentRankForLevel(levelScore.l,levelScore.r);
            }
            if(levelScore.gr)
            {
               this.setLeagueRankForLevel(levelScore.l,levelScore.gr);
            }
         }
      }
      
      public function setEpisodeScore(scoreArray:Object) : void
      {
         var levelProgress:Object = null;
         for each(levelProgress in scoreArray)
         {
            if(levelProgress.p)
            {
               setScoreForLevel(levelProgress.l,levelProgress.p);
            }
            if(levelProgress.me)
            {
               setEagleScoreForLevel(levelProgress.l,levelProgress.me);
            }
            if(levelProgress.r)
            {
               this.setRankForLevel(levelProgress.l,levelProgress.r);
            }
         }
      }
      
      override public function isLevelOpen(levelId:String) : Boolean
      {
         if(levelId == "10-1" || levelId == "11-1" || levelId == "3002-1")
         {
            return true;
         }
         if(levelId.split("-")[0] == "1000")
         {
            return this.isEggUnlocked(levelId);
         }
         if(levelId.split("-")[0] == "2000")
         {
            return TournamentModel.instance.isLevelOpen(levelId);
         }
         return super.isLevelOpen(levelId);
      }
      
      private function getSecurityHashForLevel(levelId:String) : String
      {
         var episode:EpisodeModel = mLevelManager.getEpisodeForLevel(levelId);
         return SHA1.hash([!!episode ? episode.name : this.getDefaultEpisode(),levelId,AngryBirdsEngine.controller.getScore(),getStarsForLevel(levelId,AngryBirdsEngine.controller.getScore()),AngryBirdsEngine.controller.getEagleScore(),this.getName()].join("|"));
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
      
      private function getName() : String
      {
         return this.getText(this.mName);
      }
      
      private function getAddress() : String
      {
         return this.getText(this.mAddress);
      }
      
      private function getDefaultEpisode() : String
      {
         return this.getText(this.mDefaultEpisode);
      }
      
      private function getContentType() : String
      {
         return this.getText(this.mContentType);
      }
      
      override public function hasTutorialBeenSeen(tutorialId:String) : Boolean
      {
         if(this.mTutorialsSeen.indexOf(tutorialId) != -1)
         {
            return true;
         }
         return false;
      }
      
      override public function saveTutorialSeen(tutorialIds:String) : void
      {
         var tutorialString:String = null;
         var urlRequest:URLRequest = null;
         var tutorialSavingUrlLoader:ABFLoader = null;
         var tutorialsInside:Array = tutorialIds.split(",");
         for each(tutorialString in tutorialsInside)
         {
            this.mTutorialsSeen.push(tutorialString);
         }
         urlRequest = URLRequestFactory.getNonCachingURLRequest(mServerRoot + "/tutorialshown/" + tutorialIds);
         urlRequest.method = URLRequestMethod.POST;
         urlRequest.contentType = this.getContentType();
         tutorialSavingUrlLoader = new ABFLoader(null,2);
         tutorialSavingUrlLoader.addEventListener(Event.COMPLETE,this.onTutorialSaved);
         tutorialSavingUrlLoader.addEventListener(IOErrorEvent.IO_ERROR,this.onTutorialSaveError);
         tutorialSavingUrlLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onTutorialSaveError);
         tutorialSavingUrlLoader.dataFormat = URLLoaderDataFormat.TEXT;
         tutorialSavingUrlLoader.load(urlRequest);
      }
      
      private function onTutorialSaved(e:Event) : void
      {
         var tutorialSavingUrlLoader:RetryingURLLoader = null;
         if(e.currentTarget is RetryingURLLoader)
         {
            tutorialSavingUrlLoader = e.currentTarget as RetryingURLLoader;
            tutorialSavingUrlLoader.removeEventListener(Event.COMPLETE,this.onTutorialSaved);
            tutorialSavingUrlLoader.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            tutorialSavingUrlLoader.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         }
      }
      
      private function onTutorialSaveError(e:Event) : void
      {
         var tutorialSavingUrlLoader:RetryingURLLoader = null;
         if(e.currentTarget is RetryingURLLoader)
         {
            tutorialSavingUrlLoader = e.currentTarget as RetryingURLLoader;
            tutorialSavingUrlLoader.removeEventListener(Event.COMPLETE,this.onTutorialSaved);
            tutorialSavingUrlLoader.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            tutorialSavingUrlLoader.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         }
      }
      
      override public function saveLevelProgress(levelId:String, meInUse:Boolean = false, tournamentScore:Boolean = false, hasBeatenLeagueUsers:Boolean = false) : void
      {
         var collectedItems:int = 0;
         if(this.isSavingUserProgress)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.ERROR_GENERAL,"Error, trying to save user progress while a save operation is still in progress. Level " + levelId + ", ME: " + meInUse.toString()));
         }
         var urlRequest:URLRequest = URLRequestFactory.getNonCachingURLRequest(mServerRoot + this.getAddress() + "/" + tournamentScore.toString() + "/" + hasBeatenLeagueUsers.toString());
         urlRequest.method = URLRequestMethod.POST;
         urlRequest.contentType = this.getContentType();
         var episode:EpisodeModel = mLevelManager.getEpisodeForLevel(levelId);
         var newPoints:int = AngryBirdsEngine.controller.getScore();
         var newStars:int = getStarsForLevel(levelId,AngryBirdsEngine.controller.getScore());
         var object:Object = {};
         var actualLevelNumber:String = (mLevelManager as FacebookLevelManager).getFacebookNameFromLevelId(levelId);
         if(tournamentScore)
         {
            actualLevelNumber = String(TournamentModel.instance.getLevelActualNumber(levelId));
         }
         object[this.getText(this.mEpisode)] = !!episode ? episode.name : this.getDefaultEpisode();
         object[this.getText(this.mLevel)] = levelId;
         object[this.getText(this.mPoints)] = newPoints;
         object[this.getText(this.mDestructionPercentages)] = AngryBirdsEngine.controller.getEagleScore();
         object[this.getText(this.mSecurity)] = this.getSecurityHashForLevel(levelId);
         object[this.getText(this.mBlocks)] = ScoreCollector.getScoreString();
         object[this.getText(this.mPlaySessionToken)] = StateFacebookPlay.sPlaySessionToken;
         object[this.getText(this.mCountConsumables)] = (AngryBirdsEngine.smLevelMain as FacebookLevelMain).getUsedItems();
         object[this.getText(this.mActualLevel)] = actualLevelNumber;
         object[this.getText(this.mStars)] = newStars;
         if(tournamentScore && TournamentModel.instance.currentTournament)
         {
            object[this.getText(this.mTournamentId)] = TournamentModel.instance.currentTournament.id;
         }
         var itemsCollectionEventManager:ItemsCollectionManager = TournamentEventManager.instance.getActivatedEventManager() as ItemsCollectionManager;
         if(itemsCollectionEventManager)
         {
            collectedItems = itemsCollectionEventManager.getCollectedItemsCountFromCurrentLevel();
            if(collectedItems > 0)
            {
               object[this.getText(this.mCollectedItems)] = collectedItems;
            }
         }
         urlRequest.data = Base64.encode(JSON.stringify(object));
         this.mSavingUrlLoader = new ABFLoader();
         this.mSavingUrlLoader.addEventListener(Event.COMPLETE,this.onLevelProgressSaved);
         this.mSavingUrlLoader.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.mSavingUrlLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.mSavingUrlLoader.dataFormat = URLLoaderDataFormat.TEXT;
         this.mSavingUrlLoader.load(urlRequest);
      }
      
      private function onLevelProgressSaved(e:Event) : void
      {
         var returnData:Object = this.mSavingUrlLoader.data;
         this.mSavingUrlLoader = null;
         if(returnData.errorCode || returnData.errorMessage)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.ERROR_GENERAL,"Error saving score. Server return error code \'" + returnData.errorCode + "\', message: \'" + returnData.errorMessage + "\'."));
         }
         var userProgressEvent:UserProgressEvent = new UserProgressEvent(UserProgressEvent.USER_PROGRESS_SAVED);
         userProgressEvent.data = returnData;
         var itemsCollectionEventManager:ItemsCollectionManager = TournamentEventManager.instance.getActivatedEventManager() as ItemsCollectionManager;
         if(itemsCollectionEventManager)
         {
            itemsCollectionEventManager.setData(returnData.userEvent);
         }
         dispatchEvent(userProgressEvent);
      }
      
      private function onError(e:Event) : void
      {
         if(e.type == RetryingURLLoaderErrorEvent.THIRD_PARTY_COOKIES_DISABLED)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.ERROR_THIRD_PARTY_COOKIES_DISABLED));
         }
         else
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.ERROR_GENERAL,"Error event: " + e.toString()));
         }
         this.mSavingUrlLoader = null;
      }
      
      public function isEggUnlocked(eggId:String) : Boolean
      {
         if(this.mUnlockedGoldenEggs != null)
         {
            if(this.mUnlockedGoldenEggs.indexOf(eggId) != -1)
            {
               return true;
            }
         }
         return false;
      }
      
      public function setEggUnlocked(eggId:String) : void
      {
         if(this.isEggUnlocked(eggId))
         {
            return;
         }
         var popup:EggCollectedPopup = new EggCollectedPopup(PopupLayerIndexFacebook.ALERT,PopupPriorityType.OVERRIDE,eggId);
         AngryBirdsBase.singleton.popupManager.openPopup(popup);
         this.mUnlockedGoldenEggs.push(eggId);
         var urlRequest:URLRequest = URLRequestFactory.getNonCachingURLRequest(mServerRoot + "/eggfound/" + eggId);
         urlRequest.method = URLRequestMethod.POST;
         urlRequest.contentType = this.getContentType();
         this.mEggSavingUrlLoader = new ABFLoader(null,2);
         this.mEggSavingUrlLoader.addEventListener(Event.COMPLETE,this.onEggSaved);
         this.mEggSavingUrlLoader.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.mEggSavingUrlLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.mEggSavingUrlLoader.dataFormat = URLLoaderDataFormat.TEXT;
         this.mEggSavingUrlLoader.load(urlRequest);
      }
      
      public function setUnlockedEggs(unlockedEggs:Array) : void
      {
         if(unlockedEggs != null)
         {
            this.mUnlockedGoldenEggs = unlockedEggs;
         }
      }
      
      private function onEggSaved(e:Event) : void
      {
      }
      
      public function get isSavingUserProgress() : Boolean
      {
         return this.mSavingUrlLoader != null;
      }
      
      public function get userName() : String
      {
         return this.mUserName;
      }
      
      public function get avatarString() : String
      {
         return this.mAvatarString;
      }
      
      public function set avatarString(value:String) : void
      {
         this.mAvatarString = value;
      }
      
      public function get userID() : String
      {
         return this.mUserID;
      }
      
      public function areTournamentLevelsCompletedWithThreeStars() : Boolean
      {
         var levelId:* = null;
         var levelScore:int = 0;
         for(levelId in this.mTournamentLevelScores)
         {
            levelScore = this.getTournamentScoreForLevel(levelId);
            if(getStarsForLevel(levelId,levelScore) < 3)
            {
               return false;
            }
         }
         return true;
      }
   }
}
