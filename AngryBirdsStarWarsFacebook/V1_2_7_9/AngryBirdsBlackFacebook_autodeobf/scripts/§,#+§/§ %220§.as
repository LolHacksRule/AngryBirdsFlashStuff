package §,#+§
{
   import §7A§.§5"2§;
   
   public class § "0§
   {
       
      
      protected var §5!S§:String = "";
      
      protected var mName:String = "";
      
      protected var §7#5§:String = "";
      
      protected var §`"w§:String = "";
      
      protected var §6!`§:String = "";
      
      protected var §#"0§:Vector.<int> = null;
      
      protected var §5#%§:int = 0;
      
      protected var §0N§:Array = null;
      
      protected var §5!W§:Array;
      
      protected var §="W§:Array;
      
      protected var §8"l§:int = 0;
      
      protected var §#"o§:§5"2§;
      
      protected var §'"9§:Boolean = false;
      
      protected var §`0§:Boolean = false;
      
      protected var §!c§:§5"2§;
      
      public function § "0§(param1:Array)
      {
         var _loc2_:String = null;
         this.§#"o§ = new §5"2§();
         this.§!c§ = new §5"2§();
         super();
         if(param1)
         {
            this.§0N§ = [];
            for each(_loc2_ in param1)
            {
               this.§0N§.push(_loc2_.toLowerCase());
            }
         }
      }
      
      public function §7"9§() : int
      {
         return this.§=!v§ * this.levelsPerPage;
      }
      
      public function getLevelIndex(param1:String) : int
      {
         this.§@]§();
         return int(this.§0N§.indexOf(param1));
      }
      
      public function getLevelName(param1:int) : String
      {
         this.§@]§();
         if(param1 >= 0 && param1 < this.§0N§.length)
         {
            return this.§0N§[param1];
         }
         return null;
      }
      
      public function §2!H§(param1:int) : Object
      {
         return this.§5!W§[param1];
      }
      
      public function §6!a§(param1:int) : String
      {
         return this.§="W§[param1];
      }
      
      public function §1P§(param1:String) : Boolean
      {
         this.§@]§();
         return this.§0N§.indexOf(param1) != -1;
      }
      
      public function §6!^§(param1:String) : Boolean
      {
         this.§@]§();
         if(this.§0N§.indexOf(param1) >= 0)
         {
            return false;
         }
         this.§0N§.push(param1);
         return true;
      }
      
      public function §>W§(param1:int) : Array
      {
         var _loc3_:int = 0;
         var _loc4_:String = null;
         this.§@]§();
         var _loc2_:Array = new Array();
         if(param1 >= 0 && param1 < this.§=!v§)
         {
            _loc3_ = 0;
            while(_loc3_ < this.levelsPerPage)
            {
               _loc4_ = this.§0N§[_loc3_ + param1 * this.levelsPerPage];
               _loc2_.push(_loc4_);
               _loc3_++;
            }
         }
         return _loc2_;
      }
      
      protected function getDefaultLevelNamesForPage(param1:int) : Array
      {
         var _loc4_:String = null;
         var _loc2_:Array = [];
         var _loc3_:int = 0;
         while(_loc3_ < this.levelsPerPage)
         {
            _loc4_ = param1 + "-" + (_loc3_ + 1);
            _loc2_.push(_loc4_);
            _loc3_++;
         }
         return _loc2_;
      }
      
      private function §@]§() : void
      {
         var _loc1_:Array = null;
         var _loc2_:int = 0;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(this.§0N§ && this.§0N§.length < this.§7"9§())
         {
            throw new Error("Not enough level names defined for episode: " + this.§0N§.length + " names, " + this.§7"9§() + " levels");
         }
         if(this.§0N§ == null)
         {
            _loc1_ = new Array();
            for each(_loc2_ in this.§#"0§)
            {
               _loc3_ = this.getDefaultLevelNamesForPage(_loc2_);
               for each(_loc4_ in _loc3_)
               {
                  _loc1_.push(_loc4_);
               }
            }
            this.§0N§ = _loc1_;
         }
      }
      
      public function §["'§() : Array
      {
         this.§@]§();
         return this.§0N§.concat();
      }
      
      public function §]#3§(param1:String) : int
      {
         var _loc2_:int = this.§0N§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            return _loc2_ / this.§5#%§;
         }
         return -1;
      }
      
      public function §2!+§(param1:String) : int
      {
         var _loc2_:int = this.§0N§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            return _loc2_ % this.§5#%§;
         }
         return -1;
      }
      
      public function getNextLevelId(param1:String) : String
      {
         this.§@]§();
         var _loc2_:int = this.getLevelIndex(param1);
         if(_loc2_ >= 0 && _loc2_ < this.§0N§.length - 1)
         {
            return this.§0N§[_loc2_ + 1];
         }
         return null;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set name(param1:String) : void
      {
         this.mName = param1;
      }
      
      public function get menuImage() : String
      {
         return this.§7#5§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§7#5§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§5#%§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§5#%§ = param1;
      }
      
      public function set §"!K§(param1:Array) : void
      {
         this.§5!W§ = param1;
      }
      
      public function get currentPage() : int
      {
         return this.§8"l§;
      }
      
      public function set currentPage(param1:int) : void
      {
         if(param1 >= 0 && param1 < this.§=!v§)
         {
            this.§8"l§ = param1;
         }
      }
      
      public function get §=!v§() : int
      {
         return this.§#"0§.length;
      }
      
      public function getPageIndex(param1:int) : int
      {
         if(param1 >= 0 && param1 < this.§=!v§)
         {
            return this.§#"0§[param1];
         }
         return -1;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         var _loc2_:String = null;
         this.§#"0§ = new Vector.<int>();
         for each(_loc2_ in param1)
         {
            this.§#"0§.push(parseInt(_loc2_));
         }
      }
      
      public function §?i§(param1:String, param2:String) : void
      {
         this.§#"o§[param1] = param2;
      }
      
      public function getCutScene(param1:String) : String
      {
         return this.§#"o§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§="W§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§="W§ = param1;
      }
      
      public function get §-!r§() : String
      {
         return this.§`"w§;
      }
      
      public function set §-!r§(param1:String) : void
      {
         this.§`"w§ = param1;
      }
      
      public function get §1#'§() : String
      {
         return this.§6!`§;
      }
      
      public function set §1#'§(param1:String) : void
      {
         this.§6!`§ = param1;
      }
      
      public function get writtenName() : String
      {
         return this.§5!S§;
      }
      
      public function set writtenName(param1:String) : void
      {
         this.§5!S§ = param1;
      }
      
      public function addLevel(param1:String, param2:§<U§) : void
      {
         this.§!c§[param1] = param2;
      }
      
      public function §^!-§(param1:String) : §<U§
      {
         return this.§!c§[param1];
      }
      
      public function get §8!Y§() : Boolean
      {
         return this.§'"9§;
      }
      
      public function set §8!Y§(param1:Boolean) : void
      {
         this.§'"9§ = param1;
      }
      
      public function get isLocked() : Boolean
      {
         return this.§`0§;
      }
      
      public function set isLocked(param1:Boolean) : void
      {
         this.§`0§ = param1;
      }
   }
}
