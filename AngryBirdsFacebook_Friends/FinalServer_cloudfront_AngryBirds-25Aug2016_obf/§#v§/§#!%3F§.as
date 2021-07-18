package §#v§
{
   import §3!a§.§["b§;
   
   public class §#!?§
   {
      
      public static const §%$7§:String = "1-1";
       
      
      protected var §,#!§:Vector.<§=!Z§> = null;
      
      protected var §0#L§:String = null;
      
      private var §5"K§:String = null;
      
      protected var §^_§:String = null;
      
      private var §=#9§:int = 0;
      
      public function §#!?§()
      {
         super();
      }
      
      public function get currentLevelNumericName() : String
      {
         return this.§5"K§;
      }
      
      public function get currentLevel() : String
      {
         return this.§0#L§;
      }
      
      public function get previousLevel() : String
      {
         return this.§^_§;
      }
      
      public function get §'!h§() : String
      {
         return this.§]r§(this.§^_§);
      }
      
      public function get currentEpisode() : int
      {
         return this.§=#9§;
      }
      
      public function get §0"B§() : String
      {
         if(this.getCurrentEpisodeModel())
         {
            return this.getCurrentEpisodeModel().writtenName + " - " + (this.getCurrentEpisodeModel().§ use§(this.currentLevel) + 1);
         }
         return null;
      }
      
      public function §>O§(param1:Object) : void
      {
         var _loc2_:Object = null;
         this.§,#!§ = new Vector.<§=!Z§>();
         for each(_loc2_ in param1.episodes)
         {
            this.§,#!§.push(this.createEpisodeModelFromData(_loc2_));
         }
      }
      
      protected function createEpisodeModelFromData(param1:Object) : §=!Z§
      {
         var _loc3_:* = null;
         var _loc2_:§=!Z§ = this.§93§(param1.levelNames);
         _loc2_.levelsPerPage = param1.levelsPerPage;
         _loc2_.name = param1.name;
         _loc2_.menuImage = param1.menuImage;
         _loc2_.§4"5§ = param1.leftCorner;
         _loc2_.§&q§ = param1.rightCorner;
         _loc2_.§&!§ = param1.pageColors;
         _loc2_.pageIndexes = param1.pageIndexes;
         _loc2_.levelButtons = param1.levelButtons;
         _loc2_.writtenName = param1.writtenName;
         _loc2_.§]#>§ = param1.hidden;
         _loc2_.§&#]§ = param1.locked;
         if(param1.cutscenes)
         {
            for(_loc3_ in param1.cutscenes)
            {
               _loc2_.§"#w§(_loc3_,param1.cutscenes[_loc3_]);
            }
         }
         return _loc2_;
      }
      
      protected function §93§(param1:Array) : §=!Z§
      {
         return new §=!Z§(param1);
      }
      
      public function getEpisodeForLevel(param1:String) : §=!Z§
      {
         var _loc2_:§=!Z§ = null;
         if(!param1)
         {
            return null;
         }
         for each(_loc2_ in this.§,#!§)
         {
            if(_loc2_.§[#+§(param1.toLowerCase()))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §7#d§(param1:String) : int
      {
         var _loc3_:§=!Z§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§,#!§.length)
         {
            _loc3_ = this.§,#!§[_loc2_];
            if(_loc3_.§[#+§(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public function getEpisode(param1:int) : §=!Z§
      {
         if(param1 >= 0 && param1 < this.§,#!§.length)
         {
            return this.§,#!§[param1];
         }
         return null;
      }
      
      public function getEpisodeByName(param1:String) : §=!Z§
      {
         var _loc2_:§=!Z§ = null;
         for each(_loc2_ in this.§,#!§)
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
         return this.§,#!§.length;
      }
      
      public function getLevelForId(param1:String) : §-"R§
      {
         var _loc2_:§=!Z§ = this.getEpisodeForLevel(param1);
         if(!_loc2_)
         {
            throw new Error("Error! Level \'" + param1 + "\' does not exist.");
         }
         return _loc2_.§!#?§(param1);
      }
      
      public function addLevel(param1:String, param2:§-"R§) : void
      {
         var _loc3_:§=!Z§ = this.getEpisodeForLevel(param1);
         if(_loc3_)
         {
            _loc3_.addLevel(param1,param2);
         }
      }
      
      public function getSilverScoreForLevel(param1:String) : int
      {
         var _loc2_:§-"R§ = this.getLevelForId(param1);
         return _loc2_.scoreSilver;
      }
      
      public function getGoldScoreForLevel(param1:String) : int
      {
         var _loc2_:§-"R§ = this.getLevelForId(param1);
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
         var _loc2_:§=!Z§ = this.getEpisodeForLevel(param1);
         if(_loc2_ == null)
         {
            return §%$7§;
         }
         return param1;
      }
      
      public function §]r§(param1:String) : String
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc2_:§=!Z§ = this.getEpisodeForLevel(param1);
         if(_loc2_)
         {
            _loc3_ = _loc2_.§5"@§(param1);
            _loc2_.currentPage = _loc3_;
            _loc4_ = _loc2_.getPageIndex(_loc3_);
            _loc5_ = _loc2_.§43§(param1);
            return _loc4_ + "-" + (_loc5_ + 1);
         }
         return null;
      }
      
      public function loadLevel(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§=!Z§ = null;
         if(param1 != this.§0#L§)
         {
            _loc2_ = this.§7#d§(param1);
            if(_loc2_ >= 0)
            {
               this.§=#9§ = _loc2_;
               this.§^_§ = this.§0#L§;
               this.§0#L§ = param1;
               _loc3_ = this.getCurrentEpisodeModel();
               if(_loc3_)
               {
                  _loc3_.currentPage = _loc3_.§5"@§(param1);
               }
               this.§5"K§ = this.§]r§(param1);
            }
            else
            {
               this.§^_§ = this.§0#L§;
               this.resetCurrentLevel();
            }
         }
      }
      
      public function getCurrentEpisodeModel() : §=!Z§
      {
         return this.§,#!§[this.§=#9§];
      }
      
      public function §1#H§() : Boolean
      {
         return true;
      }
      
      public function isCutSceneNext() : Boolean
      {
         var _loc1_:String = this.getNextLevelId();
         var _loc2_:String = this.getCurrentEpisodeModel().getCutScene(this.§0#L§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ == null)
         {
            §["b§.§^!o§(_loc2_);
         }
         return true;
      }
      
      public function getNextLevelId() : String
      {
         return this.getCurrentEpisodeModel().getNextLevelId(this.§0#L§);
      }
      
      public function selectEpisode(param1:int) : void
      {
         this.§=#9§ = param1;
      }
      
      public function §##j§(param1:String) : void
      {
         this.§=#9§ = this.§,#!§.indexOf(this.getEpisodeByName(param1));
      }
      
      public function resetPreviousLevel() : void
      {
         this.§^_§ = null;
      }
      
      public function resetCurrentLevel() : void
      {
         this.§0#L§ = null;
         this.§5"K§ = null;
      }
   }
}
