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
      
      protected var mIsTournament:Boolean = false;
      
      protected var mLevels:HashMap;
      
      public function EpisodeModel(levelNames:Array)
      {
         var levelId:String = null;
         this.mCutScenes = new HashMap();
         this.mLevels = new HashMap();
         super();
         if(levelNames)
         {
            this.mLevelNames = [];
            for each(levelId in levelNames)
            {
               this.mLevelNames.push(levelId.toLowerCase());
            }
         }
      }
      
      public function getNumLevels() : int
      {
         return this.pageCount * this.levelsPerPage;
      }
      
      public function getLevelIndex(levelName:String) : int
      {
         this.initializeLevelNames();
         return int(this.mLevelNames.indexOf(levelName));
      }
      
      public function getLevelName(index:int) : String
      {
         this.initializeLevelNames();
         if(index >= 0 && index < this.mLevelNames.length)
         {
            return this.mLevelNames[index];
         }
         return null;
      }
      
      public function getColorForPage(page:int) : Object
      {
         return this.mLevelSelectionBGColors[page];
      }
      
      public function getLevelButtonForPage(page:int) : String
      {
         return this.mLevelButtons[page];
      }
      
      public function hasLevel(levelName:String) : Boolean
      {
         this.initializeLevelNames();
         return this.mLevelNames.indexOf(levelName) != -1;
      }
      
      public function addLevelName(levelName:String) : Boolean
      {
         this.initializeLevelNames();
         if(this.mLevelNames.indexOf(levelName) >= 0)
         {
            return false;
         }
         this.mLevelNames.push(levelName);
         return true;
      }
      
      public function getLevelNamesForPage(pageIndex:int) : Array
      {
         var i:int = 0;
         var levelName:String = null;
         this.initializeLevelNames();
         var levels:Array = new Array();
         if(pageIndex >= 0 && pageIndex < this.pageCount)
         {
            for(i = 0; i < this.levelsPerPage; i++)
            {
               levelName = this.mLevelNames[i + pageIndex * this.levelsPerPage];
               levels.push(levelName);
            }
         }
         return levels;
      }
      
      protected function getDefaultLevelNamesForPage(page:int) : Array
      {
         var levelString:String = null;
         var levels:Array = [];
         for(var i:int = 0; i < this.levelsPerPage; i++)
         {
            levelString = page + "-" + (i + 1);
            levels.push(levelString);
         }
         return levels;
      }
      
      protected function initializeLevelNames() : void
      {
         var levels:Array = null;
         var page:int = 0;
         var pageLevels:Array = null;
         var level:String = null;
         if(!this.isTournament && this.mLevelNames && this.mLevelNames.length < this.getNumLevels())
         {
            throw new Error("Not enough level names defined for episode: " + this.mLevelNames.length + " names, " + this.getNumLevels() + " levels");
         }
         if(this.mLevelNames == null)
         {
            if(this.isTournament)
            {
               this.mLevelNames = new Array();
            }
            else
            {
               levels = new Array();
               for each(page in this.mPageIndexes)
               {
                  pageLevels = this.getDefaultLevelNamesForPage(page);
                  for each(level in pageLevels)
                  {
                     levels.push(level);
                  }
               }
               this.mLevelNames = levels;
            }
         }
      }
      
      public function getLevelNames() : Array
      {
         this.initializeLevelNames();
         return this.mLevelNames.concat();
      }
      
      public function getPageForLevel(levelId:String) : int
      {
         var index:int = this.mLevelNames.indexOf(levelId);
         if(index >= 0)
         {
            return index / this.mLevelsPerPage;
         }
         return -1;
      }
      
      public function getIndexOnPageForLevel(levelId:String) : int
      {
         var index:int = this.mLevelNames.indexOf(levelId);
         if(index >= 0)
         {
            return index % this.mLevelsPerPage;
         }
         return -1;
      }
      
      public function getNextLevelId(levelName:String) : String
      {
         this.initializeLevelNames();
         var index:int = this.getLevelIndex(levelName);
         if(index >= 0 && index < this.mLevelNames.length - 1)
         {
            return this.mLevelNames[index + 1];
         }
         return null;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set name(value:String) : void
      {
         this.mName = value;
      }
      
      public function get menuImage() : String
      {
         return this.mMenuImage;
      }
      
      public function set menuImage(value:String) : void
      {
         this.mMenuImage = value;
      }
      
      public function get levelsPerPage() : int
      {
         return this.mLevelsPerPage;
      }
      
      public function set levelsPerPage(value:int) : void
      {
         this.mLevelsPerPage = value;
      }
      
      public function set levelSelectionBGColors(value:Array) : void
      {
         this.mLevelSelectionBGColors = value;
      }
      
      public function get currentPage() : int
      {
         return this.mCurrentPage;
      }
      
      public function set currentPage(value:int) : void
      {
         if(value >= 0 && value < this.pageCount)
         {
            this.mCurrentPage = value;
         }
      }
      
      public function get pageCount() : int
      {
         return this.mPageIndexes.length;
      }
      
      public function getPageIndex(index:int) : int
      {
         if(index >= 0 && index < this.pageCount)
         {
            return this.mPageIndexes[index];
         }
         return -1;
      }
      
      public function set pageIndexes(value:Array) : void
      {
         var pageIndex:String = null;
         this.mPageIndexes = new Vector.<int>();
         for each(pageIndex in value)
         {
            this.mPageIndexes.push(parseInt(pageIndex));
         }
      }
      
      public function addCutScene(level:String, cutScene:String) : void
      {
         this.mCutScenes[level] = cutScene;
      }
      
      public function getCutScene(level:String) : String
      {
         return this.mCutScenes[level];
      }
      
      public function get levelButtons() : Array
      {
         return this.mLevelButtons;
      }
      
      public function set levelButtons(value:Array) : void
      {
         this.mLevelButtons = value;
      }
      
      public function get menuImageLeft() : String
      {
         return this.mMenuImageLeft;
      }
      
      public function set menuImageLeft(value:String) : void
      {
         this.mMenuImageLeft = value;
      }
      
      public function get menuImageRight() : String
      {
         return this.mMenuImageRight;
      }
      
      public function set menuImageRight(value:String) : void
      {
         this.mMenuImageRight = value;
      }
      
      public function get writtenName() : String
      {
         return this.mWrittenName;
      }
      
      public function set writtenName(value:String) : void
      {
         this.mWrittenName = value;
      }
      
      public function addLevel(id:String, level:LevelModel) : void
      {
         this.mLevels[id] = level;
      }
      
      public function getLevel(id:String) : LevelModel
      {
         return this.mLevels[id];
      }
      
      public function get isHidden() : Boolean
      {
         return this.mIsHidden;
      }
      
      public function set isHidden(value:Boolean) : void
      {
         this.mIsHidden = value;
      }
      
      public function get isLocked() : Boolean
      {
         return this.mIsLocked;
      }
      
      public function set isLocked(value:Boolean) : void
      {
         this.mIsLocked = value;
      }
      
      public function get isTournament() : Boolean
      {
         return this.mIsTournament;
      }
      
      public function set isTournament(value:Boolean) : void
      {
         this.mIsTournament = value;
      }
   }
}
