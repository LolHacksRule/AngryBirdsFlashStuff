package §%!B§
{
   import §4!i§.§0]§;
   
   public class §7C§
   {
       
      
      protected var §@!H§:String = "";
      
      protected var mName:String = "";
      
      protected var §^!G§:String = "";
      
      protected var § !#§:String = "";
      
      protected var §"!B§:String = "";
      
      protected var §'x§:Vector.<int> = null;
      
      protected var §&!v§:int = 0;
      
      protected var §+!E§:Array = null;
      
      protected var §5v§:Array;
      
      protected var §,!u§:Array;
      
      protected var §'!6§:int = 0;
      
      protected var §'C§:§0]§;
      
      protected var §9Y§:Boolean = false;
      
      protected var §7!Z§:Boolean = false;
      
      protected var §>!"§:§0]§;
      
      public function §7C§(param1:Array)
      {
         var _loc2_:String = null;
         this.§'C§ = new §0]§();
         this.§>!"§ = new §0]§();
         super();
         if(param1)
         {
            this.§+!E§ = [];
            for each(_loc2_ in param1)
            {
               this.§+!E§.push(_loc2_.toLowerCase());
            }
         }
      }
      
      public function §+5§() : int
      {
         return this.§4!%§ * this.levelsPerPage;
      }
      
      public function §-!H§(param1:String) : int
      {
         this.§9a§();
         return int(this.§+!E§.indexOf(param1));
      }
      
      public function §`z§(param1:int) : String
      {
         this.§9a§();
         if(param1 >= 0 && param1 < this.§+!E§.length)
         {
            return this.§+!E§[param1];
         }
         return null;
      }
      
      public function §""%§(param1:int) : Object
      {
         return this.§5v§[param1];
      }
      
      public function §@",§(param1:int) : String
      {
         return this.§,!u§[param1];
      }
      
      public function §5"0§(param1:String) : Boolean
      {
         this.§9a§();
         return this.§+!E§.indexOf(param1) != -1;
      }
      
      public function §39§(param1:String) : Boolean
      {
         this.§9a§();
         if(this.§+!E§.indexOf(param1) >= 0)
         {
            return false;
         }
         this.§+!E§.push(param1);
         return true;
      }
      
      public function §&d§(param1:int) : Array
      {
         var _loc3_:int = 0;
         var _loc4_:String = null;
         this.§9a§();
         var _loc2_:Array = new Array();
         if(param1 >= 0 && param1 < this.§4!%§)
         {
            _loc3_ = 0;
            while(_loc3_ < this.levelsPerPage)
            {
               _loc4_ = this.§+!E§[_loc3_ + param1 * this.levelsPerPage];
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
      
      private function §9a§() : void
      {
         var _loc1_:Array = null;
         var _loc2_:int = 0;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(this.§+!E§ && this.§+!E§.length < this.§+5§())
         {
            throw new Error("Not enough level names defined for episode: " + this.§+!E§.length + " names, " + this.§+5§() + " levels");
         }
         if(this.§+!E§ == null)
         {
            _loc1_ = new Array();
            for each(_loc2_ in this.§'x§)
            {
               _loc3_ = this.getDefaultLevelNamesForPage(_loc2_);
               for each(_loc4_ in _loc3_)
               {
                  _loc1_.push(_loc4_);
               }
            }
            this.§+!E§ = _loc1_;
         }
      }
      
      public function §,!@§() : Array
      {
         this.§9a§();
         return this.§+!E§.concat();
      }
      
      public function §2!"§(param1:String) : int
      {
         var _loc2_:int = this.§+!E§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            return _loc2_ / this.§&!v§;
         }
         return -1;
      }
      
      public function §!!B§(param1:String) : int
      {
         var _loc2_:int = this.§+!E§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            return _loc2_ % this.§&!v§;
         }
         return -1;
      }
      
      public function getNextLevelId(param1:String) : String
      {
         this.§9a§();
         var _loc2_:int = this.§-!H§(param1);
         if(_loc2_ >= 0 && _loc2_ < this.§+!E§.length - 1)
         {
            return this.§+!E§[_loc2_ + 1];
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
         return this.§^!G§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§^!G§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§&!v§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§&!v§ = param1;
      }
      
      public function set §]!]§(param1:Array) : void
      {
         this.§5v§ = param1;
      }
      
      public function get currentPage() : int
      {
         return this.§'!6§;
      }
      
      public function set currentPage(param1:int) : void
      {
         if(param1 >= 0 && param1 < this.§4!%§)
         {
            this.§'!6§ = param1;
         }
      }
      
      public function get §4!%§() : int
      {
         return this.§'x§.length;
      }
      
      public function getPageIndex(param1:int) : int
      {
         if(param1 >= 0 && param1 < this.§4!%§)
         {
            return this.§'x§[param1];
         }
         return -1;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         var _loc2_:String = null;
         this.§'x§ = new Vector.<int>();
         for each(_loc2_ in param1)
         {
            this.§'x§.push(parseInt(_loc2_));
         }
      }
      
      public function §0x§(param1:String, param2:String) : void
      {
         this.§'C§[param1] = param2;
      }
      
      public function getCutScene(param1:String) : String
      {
         return this.§'C§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§,!u§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§,!u§ = param1;
      }
      
      public function get §#T§() : String
      {
         return this.§ !#§;
      }
      
      public function set §#T§(param1:String) : void
      {
         this.§ !#§ = param1;
      }
      
      public function get §@"2§() : String
      {
         return this.§"!B§;
      }
      
      public function set §@"2§(param1:String) : void
      {
         this.§"!B§ = param1;
      }
      
      public function get writtenName() : String
      {
         return this.§@!H§;
      }
      
      public function set writtenName(param1:String) : void
      {
         this.§@!H§ = param1;
      }
      
      public function §`!E§(param1:String, param2:§5L§) : void
      {
         this.§>!"§[param1] = param2;
      }
      
      public function §92§(param1:String) : §5L§
      {
         return this.§>!"§[param1];
      }
      
      public function get §%!u§() : Boolean
      {
         return this.§9Y§;
      }
      
      public function set §%!u§(param1:Boolean) : void
      {
         this.§9Y§ = param1;
      }
      
      public function get §'K§() : Boolean
      {
         return this.§7!Z§;
      }
      
      public function set §'K§(param1:Boolean) : void
      {
         this.§7!Z§ = param1;
      }
   }
}
