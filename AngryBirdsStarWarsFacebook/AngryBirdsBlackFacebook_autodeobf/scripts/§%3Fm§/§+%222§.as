package §?m§
{
   import §2"a§.§9#L§;
   
   public class §+"2§
   {
      
      public static const §7!k§:String = "1-1";
       
      
      protected var §<!W§:Vector.<§3![§> = null;
      
      protected var §@!F§:String = null;
      
      private var §@!-§:String = null;
      
      private var §%#K§:String = null;
      
      private var §"V§:int = 0;
      
      public function §+"2§()
      {
         super();
      }
      
      public function get currentLevelNumericName() : String
      {
         return this.§@!-§;
      }
      
      public function get currentLevel() : String
      {
         return this.§@!F§;
      }
      
      public function get previousLevel() : String
      {
         return this.§%#K§;
      }
      
      public function get previousLevelNumericName() : String
      {
         return this.§^"W§(this.§%#K§);
      }
      
      public function get currentEpisode() : int
      {
         return this.§"V§;
      }
      
      public function get currentLevelWrittenName() : String
      {
         if(this.getCurrentEpisodeModel())
         {
            return this.getCurrentEpisodeModel().writtenName + " - " + (this.getCurrentEpisodeModel().getLevelIndex(this.currentLevel) + 1);
         }
         return null;
      }
      
      public function §9!M§(param1:Object) : void
      {
         var _loc2_:Object = null;
         this.§<!W§ = new Vector.<§3![§>();
         for each(_loc2_ in param1.episodes)
         {
            this.§<!W§.push(this.createEpisodeModelFromData(_loc2_));
         }
      }
      
      protected function createEpisodeModelFromData(param1:Object) : §3![§
      {
         var _loc3_:* = null;
         var _loc2_:§3![§ = this.getEpisodeModel(param1.levelNames);
         _loc2_.levelsPerPage = param1.levelsPerPage;
         _loc2_.name = param1.name;
         _loc2_.menuImage = param1.menuImage;
         _loc2_.§@#$§ = param1.leftCorner;
         _loc2_.§#!w§ = param1.rightCorner;
         _loc2_.§"!p§ = param1.pageColors;
         _loc2_.pageIndexes = param1.pageIndexes;
         _loc2_.levelButtons = param1.levelButtons;
         _loc2_.writtenName = param1.writtenName;
         _loc2_.§3"i§ = param1.hidden;
         _loc2_.isLocked = param1.locked;
         if(param1.cutscenes)
         {
            for(_loc3_ in param1.cutscenes)
            {
               _loc2_.§ "Y§(_loc3_,param1.cutscenes[_loc3_]);
            }
         }
         return _loc2_;
      }
      
      protected function getEpisodeModel(param1:Array) : §3![§
      {
         return new §3![§(param1);
      }
      
      public function getEpisodeForLevel(param1:String) : §3![§
      {
         var _loc2_:§3![§ = null;
         if(!param1)
         {
            return null;
         }
         for each(_loc2_ in this.§<!W§)
         {
            if(_loc2_.§9"?§(param1.toLowerCase()))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §@"$§(param1:String) : int
      {
         var _loc3_:§3![§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§<!W§.length)
         {
            _loc3_ = this.§<!W§[_loc2_];
            if(_loc3_.§9"?§(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public function getEpisode(param1:int) : §3![§
      {
         if(param1 >= 0 && param1 < this.§<!W§.length)
         {
            return this.§<!W§[param1];
         }
         return null;
      }
      
      public function getEpisodeByName(param1:String) : §3![§
      {
         var _loc2_:§3![§ = null;
         for each(_loc2_ in this.§<!W§)
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
         return this.§<!W§.length;
      }
      
      public function getLevelForId(param1:String) : §8!B§
      {
         var _loc2_:§3![§ = this.getEpisodeForLevel(param1);
         if(!_loc2_)
         {
            throw new Error("Error! Level \'" + param1 + "\' does not exist.");
         }
         return _loc2_.§8N§(param1);
      }
      
      public function addLevel(param1:String, param2:§8!B§) : void
      {
         var _loc3_:§3![§ = this.getEpisodeForLevel(param1);
         if(_loc3_)
         {
            _loc3_.addLevel(param1,param2);
         }
      }
      
      public function getSilverScoreForLevel(param1:String) : int
      {
         var _loc2_:§8!B§ = this.getLevelForId(param1);
         return _loc2_.scoreSilver;
      }
      
      public function getGoldScoreForLevel(param1:String) : int
      {
         var _loc2_:§8!B§ = this.getLevelForId(param1);
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
         var _loc2_:§3![§ = this.getEpisodeForLevel(param1);
         if(_loc2_ == null)
         {
            return §7!k§;
         }
         return param1;
      }
      
      public function §^"W§(param1:String) : String
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc2_:§3![§ = this.getEpisodeForLevel(param1);
         if(_loc2_)
         {
            _loc3_ = _loc2_.§3#4§(param1);
            _loc2_.currentPage = _loc3_;
            _loc4_ = _loc2_.getPageIndex(_loc3_);
            _loc5_ = _loc2_.§^"0§(param1);
            return _loc4_ + "-" + (_loc5_ + 1);
         }
         return null;
      }
      
      public function loadLevel(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§3![§ = null;
         if(param1 != this.§@!F§)
         {
            _loc2_ = this.§@"$§(param1);
            if(_loc2_ >= 0)
            {
               this.§"V§ = _loc2_;
               this.§%#K§ = this.§@!F§;
               this.§@!F§ = param1;
               _loc3_ = this.getCurrentEpisodeModel();
               if(_loc3_)
               {
                  _loc3_.currentPage = _loc3_.§3#4§(param1);
               }
               this.§@!-§ = this.§^"W§(param1);
            }
            else
            {
               this.§%#K§ = this.§@!F§;
               this.§+"m§();
            }
         }
      }
      
      public function getCurrentEpisodeModel() : §3![§
      {
         return this.§<!W§[this.§"V§];
      }
      
      public function §4#M§() : Boolean
      {
         return true;
      }
      
      public function isCutSceneNext() : Boolean
      {
         var _loc1_:String = this.getNextLevelId();
         var _loc2_:String = this.getCurrentEpisodeModel().getCutScene(this.§@!F§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ == null)
         {
            §9#L§.§&"X§(_loc2_);
         }
         return true;
      }
      
      public function getNextLevelId() : String
      {
         return this.getCurrentEpisodeModel().getNextLevelId(this.§@!F§);
      }
      
      public function selectEpisode(param1:int) : void
      {
         this.§"V§ = param1;
      }
      
      public function selectEpisodeByName(param1:String) : void
      {
         this.§"V§ = this.§<!W§.indexOf(this.getEpisodeByName(param1));
      }
      
      public function resetPreviousLevel() : void
      {
         this.§%#K§ = null;
      }
      
      public function §+"m§() : void
      {
         this.§@!F§ = null;
         this.§@!-§ = null;
      }
   }
}
