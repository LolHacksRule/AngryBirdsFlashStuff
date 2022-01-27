package §1z§
{
   import §`!`§.§-"B§;
   
   public class §^!@§
   {
      
      public static const §+"F§:String = "1-1";
       
      
      protected var §>!A§:Vector.<§^"6§> = null;
      
      protected var §[!!§:String = null;
      
      private var §^!w§:String = null;
      
      private var §5r§:String = null;
      
      private var §;e§:int = 0;
      
      public function §^!@§()
      {
         super();
      }
      
      public function get currentLevelNumericName() : String
      {
         return this.§^!w§;
      }
      
      public function get currentLevel() : String
      {
         return this.§[!!§;
      }
      
      public function get previousLevel() : String
      {
         return this.§5r§;
      }
      
      public function get §for §() : String
      {
         return this.§3""§(this.§5r§);
      }
      
      public function get currentEpisode() : int
      {
         return this.§;e§;
      }
      
      public function get §;"-§() : String
      {
         if(this.getCurrentEpisodeModel())
         {
            return this.getCurrentEpisodeModel().writtenName + " - " + (this.getCurrentEpisodeModel().§7J§(this.currentLevel) + 1);
         }
         return null;
      }
      
      public function §0%§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§^"6§ = null;
         var _loc4_:* = null;
         this.§>!A§ = new Vector.<§^"6§>();
         for each(_loc2_ in param1.episodes)
         {
            _loc3_ = this.getEpisodeModel(_loc2_.levelNames);
            _loc3_.levelsPerPage = _loc2_.levelsPerPage;
            _loc3_.name = _loc2_.name;
            _loc3_.menuImage = _loc2_.menuImage;
            _loc3_.§8!E§ = _loc2_.leftCorner;
            _loc3_.§`!R§ = _loc2_.rightCorner;
            _loc3_.§=!6§ = _loc2_.pageColors;
            _loc3_.pageIndexes = _loc2_.pageIndexes;
            _loc3_.levelButtons = _loc2_.levelButtons;
            _loc3_.writtenName = _loc2_.writtenName;
            _loc3_.§="7§ = _loc2_.hidden;
            _loc3_.§^&§ = _loc2_.locked;
            if(_loc2_.cutscenes)
            {
               for(_loc4_ in _loc2_.cutscenes)
               {
                  _loc3_.§&!z§(_loc4_,_loc2_.cutscenes[_loc4_]);
               }
            }
            this.§>!A§.push(_loc3_);
         }
      }
      
      protected function getEpisodeModel(param1:Array) : §^"6§
      {
         return new §^"6§(param1);
      }
      
      public function getEpisodeForLevel(param1:String) : §^"6§
      {
         var _loc2_:§^"6§ = null;
         if(!param1)
         {
            return null;
         }
         for each(_loc2_ in this.§>!A§)
         {
            if(_loc2_.§1!L§(param1.toLowerCase()))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §@!^§(param1:String) : int
      {
         var _loc3_:§^"6§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§>!A§.length)
         {
            _loc3_ = this.§>!A§[_loc2_];
            if(_loc3_.§1!L§(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public function getEpisode(param1:int) : §^"6§
      {
         if(param1 >= 0 && param1 < this.§>!A§.length)
         {
            return this.§>!A§[param1];
         }
         return null;
      }
      
      public function §3`§(param1:String) : §^"6§
      {
         var _loc2_:§^"6§ = null;
         for each(_loc2_ in this.§>!A§)
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
         return this.§>!A§.length;
      }
      
      public function getLevelForId(param1:String) : §2#§
      {
         var _loc2_:§^"6§ = this.getEpisodeForLevel(param1);
         if(!_loc2_)
         {
            throw new Error("Error! Level \'" + param1 + "\' does not exist.");
         }
         return _loc2_.§<d§(param1);
      }
      
      public function addLevel(param1:String, param2:§2#§) : void
      {
         var _loc3_:§^"6§ = this.getEpisodeForLevel(param1);
         if(_loc3_)
         {
            _loc3_.addLevel(param1,param2);
         }
      }
      
      public function getSilverScoreForLevel(param1:String) : int
      {
         var _loc2_:§2#§ = this.getLevelForId(param1);
         return _loc2_.scoreSilver;
      }
      
      public function getGoldScoreForLevel(param1:String) : int
      {
         var _loc2_:§2#§ = this.getLevelForId(param1);
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
         var _loc2_:§^"6§ = this.getEpisodeForLevel(param1);
         if(_loc2_ == null)
         {
            return §+"F§;
         }
         return param1;
      }
      
      public function §3""§(param1:String) : String
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc2_:§^"6§ = this.getEpisodeForLevel(param1);
         if(_loc2_)
         {
            _loc3_ = _loc2_.§1t§(param1);
            _loc2_.currentPage = _loc3_;
            _loc4_ = _loc2_.getPageIndex(_loc3_);
            _loc5_ = _loc2_.§=?§(param1);
            return _loc4_ + "-" + (_loc5_ + 1);
         }
         return null;
      }
      
      public function loadLevel(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§^"6§ = null;
         if(param1 != this.§[!!§)
         {
            _loc2_ = this.§@!^§(param1);
            if(_loc2_ >= 0)
            {
               this.§;e§ = _loc2_;
               this.§5r§ = this.§[!!§;
               this.§[!!§ = param1;
               _loc3_ = this.getCurrentEpisodeModel();
               if(_loc3_)
               {
                  _loc3_.currentPage = _loc3_.§1t§(param1);
               }
               this.§^!w§ = this.§3""§(param1);
            }
            else
            {
               this.§5r§ = this.§[!!§;
               this.§6'§();
            }
         }
      }
      
      public function getCurrentEpisodeModel() : §^"6§
      {
         return this.§>!A§[this.§;e§];
      }
      
      public function §^R§() : Boolean
      {
         return true;
      }
      
      public function isCutSceneNext() : Boolean
      {
         var _loc1_:String = this.getNextLevelId();
         var _loc2_:String = this.getCurrentEpisodeModel().getCutScene(this.§[!!§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ == null)
         {
            §-"B§.§]!8§(_loc2_);
         }
         return true;
      }
      
      public function getNextLevelId() : String
      {
         return this.getCurrentEpisodeModel().getNextLevelId(this.§[!!§);
      }
      
      public function selectEpisode(param1:int) : void
      {
         this.§;e§ = param1;
      }
      
      public function resetPreviousLevel() : void
      {
         this.§5r§ = null;
      }
      
      public function §6'§() : void
      {
         this.§[!!§ = null;
         this.§^!w§ = null;
      }
   }
}
