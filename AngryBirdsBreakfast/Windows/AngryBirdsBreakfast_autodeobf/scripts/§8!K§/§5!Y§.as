package §8!K§
{
   import §4!o§.§+!N§;
   
   public class §5!Y§
   {
      
      public static const §&1§:String = "1-1";
       
      
      protected var §``§:Vector.<§3%§> = null;
      
      protected var §^!6§:String = null;
      
      private var §4!J§:String = null;
      
      private var §>S§:String = null;
      
      private var §&2§:int = 0;
      
      public function §5!Y§()
      {
         super();
      }
      
      public function get currentLevelNumericName() : String
      {
         return this.§4!J§;
      }
      
      public function get currentLevel() : String
      {
         return this.§^!6§;
      }
      
      public function get previousLevel() : String
      {
         return this.§>S§;
      }
      
      public function get previousLevelNumericName() : String
      {
         return this.§@S§(this.§>S§);
      }
      
      public function get currentEpisode() : int
      {
         return this.§&2§;
      }
      
      public function get §[?§() : String
      {
         if(this.getCurrentEpisodeModel())
         {
            return this.getCurrentEpisodeModel().writtenName + " - " + (this.getCurrentEpisodeModel().§#n§(this.currentLevel) + 1);
         }
         return null;
      }
      
      public function §#!!§(param1:Object) : void
      {
         var _loc2_:Object = null;
         this.§``§ = new Vector.<§3%§>();
         for each(_loc2_ in param1.episodes)
         {
            this.§``§.push(this.§ !S§(_loc2_));
         }
      }
      
      protected function § !S§(param1:Object) : §3%§
      {
         var _loc3_:* = null;
         var _loc2_:§3%§ = this.getEpisodeModel(param1.levelNames);
         _loc2_.levelsPerPage = param1.levelsPerPage;
         _loc2_.name = param1.name;
         _loc2_.menuImage = param1.menuImage;
         _loc2_.§&!p§ = param1.leftCorner;
         _loc2_.§@"%§ = param1.rightCorner;
         _loc2_.§&!<§ = param1.pageColors;
         _loc2_.pageIndexes = param1.pageIndexes;
         _loc2_.levelButtons = param1.levelButtons;
         _loc2_.writtenName = param1.writtenName;
         _loc2_.§3F§ = param1.hidden;
         _loc2_.§9>§ = param1.locked;
         if(param1.cutscenes)
         {
            for(_loc3_ in param1.cutscenes)
            {
               _loc2_.§23§(_loc3_,param1.cutscenes[_loc3_]);
            }
         }
         return _loc2_;
      }
      
      protected function getEpisodeModel(param1:Array) : §3%§
      {
         return new §3%§(param1);
      }
      
      public function getEpisodeForLevel(param1:String) : §3%§
      {
         var _loc2_:§3%§ = null;
         if(!param1)
         {
            return null;
         }
         for each(_loc2_ in this.§``§)
         {
            if(_loc2_.§]"-§(param1.toLowerCase()))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §6!q§(param1:String) : int
      {
         var _loc3_:§3%§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§``§.length)
         {
            _loc3_ = this.§``§[_loc2_];
            if(_loc3_.§]"-§(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public function getEpisode(param1:int) : §3%§
      {
         if(param1 >= 0 && param1 < this.§``§.length)
         {
            return this.§``§[param1];
         }
         return null;
      }
      
      public function §<"'§(param1:String) : §3%§
      {
         var _loc2_:§3%§ = null;
         for each(_loc2_ in this.§``§)
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
         return this.§``§.length;
      }
      
      public function getLevelForId(param1:String) : §5!0§
      {
         var _loc2_:§3%§ = this.getEpisodeForLevel(param1);
         if(!_loc2_)
         {
            throw new Error("Error! Level \'" + param1 + "\' does not exist.");
         }
         return _loc2_.§&t§(param1);
      }
      
      public function §^8§(param1:String, param2:§5!0§) : void
      {
         var _loc3_:§3%§ = this.getEpisodeForLevel(param1);
         if(_loc3_)
         {
            _loc3_.§^8§(param1,param2);
         }
      }
      
      public function getSilverScoreForLevel(param1:String) : int
      {
         var _loc2_:§5!0§ = this.getLevelForId(param1);
         return _loc2_.scoreSilver;
      }
      
      public function getGoldScoreForLevel(param1:String) : int
      {
         var _loc2_:§5!0§ = this.getLevelForId(param1);
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
         var _loc2_:§3%§ = this.getEpisodeForLevel(param1);
         if(_loc2_ == null)
         {
            return §&1§;
         }
         return param1;
      }
      
      public function §@S§(param1:String) : String
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc2_:§3%§ = this.getEpisodeForLevel(param1);
         if(_loc2_)
         {
            _loc3_ = _loc2_.§@e§(param1);
            _loc2_.currentPage = _loc3_;
            _loc4_ = _loc2_.getPageIndex(_loc3_);
            _loc5_ = _loc2_.§7!J§(param1);
            return _loc4_ + "-" + (_loc5_ + 1);
         }
         return null;
      }
      
      public function loadLevel(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§3%§ = null;
         if(param1 != this.§^!6§)
         {
            _loc2_ = this.§6!q§(param1);
            if(_loc2_ >= 0)
            {
               this.§&2§ = _loc2_;
               this.§>S§ = this.§^!6§;
               this.§^!6§ = param1;
               _loc3_ = this.getCurrentEpisodeModel();
               if(_loc3_)
               {
                  _loc3_.currentPage = _loc3_.§@e§(param1);
               }
               this.§4!J§ = this.§@S§(param1);
            }
            else
            {
               this.§>S§ = this.§^!6§;
               this.resetCurrentLevel();
            }
         }
      }
      
      public function getCurrentEpisodeModel() : §3%§
      {
         return this.§``§[this.§&2§];
      }
      
      public function §6!s§() : Boolean
      {
         return true;
      }
      
      public function isCutSceneNext() : Boolean
      {
         var _loc1_:String = this.getNextLevelId();
         var _loc2_:String = this.getCurrentEpisodeModel().getCutScene(this.§^!6§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ == null)
         {
            §+!N§.§ t§(_loc2_);
         }
         return true;
      }
      
      public function getNextLevelId() : String
      {
         return this.getCurrentEpisodeModel().getNextLevelId(this.§^!6§);
      }
      
      public function selectEpisode(param1:int) : void
      {
         this.§&2§ = param1;
      }
      
      public function §?r§(param1:String) : void
      {
         this.§&2§ = this.§``§.indexOf(this.§<"'§(param1));
      }
      
      public function resetPreviousLevel() : void
      {
         this.§>S§ = null;
      }
      
      public function resetCurrentLevel() : void
      {
         this.§^!6§ = null;
         this.§4!J§ = null;
      }
   }
}
