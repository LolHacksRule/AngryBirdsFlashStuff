package com.angrybirds.data.user
{
   import com.rovio.utils.Integer;
   import com.angrybirds.data.level.EpisodeModel;
   import com.angrybirds.data.level.LevelManager;
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
      
      public function UserProgress(param1:String, param2:LevelManager)
      {
         super();
         this.mServerRoot = param1;
         this.mLevelManager = param2;
         this.mLevelProgress = new Dictionary();
         this.mEagleProgress = new Dictionary();
         this.mTutorialProgress = new Dictionary();
         this.mCutSceneProgress = new Dictionary();
         this.mMightyEagleBought = false;
      }
      
      private function onMightyEagleTimerComplete(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.ON_MIGHTY_EAGLE_TIMER_COMPLETE));
         this.mMightyEagleUseInLevel = null;
      }
      
      public function canUseMightyEagle(param1:String) : Boolean
      {
         if(this.mMightyEagleUseInLevel == param1)
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
         var _loc1_:Number = MIGHTY_EAGLE_TIMER_COUNT - this.mMightyEagleTimer.currentCount;
         var _loc2_:int = _loc1_ / MIGHTY_EAGLE_TIMER_COUNT;
         var _loc3_:int = _loc1_ % MIGHTY_EAGLE_TIMER_COUNT;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function getScoreForLevel(param1:String) : int
      {
         var _loc2_:Integer = null;
         if(this.mLevelProgress[param1])
         {
            _loc2_ = this.mLevelProgress[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function getEagleScoreForLevel(param1:String) : int
      {
         var _loc2_:Integer = null;
         if(this.mEagleProgress[param1])
         {
            _loc2_ = this.mEagleProgress[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function isLevelPassed(param1:String) : Boolean
      {
         if(this.getScoreForLevel(param1) > 0 || this.getEagleScoreForLevel(param1) > 0)
         {
            return true;
         }
         return false;
      }
      
      public function setTutorialSeen(param1:String, param2:Boolean = true) : void
      {
         this.mTutorialProgress[param1] = param2;
      }
      
      public function setCutSceneSeen(param1:String, param2:Boolean = true) : void
      {
         this.mTutorialProgress[param1] = param2;
      }
      
      public function setScoreForLevel(param1:String, param2:int) : void
      {
         var _loc3_:Integer = new Integer(param2);
         this.mLevelProgress[param1] = _loc3_;
      }
      
      public function setEagleScoreForLevel(param1:String, param2:int) : void
      {
         var _loc3_:Integer = new Integer(param2);
         this.mEagleProgress[param1] = _loc3_;
      }
      
      public function getStarsForLevel(param1:String, param2:int = -1) : int
      {
         return this.mLevelManager.getNumStarsForLevel(param1,param2 != -1 ? int(param2) : int(this.getScoreForLevel(param1)));
      }
      
      public function getScoreForEpisode(param1:EpisodeModel) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.getLevelNames())
         {
            _loc2_ += this.getScoreForLevel(_loc3_);
         }
         return _loc2_;
      }
      
      public function getStarsForEpisode(param1:EpisodeModel) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.getLevelNames())
         {
            _loc2_ += this.getStarsForLevel(_loc3_);
         }
         return _loc2_;
      }
      
      public function getTotalStars() : int
      {
         var _loc3_:EpisodeModel = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this.mLevelManager.getEpisodeCount())
         {
            _loc3_ = this.mLevelManager.getEpisode(_loc2_);
            _loc4_ = this.getStarsForEpisode(_loc3_);
            _loc1_ += _loc4_;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function getMaxStarsForEpisode(param1:EpisodeModel) : int
      {
         return param1.getLevelNames().length * 3;
      }
      
      public function getMaxEagleFeathersForEpisode(param1:EpisodeModel) : int
      {
         return param1.getLevelNames().length;
      }
      
      public function getEagleFeathersForEpisode(param1:EpisodeModel) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.getLevelNames())
         {
            if(this.getEagleScoreForLevel(_loc3_) == 100)
            {
               _loc2_++;
            }
         }
         return _loc2_;
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
      
      public function set mightyEagleBought(param1:Boolean) : void
      {
         this.mMightyEagleBought = param1;
      }
      
      public function get mightyEagleTimer() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get mightyEagleUseInLevel() : String
      {
         return this.mMightyEagleUseInLevel;
      }
      
      public function isLevelOpen(param1:String) : Boolean
      {
         var _loc2_:String = null;
         if(param1 == null)
         {
            return false;
         }
         if(param1 == LevelManager.DEFAULT_LEVEL_ID)
         {
            return true;
         }
         if(this.getScoreForLevel(param1) > 0)
         {
            return true;
         }
         if(this.getEagleScoreForLevel(param1) > 0)
         {
            return true;
         }
         var _loc3_:EpisodeModel = this.mLevelManager.getEpisodeForLevel(param1);
         var _loc4_:int;
         if((_loc4_ = _loc3_.getLevelIndex(param1)) == 0)
         {
            return true;
         }
         if(_loc4_ > 0)
         {
            _loc2_ = _loc3_.getLevelName(_loc4_ - 1);
         }
         if(_loc2_)
         {
            if(this.getScoreForLevel(_loc2_) > 0)
            {
               return true;
            }
            if(this.getEagleScoreForLevel(_loc2_) > 0)
            {
               return true;
            }
         }
         return false;
      }
      
      public function saveLevelProgress(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
      }
      
      public function saveTutorialSeen(param1:String) : void
      {
      }
      
      public function hasTutorialBeenSeen(param1:String) : Boolean
      {
         return false;
      }
   }
}
