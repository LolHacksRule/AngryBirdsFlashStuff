package §4",§
{
   import §-!5§.§ `§;
   
   public class §,!j§
   {
      
      public static const §"E§:String = "1-1";
       
      
      protected var §]!b§:Vector.<§2!S§> = null;
      
      protected var §6!`§:String = null;
      
      private var §;!]§:String = null;
      
      private var §1!G§:String = null;
      
      private var §,";§:int = 0;
      
      public function §,!j§()
      {
         super();
      }
      
      public function get currentLevelNumericName() : String
      {
         return this.§;!]§;
      }
      
      public function get currentLevel() : String
      {
         return this.§6!`§;
      }
      
      public function get previousLevel() : String
      {
         return this.§1!G§;
      }
      
      public function get §?Y§() : String
      {
         return this.§`T§(this.§1!G§);
      }
      
      public function get currentEpisode() : int
      {
         return this.§,";§;
      }
      
      public function get §+">§() : String
      {
         if(this.getCurrentEpisodeModel())
         {
            return this.getCurrentEpisodeModel().writtenName + " - " + (this.getCurrentEpisodeModel().§2!m§(this.currentLevel) + 1);
         }
         return null;
      }
      
      public function §5w§(param1:Object) : void
      {
         var _loc2_:Object = null;
         this.§]!b§ = new Vector.<§2!S§>();
         for each(_loc2_ in param1.episodes)
         {
            this.§]!b§.push(this.§ x§(_loc2_));
         }
      }
      
      protected function § x§(param1:Object) : §2!S§
      {
         var _loc3_:* = null;
         var _loc2_:§2!S§ = this.getEpisodeModel(param1.levelNames);
         _loc2_.levelsPerPage = param1.levelsPerPage;
         _loc2_.name = param1.name;
         _loc2_.menuImage = param1.menuImage;
         _loc2_.§8c§ = param1.leftCorner;
         _loc2_.§="§ = param1.rightCorner;
         _loc2_.§^!9§ = param1.pageColors;
         _loc2_.pageIndexes = param1.pageIndexes;
         _loc2_.levelButtons = param1.levelButtons;
         _loc2_.writtenName = param1.writtenName;
         _loc2_.§^0§ = param1.hidden;
         _loc2_.§-!k§ = param1.locked;
         if(param1.cutscenes)
         {
            for(_loc3_ in param1.cutscenes)
            {
               _loc2_.§#!n§(_loc3_,param1.cutscenes[_loc3_]);
            }
         }
         return _loc2_;
      }
      
      protected function getEpisodeModel(param1:Array) : §2!S§
      {
         return new §2!S§(param1);
      }
      
      public function getEpisodeForLevel(param1:String) : §2!S§
      {
         var _loc2_:§2!S§ = null;
         if(!param1)
         {
            return null;
         }
         for each(_loc2_ in this.§]!b§)
         {
            if(_loc2_.§#!§(param1.toLowerCase()))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §[!S§(param1:String) : int
      {
         var _loc3_:§2!S§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§]!b§.length)
         {
            _loc3_ = this.§]!b§[_loc2_];
            if(_loc3_.§#!§(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public function getEpisode(param1:int) : §2!S§
      {
         if(param1 >= 0 && param1 < this.§]!b§.length)
         {
            return this.§]!b§[param1];
         }
         return null;
      }
      
      public function §]![§(param1:String) : §2!S§
      {
         var _loc2_:§2!S§ = null;
         for each(_loc2_ in this.§]!b§)
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
         return this.§]!b§.length;
      }
      
      public function getLevelForId(param1:String) : §3v§
      {
         var _loc2_:§2!S§ = this.getEpisodeForLevel(param1);
         if(!_loc2_)
         {
            throw new Error("Error! Level \'" + param1 + "\' does not exist.");
         }
         return _loc2_.§ "§(param1);
      }
      
      public function addLevel(param1:String, param2:§3v§) : void
      {
         var _loc3_:§2!S§ = this.getEpisodeForLevel(param1);
         if(_loc3_)
         {
            _loc3_.addLevel(param1,param2);
         }
      }
      
      public function getSilverScoreForLevel(param1:String) : int
      {
         var _loc2_:§3v§ = this.getLevelForId(param1);
         return _loc2_.scoreSilver;
      }
      
      public function getGoldScoreForLevel(param1:String) : int
      {
         var _loc2_:§3v§ = this.getLevelForId(param1);
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
         var _loc2_:§2!S§ = this.getEpisodeForLevel(param1);
         if(_loc2_ == null)
         {
            return §"E§;
         }
         return param1;
      }
      
      public function §`T§(param1:String) : String
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc2_:§2!S§ = this.getEpisodeForLevel(param1);
         if(_loc2_)
         {
            _loc3_ = _loc2_.§4!A§(param1);
            _loc2_.currentPage = _loc3_;
            _loc4_ = _loc2_.getPageIndex(_loc3_);
            _loc5_ = _loc2_.§1!4§(param1);
            return _loc4_ + "-" + (_loc5_ + 1);
         }
         return null;
      }
      
      public function loadLevel(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§2!S§ = null;
         if(param1 != this.§6!`§)
         {
            _loc2_ = this.§[!S§(param1);
            if(_loc2_ >= 0)
            {
               this.§,";§ = _loc2_;
               this.§1!G§ = this.§6!`§;
               this.§6!`§ = param1;
               _loc3_ = this.getCurrentEpisodeModel();
               if(_loc3_)
               {
                  _loc3_.currentPage = _loc3_.§4!A§(param1);
               }
               this.§;!]§ = this.§`T§(param1);
            }
            else
            {
               this.§1!G§ = this.§6!`§;
               this.§`"=§();
            }
         }
      }
      
      public function getCurrentEpisodeModel() : §2!S§
      {
         return this.§]!b§[this.§,";§];
      }
      
      public function §4!d§() : Boolean
      {
         return true;
      }
      
      public function isCutSceneNext() : Boolean
      {
         var _loc1_:String = this.getNextLevelId();
         var _loc2_:String = this.getCurrentEpisodeModel().getCutScene(this.§6!`§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ == null)
         {
            § `§.§^!#§(_loc2_);
         }
         return true;
      }
      
      public function getNextLevelId() : String
      {
         return this.getCurrentEpisodeModel().getNextLevelId(this.§6!`§);
      }
      
      public function selectEpisode(param1:int) : void
      {
         this.§,";§ = param1;
      }
      
      public function §,!C§(param1:String) : void
      {
         this.§,";§ = this.§]!b§.indexOf(this.§]![§(param1));
      }
      
      public function resetPreviousLevel() : void
      {
         this.§1!G§ = null;
      }
      
      public function §`"=§() : void
      {
         this.§6!`§ = null;
         this.§;!]§ = null;
      }
   }
}
