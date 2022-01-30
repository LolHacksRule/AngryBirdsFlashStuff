package
{
   import §<1§.§;#§;
   
   public class §-g§
   {
      
      public static const §@!w§:String = "1-1";
       
      
      protected var §@!x§:Vector.<§4<§> = null;
      
      protected var §%!I§:String = null;
      
      private var §4"+§:String = null;
      
      private var §&^§:String = null;
      
      private var §]!<§:int = 0;
      
      public function §-g§()
      {
         super();
      }
      
      public function get currentLevelNumericName() : String
      {
         return this.§4"+§;
      }
      
      public function get currentLevel() : String
      {
         return this.§%!I§;
      }
      
      public function get previousLevel() : String
      {
         return this.§&^§;
      }
      
      public function get previousLevelNumericName() : String
      {
         return this.§]!S§(this.§&^§);
      }
      
      public function get currentEpisode() : int
      {
         return this.§]!<§;
      }
      
      public function get §6_§() : String
      {
         if(this.getCurrentEpisodeModel())
         {
            return this.getCurrentEpisodeModel().writtenName + " - " + (this.getCurrentEpisodeModel().§!u§(this.currentLevel) + 1);
         }
         return null;
      }
      
      public function §8G§(param1:Object) : void
      {
         var _loc2_:Object = null;
         this.§@!x§ = new Vector.<§4<§>();
         for each(_loc2_ in param1.episodes)
         {
            this.§@!x§.push(this.§5!q§(_loc2_));
         }
      }
      
      protected function §5!q§(param1:Object) : §4<§
      {
         var _loc3_:* = null;
         var _loc2_:§4<§ = this.getEpisodeModel(param1.levelNames);
         _loc2_.levelsPerPage = param1.levelsPerPage;
         _loc2_.name = param1.name;
         _loc2_.menuImage = param1.menuImage;
         _loc2_.§-!1§ = param1.leftCorner;
         _loc2_.§7N§ = param1.rightCorner;
         _loc2_.§8o§ = param1.pageColors;
         _loc2_.pageIndexes = param1.pageIndexes;
         _loc2_.levelButtons = param1.levelButtons;
         _loc2_.writtenName = param1.writtenName;
         _loc2_.§8"'§ = param1.hidden;
         _loc2_.§;!_§ = param1.locked;
         if(param1.cutscenes)
         {
            for(_loc3_ in param1.cutscenes)
            {
               _loc2_.§]!h§(_loc3_,param1.cutscenes[_loc3_]);
            }
         }
         return _loc2_;
      }
      
      protected function getEpisodeModel(param1:Array) : §4<§
      {
         return new §4<§(param1);
      }
      
      public function getEpisodeForLevel(param1:String) : §4<§
      {
         var _loc2_:§4<§ = null;
         if(!param1)
         {
            return null;
         }
         for each(_loc2_ in this.§@!x§)
         {
            if(_loc2_.§4-§(param1.toLowerCase()))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §"!m§(param1:String) : int
      {
         var _loc3_:§4<§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§@!x§.length)
         {
            _loc3_ = this.§@!x§[_loc2_];
            if(_loc3_.§4-§(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public function getEpisode(param1:int) : §4<§
      {
         if(param1 >= 0 && param1 < this.§@!x§.length)
         {
            return this.§@!x§[param1];
         }
         return null;
      }
      
      public function §4A§(param1:String) : §4<§
      {
         var _loc2_:§4<§ = null;
         for each(_loc2_ in this.§@!x§)
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
         return this.§@!x§.length;
      }
      
      public function getLevelForId(param1:String) : §[d§
      {
         var _loc2_:§4<§ = this.getEpisodeForLevel(param1);
         if(!_loc2_)
         {
            throw new Error("Error! Level \'" + param1 + "\' does not exist.");
         }
         return _loc2_.§?!,§(param1);
      }
      
      public function §'n§(param1:String, param2:§[d§) : void
      {
         var _loc3_:§4<§ = this.getEpisodeForLevel(param1);
         if(_loc3_)
         {
            _loc3_.§'n§(param1,param2);
         }
      }
      
      public function getSilverScoreForLevel(param1:String) : int
      {
         var _loc2_:§[d§ = this.getLevelForId(param1);
         return _loc2_.scoreSilver;
      }
      
      public function getGoldScoreForLevel(param1:String) : int
      {
         var _loc2_:§[d§ = this.getLevelForId(param1);
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
         var _loc2_:§4<§ = this.getEpisodeForLevel(param1);
         if(_loc2_ == null)
         {
            return §@!w§;
         }
         return param1;
      }
      
      public function §]!S§(param1:String) : String
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc2_:§4<§ = this.getEpisodeForLevel(param1);
         if(_loc2_)
         {
            _loc3_ = _loc2_.§<",§(param1);
            _loc2_.currentPage = _loc3_;
            _loc4_ = _loc2_.getPageIndex(_loc3_);
            _loc5_ = _loc2_.§`!1§(param1);
            return _loc4_ + "-" + (_loc5_ + 1);
         }
         return null;
      }
      
      public function loadLevel(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§4<§ = null;
         if(param1 != this.§%!I§)
         {
            _loc2_ = this.§"!m§(param1);
            if(_loc2_ >= 0)
            {
               this.§]!<§ = _loc2_;
               this.§&^§ = this.§%!I§;
               this.§%!I§ = param1;
               _loc3_ = this.getCurrentEpisodeModel();
               if(_loc3_)
               {
                  _loc3_.currentPage = _loc3_.§<",§(param1);
               }
               this.§4"+§ = this.§]!S§(param1);
            }
            else
            {
               this.§&^§ = this.§%!I§;
               this.resetCurrentLevel();
            }
         }
      }
      
      public function getCurrentEpisodeModel() : §4<§
      {
         return this.§@!x§[this.§]!<§];
      }
      
      public function §`L§() : Boolean
      {
         return true;
      }
      
      public function isCutSceneNext() : Boolean
      {
         var _loc1_:String = this.getNextLevelId();
         var _loc2_:String = this.getCurrentEpisodeModel().getCutScene(this.§%!I§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ == null)
         {
            §;#§.§[?§(_loc2_);
         }
         return true;
      }
      
      public function getNextLevelId() : String
      {
         return this.getCurrentEpisodeModel().getNextLevelId(this.§%!I§);
      }
      
      public function selectEpisode(param1:int) : void
      {
         this.§]!<§ = param1;
      }
      
      public function §""!§(param1:String) : void
      {
         this.§]!<§ = this.§@!x§.indexOf(this.§4A§(param1));
      }
      
      public function resetPreviousLevel() : void
      {
         this.§&^§ = null;
      }
      
      public function resetCurrentLevel() : void
      {
         this.§%!I§ = null;
         this.§4"+§ = null;
      }
   }
}
