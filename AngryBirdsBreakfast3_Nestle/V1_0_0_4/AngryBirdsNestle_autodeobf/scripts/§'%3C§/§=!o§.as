package §'<§
{
   import §9z§.§^!"§;
   
   public class §=!o§
   {
      
      public static const §'!u§:String = "1-1";
       
      
      protected var §&a§:Vector.<§77§> = null;
      
      protected var §-z§:String = null;
      
      private var §?!a§:String = null;
      
      private var §[P§:String = null;
      
      private var §?!v§:int = 0;
      
      public function §=!o§()
      {
         super();
      }
      
      public function get currentLevelNumericName() : String
      {
         return this.§?!a§;
      }
      
      public function get currentLevel() : String
      {
         return this.§-z§;
      }
      
      public function get previousLevel() : String
      {
         return this.§[P§;
      }
      
      public function get previousLevelNumericName() : String
      {
         return this.§2!C§(this.§[P§);
      }
      
      public function get currentEpisode() : int
      {
         return this.§?!v§;
      }
      
      public function get §2!x§() : String
      {
         if(this.getCurrentEpisodeModel())
         {
            return this.getCurrentEpisodeModel().writtenName + " - " + (this.getCurrentEpisodeModel().§-j§(this.currentLevel) + 1);
         }
         return null;
      }
      
      public function §&H§(param1:Object) : void
      {
         var _loc2_:Object = null;
         this.§&a§ = new Vector.<§77§>();
         for each(_loc2_ in param1.episodes)
         {
            this.§&a§.push(this.§9!"§(_loc2_));
         }
      }
      
      protected function §9!"§(param1:Object) : §77§
      {
         var _loc3_:* = null;
         var _loc2_:§77§ = this.getEpisodeModel(param1);
         _loc2_.levelsPerPage = param1.levelsPerPage;
         _loc2_.name = param1.name;
         _loc2_.menuImage = param1.menuImage;
         _loc2_.§1"2§ = param1.leftCorner;
         _loc2_.§=!V§ = param1.rightCorner;
         _loc2_.§!!z§ = param1.pageColors;
         _loc2_.pageIndexes = param1.pageIndexes;
         _loc2_.levelButtons = param1.levelButtons;
         _loc2_.writtenName = param1.writtenName;
         _loc2_.§'v§ = param1.hidden;
         _loc2_.§"!R§ = param1.locked;
         if(param1.cutscenes)
         {
            for(_loc3_ in param1.cutscenes)
            {
               _loc2_.§,"!§(_loc3_,param1.cutscenes[_loc3_]);
            }
         }
         return _loc2_;
      }
      
      protected function getEpisodeModel(param1:Object) : §77§
      {
         return new §77§(param1.levelNames);
      }
      
      public function getEpisodeForLevel(param1:String) : §77§
      {
         var _loc2_:§77§ = null;
         if(!param1)
         {
            return null;
         }
         for each(_loc2_ in this.§&a§)
         {
            if(_loc2_.§`Z§(param1.toLowerCase()))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function § m§(param1:String) : int
      {
         var _loc3_:§77§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§&a§.length)
         {
            _loc3_ = this.§&a§[_loc2_];
            if(_loc3_.§`Z§(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public function getEpisode(param1:int) : §77§
      {
         if(param1 >= 0 && param1 < this.§&a§.length)
         {
            return this.§&a§[param1];
         }
         return null;
      }
      
      public function §5",§(param1:String) : §77§
      {
         var _loc2_:§77§ = null;
         for each(_loc2_ in this.§&a§)
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
         return this.§&a§.length;
      }
      
      public function getLevelForId(param1:String) : §;r§
      {
         var _loc2_:§77§ = this.getEpisodeForLevel(param1);
         if(!_loc2_)
         {
            throw new Error("Error! Level \'" + param1 + "\' does not exist.");
         }
         return _loc2_.§3"!§(param1);
      }
      
      public function §,!Z§(param1:String, param2:§;r§) : void
      {
         var _loc3_:§77§ = this.getEpisodeForLevel(param1);
         if(_loc3_)
         {
            _loc3_.§,!Z§(param1,param2);
         }
      }
      
      public function getSilverScoreForLevel(param1:String) : int
      {
         var _loc2_:§;r§ = this.getLevelForId(param1);
         return _loc2_.scoreSilver;
      }
      
      public function getGoldScoreForLevel(param1:String) : int
      {
         var _loc2_:§;r§ = this.getLevelForId(param1);
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
         var _loc2_:§77§ = this.getEpisodeForLevel(param1);
         if(_loc2_ == null)
         {
            return §'!u§;
         }
         return param1;
      }
      
      public function §2!C§(param1:String) : String
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc2_:§77§ = this.getEpisodeForLevel(param1);
         if(_loc2_)
         {
            _loc3_ = _loc2_.§+"-§(param1);
            _loc2_.currentPage = _loc3_;
            _loc4_ = _loc2_.getPageIndex(_loc3_);
            _loc5_ = _loc2_.§;2§(param1);
            return _loc4_ + "-" + (_loc5_ + 1);
         }
         return null;
      }
      
      public function loadLevel(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§77§ = null;
         if(param1 != this.§-z§)
         {
            _loc2_ = this.§ m§(param1);
            if(_loc2_ >= 0)
            {
               this.§?!v§ = _loc2_;
               this.§[P§ = this.§-z§;
               this.§-z§ = param1;
               _loc3_ = this.getCurrentEpisodeModel();
               if(_loc3_)
               {
                  _loc3_.currentPage = _loc3_.§+"-§(param1);
               }
               this.§?!a§ = this.§2!C§(param1);
            }
            else
            {
               this.§[P§ = this.§-z§;
               this.resetCurrentLevel();
            }
         }
      }
      
      public function getCurrentEpisodeModel() : §77§
      {
         return this.§&a§[this.§?!v§];
      }
      
      public function §=n§() : Boolean
      {
         return true;
      }
      
      public function isCutSceneNext() : Boolean
      {
         var _loc1_:String = this.getNextLevelId();
         var _loc2_:String = this.getCurrentEpisodeModel().getCutScene(this.§-z§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ == null)
         {
            §^!"§.§6v§(_loc2_);
         }
         return true;
      }
      
      public function getNextLevelId() : String
      {
         return this.getCurrentEpisodeModel().getNextLevelId(this.§-z§);
      }
      
      public function selectEpisode(param1:int) : void
      {
         this.§?!v§ = param1;
      }
      
      public function resetPreviousLevel() : void
      {
         this.§[P§ = null;
      }
      
      public function resetCurrentLevel() : void
      {
         this.§-z§ = null;
         this.§?!a§ = null;
      }
   }
}
