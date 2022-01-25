package §%!B§
{
   import §<!0§.§-k§;
   
   public class §0![§
   {
      
      public static const §2!p§:String = "1-1";
       
      
      protected var §[",§:Vector.<§7C§> = null;
      
      protected var §?n§:String = null;
      
      private var §7!T§:String = null;
      
      private var §?!]§:String = null;
      
      private var §1U§:int = 0;
      
      public function §0![§()
      {
         super();
      }
      
      public function get currentLevelNumericName() : String
      {
         return this.§7!T§;
      }
      
      public function get currentLevel() : String
      {
         return this.§?n§;
      }
      
      public function get previousLevel() : String
      {
         return this.§?!]§;
      }
      
      public function get previousLevelNumericName() : String
      {
         return this.§7!g§(this.§?!]§);
      }
      
      public function get currentEpisode() : int
      {
         return this.§1U§;
      }
      
      public function get §#!p§() : String
      {
         if(this.getCurrentEpisodeModel())
         {
            return this.getCurrentEpisodeModel().writtenName + " - " + (this.getCurrentEpisodeModel().§-!H§(this.currentLevel) + 1);
         }
         return null;
      }
      
      public function §5l§(param1:Object) : void
      {
         var _loc2_:Object = null;
         this.§[",§ = new Vector.<§7C§>();
         for each(_loc2_ in param1.episodes)
         {
            this.§[",§.push(this.§?!i§(_loc2_));
         }
      }
      
      protected function §?!i§(param1:Object) : §7C§
      {
         var _loc3_:* = null;
         var _loc2_:§7C§ = this.getEpisodeModel(param1.levelNames);
         _loc2_.levelsPerPage = param1.levelsPerPage;
         _loc2_.name = param1.name;
         _loc2_.menuImage = param1.menuImage;
         _loc2_.§#T§ = param1.leftCorner;
         _loc2_.§@"2§ = param1.rightCorner;
         _loc2_.§]!]§ = param1.pageColors;
         _loc2_.pageIndexes = param1.pageIndexes;
         _loc2_.levelButtons = param1.levelButtons;
         _loc2_.writtenName = param1.writtenName;
         _loc2_.§%!u§ = param1.hidden;
         _loc2_.§'K§ = param1.locked;
         if(param1.cutscenes)
         {
            for(_loc3_ in param1.cutscenes)
            {
               _loc2_.§0x§(_loc3_,param1.cutscenes[_loc3_]);
            }
         }
         return _loc2_;
      }
      
      protected function getEpisodeModel(param1:Array) : §7C§
      {
         return new §7C§(param1);
      }
      
      public function getEpisodeForLevel(param1:String) : §7C§
      {
         var _loc2_:§7C§ = null;
         if(!param1)
         {
            return null;
         }
         for each(_loc2_ in this.§[",§)
         {
            if(_loc2_.§5"0§(param1.toLowerCase()))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §7!v§(param1:String) : int
      {
         var _loc3_:§7C§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§[",§.length)
         {
            _loc3_ = this.§[",§[_loc2_];
            if(_loc3_.§5"0§(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public function getEpisode(param1:int) : §7C§
      {
         if(param1 >= 0 && param1 < this.§[",§.length)
         {
            return this.§[",§[param1];
         }
         return null;
      }
      
      public function §';§(param1:String) : §7C§
      {
         var _loc2_:§7C§ = null;
         for each(_loc2_ in this.§[",§)
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
         return this.§[",§.length;
      }
      
      public function getLevelForId(param1:String) : §5L§
      {
         var _loc2_:§7C§ = this.getEpisodeForLevel(param1);
         if(!_loc2_)
         {
            throw new Error("Error! Level \'" + param1 + "\' does not exist.");
         }
         return _loc2_.§92§(param1);
      }
      
      public function §`!E§(param1:String, param2:§5L§) : void
      {
         var _loc3_:§7C§ = this.getEpisodeForLevel(param1);
         if(_loc3_)
         {
            _loc3_.§`!E§(param1,param2);
         }
      }
      
      public function getSilverScoreForLevel(param1:String) : int
      {
         var _loc2_:§5L§ = this.getLevelForId(param1);
         return _loc2_.scoreSilver;
      }
      
      public function getGoldScoreForLevel(param1:String) : int
      {
         var _loc2_:§5L§ = this.getLevelForId(param1);
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
         var _loc2_:§7C§ = this.getEpisodeForLevel(param1);
         if(_loc2_ == null)
         {
            return §2!p§;
         }
         return param1;
      }
      
      public function §7!g§(param1:String) : String
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc2_:§7C§ = this.getEpisodeForLevel(param1);
         if(_loc2_)
         {
            _loc3_ = _loc2_.§2!"§(param1);
            _loc2_.currentPage = _loc3_;
            _loc4_ = _loc2_.getPageIndex(_loc3_);
            _loc5_ = _loc2_.§!!B§(param1);
            return _loc4_ + "-" + (_loc5_ + 1);
         }
         return null;
      }
      
      public function loadLevel(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§7C§ = null;
         if(param1 != this.§?n§)
         {
            _loc2_ = this.§7!v§(param1);
            if(_loc2_ >= 0)
            {
               this.§1U§ = _loc2_;
               this.§?!]§ = this.§?n§;
               this.§?n§ = param1;
               _loc3_ = this.getCurrentEpisodeModel();
               if(_loc3_)
               {
                  _loc3_.currentPage = _loc3_.§2!"§(param1);
               }
               this.§7!T§ = this.§7!g§(param1);
            }
            else
            {
               this.§?!]§ = this.§?n§;
               this.resetCurrentLevel();
            }
         }
      }
      
      public function getCurrentEpisodeModel() : §7C§
      {
         return this.§[",§[this.§1U§];
      }
      
      public function §;!y§() : Boolean
      {
         return true;
      }
      
      public function isCutSceneNext() : Boolean
      {
         var _loc1_:String = this.getNextLevelId();
         var _loc2_:String = this.getCurrentEpisodeModel().getCutScene(this.§?n§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ == null)
         {
            §-k§.§^W§(_loc2_);
         }
         return true;
      }
      
      public function getNextLevelId() : String
      {
         return this.getCurrentEpisodeModel().getNextLevelId(this.§?n§);
      }
      
      public function selectEpisode(param1:int) : void
      {
         this.§1U§ = param1;
      }
      
      public function §5-§(param1:String) : void
      {
         this.§1U§ = this.§[",§.indexOf(this.§';§(param1));
      }
      
      public function resetPreviousLevel() : void
      {
         this.§?!]§ = null;
      }
      
      public function resetCurrentLevel() : void
      {
         this.§?n§ = null;
         this.§7!T§ = null;
      }
   }
}
