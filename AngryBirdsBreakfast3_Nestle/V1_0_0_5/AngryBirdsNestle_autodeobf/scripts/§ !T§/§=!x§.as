package § !T§
{
   import §2W§.§`!v§;
   
   public class §=!x§
   {
       
      
      private var §]!=§:String = "";
      
      private var mName:String = "";
      
      private var §8!§:String = "";
      
      private var §@!-§:String = "";
      
      private var §="5§:String = "";
      
      private var §7!#§:Vector.<int> = null;
      
      private var §""'§:int = 0;
      
      private var §8;§:Array = null;
      
      private var §6"3§:Array;
      
      private var §7<§:Array;
      
      private var §1!q§:int = 0;
      
      private var §6!+§:§`!v§;
      
      private var §2!y§:Boolean = false;
      
      private var §?"#§:Boolean = false;
      
      protected var §!!<§:§`!v§;
      
      public function §=!x§(param1:Array)
      {
         var _loc2_:String = null;
         this.§6!+§ = new §`!v§();
         this.§!!<§ = new §`!v§();
         super();
         if(param1)
         {
            this.§8;§ = [];
            for each(_loc2_ in param1)
            {
               this.§8;§.push(_loc2_.toLowerCase());
            }
         }
      }
      
      public function §9'§() : int
      {
         return this.§,;§ * this.levelsPerPage;
      }
      
      public function §>!f§(param1:String) : int
      {
         this.§;!V§();
         return int(this.§8;§.indexOf(param1));
      }
      
      public function §"!7§(param1:int) : String
      {
         this.§;!V§();
         if(param1 >= 0 && param1 < this.§8;§.length)
         {
            return this.§8;§[param1];
         }
         return null;
      }
      
      public function §&",§(param1:int) : Object
      {
         return this.§6"3§[param1];
      }
      
      public function §2!o§(param1:int) : String
      {
         return this.§7<§[param1];
      }
      
      public function §3!t§(param1:String) : Boolean
      {
         this.§;!V§();
         return this.§8;§.indexOf(param1) != -1;
      }
      
      public function §=N§(param1:int) : Array
      {
         var _loc3_:int = 0;
         var _loc4_:String = null;
         this.§;!V§();
         var _loc2_:Array = new Array();
         if(param1 >= 0 && param1 < this.§,;§)
         {
            _loc3_ = 0;
            while(_loc3_ < this.levelsPerPage)
            {
               _loc4_ = this.§8;§[_loc3_ + param1 * this.levelsPerPage];
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
      
      private function §;!V§() : void
      {
         var _loc1_:Array = null;
         var _loc2_:int = 0;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(this.§8;§ && this.§8;§.length < this.§9'§())
         {
            throw new Error("Not enough level names defined for episode: " + this.§8;§.length + " names, " + this.§9'§() + " levels");
         }
         if(this.§8;§ == null)
         {
            _loc1_ = new Array();
            for each(_loc2_ in this.§7!#§)
            {
               _loc3_ = this.getDefaultLevelNamesForPage(_loc2_);
               for each(_loc4_ in _loc3_)
               {
                  _loc1_.push(_loc4_);
               }
            }
            this.§8;§ = _loc1_;
         }
      }
      
      public function §[!r§() : Array
      {
         this.§;!V§();
         return this.§8;§.concat();
      }
      
      public function §;x§(param1:String) : int
      {
         var _loc2_:int = this.§8;§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            return _loc2_ / this.§""'§;
         }
         return -1;
      }
      
      public function §;!l§(param1:String) : int
      {
         var _loc2_:int = this.§8;§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            return _loc2_ % this.§""'§;
         }
         return -1;
      }
      
      public function getNextLevelId(param1:String) : String
      {
         this.§;!V§();
         var _loc2_:int = this.§>!f§(param1);
         if(_loc2_ >= 0 && _loc2_ < this.§8;§.length - 1)
         {
            return this.§8;§[_loc2_ + 1];
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
         return this.§8!§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§8!§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§""'§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§""'§ = param1;
      }
      
      public function set §3!d§(param1:Array) : void
      {
         this.§6"3§ = param1;
      }
      
      public function get currentPage() : int
      {
         return this.§1!q§;
      }
      
      public function set currentPage(param1:int) : void
      {
         if(param1 >= 0 && param1 < this.§,;§)
         {
            this.§1!q§ = param1;
         }
      }
      
      public function get §,;§() : int
      {
         return this.§7!#§.length;
      }
      
      public function getPageIndex(param1:int) : int
      {
         if(param1 >= 0 && param1 < this.§,;§)
         {
            return this.§7!#§[param1];
         }
         return -1;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         var _loc2_:String = null;
         this.§7!#§ = new Vector.<int>();
         for each(_loc2_ in param1)
         {
            this.§7!#§.push(parseInt(_loc2_));
         }
      }
      
      public function §@!Y§(param1:String, param2:String) : void
      {
         this.§6!+§[param1] = param2;
      }
      
      public function getCutScene(param1:String) : String
      {
         return this.§6!+§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§7<§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§7<§ = param1;
      }
      
      public function get §'J§() : String
      {
         return this.§@!-§;
      }
      
      public function set §'J§(param1:String) : void
      {
         this.§@!-§ = param1;
      }
      
      public function get §+f§() : String
      {
         return this.§="5§;
      }
      
      public function set §+f§(param1:String) : void
      {
         this.§="5§ = param1;
      }
      
      public function get writtenName() : String
      {
         return this.§]!=§;
      }
      
      public function set writtenName(param1:String) : void
      {
         this.§]!=§ = param1;
      }
      
      public function §2U§(param1:String, param2:§7@§) : void
      {
         this.§!!<§[param1] = param2;
      }
      
      public function § 5§(param1:String) : §7@§
      {
         return this.§!!<§[param1];
      }
      
      public function get §[!@§() : Boolean
      {
         return this.§2!y§;
      }
      
      public function set §[!@§(param1:Boolean) : void
      {
         this.§2!y§ = param1;
      }
      
      public function get §=" §() : Boolean
      {
         return this.§?"#§;
      }
      
      public function set §=" §(param1:Boolean) : void
      {
         this.§?"#§ = param1;
      }
   }
}
