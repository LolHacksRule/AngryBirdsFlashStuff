package §,#+§
{
   import §3"8§.§@0§;
   
   public class §7!m§
   {
      
      public static const §;"E§:String = "1-1";
       
      
      protected var §]"V§:Vector.<§ "0§> = null;
      
      protected var §6B§:String = null;
      
      private var §?"T§:String = null;
      
      private var §?"y§:String = null;
      
      private var §+""§:int = 0;
      
      public function §7!m§()
      {
         super();
      }
      
      public function get currentLevelNumericName() : String
      {
         return this.§?"T§;
      }
      
      public function get currentLevel() : String
      {
         return this.§6B§;
      }
      
      public function get previousLevel() : String
      {
         return this.§?"y§;
      }
      
      public function get previousLevelNumericName() : String
      {
         return this.§4"p§(this.§?"y§);
      }
      
      public function get currentEpisode() : int
      {
         return this.§+""§;
      }
      
      public function get currentLevelWrittenName() : String
      {
         if(this.getCurrentEpisodeModel())
         {
            return this.getCurrentEpisodeModel().writtenName + " - " + (this.getCurrentEpisodeModel().getLevelIndex(this.currentLevel) + 1);
         }
         return null;
      }
      
      public function §["$§(param1:Object) : void
      {
         var _loc2_:Object = null;
         this.§]"V§ = new Vector.<§ "0§>();
         for each(_loc2_ in param1.episodes)
         {
            this.§]"V§.push(this.createEpisodeModelFromData(_loc2_));
         }
      }
      
      protected function createEpisodeModelFromData(param1:Object) : § "0§
      {
         var _loc3_:* = null;
         var _loc2_:§ "0§ = this.getEpisodeModel(param1.levelNames);
         _loc2_.levelsPerPage = param1.levelsPerPage;
         _loc2_.name = param1.name;
         _loc2_.menuImage = param1.menuImage;
         _loc2_.§-!r§ = param1.leftCorner;
         _loc2_.§1#'§ = param1.rightCorner;
         _loc2_.§"!K§ = param1.pageColors;
         _loc2_.pageIndexes = param1.pageIndexes;
         _loc2_.levelButtons = param1.levelButtons;
         _loc2_.writtenName = param1.writtenName;
         _loc2_.§8!Y§ = param1.hidden;
         _loc2_.isLocked = param1.locked;
         if(param1.cutscenes)
         {
            for(_loc3_ in param1.cutscenes)
            {
               _loc2_.§?i§(_loc3_,param1.cutscenes[_loc3_]);
            }
         }
         return _loc2_;
      }
      
      protected function getEpisodeModel(param1:Array) : § "0§
      {
         return new § "0§(param1);
      }
      
      public function getEpisodeForLevel(param1:String) : § "0§
      {
         var _loc2_:§ "0§ = null;
         if(!param1)
         {
            return null;
         }
         for each(_loc2_ in this.§]"V§)
         {
            if(_loc2_.§1P§(param1.toLowerCase()))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function § else§(param1:String) : int
      {
         var _loc3_:§ "0§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§]"V§.length)
         {
            _loc3_ = this.§]"V§[_loc2_];
            if(_loc3_.§1P§(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public function getEpisode(param1:int) : § "0§
      {
         if(param1 >= 0 && param1 < this.§]"V§.length)
         {
            return this.§]"V§[param1];
         }
         return null;
      }
      
      public function getEpisodeByName(param1:String) : § "0§
      {
         var _loc2_:§ "0§ = null;
         for each(_loc2_ in this.§]"V§)
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
         return this.§]"V§.length;
      }
      
      public function getLevelForId(param1:String) : §<U§
      {
         var _loc2_:§ "0§ = this.getEpisodeForLevel(param1);
         if(!_loc2_)
         {
            throw new Error("Error! Level \'" + param1 + "\' does not exist.");
         }
         return _loc2_.§^!-§(param1);
      }
      
      public function addLevel(param1:String, param2:§<U§) : void
      {
         var _loc3_:§ "0§ = this.getEpisodeForLevel(param1);
         if(_loc3_)
         {
            _loc3_.addLevel(param1,param2);
         }
      }
      
      public function getSilverScoreForLevel(param1:String) : int
      {
         var _loc2_:§<U§ = this.getLevelForId(param1);
         return _loc2_.scoreSilver;
      }
      
      public function getGoldScoreForLevel(param1:String) : int
      {
         var _loc2_:§<U§ = this.getLevelForId(param1);
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
         var _loc2_:§ "0§ = this.getEpisodeForLevel(param1);
         if(_loc2_ == null)
         {
            return §;"E§;
         }
         return param1;
      }
      
      public function §4"p§(param1:String) : String
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc2_:§ "0§ = this.getEpisodeForLevel(param1);
         if(_loc2_)
         {
            _loc3_ = _loc2_.§]#3§(param1);
            _loc2_.currentPage = _loc3_;
            _loc4_ = _loc2_.getPageIndex(_loc3_);
            _loc5_ = _loc2_.§2!+§(param1);
            return _loc4_ + "-" + (_loc5_ + 1);
         }
         return null;
      }
      
      public function loadLevel(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§ "0§ = null;
         if(param1 != this.§6B§)
         {
            _loc2_ = this.§ else§(param1);
            if(_loc2_ >= 0)
            {
               this.§+""§ = _loc2_;
               this.§?"y§ = this.§6B§;
               this.§6B§ = param1;
               _loc3_ = this.getCurrentEpisodeModel();
               if(_loc3_)
               {
                  _loc3_.currentPage = _loc3_.§]#3§(param1);
               }
               this.§?"T§ = this.§4"p§(param1);
            }
            else
            {
               this.§?"y§ = this.§6B§;
               this.§#!+§();
            }
         }
      }
      
      public function getCurrentEpisodeModel() : § "0§
      {
         return this.§]"V§[this.§+""§];
      }
      
      public function §3A§() : Boolean
      {
         return true;
      }
      
      public function isCutSceneNext() : Boolean
      {
         var _loc1_:String = this.getNextLevelId();
         var _loc2_:String = this.getCurrentEpisodeModel().getCutScene(this.§6B§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ == null)
         {
            §@0§.§"!+§(_loc2_);
         }
         return true;
      }
      
      public function getNextLevelId() : String
      {
         return this.getCurrentEpisodeModel().getNextLevelId(this.§6B§);
      }
      
      public function selectEpisode(param1:int) : void
      {
         this.§+""§ = param1;
      }
      
      public function selectEpisodeByName(param1:String) : void
      {
         this.§+""§ = this.§]"V§.indexOf(this.getEpisodeByName(param1));
      }
      
      public function resetPreviousLevel() : void
      {
         this.§?"y§ = null;
      }
      
      public function §#!+§() : void
      {
         this.§6B§ = null;
         this.§?"T§ = null;
      }
   }
}
