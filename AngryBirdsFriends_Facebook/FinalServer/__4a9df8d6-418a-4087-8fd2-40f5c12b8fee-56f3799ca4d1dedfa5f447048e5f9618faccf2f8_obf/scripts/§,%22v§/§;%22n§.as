package §,"v§
{
   import §`"0§.§%#B§;
   
   public class §;"n§
   {
      
      public static const §34§:String = "1-1";
       
      
      protected var §-!0§:Vector.<§ T§> = null;
      
      protected var §[##§:String = null;
      
      private var §!#c§:String = null;
      
      protected var §4x§:String = null;
      
      private var §"?§:int = 0;
      
      public function §;"n§()
      {
         super();
      }
      
      public function get currentLevelNumericName() : String
      {
         return this.§!#c§;
      }
      
      public function get currentLevel() : String
      {
         return this.§[##§;
      }
      
      public function get previousLevel() : String
      {
         return this.§4x§;
      }
      
      public function get §+"[§() : String
      {
         return this.§["G§(this.§4x§);
      }
      
      public function get currentEpisode() : int
      {
         return this.§"?§;
      }
      
      public function get §0"K§() : String
      {
         if(this.getCurrentEpisodeModel())
         {
            return this.getCurrentEpisodeModel().writtenName + " - " + (this.getCurrentEpisodeModel().§3!_§(this.currentLevel) + 1);
         }
         return null;
      }
      
      public function §["A§(param1:Object) : void
      {
         var _loc2_:Object = null;
         this.§-!0§ = new Vector.<§ T§>();
         for each(_loc2_ in param1.episodes)
         {
            this.§-!0§.push(this.createEpisodeModelFromData(_loc2_));
         }
      }
      
      protected function createEpisodeModelFromData(param1:Object) : § T§
      {
         var _loc3_:* = null;
         var _loc2_:§ T§ = this.§,I§(param1.levelNames);
         _loc2_.levelsPerPage = param1.levelsPerPage;
         _loc2_.name = param1.name;
         _loc2_.menuImage = param1.menuImage;
         _loc2_.§,,§ = param1.leftCorner;
         _loc2_.§;$;§ = param1.rightCorner;
         _loc2_.§2#U§ = param1.pageColors;
         _loc2_.pageIndexes = param1.pageIndexes;
         _loc2_.levelButtons = param1.levelButtons;
         _loc2_.writtenName = param1.writtenName;
         _loc2_.§1"m§ = param1.hidden;
         _loc2_.§9$§ = param1.locked;
         if(param1.cutscenes)
         {
            for(_loc3_ in param1.cutscenes)
            {
               _loc2_.§&"&§(_loc3_,param1.cutscenes[_loc3_]);
            }
         }
         return _loc2_;
      }
      
      protected function §,I§(param1:Array) : § T§
      {
         return new § T§(param1);
      }
      
      public function getEpisodeForLevel(param1:String) : § T§
      {
         var _loc2_:§ T§ = null;
         if(!param1)
         {
            return null;
         }
         for each(_loc2_ in this.§-!0§)
         {
            if(_loc2_.§=" §(param1.toLowerCase()))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §,#@§(param1:String) : int
      {
         var _loc3_:§ T§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§-!0§.length)
         {
            _loc3_ = this.§-!0§[_loc2_];
            if(_loc3_.§=" §(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public function getEpisode(param1:int) : § T§
      {
         if(param1 >= 0 && param1 < this.§-!0§.length)
         {
            return this.§-!0§[param1];
         }
         return null;
      }
      
      public function getEpisodeByName(param1:String) : § T§
      {
         var _loc2_:§ T§ = null;
         for each(_loc2_ in this.§-!0§)
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
         return this.§-!0§.length;
      }
      
      public function getLevelForId(param1:String) : §7!J§
      {
         var _loc2_:§ T§ = this.getEpisodeForLevel(param1);
         if(!_loc2_)
         {
            throw new Error("Error! Level \'" + param1 + "\' does not exist.");
         }
         return _loc2_.§-!f§(param1);
      }
      
      public function addLevel(param1:String, param2:§7!J§) : void
      {
         var _loc3_:§ T§ = this.getEpisodeForLevel(param1);
         if(_loc3_)
         {
            _loc3_.addLevel(param1,param2);
         }
      }
      
      public function getSilverScoreForLevel(param1:String) : int
      {
         var _loc2_:§7!J§ = this.getLevelForId(param1);
         return _loc2_.scoreSilver;
      }
      
      public function getGoldScoreForLevel(param1:String) : int
      {
         var _loc2_:§7!J§ = this.getLevelForId(param1);
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
         var _loc2_:§ T§ = this.getEpisodeForLevel(param1);
         if(_loc2_ == null)
         {
            return §34§;
         }
         return param1;
      }
      
      public function §["G§(param1:String) : String
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc2_:§ T§ = this.getEpisodeForLevel(param1);
         if(_loc2_)
         {
            _loc3_ = _loc2_.§7#L§(param1);
            _loc2_.currentPage = _loc3_;
            _loc4_ = _loc2_.getPageIndex(_loc3_);
            _loc5_ = _loc2_.§-y§(param1);
            return _loc4_ + "-" + (_loc5_ + 1);
         }
         return null;
      }
      
      public function loadLevel(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§ T§ = null;
         if(param1 != this.§[##§)
         {
            _loc2_ = this.§,#@§(param1);
            if(_loc2_ >= 0)
            {
               this.§"?§ = _loc2_;
               this.§4x§ = this.§[##§;
               this.§[##§ = param1;
               _loc3_ = this.getCurrentEpisodeModel();
               if(_loc3_)
               {
                  _loc3_.currentPage = _loc3_.§7#L§(param1);
               }
               this.§!#c§ = this.§["G§(param1);
            }
            else
            {
               this.§4x§ = this.§[##§;
               this.resetCurrentLevel();
            }
         }
      }
      
      public function getCurrentEpisodeModel() : § T§
      {
         return this.§-!0§[this.§"?§];
      }
      
      public function § "?§() : Boolean
      {
         return true;
      }
      
      public function isCutSceneNext() : Boolean
      {
         var _loc1_:String = this.getNextLevelId();
         var _loc2_:String = this.getCurrentEpisodeModel().getCutScene(this.§[##§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ == null)
         {
            §%#B§.§]#v§(_loc2_);
         }
         return true;
      }
      
      public function getNextLevelId() : String
      {
         return this.getCurrentEpisodeModel().getNextLevelId(this.§[##§);
      }
      
      public function selectEpisode(param1:int) : void
      {
         this.§"?§ = param1;
      }
      
      public function §3X§(param1:String) : void
      {
         this.§"?§ = this.§-!0§.indexOf(this.getEpisodeByName(param1));
      }
      
      public function resetPreviousLevel() : void
      {
         this.§4x§ = null;
      }
      
      public function resetCurrentLevel() : void
      {
         this.§[##§ = null;
         this.§!#c§ = null;
      }
   }
}
