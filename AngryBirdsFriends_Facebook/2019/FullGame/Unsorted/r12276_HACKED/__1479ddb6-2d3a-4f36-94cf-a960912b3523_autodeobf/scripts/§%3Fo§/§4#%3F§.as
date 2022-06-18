package §?o§
{
   import §+_§.§^"Q§;
   
   public class §4#?§
   {
      
      public static const §8!5§:String = "1-1";
       
      
      protected var §^_§:Vector.<§79§> = null;
      
      protected var §=!h§:String = null;
      
      private var §=#U§:String = null;
      
      protected var §4"<§:String = null;
      
      private var §"#B§:int = 0;
      
      public function §4#?§()
      {
         super();
      }
      
      public function get currentLevelNumericName() : String
      {
         return this.§=#U§;
      }
      
      public function get currentLevel() : String
      {
         return this.§=!h§;
      }
      
      public function get previousLevel() : String
      {
         return this.§4"<§;
      }
      
      public function get §;"6§() : String
      {
         return this.§,]§(this.§4"<§);
      }
      
      public function get currentEpisode() : int
      {
         return this.§"#B§;
      }
      
      public function get §+D§() : String
      {
         if(this.getCurrentEpisodeModel())
         {
            return this.getCurrentEpisodeModel().writtenName + " - " + (this.getCurrentEpisodeModel().§9#D§(this.currentLevel) + 1);
         }
         return null;
      }
      
      public function §02§(param1:Object) : void
      {
         var _loc2_:Object = null;
         this.§^_§ = new Vector.<§79§>();
         for each(_loc2_ in param1.episodes)
         {
            this.§^_§.push(this.createEpisodeModelFromData(_loc2_));
         }
      }
      
      protected function createEpisodeModelFromData(param1:Object) : §79§
      {
         var _loc3_:* = null;
         var _loc2_:§79§ = this.§?H§(param1.levelNames);
         _loc2_.levelsPerPage = param1.levelsPerPage;
         _loc2_.name = param1.name;
         _loc2_.menuImage = param1.menuImage;
         _loc2_.§3"=§ = param1.leftCorner;
         _loc2_.§0!C§ = param1.rightCorner;
         _loc2_.§9" § = param1.pageColors;
         _loc2_.pageIndexes = param1.pageIndexes;
         _loc2_.levelButtons = param1.levelButtons;
         _loc2_.writtenName = param1.writtenName;
         _loc2_.§^$5§ = param1.hidden;
         _loc2_.§8#y§ = param1.locked;
         if(param1.cutscenes)
         {
            for(_loc3_ in param1.cutscenes)
            {
               _loc2_.§;#c§(_loc3_,param1.cutscenes[_loc3_]);
            }
         }
         return _loc2_;
      }
      
      protected function §?H§(param1:Array) : §79§
      {
         return new §79§(param1);
      }
      
      public function getEpisodeForLevel(param1:String) : §79§
      {
         var _loc2_:§79§ = null;
         if(!param1)
         {
            return null;
         }
         for each(_loc2_ in this.§^_§)
         {
            if(_loc2_.§%#-§(param1.toLowerCase()))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §@C§(param1:String) : int
      {
         var _loc3_:§79§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§^_§.length)
         {
            _loc3_ = this.§^_§[_loc2_];
            if(_loc3_.§%#-§(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public function getEpisode(param1:int) : §79§
      {
         if(param1 >= 0 && param1 < this.§^_§.length)
         {
            return this.§^_§[param1];
         }
         return null;
      }
      
      public function getEpisodeByName(param1:String) : §79§
      {
         var _loc2_:§79§ = null;
         for each(_loc2_ in this.§^_§)
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
         return this.§^_§.length;
      }
      
      public function getLevelForId(param1:String) : § ^§
      {
         var _loc2_:§79§ = this.getEpisodeForLevel(param1);
         if(!_loc2_)
         {
            throw new Error("Error! Level \'" + param1 + "\' does not exist.");
         }
         return _loc2_.§?"C§(param1);
      }
      
      public function addLevel(param1:String, param2:§ ^§) : void
      {
         var _loc3_:§79§ = this.getEpisodeForLevel(param1);
         if(_loc3_)
         {
            _loc3_.addLevel(param1,param2);
         }
      }
      
      public function getSilverScoreForLevel(param1:String) : int
      {
         var _loc2_:§ ^§ = this.getLevelForId(param1);
         return _loc2_.scoreSilver;
      }
      
      public function getGoldScoreForLevel(param1:String) : int
      {
         var _loc2_:§ ^§ = this.getLevelForId(param1);
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
         var _loc2_:§79§ = this.getEpisodeForLevel(param1);
         if(_loc2_ == null)
         {
            return §8!5§;
         }
         return param1;
      }
      
      public function §,]§(param1:String) : String
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc2_:§79§ = this.getEpisodeForLevel(param1);
         if(_loc2_)
         {
            _loc3_ = _loc2_.§0!u§(param1);
            _loc2_.currentPage = _loc3_;
            _loc4_ = _loc2_.getPageIndex(_loc3_);
            _loc5_ = _loc2_.§-!P§(param1);
            return _loc4_ + "-" + (_loc5_ + 1);
         }
         return null;
      }
      
      public function loadLevel(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§79§ = null;
         if(param1 != this.§=!h§)
         {
            _loc2_ = this.§@C§(param1);
            if(_loc2_ >= 0)
            {
               this.§"#B§ = _loc2_;
               this.§4"<§ = this.§=!h§;
               this.§=!h§ = param1;
               _loc3_ = this.getCurrentEpisodeModel();
               if(_loc3_)
               {
                  _loc3_.currentPage = _loc3_.§0!u§(param1);
               }
               this.§=#U§ = this.§,]§(param1);
            }
            else
            {
               this.§4"<§ = this.§=!h§;
               this.resetCurrentLevel();
            }
         }
      }
      
      public function getCurrentEpisodeModel() : §79§
      {
         return this.§^_§[this.§"#B§];
      }
      
      public function §!q§() : Boolean
      {
         return true;
      }
      
      public function isCutSceneNext() : Boolean
      {
         var _loc1_:String = this.getNextLevelId();
         var _loc2_:String = this.getCurrentEpisodeModel().getCutScene(this.§=!h§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ == null)
         {
            §^"Q§.§3G§(_loc2_);
         }
         return true;
      }
      
      public function getNextLevelId() : String
      {
         return this.getCurrentEpisodeModel().getNextLevelId(this.§=!h§);
      }
      
      public function selectEpisode(param1:int) : void
      {
         this.§"#B§ = param1;
      }
      
      public function §[!N§(param1:String) : void
      {
         this.§"#B§ = this.§^_§.indexOf(this.getEpisodeByName(param1));
      }
      
      public function resetPreviousLevel() : void
      {
         this.§4"<§ = null;
      }
      
      public function resetCurrentLevel() : void
      {
         this.§=!h§ = null;
         this.§=#U§ = null;
      }
   }
}
