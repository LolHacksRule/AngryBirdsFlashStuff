package § !T§
{
   import §!!^§.§-^§;
   
   public class § q§
   {
      
      public static const §[o§:String = "1-1";
       
      
      protected var §[!#§:Vector.<§=!x§> = null;
      
      protected var §7n§:String = null;
      
      private var §7""§:String = null;
      
      private var § m§:String = null;
      
      private var §,"0§:int = 0;
      
      public function § q§()
      {
         super();
      }
      
      public function get currentLevelNumericName() : String
      {
         return this.§7""§;
      }
      
      public function get currentLevel() : String
      {
         return this.§7n§;
      }
      
      public function get previousLevel() : String
      {
         return this.§ m§;
      }
      
      public function get previousLevelNumericName() : String
      {
         return this.§&@§(this.§ m§);
      }
      
      public function get currentEpisode() : int
      {
         return this.§,"0§;
      }
      
      public function get §'!m§() : String
      {
         if(this.getCurrentEpisodeModel())
         {
            return this.getCurrentEpisodeModel().writtenName + " - " + (this.getCurrentEpisodeModel().§>!f§(this.currentLevel) + 1);
         }
         return null;
      }
      
      public function §7!f§(param1:Object) : void
      {
         var _loc2_:Object = null;
         this.§[!#§ = new Vector.<§=!x§>();
         for each(_loc2_ in param1.episodes)
         {
            this.§[!#§.push(this.§%I§(_loc2_));
         }
      }
      
      protected function §%I§(param1:Object) : §=!x§
      {
         var _loc3_:* = null;
         var _loc2_:§=!x§ = this.getEpisodeModel(param1);
         _loc2_.levelsPerPage = param1.levelsPerPage;
         _loc2_.name = param1.name;
         _loc2_.menuImage = param1.menuImage;
         _loc2_.§'J§ = param1.leftCorner;
         _loc2_.§+f§ = param1.rightCorner;
         _loc2_.§3!d§ = param1.pageColors;
         _loc2_.pageIndexes = param1.pageIndexes;
         _loc2_.levelButtons = param1.levelButtons;
         _loc2_.writtenName = param1.writtenName;
         _loc2_.§[!@§ = param1.hidden;
         _loc2_.§=" § = param1.locked;
         if(param1.cutscenes)
         {
            for(_loc3_ in param1.cutscenes)
            {
               _loc2_.§@!Y§(_loc3_,param1.cutscenes[_loc3_]);
            }
         }
         return _loc2_;
      }
      
      protected function getEpisodeModel(param1:Object) : §=!x§
      {
         return new §=!x§(param1.levelNames);
      }
      
      public function getEpisodeForLevel(param1:String) : §=!x§
      {
         var _loc2_:§=!x§ = null;
         if(!param1)
         {
            return null;
         }
         for each(_loc2_ in this.§[!#§)
         {
            if(_loc2_.§3!t§(param1.toLowerCase()))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §4!l§(param1:String) : int
      {
         var _loc3_:§=!x§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§[!#§.length)
         {
            _loc3_ = this.§[!#§[_loc2_];
            if(_loc3_.§3!t§(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public function getEpisode(param1:int) : §=!x§
      {
         if(param1 >= 0 && param1 < this.§[!#§.length)
         {
            return this.§[!#§[param1];
         }
         return null;
      }
      
      public function §9!9§(param1:String) : §=!x§
      {
         var _loc2_:§=!x§ = null;
         for each(_loc2_ in this.§[!#§)
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
         return this.§[!#§.length;
      }
      
      public function getLevelForId(param1:String) : §7@§
      {
         var _loc2_:§=!x§ = this.getEpisodeForLevel(param1);
         if(!_loc2_)
         {
            throw new Error("Error! Level \'" + param1 + "\' does not exist.");
         }
         return _loc2_.§ 5§(param1);
      }
      
      public function §2U§(param1:String, param2:§7@§) : void
      {
         var _loc3_:§=!x§ = this.getEpisodeForLevel(param1);
         if(_loc3_)
         {
            _loc3_.§2U§(param1,param2);
         }
      }
      
      public function getSilverScoreForLevel(param1:String) : int
      {
         var _loc2_:§7@§ = this.getLevelForId(param1);
         return _loc2_.scoreSilver;
      }
      
      public function getGoldScoreForLevel(param1:String) : int
      {
         var _loc2_:§7@§ = this.getLevelForId(param1);
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
         var _loc2_:§=!x§ = this.getEpisodeForLevel(param1);
         if(_loc2_ == null)
         {
            return §[o§;
         }
         return param1;
      }
      
      public function §&@§(param1:String) : String
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc2_:§=!x§ = this.getEpisodeForLevel(param1);
         if(_loc2_)
         {
            _loc3_ = _loc2_.§;x§(param1);
            _loc2_.currentPage = _loc3_;
            _loc4_ = _loc2_.getPageIndex(_loc3_);
            _loc5_ = _loc2_.§;!l§(param1);
            return _loc4_ + "-" + (_loc5_ + 1);
         }
         return null;
      }
      
      public function loadLevel(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§=!x§ = null;
         if(param1 != this.§7n§)
         {
            _loc2_ = this.§4!l§(param1);
            if(_loc2_ >= 0)
            {
               this.§,"0§ = _loc2_;
               this.§ m§ = this.§7n§;
               this.§7n§ = param1;
               _loc3_ = this.getCurrentEpisodeModel();
               if(_loc3_)
               {
                  _loc3_.currentPage = _loc3_.§;x§(param1);
               }
               this.§7""§ = this.§&@§(param1);
            }
            else
            {
               this.§ m§ = this.§7n§;
               this.resetCurrentLevel();
            }
         }
      }
      
      public function getCurrentEpisodeModel() : §=!x§
      {
         return this.§[!#§[this.§,"0§];
      }
      
      public function §`^§() : Boolean
      {
         return true;
      }
      
      public function isCutSceneNext() : Boolean
      {
         var _loc1_:String = this.getNextLevelId();
         var _loc2_:String = this.getCurrentEpisodeModel().getCutScene(this.§7n§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ == null)
         {
            §-^§.§,Q§(_loc2_);
         }
         return true;
      }
      
      public function getNextLevelId() : String
      {
         return this.getCurrentEpisodeModel().getNextLevelId(this.§7n§);
      }
      
      public function selectEpisode(param1:int) : void
      {
         this.§,"0§ = param1;
      }
      
      public function resetPreviousLevel() : void
      {
         this.§ m§ = null;
      }
      
      public function resetCurrentLevel() : void
      {
         this.§7n§ = null;
         this.§7""§ = null;
      }
   }
}
