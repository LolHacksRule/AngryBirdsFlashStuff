package com.angrybirds.data.user
{
   import com.angrybirds.data.level.EpisodeModel;
   import com.angrybirds.data.level.LevelManager;
   import com.rovio.utils.Integer;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class UserProgress extends EventDispatcher
   {
      
      protected static const MIGHTY_EAGLE_TIMER_INTERVAL:Number = 1000;
      
      protected static const MIGHTY_EAGLE_TIMER_COUNT:Number = 60;
       
      
      protected var mLevelProgress:Dictionary;
      
      protected var mEagleProgress:Dictionary;
      
      protected var mTutorialProgress:Dictionary;
      
      protected var mCutSceneProgress:Dictionary;
      
      protected var mMightyEagleBought:Boolean = false;
      
      protected var mMightyEagleUseInLevel:String;
      
      protected var mServerRoot:String;
      
      protected var mLevelManager:LevelManager;
      
      protected var mMightyEagleTimer:Timer;
      
      public function UserProgress(serverRoot:String, levelManager:LevelManager)
      {
         super();
         this.mServerRoot = serverRoot;
         this.mLevelManager = levelManager;
         this.mLevelProgress = new Dictionary();
         this.mEagleProgress = new Dictionary();
         this.mTutorialProgress = new Dictionary();
         this.mCutSceneProgress = new Dictionary();
         this.mMightyEagleBought = false;
      }
      
      private function onMightyEagleTimerComplete(e:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.ON_MIGHTY_EAGLE_TIMER_COMPLETE));
         this.mMightyEagleUseInLevel = null;
      }
      
      public function canUseMightyEagle(levelId:String) : Boolean
      {
         if(this.mMightyEagleUseInLevel == levelId)
         {
            return true;
         }
         if(this.mMightyEagleTimer && this.mMightyEagleTimer.running)
         {
            return false;
         }
         return true;
      }
      
      public function getMightyEagleTimerAsString() : String
      {
         var count:Number = MIGHTY_EAGLE_TIMER_COUNT - this.mMightyEagleTimer.currentCount;
         var minutes:int = count / MIGHTY_EAGLE_TIMER_COUNT;
         var seconds:int = count % MIGHTY_EAGLE_TIMER_COUNT;
         if(seconds < 10)
         {
            return "" + minutes + ":0" + seconds;
         }
         return "" + minutes + ":" + seconds;
      }
      
      public function getScoreForLevel(levelId:String) : int
      {
         var scoreInteger:Integer = null;
         if(this.mLevelProgress[levelId])
         {
            scoreInteger = this.mLevelProgress[levelId];
            return scoreInteger.getValue();
         }
         return 0;
      }
      
      public function getEagleScoreForLevel(levelId:String) : int
      {
         var scoreInteger:Integer = null;
         if(this.mEagleProgress[levelId])
         {
            scoreInteger = this.mEagleProgress[levelId];
            return scoreInteger.getValue();
         }
         return 0;
      }
      
      public function isLevelPassed(levelId:String) : Boolean
      {
         if(this.getScoreForLevel(levelId) > 0 || this.getEagleScoreForLevel(levelId) > 0)
         {
            return true;
         }
         return false;
      }
      
      public function setTutorialSeen(birdName:String, isSeen:Boolean = true) : void
      {
         this.mTutorialProgress[birdName] = isSeen;
      }
      
      public function setCutSceneSeen(cutSceneName:String, isSeen:Boolean = true) : void
      {
         this.mTutorialProgress[cutSceneName] = isSeen;
      }
      
      public function setScoreForLevel(levelId:String, score:int) : void
      {
         var scoreInteger:Integer = new Integer(score);
         this.mLevelProgress[levelId] = scoreInteger;
      }
      
      public function setEagleScoreForLevel(levelId:String, score:int) : void
      {
         var scoreInteger:Integer = new Integer(score);
         this.mEagleProgress[levelId] = scoreInteger;
      }
      
      public function getStarsForLevel(levelId:String, score:int = -1) : int
      {
         return this.mLevelManager.getNumStarsForLevel(levelId,score != -1 ? int(score) : int(this.getScoreForLevel(levelId)));
      }
      
      public function getScoreForEpisode(episode:EpisodeModel) : int
      {
         var level:String = null;
         var totalScore:int = 0;
         for each(level in episode.getLevelNames())
         {
            totalScore += this.getScoreForLevel(level);
         }
         return totalScore;
      }
      
      public function getStarsForEpisode(episode:EpisodeModel) : int
      {
         var level:String = null;
         var totalStars:int = 0;
         for each(level in episode.getLevelNames())
         {
            totalStars += this.getStarsForLevel(level);
         }
         return totalStars;
      }
      
      public function getTotalStars() : int
      {
         var episode:EpisodeModel = null;
         var episodeStars:int = 0;
         var total:int = 0;
         for(var i:int = 0; i < this.mLevelManager.getEpisodeCount(); i++)
         {
            episode = this.mLevelManager.getEpisode(i);
            episodeStars = this.getStarsForEpisode(episode);
            total += episodeStars;
         }
         return total;
      }
      
      public function getMaxStarsForEpisode(episode:EpisodeModel) : int
      {
         return episode.getLevelNames().length * 3;
      }
      
      public function getMaxEagleFeathersForEpisode(episode:EpisodeModel) : int
      {
         return episode.getLevelNames().length;
      }
      
      public function getEagleFeathersForEpisode(episode:EpisodeModel) : int
      {
         var level:String = null;
         var totalFeathers:int = 0;
         for each(level in episode.getLevelNames())
         {
            if(this.getEagleScoreForLevel(level) == 100)
            {
               totalFeathers++;
            }
         }
         return totalFeathers;
      }
      
      public function get tutorialProgress() : Dictionary
      {
         return this.mTutorialProgress;
      }
      
      public function get cutSceneProgress() : Dictionary
      {
         return this.mTutorialProgress;
      }
      
      public function get mightyEagleBought() : Boolean
      {
         return this.mMightyEagleBought;
      }
      
      public function set mightyEagleBought(value:Boolean) : void
      {
         this.mMightyEagleBought = value;
      }
      
      public function get mightyEagleTimer() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get mightyEagleUseInLevel() : String
      {
         return this.mMightyEagleUseInLevel;
      }
      
      public function isLevelOpen(levelId:String) : Boolean
      {
         var previousLevelId:String = null;
         if(levelId == null)
         {
            return false;
         }
         if(levelId == LevelManager.DEFAULT_LEVEL_ID)
         {
            return true;
         }
         if(this.getScoreForLevel(levelId) > 0)
         {
            return true;
         }
         if(this.getEagleScoreForLevel(levelId) > 0)
         {
            return true;
         }
         var episodeModel:EpisodeModel = this.mLevelManager.getEpisodeForLevel(levelId);
         var index:int = episodeModel.getLevelIndex(levelId);
         if(index == 0)
         {
            return true;
         }
         if(index > 0)
         {
            previousLevelId = episodeModel.getLevelName(index - 1);
         }
         if(previousLevelId)
         {
            if(this.getScoreForLevel(previousLevelId) > 0)
            {
               return true;
            }
            if(this.getEagleScoreForLevel(previousLevelId) > 0)
            {
               return true;
            }
         }
         return false;
      }
      
      public function saveLevelProgress(levelId:String, meInUse:Boolean = false, tournamentScore:Boolean = false, isBirdRun:Boolean = false) : void
      {
      }
      
      public function saveTutorialSeen(tutorialId:String) : void
      {
      }
      
      public function hasTutorialBeenSeen(tutorialId:String) : Boolean
      {
         return false;
      }
   }
}
