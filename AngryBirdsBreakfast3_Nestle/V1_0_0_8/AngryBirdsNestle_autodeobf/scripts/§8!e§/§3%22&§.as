package §8!e§
{
   import §"",§.§<!V§;
   
   public class §3"&§
   {
      
      public static const §%!Z§:String = "1-1";
       
      
      protected var §&"-§:Vector.<§,!M§> = null;
      
      protected var §^]§:String = null;
      
      private var §2Z§:String = null;
      
      private var §9?§:String = null;
      
      private var §9"4§:int = 0;
      
      public function §3"&§()
      {
         super();
      }
      
      public function get currentLevelNumericName() : String
      {
         return this.§2Z§;
      }
      
      public function get currentLevel() : String
      {
         return this.§^]§;
      }
      
      public function get previousLevel() : String
      {
         return this.§9?§;
      }
      
      public function get previousLevelNumericName() : String
      {
         return this.§0s§(this.§9?§);
      }
      
      public function get currentEpisode() : int
      {
         return this.§9"4§;
      }
      
      public function get §"d§() : String
      {
         if(this.getCurrentEpisodeModel())
         {
            return this.getCurrentEpisodeModel().writtenName + " - " + (this.getCurrentEpisodeModel().§+"$§(this.currentLevel) + 1);
         }
         return null;
      }
      
      public function §6<§(param1:Object) : void
      {
         var _loc2_:Object = null;
         this.§&"-§ = new Vector.<§,!M§>();
         for each(_loc2_ in param1.episodes)
         {
            this.§&"-§.push(this.§&!E§(_loc2_));
         }
      }
      
      protected function §&!E§(param1:Object) : §,!M§
      {
         var _loc3_:* = null;
         var _loc2_:§,!M§ = this.getEpisodeModel(param1.levelNames);
         _loc2_.levelsPerPage = param1.levelsPerPage;
         _loc2_.name = param1.name;
         _loc2_.menuImage = param1.menuImage;
         _loc2_.§2"-§ = param1.leftCorner;
         _loc2_.§=!`§ = param1.rightCorner;
         _loc2_.§&"!§ = param1.pageColors;
         _loc2_.pageIndexes = param1.pageIndexes;
         _loc2_.levelButtons = param1.levelButtons;
         _loc2_.writtenName = param1.writtenName;
         _loc2_.§,t§ = param1.hidden;
         _loc2_.§-!q§ = param1.locked;
         if(param1.cutscenes)
         {
            for(_loc3_ in param1.cutscenes)
            {
               _loc2_.§["7§(_loc3_,param1.cutscenes[_loc3_]);
            }
         }
         return _loc2_;
      }
      
      protected function getEpisodeModel(param1:Array) : §,!M§
      {
         return new §,!M§(param1);
      }
      
      public function getEpisodeForLevel(param1:String) : §,!M§
      {
         var _loc2_:§,!M§ = null;
         if(!param1)
         {
            return null;
         }
         for each(_loc2_ in this.§&"-§)
         {
            if(_loc2_.§9!=§(param1.toLowerCase()))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §%!S§(param1:String) : int
      {
         var _loc3_:§,!M§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§&"-§.length)
         {
            _loc3_ = this.§&"-§[_loc2_];
            if(_loc3_.§9!=§(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public function getEpisode(param1:int) : §,!M§
      {
         if(param1 >= 0 && param1 < this.§&"-§.length)
         {
            return this.§&"-§[param1];
         }
         return null;
      }
      
      public function §6!X§(param1:String) : §,!M§
      {
         var _loc2_:§,!M§ = null;
         for each(_loc2_ in this.§&"-§)
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
         return this.§&"-§.length;
      }
      
      public function getLevelForId(param1:String) : §!!E§
      {
         var _loc2_:§,!M§ = this.getEpisodeForLevel(param1);
         if(!_loc2_)
         {
            throw new Error("Error! Level \'" + param1 + "\' does not exist.");
         }
         return _loc2_.§%F§(param1);
      }
      
      public function §#!J§(param1:String, param2:§!!E§) : void
      {
         var _loc3_:§,!M§ = this.getEpisodeForLevel(param1);
         if(_loc3_)
         {
            _loc3_.§#!J§(param1,param2);
         }
      }
      
      public function getSilverScoreForLevel(param1:String) : int
      {
         var _loc2_:§!!E§ = this.getLevelForId(param1);
         return _loc2_.scoreSilver;
      }
      
      public function getGoldScoreForLevel(param1:String) : int
      {
         var _loc2_:§!!E§ = this.getLevelForId(param1);
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
         var _loc2_:§,!M§ = this.getEpisodeForLevel(param1);
         if(_loc2_ == null)
         {
            return §%!Z§;
         }
         return param1;
      }
      
      public function §0s§(param1:String) : String
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc2_:§,!M§ = this.getEpisodeForLevel(param1);
         if(_loc2_)
         {
            _loc3_ = _loc2_.§9!%§(param1);
            _loc2_.currentPage = _loc3_;
            _loc4_ = _loc2_.getPageIndex(_loc3_);
            _loc5_ = _loc2_.§3"2§(param1);
            return _loc4_ + "-" + (_loc5_ + 1);
         }
         return null;
      }
      
      public function loadLevel(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§,!M§ = null;
         if(param1 != this.§^]§)
         {
            _loc2_ = this.§%!S§(param1);
            if(_loc2_ >= 0)
            {
               this.§9"4§ = _loc2_;
               this.§9?§ = this.§^]§;
               this.§^]§ = param1;
               _loc3_ = this.getCurrentEpisodeModel();
               if(_loc3_)
               {
                  _loc3_.currentPage = _loc3_.§9!%§(param1);
               }
               this.§2Z§ = this.§0s§(param1);
            }
            else
            {
               this.§9?§ = this.§^]§;
               this.resetCurrentLevel();
            }
         }
      }
      
      public function getCurrentEpisodeModel() : §,!M§
      {
         return this.§&"-§[this.§9"4§];
      }
      
      public function §@!x§() : Boolean
      {
         return true;
      }
      
      public function isCutSceneNext() : Boolean
      {
         var _loc1_:String = this.getNextLevelId();
         var _loc2_:String = this.getCurrentEpisodeModel().getCutScene(this.§^]§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ == null)
         {
            §<!V§.§1!o§(_loc2_);
         }
         return true;
      }
      
      public function getNextLevelId() : String
      {
         return this.getCurrentEpisodeModel().getNextLevelId(this.§^]§);
      }
      
      public function selectEpisode(param1:int) : void
      {
         this.§9"4§ = param1;
      }
      
      public function §2!g§(param1:String) : void
      {
         this.§9"4§ = this.§&"-§.indexOf(this.§6!X§(param1));
      }
      
      public function resetPreviousLevel() : void
      {
         this.§9?§ = null;
      }
      
      public function resetCurrentLevel() : void
      {
         this.§^]§ = null;
         this.§2Z§ = null;
      }
   }
}
