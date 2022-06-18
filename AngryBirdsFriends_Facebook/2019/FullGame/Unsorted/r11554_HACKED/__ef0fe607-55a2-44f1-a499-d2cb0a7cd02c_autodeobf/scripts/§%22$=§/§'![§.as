package §"$=§
{
   import §6Q§.§%!D§;
   
   public class §'![§
   {
      
      public static const §%!Y§:String = "1-1";
       
      
      protected var §^!t§:Vector.<§[#5§> = null;
      
      protected var §8"x§:String = null;
      
      private var §!!F§:String = null;
      
      protected var §;#A§:String = null;
      
      private var §<"E§:int = 0;
      
      public function §'![§()
      {
         super();
      }
      
      public function get currentLevelNumericName() : String
      {
         return this.§!!F§;
      }
      
      public function get currentLevel() : String
      {
         return this.§8"x§;
      }
      
      public function get previousLevel() : String
      {
         return this.§;#A§;
      }
      
      public function get §`#<§() : String
      {
         return this.§?#1§(this.§;#A§);
      }
      
      public function get currentEpisode() : int
      {
         return this.§<"E§;
      }
      
      public function get §`F§() : String
      {
         if(this.getCurrentEpisodeModel())
         {
            return this.getCurrentEpisodeModel().writtenName + " - " + (this.getCurrentEpisodeModel().§!#d§(this.currentLevel) + 1);
         }
         return null;
      }
      
      public function §]!?§(param1:Object) : void
      {
         var _loc2_:Object = null;
         this.§^!t§ = new Vector.<§[#5§>();
         for each(_loc2_ in param1.episodes)
         {
            this.§^!t§.push(this.createEpisodeModelFromData(_loc2_));
         }
      }
      
      protected function createEpisodeModelFromData(param1:Object) : §[#5§
      {
         var _loc3_:* = null;
         var _loc2_:§[#5§ = this.§in§(param1.levelNames);
         _loc2_.levelsPerPage = param1.levelsPerPage;
         _loc2_.name = param1.name;
         _loc2_.menuImage = param1.menuImage;
         _loc2_.§,"B§ = param1.leftCorner;
         _loc2_.§>!E§ = param1.rightCorner;
         _loc2_.§1"s§ = param1.pageColors;
         _loc2_.pageIndexes = param1.pageIndexes;
         _loc2_.levelButtons = param1.levelButtons;
         _loc2_.writtenName = param1.writtenName;
         _loc2_.§3"O§ = param1.hidden;
         _loc2_.§%"y§ = param1.locked;
         if(param1.cutscenes)
         {
            for(_loc3_ in param1.cutscenes)
            {
               _loc2_.§<""§(_loc3_,param1.cutscenes[_loc3_]);
            }
         }
         return _loc2_;
      }
      
      protected function §in§(param1:Array) : §[#5§
      {
         return new §[#5§(param1);
      }
      
      public function getEpisodeForLevel(param1:String) : §[#5§
      {
         var _loc2_:§[#5§ = null;
         if(!param1)
         {
            return null;
         }
         for each(_loc2_ in this.§^!t§)
         {
            if(_loc2_.§`!6§(param1.toLowerCase()))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §^!4§(param1:String) : int
      {
         var _loc3_:§[#5§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§^!t§.length)
         {
            _loc3_ = this.§^!t§[_loc2_];
            if(_loc3_.§`!6§(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public function getEpisode(param1:int) : §[#5§
      {
         if(param1 >= 0 && param1 < this.§^!t§.length)
         {
            return this.§^!t§[param1];
         }
         return null;
      }
      
      public function getEpisodeByName(param1:String) : §[#5§
      {
         var _loc2_:§[#5§ = null;
         for each(_loc2_ in this.§^!t§)
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
         return this.§^!t§.length;
      }
      
      public function getLevelForId(param1:String) : §=$&§
      {
         var _loc2_:§[#5§ = this.getEpisodeForLevel(param1);
         if(!_loc2_)
         {
            throw new Error("Error! Level \'" + param1 + "\' does not exist.");
         }
         return _loc2_.§>";§(param1);
      }
      
      public function addLevel(param1:String, param2:§=$&§) : void
      {
         var _loc3_:§[#5§ = this.getEpisodeForLevel(param1);
         if(_loc3_)
         {
            _loc3_.addLevel(param1,param2);
         }
      }
      
      public function getSilverScoreForLevel(param1:String) : int
      {
         var _loc2_:§=$&§ = this.getLevelForId(param1);
         return _loc2_.scoreSilver;
      }
      
      public function getGoldScoreForLevel(param1:String) : int
      {
         var _loc2_:§=$&§ = this.getLevelForId(param1);
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
         var _loc2_:§[#5§ = this.getEpisodeForLevel(param1);
         if(_loc2_ == null)
         {
            return §%!Y§;
         }
         return param1;
      }
      
      public function §?#1§(param1:String) : String
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc2_:§[#5§ = this.getEpisodeForLevel(param1);
         if(_loc2_)
         {
            _loc3_ = _loc2_.§"!=§(param1);
            _loc2_.currentPage = _loc3_;
            _loc4_ = _loc2_.getPageIndex(_loc3_);
            _loc5_ = _loc2_.§-$'§(param1);
            return _loc4_ + "-" + (_loc5_ + 1);
         }
         return null;
      }
      
      public function loadLevel(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§[#5§ = null;
         if(param1 != this.§8"x§)
         {
            _loc2_ = this.§^!4§(param1);
            if(_loc2_ >= 0)
            {
               this.§<"E§ = _loc2_;
               this.§;#A§ = this.§8"x§;
               this.§8"x§ = param1;
               _loc3_ = this.getCurrentEpisodeModel();
               if(_loc3_)
               {
                  _loc3_.currentPage = _loc3_.§"!=§(param1);
               }
               this.§!!F§ = this.§?#1§(param1);
            }
            else
            {
               this.§;#A§ = this.§8"x§;
               this.resetCurrentLevel();
            }
         }
      }
      
      public function getCurrentEpisodeModel() : §[#5§
      {
         return this.§^!t§[this.§<"E§];
      }
      
      public function §'#P§() : Boolean
      {
         return true;
      }
      
      public function isCutSceneNext() : Boolean
      {
         var _loc1_:String = this.getNextLevelId();
         var _loc2_:String = this.getCurrentEpisodeModel().getCutScene(this.§8"x§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ == null)
         {
            §%!D§.§3l§(_loc2_);
         }
         return true;
      }
      
      public function getNextLevelId() : String
      {
         return this.getCurrentEpisodeModel().getNextLevelId(this.§8"x§);
      }
      
      public function selectEpisode(param1:int) : void
      {
         this.§<"E§ = param1;
      }
      
      public function §3""§(param1:String) : void
      {
         this.§<"E§ = this.§^!t§.indexOf(this.getEpisodeByName(param1));
      }
      
      public function resetPreviousLevel() : void
      {
         this.§;#A§ = null;
      }
      
      public function resetCurrentLevel() : void
      {
         this.§8"x§ = null;
         this.§!!F§ = null;
      }
   }
}
