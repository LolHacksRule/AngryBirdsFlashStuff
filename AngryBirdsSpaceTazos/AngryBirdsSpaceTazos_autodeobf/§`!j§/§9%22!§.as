package §`!j§
{
   import §?_§.§^"4§;
   
   public class §9"!§
   {
      
      public static const §]"0§:String = "1-1";
       
      
      protected var §,<§:Vector.<§3,§> = null;
      
      protected var §^`§:String = null;
      
      private var §28§:String = null;
      
      private var §`P§:String = null;
      
      private var §'"%§:int = 0;
      
      public function §9"!§()
      {
         super();
      }
      
      public function get currentLevelNumericName() : String
      {
         return this.§28§;
      }
      
      public function get currentLevel() : String
      {
         return this.§^`§;
      }
      
      public function get previousLevel() : String
      {
         return this.§`P§;
      }
      
      public function get §2!L§() : String
      {
         return this.§7!f§(this.§`P§);
      }
      
      public function get currentEpisode() : int
      {
         return this.§'"%§;
      }
      
      public function get §@u§() : String
      {
         if(this.getCurrentEpisodeModel())
         {
            return this.getCurrentEpisodeModel().writtenName + " - " + (this.getCurrentEpisodeModel().§-!;§(this.currentLevel) + 1);
         }
         return null;
      }
      
      public function § !`§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§3,§ = null;
         var _loc4_:* = null;
         this.§,<§ = new Vector.<§3,§>();
         for each(_loc2_ in param1.episodes)
         {
            _loc3_ = this.getEpisodeModel(_loc2_.levelNames);
            _loc3_.levelsPerPage = _loc2_.levelsPerPage;
            _loc3_.name = _loc2_.name;
            _loc3_.menuImage = _loc2_.menuImage;
            _loc3_.§[! § = _loc2_.leftCorner;
            _loc3_.§`!]§ = _loc2_.rightCorner;
            _loc3_.§9@§ = _loc2_.pageColors;
            _loc3_.pageIndexes = _loc2_.pageIndexes;
            _loc3_.levelButtons = _loc2_.levelButtons;
            _loc3_.writtenName = _loc2_.writtenName;
            _loc3_.§@!i§ = _loc2_.hidden;
            _loc3_.§]Y§ = _loc2_.locked;
            if(_loc2_.cutscenes)
            {
               for(_loc4_ in _loc2_.cutscenes)
               {
                  _loc3_.§ z§(_loc4_,_loc2_.cutscenes[_loc4_]);
               }
            }
            this.§,<§.push(_loc3_);
         }
      }
      
      protected function getEpisodeModel(param1:Array) : §3,§
      {
         return new §3,§(param1);
      }
      
      public function getEpisodeForLevel(param1:String) : §3,§
      {
         var _loc2_:§3,§ = null;
         if(!param1)
         {
            return null;
         }
         for each(_loc2_ in this.§,<§)
         {
            if(_loc2_.§[9§(param1.toLowerCase()))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function § !C§(param1:String) : int
      {
         var _loc3_:§3,§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§,<§.length)
         {
            _loc3_ = this.§,<§[_loc2_];
            if(_loc3_.§[9§(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public function getEpisode(param1:int) : §3,§
      {
         if(param1 >= 0 && param1 < this.§,<§.length)
         {
            return this.§,<§[param1];
         }
         return null;
      }
      
      public function §8E§(param1:String) : §3,§
      {
         var _loc2_:§3,§ = null;
         for each(_loc2_ in this.§,<§)
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
         return this.§,<§.length;
      }
      
      public function getLevelForId(param1:String) : §#b§
      {
         var _loc2_:§3,§ = this.getEpisodeForLevel(param1);
         if(!_loc2_)
         {
            throw new Error("Error! Level \'" + param1 + "\' does not exist.");
         }
         return _loc2_.§1!B§(param1);
      }
      
      public function addLevel(param1:String, param2:§#b§) : void
      {
         var _loc3_:§3,§ = this.getEpisodeForLevel(param1);
         if(_loc3_)
         {
            _loc3_.addLevel(param1,param2);
         }
      }
      
      public function getSilverScoreForLevel(param1:String) : int
      {
         var _loc2_:§#b§ = this.getLevelForId(param1);
         return _loc2_.scoreSilver;
      }
      
      public function getGoldScoreForLevel(param1:String) : int
      {
         var _loc2_:§#b§ = this.getLevelForId(param1);
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
         var _loc2_:§3,§ = this.getEpisodeForLevel(param1);
         if(_loc2_ == null)
         {
            return §]"0§;
         }
         return param1;
      }
      
      public function §7!f§(param1:String) : String
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc2_:§3,§ = this.getEpisodeForLevel(param1);
         if(_loc2_)
         {
            _loc3_ = _loc2_.§'!f§(param1);
            _loc2_.currentPage = _loc3_;
            _loc4_ = _loc2_.getPageIndex(_loc3_);
            _loc5_ = _loc2_.§"@§(param1);
            return _loc4_ + "-" + (_loc5_ + 1);
         }
         return null;
      }
      
      public function loadLevel(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§3,§ = null;
         if(param1 != this.§^`§)
         {
            _loc2_ = this.§ !C§(param1);
            if(_loc2_ >= 0)
            {
               this.§'"%§ = _loc2_;
               this.§`P§ = this.§^`§;
               this.§^`§ = param1;
               _loc3_ = this.getCurrentEpisodeModel();
               if(_loc3_)
               {
                  _loc3_.currentPage = _loc3_.§'!f§(param1);
               }
               this.§28§ = this.§7!f§(param1);
            }
            else
            {
               this.§`P§ = this.§^`§;
               this.§<![§();
            }
         }
      }
      
      public function getCurrentEpisodeModel() : §3,§
      {
         return this.§,<§[this.§'"%§];
      }
      
      public function §4u§() : Boolean
      {
         return true;
      }
      
      public function isCutSceneNext() : Boolean
      {
         var _loc1_:String = this.getNextLevelId();
         var _loc2_:String = this.getCurrentEpisodeModel().getCutScene(this.§^`§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ == null)
         {
            §^"4§.§#!w§(_loc2_);
         }
         return true;
      }
      
      public function getNextLevelId() : String
      {
         return this.getCurrentEpisodeModel().getNextLevelId(this.§^`§);
      }
      
      public function selectEpisode(param1:int) : void
      {
         this.§'"%§ = param1;
      }
      
      public function resetPreviousLevel() : void
      {
         this.§`P§ = null;
      }
      
      public function §<![§() : void
      {
         this.§^`§ = null;
         this.§28§ = null;
      }
   }
}
