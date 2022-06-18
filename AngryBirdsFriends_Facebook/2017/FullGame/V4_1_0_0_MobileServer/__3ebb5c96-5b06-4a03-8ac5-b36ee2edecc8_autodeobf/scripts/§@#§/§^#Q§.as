package §@#§
{
   import §0=§.§>t§;
   
   public class §^#Q§
   {
      
      public static const § $>§:String = "1-1";
       
      
      protected var §4Y§:Vector.<§9##§> = null;
      
      protected var §1#p§:String = null;
      
      private var §>#S§:String = null;
      
      protected var §'#&§:String = null;
      
      private var §8"u§:int = 0;
      
      public function §^#Q§()
      {
         super();
      }
      
      public function get currentLevelNumericName() : String
      {
         return this.§>#S§;
      }
      
      public function get currentLevel() : String
      {
         return this.§1#p§;
      }
      
      public function get previousLevel() : String
      {
         return this.§'#&§;
      }
      
      public function get §^$4§() : String
      {
         return this.§%!M§(this.§'#&§);
      }
      
      public function get currentEpisode() : int
      {
         return this.§8"u§;
      }
      
      public function get §9x§() : String
      {
         if(this.getCurrentEpisodeModel())
         {
            return this.getCurrentEpisodeModel().writtenName + " - " + (this.getCurrentEpisodeModel().§"">§(this.currentLevel) + 1);
         }
         return null;
      }
      
      public function §,#h§(param1:Object) : void
      {
         var _loc2_:Object = null;
         this.§4Y§ = new Vector.<§9##§>();
         for each(_loc2_ in param1.episodes)
         {
            this.§4Y§.push(this.createEpisodeModelFromData(_loc2_));
         }
      }
      
      protected function createEpisodeModelFromData(param1:Object) : §9##§
      {
         var _loc3_:* = null;
         var _loc2_:§9##§ = this.§7Q§(param1.levelNames);
         _loc2_.levelsPerPage = param1.levelsPerPage;
         _loc2_.name = param1.name;
         _loc2_.menuImage = param1.menuImage;
         _loc2_.§"5§ = param1.leftCorner;
         _loc2_.§4#t§ = param1.rightCorner;
         _loc2_.§<y§ = param1.pageColors;
         _loc2_.pageIndexes = param1.pageIndexes;
         _loc2_.levelButtons = param1.levelButtons;
         _loc2_.writtenName = param1.writtenName;
         _loc2_.§4"Q§ = param1.hidden;
         _loc2_.§?§ = param1.locked;
         if(param1.cutscenes)
         {
            for(_loc3_ in param1.cutscenes)
            {
               _loc2_.§,!c§(_loc3_,param1.cutscenes[_loc3_]);
            }
         }
         return _loc2_;
      }
      
      protected function §7Q§(param1:Array) : §9##§
      {
         return new §9##§(param1);
      }
      
      public function getEpisodeForLevel(param1:String) : §9##§
      {
         var _loc2_:§9##§ = null;
         if(!param1)
         {
            return null;
         }
         for each(_loc2_ in this.§4Y§)
         {
            if(_loc2_.§+B§(param1.toLowerCase()))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §-B§(param1:String) : int
      {
         var _loc3_:§9##§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§4Y§.length)
         {
            _loc3_ = this.§4Y§[_loc2_];
            if(_loc3_.§+B§(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public function getEpisode(param1:int) : §9##§
      {
         if(param1 >= 0 && param1 < this.§4Y§.length)
         {
            return this.§4Y§[param1];
         }
         return null;
      }
      
      public function getEpisodeByName(param1:String) : §9##§
      {
         var _loc2_:§9##§ = null;
         for each(_loc2_ in this.§4Y§)
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
         return this.§4Y§.length;
      }
      
      public function getLevelForId(param1:String) : §]#B§
      {
         var _loc2_:§9##§ = this.getEpisodeForLevel(param1);
         if(!_loc2_)
         {
            throw new Error("Error! Level \'" + param1 + "\' does not exist.");
         }
         return _loc2_.§3o§(param1);
      }
      
      public function addLevel(param1:String, param2:§]#B§) : void
      {
         var _loc3_:§9##§ = this.getEpisodeForLevel(param1);
         if(_loc3_)
         {
            _loc3_.addLevel(param1,param2);
         }
      }
      
      public function getSilverScoreForLevel(param1:String) : int
      {
         var _loc2_:§]#B§ = this.getLevelForId(param1);
         return _loc2_.scoreSilver;
      }
      
      public function getGoldScoreForLevel(param1:String) : int
      {
         var _loc2_:§]#B§ = this.getLevelForId(param1);
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
         var _loc2_:§9##§ = this.getEpisodeForLevel(param1);
         if(_loc2_ == null)
         {
            return § $>§;
         }
         return param1;
      }
      
      public function §%!M§(param1:String) : String
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc2_:§9##§ = this.getEpisodeForLevel(param1);
         if(_loc2_)
         {
            _loc3_ = _loc2_.§,!i§(param1);
            _loc2_.currentPage = _loc3_;
            _loc4_ = _loc2_.getPageIndex(_loc3_);
            _loc5_ = _loc2_.§5#j§(param1);
            return _loc4_ + "-" + (_loc5_ + 1);
         }
         return null;
      }
      
      public function loadLevel(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§9##§ = null;
         if(param1 != this.§1#p§)
         {
            _loc2_ = this.§-B§(param1);
            if(_loc2_ >= 0)
            {
               this.§8"u§ = _loc2_;
               this.§'#&§ = this.§1#p§;
               this.§1#p§ = param1;
               _loc3_ = this.getCurrentEpisodeModel();
               if(_loc3_)
               {
                  _loc3_.currentPage = _loc3_.§,!i§(param1);
               }
               this.§>#S§ = this.§%!M§(param1);
            }
            else
            {
               this.§'#&§ = this.§1#p§;
               this.resetCurrentLevel();
            }
         }
      }
      
      public function getCurrentEpisodeModel() : §9##§
      {
         return this.§4Y§[this.§8"u§];
      }
      
      public function §3!8§() : Boolean
      {
         return true;
      }
      
      public function isCutSceneNext() : Boolean
      {
         var _loc1_:String = this.getNextLevelId();
         var _loc2_:String = this.getCurrentEpisodeModel().getCutScene(this.§1#p§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ == null)
         {
            §>t§.§?"e§(_loc2_);
         }
         return true;
      }
      
      public function getNextLevelId() : String
      {
         return this.getCurrentEpisodeModel().getNextLevelId(this.§1#p§);
      }
      
      public function selectEpisode(param1:int) : void
      {
         this.§8"u§ = param1;
      }
      
      public function §9"m§(param1:String) : void
      {
         this.§8"u§ = this.§4Y§.indexOf(this.getEpisodeByName(param1));
      }
      
      public function resetPreviousLevel() : void
      {
         this.§'#&§ = null;
      }
      
      public function resetCurrentLevel() : void
      {
         this.§1#p§ = null;
         this.§>#S§ = null;
      }
   }
}
