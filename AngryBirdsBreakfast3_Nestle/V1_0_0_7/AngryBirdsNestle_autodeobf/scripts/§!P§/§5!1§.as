package §!P§
{
   import §0!?§.§%i§;
   
   public class §5!1§
   {
      
      public static const §-H§:String = "1-1";
       
      
      protected var §^!C§:Vector.<§4K§> = null;
      
      protected var §2!s§:String = null;
      
      private var §?"!§:String = null;
      
      private var §!<§:String = null;
      
      private var §3!G§:int = 0;
      
      public function §5!1§()
      {
         super();
      }
      
      public function get currentLevelNumericName() : String
      {
         return this.§?"!§;
      }
      
      public function get currentLevel() : String
      {
         return this.§2!s§;
      }
      
      public function get previousLevel() : String
      {
         return this.§!<§;
      }
      
      public function get previousLevelNumericName() : String
      {
         return this.§0g§(this.§!<§);
      }
      
      public function get currentEpisode() : int
      {
         return this.§3!G§;
      }
      
      public function get §^<§() : String
      {
         if(this.getCurrentEpisodeModel())
         {
            return this.getCurrentEpisodeModel().writtenName + " - " + (this.getCurrentEpisodeModel().§0"%§(this.currentLevel) + 1);
         }
         return null;
      }
      
      public function §4!-§(param1:Object) : void
      {
         var _loc2_:Object = null;
         this.§^!C§ = new Vector.<§4K§>();
         for each(_loc2_ in param1.episodes)
         {
            this.§^!C§.push(this.§3! §(_loc2_));
         }
      }
      
      protected function §3! §(param1:Object) : §4K§
      {
         var _loc3_:* = null;
         var _loc2_:§4K§ = this.getEpisodeModel(param1);
         _loc2_.levelsPerPage = param1.levelsPerPage;
         _loc2_.name = param1.name;
         _loc2_.menuImage = param1.menuImage;
         _loc2_.§`?§ = param1.leftCorner;
         _loc2_.§<!-§ = param1.rightCorner;
         _loc2_.§3=§ = param1.pageColors;
         _loc2_.pageIndexes = param1.pageIndexes;
         _loc2_.levelButtons = param1.levelButtons;
         _loc2_.writtenName = param1.writtenName;
         _loc2_.§19§ = param1.hidden;
         _loc2_.§-[§ = param1.locked;
         if(param1.cutscenes)
         {
            for(_loc3_ in param1.cutscenes)
            {
               _loc2_.§super§(_loc3_,param1.cutscenes[_loc3_]);
            }
         }
         return _loc2_;
      }
      
      protected function getEpisodeModel(param1:Object) : §4K§
      {
         return new §4K§(param1.levelNames);
      }
      
      public function getEpisodeForLevel(param1:String) : §4K§
      {
         var _loc2_:§4K§ = null;
         if(!param1)
         {
            return null;
         }
         for each(_loc2_ in this.§^!C§)
         {
            if(_loc2_.§?!i§(param1.toLowerCase()))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function § E§(param1:String) : int
      {
         var _loc3_:§4K§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§^!C§.length)
         {
            _loc3_ = this.§^!C§[_loc2_];
            if(_loc3_.§?!i§(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public function getEpisode(param1:int) : §4K§
      {
         if(param1 >= 0 && param1 < this.§^!C§.length)
         {
            return this.§^!C§[param1];
         }
         return null;
      }
      
      public function §?Z§(param1:String) : §4K§
      {
         var _loc2_:§4K§ = null;
         for each(_loc2_ in this.§^!C§)
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
         return this.§^!C§.length;
      }
      
      public function getLevelForId(param1:String) : §2"4§
      {
         var _loc2_:§4K§ = this.getEpisodeForLevel(param1);
         if(!_loc2_)
         {
            throw new Error("Error! Level \'" + param1 + "\' does not exist.");
         }
         return _loc2_.§5!M§(param1);
      }
      
      public function §14§(param1:String, param2:§2"4§) : void
      {
         var _loc3_:§4K§ = this.getEpisodeForLevel(param1);
         if(_loc3_)
         {
            _loc3_.§14§(param1,param2);
         }
      }
      
      public function getSilverScoreForLevel(param1:String) : int
      {
         var _loc2_:§2"4§ = this.getLevelForId(param1);
         return _loc2_.scoreSilver;
      }
      
      public function getGoldScoreForLevel(param1:String) : int
      {
         var _loc2_:§2"4§ = this.getLevelForId(param1);
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
         var _loc2_:§4K§ = this.getEpisodeForLevel(param1);
         if(_loc2_ == null)
         {
            return §-H§;
         }
         return param1;
      }
      
      public function §0g§(param1:String) : String
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc2_:§4K§ = this.getEpisodeForLevel(param1);
         if(_loc2_)
         {
            _loc3_ = _loc2_.§50§(param1);
            _loc2_.currentPage = _loc3_;
            _loc4_ = _loc2_.getPageIndex(_loc3_);
            _loc5_ = _loc2_.§9o§(param1);
            return _loc4_ + "-" + (_loc5_ + 1);
         }
         return null;
      }
      
      public function loadLevel(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§4K§ = null;
         if(param1 != this.§2!s§)
         {
            _loc2_ = this.§ E§(param1);
            if(_loc2_ >= 0)
            {
               this.§3!G§ = _loc2_;
               this.§!<§ = this.§2!s§;
               this.§2!s§ = param1;
               _loc3_ = this.getCurrentEpisodeModel();
               if(_loc3_)
               {
                  _loc3_.currentPage = _loc3_.§50§(param1);
               }
               this.§?"!§ = this.§0g§(param1);
            }
            else
            {
               this.§!<§ = this.§2!s§;
               this.resetCurrentLevel();
            }
         }
      }
      
      public function getCurrentEpisodeModel() : §4K§
      {
         return this.§^!C§[this.§3!G§];
      }
      
      public function §5F§() : Boolean
      {
         return true;
      }
      
      public function isCutSceneNext() : Boolean
      {
         var _loc1_:String = this.getNextLevelId();
         var _loc2_:String = this.getCurrentEpisodeModel().getCutScene(this.§2!s§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ == null)
         {
            §%i§.§'!x§(_loc2_);
         }
         return true;
      }
      
      public function getNextLevelId() : String
      {
         return this.getCurrentEpisodeModel().getNextLevelId(this.§2!s§);
      }
      
      public function selectEpisode(param1:int) : void
      {
         this.§3!G§ = param1;
      }
      
      public function resetPreviousLevel() : void
      {
         this.§!<§ = null;
      }
      
      public function resetCurrentLevel() : void
      {
         this.§2!s§ = null;
         this.§?"!§ = null;
      }
   }
}
