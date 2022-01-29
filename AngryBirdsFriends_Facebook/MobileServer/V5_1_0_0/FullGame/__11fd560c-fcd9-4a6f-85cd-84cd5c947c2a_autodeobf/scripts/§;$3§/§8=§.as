package §;$3§
{
   import §;$-§.§"!b§;
   
   public class §8=§
   {
      
      public static const §1#K§:String = "1-1";
       
      
      protected var §?T§:Vector.<§"m§> = null;
      
      protected var §<4§:String = null;
      
      private var §=!M§:String = null;
      
      protected var §[#h§:String = null;
      
      private var §=#r§:int = 0;
      
      public function §8=§()
      {
         super();
      }
      
      public function get currentLevelNumericName() : String
      {
         return this.§=!M§;
      }
      
      public function get currentLevel() : String
      {
         return this.§<4§;
      }
      
      public function get previousLevel() : String
      {
         return this.§[#h§;
      }
      
      public function get §>j§() : String
      {
         return this.§0"o§(this.§[#h§);
      }
      
      public function get currentEpisode() : int
      {
         return this.§=#r§;
      }
      
      public function get §&#b§() : String
      {
         if(this.getCurrentEpisodeModel())
         {
            return this.getCurrentEpisodeModel().writtenName + " - " + (this.getCurrentEpisodeModel().§[#2§(this.currentLevel) + 1);
         }
         return null;
      }
      
      public function §<"§(param1:Object) : void
      {
         var _loc2_:Object = null;
         this.§?T§ = new Vector.<§"m§>();
         for each(_loc2_ in param1.episodes)
         {
            this.§?T§.push(this.createEpisodeModelFromData(_loc2_));
         }
      }
      
      protected function createEpisodeModelFromData(param1:Object) : §"m§
      {
         var _loc3_:* = null;
         var _loc2_:§"m§ = this.§?"§(param1.levelNames);
         _loc2_.levelsPerPage = param1.levelsPerPage;
         _loc2_.name = param1.name;
         _loc2_.menuImage = param1.menuImage;
         _loc2_.§^$$§ = param1.leftCorner;
         _loc2_.§7!!§ = param1.rightCorner;
         _loc2_.§null § = param1.pageColors;
         _loc2_.pageIndexes = param1.pageIndexes;
         _loc2_.levelButtons = param1.levelButtons;
         _loc2_.writtenName = param1.writtenName;
         _loc2_.§"!=§ = param1.hidden;
         _loc2_.§1"A§ = param1.locked;
         if(param1.cutscenes)
         {
            for(_loc3_ in param1.cutscenes)
            {
               _loc2_.§#!=§(_loc3_,param1.cutscenes[_loc3_]);
            }
         }
         return _loc2_;
      }
      
      protected function §?"§(param1:Array) : §"m§
      {
         return new §"m§(param1);
      }
      
      public function getEpisodeForLevel(param1:String) : §"m§
      {
         var _loc2_:§"m§ = null;
         if(!param1)
         {
            return null;
         }
         for each(_loc2_ in this.§?T§)
         {
            if(_loc2_.§0r§(param1.toLowerCase()))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §4$0§(param1:String) : int
      {
         var _loc3_:§"m§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§?T§.length)
         {
            _loc3_ = this.§?T§[_loc2_];
            if(_loc3_.§0r§(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public function getEpisode(param1:int) : §"m§
      {
         if(param1 >= 0 && param1 < this.§?T§.length)
         {
            return this.§?T§[param1];
         }
         return null;
      }
      
      public function getEpisodeByName(param1:String) : §"m§
      {
         var _loc2_:§"m§ = null;
         for each(_loc2_ in this.§?T§)
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
         return this.§?T§.length;
      }
      
      public function getLevelForId(param1:String) : §>f§
      {
         var _loc2_:§"m§ = this.getEpisodeForLevel(param1);
         if(!_loc2_)
         {
            throw new Error("Error! Level \'" + param1 + "\' does not exist.");
         }
         return _loc2_.§[§(param1);
      }
      
      public function addLevel(param1:String, param2:§>f§) : void
      {
         var _loc3_:§"m§ = this.getEpisodeForLevel(param1);
         if(_loc3_)
         {
            _loc3_.addLevel(param1,param2);
         }
      }
      
      public function getSilverScoreForLevel(param1:String) : int
      {
         var _loc2_:§>f§ = this.getLevelForId(param1);
         return _loc2_.scoreSilver;
      }
      
      public function getGoldScoreForLevel(param1:String) : int
      {
         var _loc2_:§>f§ = this.getLevelForId(param1);
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
         var _loc2_:§"m§ = this.getEpisodeForLevel(param1);
         if(_loc2_ == null)
         {
            return §1#K§;
         }
         return param1;
      }
      
      public function §0"o§(param1:String) : String
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc2_:§"m§ = this.getEpisodeForLevel(param1);
         if(_loc2_)
         {
            _loc3_ = _loc2_.§>!k§(param1);
            _loc2_.currentPage = _loc3_;
            _loc4_ = _loc2_.getPageIndex(_loc3_);
            _loc5_ = _loc2_.§%#b§(param1);
            return _loc4_ + "-" + (_loc5_ + 1);
         }
         return null;
      }
      
      public function loadLevel(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§"m§ = null;
         if(param1 != this.§<4§)
         {
            _loc2_ = this.§4$0§(param1);
            if(_loc2_ >= 0)
            {
               this.§=#r§ = _loc2_;
               this.§[#h§ = this.§<4§;
               this.§<4§ = param1;
               _loc3_ = this.getCurrentEpisodeModel();
               if(_loc3_)
               {
                  _loc3_.currentPage = _loc3_.§>!k§(param1);
               }
               this.§=!M§ = this.§0"o§(param1);
            }
            else
            {
               this.§[#h§ = this.§<4§;
               this.resetCurrentLevel();
            }
         }
      }
      
      public function getCurrentEpisodeModel() : §"m§
      {
         return this.§?T§[this.§=#r§];
      }
      
      public function §6=§() : Boolean
      {
         return true;
      }
      
      public function isCutSceneNext() : Boolean
      {
         var _loc1_:String = this.getNextLevelId();
         var _loc2_:String = this.getCurrentEpisodeModel().getCutScene(this.§<4§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ == null)
         {
            §"!b§.§[#3§(_loc2_);
         }
         return true;
      }
      
      public function getNextLevelId() : String
      {
         return this.getCurrentEpisodeModel().getNextLevelId(this.§<4§);
      }
      
      public function selectEpisode(param1:int) : void
      {
         this.§=#r§ = param1;
      }
      
      public function §0u§(param1:String) : void
      {
         this.§=#r§ = this.§?T§.indexOf(this.getEpisodeByName(param1));
      }
      
      public function resetPreviousLevel() : void
      {
         this.§[#h§ = null;
      }
      
      public function resetCurrentLevel() : void
      {
         this.§<4§ = null;
         this.§=!M§ = null;
      }
   }
}
