package §null §
{
   import §+d§.§2!g§;
   
   public class §5!K§
   {
       
      
      protected var §6k§:String = "";
      
      protected var mName:String = "";
      
      protected var §]b§:String = "";
      
      protected var §-]§:String = "";
      
      protected var §?!R§:String = "";
      
      protected var §=e§:Vector.<int> = null;
      
      protected var §83§:int = 0;
      
      protected var §?"<§:Array = null;
      
      protected var §<W§:Array;
      
      protected var §0"=§:Array;
      
      protected var §7!0§:int = 0;
      
      protected var §9!P§:§2!g§;
      
      protected var §?D§:Boolean = false;
      
      protected var §?!-§:Boolean = false;
      
      protected var §4!x§:§2!g§;
      
      public function §5!K§(param1:Array)
      {
         var _loc2_:String = null;
         this.§9!P§ = new §2!g§();
         this.§4!x§ = new §2!g§();
         super();
         if(param1)
         {
            this.§?"<§ = [];
            for each(_loc2_ in param1)
            {
               this.§?"<§.push(_loc2_.toLowerCase());
            }
         }
      }
      
      public function §3!z§() : int
      {
         return this.§!!o§ * this.levelsPerPage;
      }
      
      public function getLevelIndex(param1:String) : int
      {
         this.§#""§();
         return int(this.§?"<§.indexOf(param1));
      }
      
      public function getLevelName(param1:int) : String
      {
         this.§#""§();
         if(param1 >= 0 && param1 < this.§?"<§.length)
         {
            return this.§?"<§[param1];
         }
         return null;
      }
      
      public function §@"4§(param1:int) : Object
      {
         return this.§<W§[param1];
      }
      
      public function §=%§(param1:int) : String
      {
         return this.§0"=§[param1];
      }
      
      public function §0q§(param1:String) : Boolean
      {
         this.§#""§();
         return this.§?"<§.indexOf(param1) != -1;
      }
      
      public function §0#§(param1:String) : Boolean
      {
         this.§#""§();
         if(this.§?"<§.indexOf(param1) >= 0)
         {
            return false;
         }
         this.§?"<§.push(param1);
         return true;
      }
      
      public function §3"O§(param1:int) : Array
      {
         var _loc3_:int = 0;
         var _loc4_:String = null;
         this.§#""§();
         var _loc2_:Array = new Array();
         if(param1 >= 0 && param1 < this.§!!o§)
         {
            _loc3_ = 0;
            while(_loc3_ < this.levelsPerPage)
            {
               _loc4_ = this.§?"<§[_loc3_ + param1 * this.levelsPerPage];
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
      
      private function §#""§() : void
      {
         var _loc1_:Array = null;
         var _loc2_:int = 0;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(this.§?"<§ && this.§?"<§.length < this.§3!z§())
         {
            throw new Error("Not enough level names defined for episode: " + this.§?"<§.length + " names, " + this.§3!z§() + " levels");
         }
         if(this.§?"<§ == null)
         {
            _loc1_ = new Array();
            for each(_loc2_ in this.§=e§)
            {
               _loc3_ = this.getDefaultLevelNamesForPage(_loc2_);
               for each(_loc4_ in _loc3_)
               {
                  _loc1_.push(_loc4_);
               }
            }
            this.§?"<§ = _loc1_;
         }
      }
      
      public function §"!d§() : Array
      {
         this.§#""§();
         return this.§?"<§.concat();
      }
      
      public function §6!O§(param1:String) : int
      {
         var _loc2_:int = this.§?"<§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            return _loc2_ / this.§83§;
         }
         return -1;
      }
      
      public function §7"p§(param1:String) : int
      {
         var _loc2_:int = this.§?"<§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            return _loc2_ % this.§83§;
         }
         return -1;
      }
      
      public function getNextLevelId(param1:String) : String
      {
         this.§#""§();
         var _loc2_:int = this.getLevelIndex(param1);
         if(_loc2_ >= 0 && _loc2_ < this.§?"<§.length - 1)
         {
            return this.§?"<§[_loc2_ + 1];
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
         return this.§]b§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§]b§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§83§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§83§ = param1;
      }
      
      public function set §22§(param1:Array) : void
      {
         this.§<W§ = param1;
      }
      
      public function get currentPage() : int
      {
         return this.§7!0§;
      }
      
      public function set currentPage(param1:int) : void
      {
         if(param1 >= 0 && param1 < this.§!!o§)
         {
            this.§7!0§ = param1;
         }
      }
      
      public function get §!!o§() : int
      {
         return this.§=e§.length;
      }
      
      public function getPageIndex(param1:int) : int
      {
         if(param1 >= 0 && param1 < this.§!!o§)
         {
            return this.§=e§[param1];
         }
         return -1;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         var _loc2_:String = null;
         this.§=e§ = new Vector.<int>();
         for each(_loc2_ in param1)
         {
            this.§=e§.push(parseInt(_loc2_));
         }
      }
      
      public function §0!u§(param1:String, param2:String) : void
      {
         this.§9!P§[param1] = param2;
      }
      
      public function getCutScene(param1:String) : String
      {
         return this.§9!P§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§0"=§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§0"=§ = param1;
      }
      
      public function get §?"r§() : String
      {
         return this.§-]§;
      }
      
      public function set §?"r§(param1:String) : void
      {
         this.§-]§ = param1;
      }
      
      public function get §1!F§() : String
      {
         return this.§?!R§;
      }
      
      public function set §1!F§(param1:String) : void
      {
         this.§?!R§ = param1;
      }
      
      public function get writtenName() : String
      {
         return this.§6k§;
      }
      
      public function set writtenName(param1:String) : void
      {
         this.§6k§ = param1;
      }
      
      public function addLevel(param1:String, param2:§>#-§) : void
      {
         this.§4!x§[param1] = param2;
      }
      
      public function §;x§(param1:String) : §>#-§
      {
         return this.§4!x§[param1];
      }
      
      public function get §6!Y§() : Boolean
      {
         return this.§?D§;
      }
      
      public function set §6!Y§(param1:Boolean) : void
      {
         this.§?D§ = param1;
      }
      
      public function get isLocked() : Boolean
      {
         return this.§?!-§;
      }
      
      public function set isLocked(param1:Boolean) : void
      {
         this.§?!-§ = param1;
      }
   }
}
