package §7#$§
{
   import §8$=§.§4#=§;
   
   public class §]#q§
   {
      
      public static const §47§:String = "1-1";
       
      
      protected var §%"A§:Vector.<§3!,§> = null;
      
      protected var §5"s§:String = null;
      
      private var §5"j§:String = null;
      
      protected var §'#P§:String = null;
      
      private var §,"z§:int = 0;
      
      public function §]#q§()
      {
         super();
      }
      
      public function get currentLevelNumericName() : String
      {
         return this.§5"j§;
      }
      
      public function get currentLevel() : String
      {
         return this.§5"s§;
      }
      
      public function get previousLevel() : String
      {
         return this.§'#P§;
      }
      
      public function get §+%§() : String
      {
         return this.§""Q§(this.§'#P§);
      }
      
      public function get currentEpisode() : int
      {
         return this.§,"z§;
      }
      
      public function get §1"3§() : String
      {
         if(this.getCurrentEpisodeModel())
         {
            return this.getCurrentEpisodeModel().writtenName + " - " + (this.getCurrentEpisodeModel().§]! §(this.currentLevel) + 1);
         }
         return null;
      }
      
      public function §@!C§(param1:Object) : void
      {
         var _loc2_:Object = null;
         this.§%"A§ = new Vector.<§3!,§>();
         for each(_loc2_ in param1.episodes)
         {
            this.§%"A§.push(this.createEpisodeModelFromData(_loc2_));
         }
      }
      
      protected function createEpisodeModelFromData(param1:Object) : §3!,§
      {
         var _loc3_:* = null;
         var _loc2_:§3!,§ = this.§6!<§(param1.levelNames);
         _loc2_.levelsPerPage = param1.levelsPerPage;
         _loc2_.name = param1.name;
         _loc2_.menuImage = param1.menuImage;
         _loc2_.§,"T§ = param1.leftCorner;
         _loc2_.§;#e§ = param1.rightCorner;
         _loc2_.§]"O§ = param1.pageColors;
         _loc2_.pageIndexes = param1.pageIndexes;
         _loc2_.levelButtons = param1.levelButtons;
         _loc2_.writtenName = param1.writtenName;
         _loc2_.§ !k§ = param1.hidden;
         _loc2_.§&#_§ = param1.locked;
         if(param1.cutscenes)
         {
            for(_loc3_ in param1.cutscenes)
            {
               _loc2_.§5m§(_loc3_,param1.cutscenes[_loc3_]);
            }
         }
         return _loc2_;
      }
      
      protected function §6!<§(param1:Array) : §3!,§
      {
         return new §3!,§(param1);
      }
      
      public function getEpisodeForLevel(param1:String) : §3!,§
      {
         var _loc2_:§3!,§ = null;
         if(!param1)
         {
            return null;
         }
         for each(_loc2_ in this.§%"A§)
         {
            if(_loc2_.§"! §(param1.toLowerCase()))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §<H§(param1:String) : int
      {
         var _loc3_:§3!,§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§%"A§.length)
         {
            _loc3_ = this.§%"A§[_loc2_];
            if(_loc3_.§"! §(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public function getEpisode(param1:int) : §3!,§
      {
         if(param1 >= 0 && param1 < this.§%"A§.length)
         {
            return this.§%"A§[param1];
         }
         return null;
      }
      
      public function getEpisodeByName(param1:String) : §3!,§
      {
         var _loc2_:§3!,§ = null;
         for each(_loc2_ in this.§%"A§)
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
         return this.§%"A§.length;
      }
      
      public function getLevelForId(param1:String) : §?# §
      {
         var _loc2_:§3!,§ = this.getEpisodeForLevel(param1);
         if(!_loc2_)
         {
            throw new Error("Error! Level \'" + param1 + "\' does not exist.");
         }
         return _loc2_.§9#T§(param1);
      }
      
      public function addLevel(param1:String, param2:§?# §) : void
      {
         var _loc3_:§3!,§ = this.getEpisodeForLevel(param1);
         if(_loc3_)
         {
            _loc3_.addLevel(param1,param2);
         }
      }
      
      public function getSilverScoreForLevel(param1:String) : int
      {
         var _loc2_:§?# § = this.getLevelForId(param1);
         return _loc2_.scoreSilver;
      }
      
      public function getGoldScoreForLevel(param1:String) : int
      {
         var _loc2_:§?# § = this.getLevelForId(param1);
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
         var _loc2_:§3!,§ = this.getEpisodeForLevel(param1);
         if(_loc2_ == null)
         {
            return §47§;
         }
         return param1;
      }
      
      public function §""Q§(param1:String) : String
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc2_:§3!,§ = this.getEpisodeForLevel(param1);
         if(_loc2_)
         {
            _loc3_ = _loc2_.§for §(param1);
            _loc2_.currentPage = _loc3_;
            _loc4_ = _loc2_.getPageIndex(_loc3_);
            _loc5_ = _loc2_.§@"g§(param1);
            return _loc4_ + "-" + (_loc5_ + 1);
         }
         return null;
      }
      
      public function loadLevel(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§3!,§ = null;
         if(param1 != this.§5"s§)
         {
            _loc2_ = this.§<H§(param1);
            if(_loc2_ >= 0)
            {
               this.§,"z§ = _loc2_;
               this.§'#P§ = this.§5"s§;
               this.§5"s§ = param1;
               _loc3_ = this.getCurrentEpisodeModel();
               if(_loc3_)
               {
                  _loc3_.currentPage = _loc3_.§for §(param1);
               }
               this.§5"j§ = this.§""Q§(param1);
            }
            else
            {
               this.§'#P§ = this.§5"s§;
               this.resetCurrentLevel();
            }
         }
      }
      
      public function getCurrentEpisodeModel() : §3!,§
      {
         return this.§%"A§[this.§,"z§];
      }
      
      public function §@!r§() : Boolean
      {
         return true;
      }
      
      public function isCutSceneNext() : Boolean
      {
         var _loc1_:String = this.getNextLevelId();
         var _loc2_:String = this.getCurrentEpisodeModel().getCutScene(this.§5"s§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ == null)
         {
            §4#=§.§^$,§(_loc2_);
         }
         return true;
      }
      
      public function getNextLevelId() : String
      {
         return this.getCurrentEpisodeModel().getNextLevelId(this.§5"s§);
      }
      
      public function selectEpisode(param1:int) : void
      {
         this.§,"z§ = param1;
      }
      
      public function §6!;§(param1:String) : void
      {
         this.§,"z§ = this.§%"A§.indexOf(this.getEpisodeByName(param1));
      }
      
      public function resetPreviousLevel() : void
      {
         this.§'#P§ = null;
      }
      
      public function resetCurrentLevel() : void
      {
         this.§5"s§ = null;
         this.§5"j§ = null;
      }
   }
}
