package §'<§
{
   import §`6§.§6!x§;
   
   public class §77§
   {
       
      
      private var §'!U§:String = "";
      
      private var mName:String = "";
      
      private var §'!?§:String = "";
      
      private var §#!j§:String = "";
      
      private var §"!P§:String = "";
      
      private var §'u§:Vector.<int> = null;
      
      private var §&!O§:int = 0;
      
      private var §6!!§:Array = null;
      
      private var §+!"§:Array;
      
      private var §7!A§:Array;
      
      private var §;p§:int = 0;
      
      private var §>!P§:§6!x§;
      
      private var §`!!§:Boolean = false;
      
      private var §[!P§:Boolean = false;
      
      protected var §8"4§:§6!x§;
      
      public function §77§(param1:Array)
      {
         var _loc2_:String = null;
         this.§>!P§ = new §6!x§();
         this.§8"4§ = new §6!x§();
         super();
         if(param1)
         {
            this.§6!!§ = [];
            for each(_loc2_ in param1)
            {
               this.§6!!§.push(_loc2_.toLowerCase());
            }
         }
      }
      
      public function §`!P§() : int
      {
         return this.§;b§ * this.levelsPerPage;
      }
      
      public function §-j§(param1:String) : int
      {
         this.§#>§();
         return int(this.§6!!§.indexOf(param1));
      }
      
      public function §9!k§(param1:int) : String
      {
         this.§#>§();
         if(param1 >= 0 && param1 < this.§6!!§.length)
         {
            return this.§6!!§[param1];
         }
         return null;
      }
      
      public function §[!U§(param1:int) : Object
      {
         return this.§+!"§[param1];
      }
      
      public function §&V§(param1:int) : String
      {
         return this.§7!A§[param1];
      }
      
      public function §`Z§(param1:String) : Boolean
      {
         this.§#>§();
         return this.§6!!§.indexOf(param1) != -1;
      }
      
      public function §^"4§(param1:int) : Array
      {
         var _loc3_:int = 0;
         var _loc4_:String = null;
         this.§#>§();
         var _loc2_:Array = new Array();
         if(param1 >= 0 && param1 < this.§;b§)
         {
            _loc3_ = 0;
            while(_loc3_ < this.levelsPerPage)
            {
               _loc4_ = this.§6!!§[_loc3_ + param1 * this.levelsPerPage];
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
            _loc4_ = "" + param1 + "-" + (_loc3_ + 1);
            _loc2_.push(_loc4_);
            _loc3_++;
         }
         return _loc2_;
      }
      
      private function §#>§() : void
      {
         var _loc1_:Array = null;
         var _loc2_:int = 0;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(this.§6!!§ && this.§6!!§.length < this.§`!P§())
         {
            throw new Error("Not enough level names defined for episode: " + this.§6!!§.length + " names, " + this.§`!P§() + " levels");
         }
         if(this.§6!!§ == null)
         {
            _loc1_ = new Array();
            for each(_loc2_ in this.§'u§)
            {
               _loc3_ = this.getDefaultLevelNamesForPage(_loc2_);
               for each(_loc4_ in _loc3_)
               {
                  _loc1_.push(_loc4_);
               }
            }
            this.§6!!§ = _loc1_;
         }
      }
      
      public function §7F§() : Array
      {
         this.§#>§();
         return this.§6!!§.concat();
      }
      
      public function §+"-§(param1:String) : int
      {
         var _loc2_:int = this.§6!!§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            return _loc2_ / this.§&!O§;
         }
         return -1;
      }
      
      public function §;2§(param1:String) : int
      {
         var _loc2_:int = this.§6!!§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            return _loc2_ % this.§&!O§;
         }
         return -1;
      }
      
      public function getNextLevelId(param1:String) : String
      {
         this.§#>§();
         var _loc2_:int = this.§-j§(param1);
         if(_loc2_ >= 0 && _loc2_ < this.§6!!§.length - 1)
         {
            return this.§6!!§[_loc2_ + 1];
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
         return this.§'!?§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§'!?§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§&!O§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§&!O§ = param1;
      }
      
      public function set §!!z§(param1:Array) : void
      {
         this.§+!"§ = param1;
      }
      
      public function get currentPage() : int
      {
         return this.§;p§;
      }
      
      public function set currentPage(param1:int) : void
      {
         if(param1 >= 0 && param1 < this.§;b§)
         {
            this.§;p§ = param1;
         }
      }
      
      public function get §;b§() : int
      {
         return this.§'u§.length;
      }
      
      public function getPageIndex(param1:int) : int
      {
         if(param1 >= 0 && param1 < this.§;b§)
         {
            return this.§'u§[param1];
         }
         return -1;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         var _loc2_:String = null;
         this.§'u§ = new Vector.<int>();
         for each(_loc2_ in param1)
         {
            this.§'u§.push(parseInt(_loc2_));
         }
      }
      
      public function §,"!§(param1:String, param2:String) : void
      {
         this.§>!P§[param1] = param2;
      }
      
      public function getCutScene(param1:String) : String
      {
         return this.§>!P§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§7!A§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§7!A§ = param1;
      }
      
      public function get §1"2§() : String
      {
         return this.§#!j§;
      }
      
      public function set §1"2§(param1:String) : void
      {
         this.§#!j§ = param1;
      }
      
      public function get §=!V§() : String
      {
         return this.§"!P§;
      }
      
      public function set §=!V§(param1:String) : void
      {
         this.§"!P§ = param1;
      }
      
      public function get writtenName() : String
      {
         return this.§'!U§;
      }
      
      public function set writtenName(param1:String) : void
      {
         this.§'!U§ = param1;
      }
      
      public function §,!Z§(param1:String, param2:§;r§) : void
      {
         this.§8"4§[param1] = param2;
      }
      
      public function §3"!§(param1:String) : §;r§
      {
         return this.§8"4§[param1];
      }
      
      public function get §'v§() : Boolean
      {
         return this.§`!!§;
      }
      
      public function set §'v§(param1:Boolean) : void
      {
         this.§`!!§ = param1;
      }
      
      public function get §"!R§() : Boolean
      {
         return this.§[!P§;
      }
      
      public function set §"!R§(param1:Boolean) : void
      {
         this.§[!P§ = param1;
      }
   }
}
