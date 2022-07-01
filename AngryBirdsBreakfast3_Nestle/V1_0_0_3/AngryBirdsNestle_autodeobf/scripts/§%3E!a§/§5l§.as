package §>!a§
{
   import §"E§.§&z§;
   
   public class §5l§
   {
      
      public static const §=!b§:String = "1-1";
       
      
      protected var §;!Y§:Vector.<§>"2§> = null;
      
      protected var §4!I§:String = null;
      
      private var §@4§:String = null;
      
      private var §3!t§:String = null;
      
      private var §-!j§:int = 0;
      
      public function §5l§()
      {
         super();
      }
      
      public function get currentLevelNumericName() : String
      {
         return this.§@4§;
      }
      
      public function get currentLevel() : String
      {
         return this.§4!I§;
      }
      
      public function get previousLevel() : String
      {
         return this.§3!t§;
      }
      
      public function get previousLevelNumericName() : String
      {
         return this.§@,§(this.§3!t§);
      }
      
      public function get currentEpisode() : int
      {
         return this.§-!j§;
      }
      
      public function get §7y§() : String
      {
         if(this.getCurrentEpisodeModel())
         {
            return this.getCurrentEpisodeModel().writtenName + " - " + (this.getCurrentEpisodeModel().§4!f§(this.currentLevel) + 1);
         }
         return null;
      }
      
      public function §7!m§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§>"2§ = null;
         var _loc4_:* = null;
         this.§;!Y§ = new Vector.<§>"2§>();
         for each(_loc2_ in param1.episodes)
         {
            _loc3_ = this.getEpisodeModel(_loc2_.levelNames);
            _loc3_.levelsPerPage = _loc2_.levelsPerPage;
            _loc3_.name = _loc2_.name;
            _loc3_.menuImage = _loc2_.menuImage;
            _loc3_.§8!K§ = _loc2_.leftCorner;
            _loc3_.§9]§ = _loc2_.rightCorner;
            _loc3_.§ f§ = _loc2_.pageColors;
            _loc3_.pageIndexes = _loc2_.pageIndexes;
            _loc3_.levelButtons = _loc2_.levelButtons;
            _loc3_.writtenName = _loc2_.writtenName;
            _loc3_.§+!W§ = _loc2_.hidden;
            _loc3_.§]=§ = _loc2_.locked;
            if(_loc2_.cutscenes)
            {
               for(_loc4_ in _loc2_.cutscenes)
               {
                  _loc3_.§#G§(_loc4_,_loc2_.cutscenes[_loc4_]);
               }
            }
            this.§;!Y§.push(_loc3_);
         }
      }
      
      protected function getEpisodeModel(param1:Array) : §>"2§
      {
         return new §>"2§(param1);
      }
      
      public function getEpisodeForLevel(param1:String) : §>"2§
      {
         var _loc2_:§>"2§ = null;
         if(!param1)
         {
            return null;
         }
         for each(_loc2_ in this.§;!Y§)
         {
            if(_loc2_.§2! §(param1.toLowerCase()))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §8! §(param1:String) : int
      {
         var _loc3_:§>"2§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§;!Y§.length)
         {
            _loc3_ = this.§;!Y§[_loc2_];
            if(_loc3_.§2! §(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public function getEpisode(param1:int) : §>"2§
      {
         if(param1 >= 0 && param1 < this.§;!Y§.length)
         {
            return this.§;!Y§[param1];
         }
         return null;
      }
      
      public function §>'§(param1:String) : §>"2§
      {
         var _loc2_:§>"2§ = null;
         for each(_loc2_ in this.§;!Y§)
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
         return this.§;!Y§.length;
      }
      
      public function getLevelForId(param1:String) : §-?§
      {
         var _loc2_:§>"2§ = this.getEpisodeForLevel(param1);
         if(!_loc2_)
         {
            throw new Error("Error! Level \'" + param1 + "\' does not exist.");
         }
         return _loc2_.§9N§(param1);
      }
      
      public function §];§(param1:String, param2:§-?§) : void
      {
         var _loc3_:§>"2§ = this.getEpisodeForLevel(param1);
         if(_loc3_)
         {
            _loc3_.§];§(param1,param2);
         }
      }
      
      public function getSilverScoreForLevel(param1:String) : int
      {
         var _loc2_:§-?§ = this.getLevelForId(param1);
         return _loc2_.scoreSilver;
      }
      
      public function getGoldScoreForLevel(param1:String) : int
      {
         var _loc2_:§-?§ = this.getLevelForId(param1);
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
         var _loc2_:§>"2§ = this.getEpisodeForLevel(param1);
         if(_loc2_ == null)
         {
            return §=!b§;
         }
         return param1;
      }
      
      public function §@,§(param1:String) : String
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc2_:§>"2§ = this.getEpisodeForLevel(param1);
         if(_loc2_)
         {
            _loc3_ = _loc2_.§[x§(param1);
            _loc2_.currentPage = _loc3_;
            _loc4_ = _loc2_.getPageIndex(_loc3_);
            _loc5_ = _loc2_.§#!A§(param1);
            return _loc4_ + "-" + (_loc5_ + 1);
         }
         return null;
      }
      
      public function loadLevel(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§>"2§ = null;
         if(param1 != this.§4!I§)
         {
            _loc2_ = this.§8! §(param1);
            if(_loc2_ >= 0)
            {
               this.§-!j§ = _loc2_;
               this.§3!t§ = this.§4!I§;
               this.§4!I§ = param1;
               _loc3_ = this.getCurrentEpisodeModel();
               if(_loc3_)
               {
                  _loc3_.currentPage = _loc3_.§[x§(param1);
               }
               this.§@4§ = this.§@,§(param1);
            }
            else
            {
               this.§3!t§ = this.§4!I§;
               this.resetCurrentLevel();
            }
         }
      }
      
      public function getCurrentEpisodeModel() : §>"2§
      {
         return this.§;!Y§[this.§-!j§];
      }
      
      public function §7!I§() : Boolean
      {
         return true;
      }
      
      public function isCutSceneNext() : Boolean
      {
         var _loc1_:String = this.getNextLevelId();
         var _loc2_:String = this.getCurrentEpisodeModel().getCutScene(this.§4!I§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ == null)
         {
            §&z§.§;Z§(_loc2_);
         }
         return true;
      }
      
      public function getNextLevelId() : String
      {
         return this.getCurrentEpisodeModel().getNextLevelId(this.§4!I§);
      }
      
      public function selectEpisode(param1:int) : void
      {
         this.§-!j§ = param1;
      }
      
      public function resetPreviousLevel() : void
      {
         this.§3!t§ = null;
      }
      
      public function resetCurrentLevel() : void
      {
         this.§4!I§ = null;
         this.§@4§ = null;
      }
   }
}
