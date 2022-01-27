package §;!0§
{
   import §4A§.§1!d§;
   
   public class §#2§
   {
      
      public static const §67§:String = "1-1";
       
      
      protected var §=z§:Vector.<§]§> = null;
      
      protected var §0!9§:String = null;
      
      private var §;$§:String = null;
      
      private var §1!0§:String = null;
      
      private var §+""§:int = 0;
      
      public function §#2§()
      {
         super();
      }
      
      public function get currentLevelNumericName() : String
      {
         return this.§;$§;
      }
      
      public function get currentLevel() : String
      {
         return this.§0!9§;
      }
      
      public function get previousLevel() : String
      {
         return this.§1!0§;
      }
      
      public function get §#!§() : String
      {
         return this.§6!z§(this.§1!0§);
      }
      
      public function get currentEpisode() : int
      {
         return this.§+""§;
      }
      
      public function get §^!c§() : String
      {
         if(this.getCurrentEpisodeModel())
         {
            return this.getCurrentEpisodeModel().writtenName + " - " + (this.getCurrentEpisodeModel().§3"G§(this.currentLevel) + 1);
         }
         return null;
      }
      
      public function §@!>§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§]§ = null;
         var _loc4_:* = null;
         this.§=z§ = new Vector.<§]§>();
         for each(_loc2_ in param1.episodes)
         {
            _loc3_ = this.getEpisodeModel(_loc2_.levelNames);
            _loc3_.levelsPerPage = _loc2_.levelsPerPage;
            _loc3_.name = _loc2_.name;
            _loc3_.menuImage = _loc2_.menuImage;
            _loc3_.§`1§ = _loc2_.leftCorner;
            _loc3_.§?c§ = _loc2_.rightCorner;
            _loc3_.§;"8§ = _loc2_.pageColors;
            _loc3_.pageIndexes = _loc2_.pageIndexes;
            _loc3_.levelButtons = _loc2_.levelButtons;
            _loc3_.writtenName = _loc2_.writtenName;
            _loc3_.§0!_§ = _loc2_.hidden;
            _loc3_.§`"4§ = _loc2_.locked;
            if(_loc2_.cutscenes)
            {
               for(_loc4_ in _loc2_.cutscenes)
               {
                  _loc3_.§?!P§(_loc4_,_loc2_.cutscenes[_loc4_]);
               }
            }
            this.§=z§.push(_loc3_);
         }
      }
      
      protected function getEpisodeModel(param1:Array) : §]§
      {
         return new §]§(param1);
      }
      
      public function getEpisodeForLevel(param1:String) : §]§
      {
         var _loc2_:§]§ = null;
         if(!param1)
         {
            return null;
         }
         for each(_loc2_ in this.§=z§)
         {
            if(_loc2_.§7"#§(param1.toLowerCase()))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §[!_§(param1:String) : int
      {
         var _loc3_:§]§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§=z§.length)
         {
            _loc3_ = this.§=z§[_loc2_];
            if(_loc3_.§7"#§(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public function getEpisode(param1:int) : §]§
      {
         if(param1 >= 0 && param1 < this.§=z§.length)
         {
            return this.§=z§[param1];
         }
         return null;
      }
      
      public function §!t§(param1:String) : §]§
      {
         var _loc2_:§]§ = null;
         for each(_loc2_ in this.§=z§)
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
         return this.§=z§.length;
      }
      
      public function getLevelForId(param1:String) : §!!X§
      {
         var _loc2_:§]§ = this.getEpisodeForLevel(param1);
         if(!_loc2_)
         {
            throw new Error("Error! Level \'" + param1 + "\' does not exist.");
         }
         return _loc2_.§7!-§(param1);
      }
      
      public function addLevel(param1:String, param2:§!!X§) : void
      {
         var _loc3_:§]§ = this.getEpisodeForLevel(param1);
         if(_loc3_)
         {
            _loc3_.addLevel(param1,param2);
         }
      }
      
      public function getSilverScoreForLevel(param1:String) : int
      {
         var _loc2_:§!!X§ = this.getLevelForId(param1);
         return _loc2_.scoreSilver;
      }
      
      public function getGoldScoreForLevel(param1:String) : int
      {
         var _loc2_:§!!X§ = this.getLevelForId(param1);
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
         var _loc2_:§]§ = this.getEpisodeForLevel(param1);
         if(_loc2_ == null)
         {
            return §67§;
         }
         return param1;
      }
      
      public function §6!z§(param1:String) : String
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc2_:§]§ = this.getEpisodeForLevel(param1);
         if(_loc2_)
         {
            _loc3_ = _loc2_.§+"9§(param1);
            _loc2_.currentPage = _loc3_;
            _loc4_ = _loc2_.getPageIndex(_loc3_);
            _loc5_ = _loc2_.§2"E§(param1);
            return _loc4_ + "-" + (_loc5_ + 1);
         }
         return null;
      }
      
      public function loadLevel(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§]§ = null;
         if(param1 != this.§0!9§)
         {
            _loc2_ = this.§[!_§(param1);
            if(_loc2_ >= 0)
            {
               this.§+""§ = _loc2_;
               this.§1!0§ = this.§0!9§;
               this.§0!9§ = param1;
               _loc3_ = this.getCurrentEpisodeModel();
               if(_loc3_)
               {
                  _loc3_.currentPage = _loc3_.§+"9§(param1);
               }
               this.§;$§ = this.§6!z§(param1);
            }
            else
            {
               this.§1!0§ = this.§0!9§;
               this.§7A§();
            }
         }
      }
      
      public function getCurrentEpisodeModel() : §]§
      {
         return this.§=z§[this.§+""§];
      }
      
      public function §&"D§() : Boolean
      {
         return true;
      }
      
      public function isCutSceneNext() : Boolean
      {
         var _loc1_:String = this.getNextLevelId();
         var _loc2_:String = this.getCurrentEpisodeModel().getCutScene(this.§0!9§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ == null)
         {
            §1!d§.§'!8§(_loc2_);
         }
         return true;
      }
      
      public function getNextLevelId() : String
      {
         return this.getCurrentEpisodeModel().getNextLevelId(this.§0!9§);
      }
      
      public function selectEpisode(param1:int) : void
      {
         this.§+""§ = param1;
      }
      
      public function resetPreviousLevel() : void
      {
         this.§1!0§ = null;
      }
      
      public function §7A§() : void
      {
         this.§0!9§ = null;
         this.§;$§ = null;
      }
   }
}
