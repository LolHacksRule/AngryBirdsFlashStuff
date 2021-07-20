package com.angrybirds.data.level
{
   import com.rovio.utils.HashMap;
   
   public class EpisodeModel
   {
       
      
      protected var mWrittenName:String = "";
      
      protected var mName:String = "";
      
      protected var mMenuImage:String = "";
      
      protected var mMenuImageLeft:String = "";
      
      protected var mMenuImageRight:String = "";
      
      protected var mPageIndexes:Vector.<int> = null;
      
      protected var mLevelsPerPage:int = 0;
      
      protected var mLevelNames:Array = null;
      
      protected var mLevelSelectionBGColors:Array;
      
      protected var mLevelButtons:Array;
      
      protected var mCurrentPage:int = 0;
      
      protected var mCutScenes:HashMap;
      
      protected var mIsHidden:Boolean = false;
      
      protected var mIsLocked:Boolean = false;
      
      protected var mLevels:HashMap;
      
      public function EpisodeModel(param1:Array)
      {
         var _loc2_:String = null;
         this.mCutScenes = new HashMap();
         this.mLevels = new HashMap();
         super();
         if(param1)
         {
            this.mLevelNames = [];
            for each(_loc2_ in param1)
            {
               this.mLevelNames.push(_loc2_.toLowerCase());
            }
         }
      }
      
      public function getNumLevels() : int
      {
         return this.pageCount * this.levelsPerPage;
      }
      
      public function getLevelIndex(param1:String) : int
      {
         this.initializeLevelNames();
         return int(this.mLevelNames.indexOf(param1));
      }
      
      public function getLevelName(param1:int) : String
      {
         this.initializeLevelNames();
         if(param1 >= 0 && param1 < this.mLevelNames.length)
         {
            return this.mLevelNames[param1];
         }
         return null;
      }
      
      public function getColorForPage(param1:int) : Object
      {
         return this.mLevelSelectionBGColors[param1];
      }
      
      public function getLevelButtonForPage(param1:int) : String
      {
         return this.mLevelButtons[param1];
      }
      
      public function hasLevel(param1:String) : Boolean
      {
         this.initializeLevelNames();
         return this.mLevelNames.indexOf(param1) != -1;
      }
      
      public function addLevelName(param1:String) : Boolean
      {
         this.initializeLevelNames();
         if(this.mLevelNames.indexOf(param1) >= 0)
         {
            return false;
         }
         this.mLevelNames.push(param1);
         return true;
      }
      
      public function getLevelNamesForPage(param1:int) : Array
      {
         var _loc3_:int = 0;
         var _loc4_:String = null;
         this.initializeLevelNames();
         var _loc2_:Array = new Array();
         if(param1 >= 0 && param1 < this.pageCount)
         {
            _loc3_ = 0;
            while(_loc3_ < this.levelsPerPage)
            {
               _loc4_ = this.mLevelNames[_loc3_ + param1 * this.levelsPerPage];
               _loc2_.push(_loc4_);
               _loc3_++;
            }
         }
         return _loc2_;
      }
      
      protected function getDefaultLevelNamesForPage(param1:int) : Array
      {
         var _loc4_:String = null;
         var _loc2_:Array = [];
         var _loc3_:int = 0;
         while(_loc3_ < this.levelsPerPage)
         {
            _loc4_ = param1 + "-" + (_loc3_ + 1);
            _loc2_.push(_loc4_);
            _loc3_++;
         }
         return _loc2_;
      }
      
      private function initializeLevelNames() : void
      {
         var _loc1_:Array = null;
         var _loc2_:int = 0;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(this.mLevelNames && this.mLevelNames.length < this.getNumLevels())
         {
            throw new Error("Not enough level names defined for episode: " + this.mLevelNames.length + " names, " + this.getNumLevels() + " levels");
         }
         if(this.mLevelNames == null)
         {
            _loc1_ = new Array();
            for each(_loc2_ in this.mPageIndexes)
            {
               _loc3_ = this.getDefaultLevelNamesForPage(_loc2_);
               for each(_loc4_ in _loc3_)
               {
                  _loc1_.push(_loc4_);
               }
            }
            this.mLevelNames = _loc1_;
         }
      }
      
      public function getLevelNames() : Array
      {
         this.initializeLevelNames();
         return this.mLevelNames.concat();
      }
      
      public function getPageForLevel(param1:String) : int
      {
         var _loc2_:int = this.mLevelNames.indexOf(param1);
         if(_loc2_ >= 0)
         {
            return _loc2_ / this.mLevelsPerPage;
         }
         return -1;
      }
      
      public function mCharCode(param1:String) : int
      {
         var _loc2_:int = this.mLevelNames.indexOf(param1);
         if(_loc2_ >= 0)
         {
            return _loc2_ % this.mLevelsPerPage;
         }
         return -1;
      }
      
      public function getNextLevelId(param1:String) : String
      {
         this.initializeLevelNames();
         var _loc2_:int = this.getLevelIndex(param1);
         if(_loc2_ >= 0 && _loc2_ < this.mLevelNames.length - 1)
         {
            return this.mLevelNames[_loc2_ + 1];
         }
         return null;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set name(param1:String) : void
      {
         this.mName = param1;
      }
      
      public function get menuImage() : String
      {
         return this.mMenuImage;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.mMenuImage = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.mLevelsPerPage;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.mLevelsPerPage = param1;
      }
      
      public function set levelSelectionBGColors(param1:Array) : void
      {
         this.mLevelSelectionBGColors = param1;
      }
      
      public function get currentPage() : int
      {
         return this.mCurrentPage;
      }
      
      public function set currentPage(param1:int) : void
      {
         if(param1 >= 0 && param1 < this.pageCount)
         {
            this.mCurrentPage = param1;
         }
      }
      
      public function get pageCount() : int
      {
         return this.mPageIndexes.length;
      }
      
      public function getPageIndex(param1:int) : int
      {
         if(param1 >= 0 && param1 < this.pageCount)
         {
            return this.mPageIndexes[param1];
         }
         return -1;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         var _loc2_:String = null;
         this.mPageIndexes = new Vector.<int>();
         for each(_loc2_ in param1)
         {
            this.mPageIndexes.push(parseInt(_loc2_));
         }
      }
      
      public function addCutScene(param1:String, param2:String) : void
      {
         this.mCutScenes[param1] = param2;
      }
      
      public function getCutScene(param1:String) : String
      {
         return this.mCutScenes[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.mLevelButtons;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.mLevelButtons = param1;
      }
      
      public function get menuImageLeft() : String
      {
         return this.mMenuImageLeft;
      }
      
      public function set menuImageLeft(param1:String) : void
      {
         this.mMenuImageLeft = param1;
      }
      
      public function get menuImageRight() : String
      {
         return this.mMenuImageRight;
      }
      
      public function set menuImageRight(param1:String) : void
      {
         this.mMenuImageRight = param1;
      }
      
      public function get writtenName() : String
      {
         return this.mWrittenName;
      }
      
      public function set writtenName(param1:String) : void
      {
         this.mWrittenName = param1;
      }
      
      public function addLevel(param1:String, param2:LevelModel) : void
      {
         this.mLevels[param1] = param2;
      }
      
      public function getLevel(param1:String) : LevelModel
      {
         return this.mLevels[param1];
      }
      
      public function get isHidden() : Boolean
      {
         return this.mIsHidden;
      }
      
      public function set isHidden(param1:Boolean) : void
      {
         this.mIsHidden = param1;
      }
      
      public function get isLocked() : Boolean
      {
         return this.dynamic;
      }
      
      public function set isLocked(param1:Boolean) : void
      {
         this.dynamic = param1;
      }
   }
}
