package com.angrybirds.data.level
{
   import com.rovio.graphics.cutscenes.CutSceneManager;
   
   public class LevelManager
   {
      
      public static const DEFAULT_LEVEL_ID:String = "1-1";
       
      
      protected var mEpisodes:Vector.<EpisodeModel> = null;
      
      protected var mCurrentLevel:String = null;
      
      private var mCurrentLevelNumeric:String = null;
      
      protected var mPreviousLevel:String = null;
      
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
      
      public function initEpisodes(episodeData:Object) : void
      {
         var data:Object = null;
         this.mEpisodes = new Vector.<EpisodeModel>();
         for each(data in episodeData.episodes)
         {
            this.mEpisodes.push(this.createEpisodeModelFromData(data));
         }
      }
      
      protected function createEpisodeModelFromData(data:Object) : EpisodeModel
      {
         var level:* = null;
         var episode:EpisodeModel = this.getEpisodeModel(data.levelNames);
         episode.levelsPerPage = data.levelsPerPage;
         episode.name = data.name;
         episode.menuImage = data.menuImage;
         episode.menuImageLeft = data.leftCorner;
         episode.menuImageRight = data.rightCorner;
         episode.levelSelectionBGColors = data.pageColors;
         episode.pageIndexes = data.pageIndexes;
         episode.levelButtons = data.levelButtons;
         episode.writtenName = data.writtenName;
         episode.isHidden = data.hidden;
         episode.isLocked = data.locked;
         if(data.cutscenes)
         {
            for(level in data.cutscenes)
            {
               episode.addCutScene(level,data.cutscenes[level]);
            }
         }
         return episode;
      }
      
      protected function getEpisodeModel(levelNames:Array) : EpisodeModel
      {
         return new EpisodeModel(levelNames);
      }
      
      public function getEpisodeForLevel(levelId:String) : EpisodeModel
      {
         var episode:EpisodeModel = null;
         if(!levelId)
         {
            return null;
         }
         for each(episode in this.mEpisodes)
         {
            if(episode.hasLevel(levelId.toLowerCase()))
            {
               return episode;
            }
         }
         return null;
      }
      
      public function getEpisodeIndexForLevel(levelId:String) : int
      {
         var episode:EpisodeModel = null;
         for(var i:int = 0; i < this.mEpisodes.length; i++)
         {
            episode = this.mEpisodes[i];
            if(episode.hasLevel(levelId))
            {
               return i;
            }
         }
         return -1;
      }
      
      public function getEpisode(index:int) : EpisodeModel
      {
         if(index >= 0 && index < this.mEpisodes.length)
         {
            return this.mEpisodes[index];
         }
         return null;
      }
      
      public function getEpisodeByName(name:String) : EpisodeModel
      {
         var episode:EpisodeModel = null;
         for each(episode in this.mEpisodes)
         {
            if(episode.name == name)
            {
               return episode;
            }
         }
         return null;
      }
      
      public function getEpisodeCount() : int
      {
         return this.mEpisodes.length;
      }
      
      public function getLevelForId(id:String) : LevelModel
      {
         var episode:EpisodeModel = this.getEpisodeForLevel(id);
         if(!episode)
         {
            throw new Error("Error! Level \'" + id + "\' does not exist.");
         }
         return episode.getLevel(id);
      }
      
      public function addLevel(id:String, level:LevelModel) : void
      {
         var episode:EpisodeModel = this.getEpisodeForLevel(id);
         if(episode)
         {
            episode.addLevel(id,level);
         }
      }
      
      public function getSilverScoreForLevel(levelId:String) : int
      {
         var level:LevelModel = this.getLevelForId(levelId);
         return level.scoreSilver;
      }
      
      public function getGoldScoreForLevel(levelId:String) : int
      {
         var level:LevelModel = this.getLevelForId(levelId);
         return level.scoreGold;
      }
      
      public function getNumStarsForLevel(levelId:String, score:int) : int
      {
         if(score <= 0)
         {
            return 0;
         }
         if(score < this.getSilverScoreForLevel(levelId))
         {
            return 1;
         }
         if(score < this.getGoldScoreForLevel(levelId))
         {
            return 2;
         }
         return 3;
      }
      
      public function getValidLevelId(levelId:String) : String
      {
         var episode:EpisodeModel = this.getEpisodeForLevel(levelId);
         if(episode == null)
         {
            return DEFAULT_LEVEL_ID;
         }
         return levelId;
      }
      
      public function getNumericLevelName(levelId:String) : String
      {
         var currentPageIndex:int = 0;
         var currentPage:int = 0;
         var currentPageOffset:int = 0;
         var episodeModel:EpisodeModel = this.getEpisodeForLevel(levelId);
         if(episodeModel)
         {
            currentPageIndex = episodeModel.getPageForLevel(levelId);
            episodeModel.currentPage = currentPageIndex;
            currentPage = episodeModel.getPageIndex(currentPageIndex);
            currentPageOffset = episodeModel.getIndexOnPageForLevel(levelId);
            return currentPage + "-" + (currentPageOffset + 1);
         }
         return null;
      }
      
      public function loadLevel(levelId:String) : void
      {
         var episodeIndex:int = 0;
         var episodeModel:EpisodeModel = null;
         if(levelId != this.mCurrentLevel)
         {
            episodeIndex = this.getEpisodeIndexForLevel(levelId);
            if(episodeIndex >= 0)
            {
               this.mCurrentEpisode = episodeIndex;
               this.mPreviousLevel = this.mCurrentLevel;
               this.mCurrentLevel = levelId;
               episodeModel = this.getCurrentEpisodeModel();
               if(episodeModel)
               {
                  episodeModel.currentPage = episodeModel.getPageForLevel(levelId);
               }
               this.mCurrentLevelNumeric = this.getNumericLevelName(levelId);
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
         var nextLevelId:String = this.getNextLevelId();
         var cutSceneName:String = this.getCurrentEpisodeModel().getCutScene(this.mCurrentLevel + "-OUTRO");
         if(!cutSceneName)
         {
            return false;
         }
         if(nextLevelId == null)
         {
            CutSceneManager.setFinalOutro(cutSceneName);
         }
         return true;
      }
      
      public function getNextLevelId() : String
      {
         return this.getCurrentEpisodeModel().getNextLevelId(this.mCurrentLevel);
      }
      
      public function selectEpisode(index:int) : void
      {
         this.mCurrentEpisode = index;
      }
      
      public function selectEpisodeByName(episodeName:String) : void
      {
         this.mCurrentEpisode = this.mEpisodes.indexOf(this.getEpisodeByName(episodeName));
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
