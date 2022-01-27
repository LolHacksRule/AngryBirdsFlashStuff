package §null §
{
   import §+"I§.§90§;
   
   public class §5#§
   {
      
      public static const §%!c§:String = "1-1";
       
      
      protected var §&!G§:Vector.<§5!K§> = null;
      
      protected var §88§:String = null;
      
      private var §2#-§:String = null;
      
      private var §&F§:String = null;
      
      private var §0"p§:int = 0;
      
      public function §5#§()
      {
         super();
      }
      
      public function get currentLevelNumericName() : String
      {
         return this.§2#-§;
      }
      
      public function get currentLevel() : String
      {
         return this.§88§;
      }
      
      public function get previousLevel() : String
      {
         return this.§&F§;
      }
      
      public function get previousLevelNumericName() : String
      {
         return this.§""U§(this.§&F§);
      }
      
      public function get currentEpisode() : int
      {
         return this.§0"p§;
      }
      
      public function get currentLevelWrittenName() : String
      {
         if(this.getCurrentEpisodeModel())
         {
            return this.getCurrentEpisodeModel().writtenName + " - " + (this.getCurrentEpisodeModel().getLevelIndex(this.currentLevel) + 1);
         }
         return null;
      }
      
      public function §^!M§(param1:Object) : void
      {
         var _loc2_:Object = null;
         this.§&!G§ = new Vector.<§5!K§>();
         for each(_loc2_ in param1.episodes)
         {
            this.§&!G§.push(this.createEpisodeModelFromData(_loc2_));
         }
      }
      
      protected function createEpisodeModelFromData(param1:Object) : §5!K§
      {
         var _loc3_:* = null;
         var _loc2_:§5!K§ = this.getEpisodeModel(param1.levelNames);
         _loc2_.levelsPerPage = param1.levelsPerPage;
         _loc2_.name = param1.name;
         _loc2_.menuImage = param1.menuImage;
         _loc2_.§?"r§ = param1.leftCorner;
         _loc2_.§1!F§ = param1.rightCorner;
         _loc2_.§22§ = param1.pageColors;
         _loc2_.pageIndexes = param1.pageIndexes;
         _loc2_.levelButtons = param1.levelButtons;
         _loc2_.writtenName = param1.writtenName;
         _loc2_.§6!Y§ = param1.hidden;
         _loc2_.isLocked = param1.locked;
         if(param1.cutscenes)
         {
            for(_loc3_ in param1.cutscenes)
            {
               _loc2_.§0!u§(_loc3_,param1.cutscenes[_loc3_]);
            }
         }
         return _loc2_;
      }
      
      protected function getEpisodeModel(param1:Array) : §5!K§
      {
         return new §5!K§(param1);
      }
      
      public function getEpisodeForLevel(param1:String) : §5!K§
      {
         var _loc2_:§5!K§ = null;
         if(!param1)
         {
            return null;
         }
         for each(_loc2_ in this.§&!G§)
         {
            if(_loc2_.§0q§(param1.toLowerCase()))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §^8§(param1:String) : int
      {
         var _loc3_:§5!K§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§&!G§.length)
         {
            _loc3_ = this.§&!G§[_loc2_];
            if(_loc3_.§0q§(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public function getEpisode(param1:int) : §5!K§
      {
         if(param1 >= 0 && param1 < this.§&!G§.length)
         {
            return this.§&!G§[param1];
         }
         return null;
      }
      
      public function getEpisodeByName(param1:String) : §5!K§
      {
         var _loc2_:§5!K§ = null;
         for each(_loc2_ in this.§&!G§)
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
         return this.§&!G§.length;
      }
      
      public function getLevelForId(param1:String) : §>#-§
      {
         var _loc2_:§5!K§ = this.getEpisodeForLevel(param1);
         if(!_loc2_)
         {
            throw new Error("Error! Level \'" + param1 + "\' does not exist.");
         }
         return _loc2_.§;x§(param1);
      }
      
      public function addLevel(param1:String, param2:§>#-§) : void
      {
         var _loc3_:§5!K§ = this.getEpisodeForLevel(param1);
         if(_loc3_)
         {
            _loc3_.addLevel(param1,param2);
         }
      }
      
      public function getSilverScoreForLevel(param1:String) : int
      {
         var _loc2_:§>#-§ = this.getLevelForId(param1);
         return _loc2_.scoreSilver;
      }
      
      public function getGoldScoreForLevel(param1:String) : int
      {
         var _loc2_:§>#-§ = this.getLevelForId(param1);
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
         var _loc2_:§5!K§ = this.getEpisodeForLevel(param1);
         if(_loc2_ == null)
         {
            return §%!c§;
         }
         return param1;
      }
      
      public function §""U§(param1:String) : String
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc2_:§5!K§ = this.getEpisodeForLevel(param1);
         if(_loc2_)
         {
            _loc3_ = _loc2_.§6!O§(param1);
            _loc2_.currentPage = _loc3_;
            _loc4_ = _loc2_.getPageIndex(_loc3_);
            _loc5_ = _loc2_.§7"p§(param1);
            return _loc4_ + "-" + (_loc5_ + 1);
         }
         return null;
      }
      
      public function loadLevel(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§5!K§ = null;
         if(param1 != this.§88§)
         {
            _loc2_ = this.§^8§(param1);
            if(_loc2_ >= 0)
            {
               this.§0"p§ = _loc2_;
               this.§&F§ = this.§88§;
               this.§88§ = param1;
               _loc3_ = this.getCurrentEpisodeModel();
               if(_loc3_)
               {
                  _loc3_.currentPage = _loc3_.§6!O§(param1);
               }
               this.§2#-§ = this.§""U§(param1);
            }
            else
            {
               this.§&F§ = this.§88§;
               this.§5"C§();
            }
         }
      }
      
      public function getCurrentEpisodeModel() : §5!K§
      {
         return this.§&!G§[this.§0"p§];
      }
      
      public function §#"i§() : Boolean
      {
         return true;
      }
      
      public function isCutSceneNext() : Boolean
      {
         var _loc1_:String = this.getNextLevelId();
         var _loc2_:String = this.getCurrentEpisodeModel().getCutScene(this.§88§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ == null)
         {
            §90§.§5"k§(_loc2_);
         }
         return true;
      }
      
      public function getNextLevelId() : String
      {
         return this.getCurrentEpisodeModel().getNextLevelId(this.§88§);
      }
      
      public function selectEpisode(param1:int) : void
      {
         this.§0"p§ = param1;
      }
      
      public function selectEpisodeByName(param1:String) : void
      {
         this.§0"p§ = this.§&!G§.indexOf(this.getEpisodeByName(param1));
      }
      
      public function resetPreviousLevel() : void
      {
         this.§&F§ = null;
      }
      
      public function §5"C§() : void
      {
         this.§88§ = null;
         this.§2#-§ = null;
      }
   }
}
