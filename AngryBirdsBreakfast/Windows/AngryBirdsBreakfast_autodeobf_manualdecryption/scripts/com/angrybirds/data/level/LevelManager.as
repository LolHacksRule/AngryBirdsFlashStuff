package com.angrybirds.data.level
{
   import com.rovio.graphics.cutscenes.CutSceneManager;
   
   public class LevelManager
   {
      
      public static const DEFAULT_LEVEL_ID:String = "1-1";
       
      
      protected var mEpisodes:Vector.<EpisodeModel> = null;
      
      protected var mCurrentLevel:String = null;
      
      private var mCurrentLevelNumeric:String = null;
      
      private var mPreviousLevel:String = null;
      
      private var mCurrentEpisode:int = 0;
      
      public function LevelManager()
      {
         super();
      }
      
      public function get currentLevelNumericName() : String
      {
         return this.mCurrentLevelNumeric;
      }
      
      public function get currentLevel() : String
      {
         return this.mCurrentLevel;
      }
      
      public function get previousLevel() : String
      {
         return this.mPreviousLevel;
      }
      
      public function get previousLevelNumericName() : String
      {
         return this.getNumericLevelName(this.mPreviousLevel);
      }
      
      public function get currentEpisode() : int
      {
         return this.mCurrentEpisode;
      }
      
      public function get currentLevelWrittenName() : String
      {
         if(this.getCurrentEpisodeModel())
         {
            return this.getCurrentEpisodeModel().writtenName + " - " + (this.getCurrentEpisodeModel().getLevelIndex(this.currentLevel) + 1);
         }
         return null;
      }
      
      public function initEpisodes(param1:Object) : void
      {
         var _loc2_:Object = null;
         this.mEpisodes = new Vector.<EpisodeModel>();
         for each(_loc2_ in param1.episodes)
         {
            this.mEpisodes.push(this.createEpisodeModelFromData(_loc2_));
         }
      }
      
      protected function createEpisodeModelFromData(param1:Object) : EpisodeModel
      {
         var _loc3_:* = null;
         var _loc2_:EpisodeModel = this.getEpisodeModel(param1.levelNames);
         _loc2_.levelsPerPage = param1.levelsPerPage;
         _loc2_.name = param1.name;
         _loc2_.menuImage = param1.menuImage;
         _loc2_.menuImageLeft = param1.leftCorner;
         _loc2_.menuImageRight = param1.rightCorner;
         _loc2_.levelSelectionBGColors = param1.pageColors;
         _loc2_.pageIndexes = param1.pageIndexes;
         _loc2_.levelButtons = param1.levelButtons;
         _loc2_.writtenName = param1.writtenName;
         _loc2_.isHidden = param1.hidden;
         _loc2_.isLocked = param1.locked;
         if(param1.cutscenes)
         {
            for(_loc3_ in param1.cutscenes)
            {
               _loc2_.addCutScene(_loc3_,param1.cutscenes[_loc3_]);
            }
         }
         return _loc2_;
      }
      
      protected function getEpisodeModel(param1:Array) : EpisodeModel
      {
         return new EpisodeModel(param1);
      }
      
      public function getEpisodeForLevel(param1:String) : EpisodeModel
      {
         var _loc2_:EpisodeModel = null;
         if(param1)
         {
            return null;
         }
         for each(_loc2_ in this.mEpisodes)
         {
            if(_loc2_.hasLevel(param1.toLowerCase()))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function getEpisodeIndexForLevel(param1:String) : int
      {
         var _loc3_:EpisodeModel = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.mEpisodes.length)
         {
            _loc3_ = this.mEpisodes[_loc2_];
            if(_loc3_.hasLevel(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public function getEpisode(param1:int) : EpisodeModel
      {
         if(param1 >= 0 && param1 < this.mEpisodes.length)
         {
            return this.mEpisodes[param1];
         }
         return null;
      }
      
      public function getEpisodeByName(param1:String) : EpisodeModel
      {
         var _loc2_:EpisodeModel = null;
         for each(_loc2_ in this.mEpisodes)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function getEpisodeCount() : int
      {
         return this.mEpisodes.length;
      }
      
      public function getLevelForId(param1:String) : LevelModel
      {
         var _loc2_:EpisodeModel = this.getEpisodeForLevel(param1);
         if(!_loc2_)
         {
            throw new Error("Error! Level \'" + param1 + "\' does not exist.");
         }
         return _loc2_.getLevel(param1);
      }
      
      public function addLevel(param1:String, param2:LevelModel) : void
      {
         var _loc3_:EpisodeModel = this.getEpisodeForLevel(param1);
         if(_loc3_)
         {
            _loc3_.addLevel(param1,param2);
         }
      }
      
      public function getSilverScoreForLevel(param1:String) : int
      {
         var _loc2_:LevelModel = this.getLevelForId(param1);
         return _loc2_.scoreSilver;
      }
      
      public function getGoldScoreForLevel(param1:String) : int
      {
         var _loc2_:LevelModel = this.getLevelForId(param1);
         return _loc2_.scoreGold;
      }
      
      public function getNumStarsForLevel(param1:String, param2:int) : int
      {
         if(param2 <= 0)
         {
            return 0;
         }
         if(param2 < this.getSilverScoreForLevel(param1))
         {
            return 1;
         }
         if(param2 < this.getGoldScoreForLevel(param1))
         {
            return 2;
         }
         return 3;
      }
      
      public function getValidLevelId(param1:String) : String
      {
         var _loc2_:EpisodeModel = this.getEpisodeForLevel(param1);
         if(_loc2_ == null)
         {
            return DEFAULT_LEVEL_ID;
         }
         return param1;
      }
      
      public function getNumericLevelName(param1:String) : String
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc2_:EpisodeModel = this.getEpisodeForLevel(param1);
         if(_loc2_)
         {
            _loc3_ = _loc2_.getPageForLevel(param1);
            _loc2_.currentPage = _loc3_;
            _loc4_ = _loc2_.getPageIndex(_loc3_);
            _loc5_ = _loc2_.mCharCode(param1);
            return _loc4_ + "-" + (_loc5_ + 1);
         }
         return null;
      }
      
      public function loadLevel(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:EpisodeModel = null;
         if(param1 != this.mCurrentLevel)
         {
            _loc2_ = this.getEpisodeIndexForLevel(param1);
            if(_loc2_ >= 0)
            {
               this.mCurrentEpisode = _loc2_;
               this.mPreviousLevel = this.mCurrentLevel;
               this.mCurrentLevel = param1;
               _loc3_ = this.getCurrentEpisodeModel();
               if(_loc3_)
               {
                  _loc3_.currentPage = _loc3_.getPageForLevel(param1);
               }
               this.mCurrentLevelNumeric = this.getNumericLevelName(param1);
            }
            else
            {
               this.mPreviousLevel = this.mCurrentLevel;
               this.resetCurrentLevel();
            }
         }
      }
      
      public function getCurrentEpisodeModel() : EpisodeModel
      {
         return this.mEpisodes[this.mCurrentEpisode];
      }
      
      public function isNextLevelOpen() : Boolean
      {
         return true;
      }
      
      public function isCutSceneNext() : Boolean
      {
         var _loc1_:String = this.getNextLevelId();
         var _loc2_:String = this.getCurrentEpisodeModel().getCutScene(this.mCurrentLevel + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ == null)
         {
            CutSceneManager.setFinalOutro(_loc2_);
         }
         return true;
      }
      
      public function getNextLevelId() : String
      {
         return this.getCurrentEpisodeModel().getNextLevelId(this.mCurrentLevel);
      }
      
      public function selectEpisode(param1:int) : void
      {
         this.mCurrentEpisode = param1;
      }
      
      public function selectEpisodeByName(param1:String) : void
      {
         this.mCurrentEpisode = this.mEpisodes.indexOf(this.getEpisodeByName(param1));
      }
      
      public function resetPreviousLevel() : void
      {
         this.mPreviousLevel = null;
      }
      
      public function resetCurrentLevel() : void
      {
         this.mCurrentLevel = null;
         this.mCurrentLevelNumeric = null;
      }
   }
}
