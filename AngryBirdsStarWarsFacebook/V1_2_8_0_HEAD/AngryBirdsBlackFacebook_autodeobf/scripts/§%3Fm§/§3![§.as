package §?m§
{
   import §1!i§.§,#_§;
   
   public class §3![§
   {
       
      
      protected var §@#_§:String = "";
      
      protected var mName:String = "";
      
      protected var §^"E§:String = "";
      
      protected var §@#U§:String = "";
      
      protected var §3"h§:String = "";
      
      protected var §5"Q§:Vector.<int> = null;
      
      protected var §#"X§:int = 0;
      
      protected var §=!^§:Array = null;
      
      protected var §@"[§:Array;
      
      protected var §;!^§:Array;
      
      protected var §#"x§:int = 0;
      
      protected var §@#R§:§,#_§;
      
      protected var §,#G§:Boolean = false;
      
      protected var §'!2§:Boolean = false;
      
      protected var §["?§:§,#_§;
      
      public function §3![§(param1:Array)
      {
         var _loc2_:String = null;
         this.§@#R§ = new §,#_§();
         this.§["?§ = new §,#_§();
         super();
         if(param1)
         {
            this.§=!^§ = [];
            for each(_loc2_ in param1)
            {
               this.§=!^§.push(_loc2_.toLowerCase());
            }
         }
      }
      
      public function §!#J§() : int
      {
         return this.§6">§ * this.levelsPerPage;
      }
      
      public function getLevelIndex(param1:String) : int
      {
         this.§7!M§();
         return int(this.§=!^§.indexOf(param1));
      }
      
      public function getLevelName(param1:int) : String
      {
         this.§7!M§();
         if(param1 >= 0 && param1 < this.§=!^§.length)
         {
            return this.§=!^§[param1];
         }
         return null;
      }
      
      public function §^"b§(param1:int) : Object
      {
         return this.§@"[§[param1];
      }
      
      public function §'"w§(param1:int) : String
      {
         return this.§;!^§[param1];
      }
      
      public function §9"?§(param1:String) : Boolean
      {
         this.§7!M§();
         return this.§=!^§.indexOf(param1) != -1;
      }
      
      public function §&"b§(param1:String) : Boolean
      {
         this.§7!M§();
         if(this.§=!^§.indexOf(param1) >= 0)
         {
            return false;
         }
         this.§=!^§.push(param1);
         return true;
      }
      
      public function §,"O§(param1:int) : Array
      {
         var _loc3_:int = 0;
         var _loc4_:String = null;
         this.§7!M§();
         var _loc2_:Array = new Array();
         if(param1 >= 0 && param1 < this.§6">§)
         {
            _loc3_ = 0;
            while(_loc3_ < this.levelsPerPage)
            {
               _loc4_ = this.§=!^§[_loc3_ + param1 * this.levelsPerPage];
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
      
      private function §7!M§() : void
      {
         var _loc1_:Array = null;
         var _loc2_:int = 0;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(this.§=!^§ && this.§=!^§.length < this.§!#J§())
         {
            throw new Error("Not enough level names defined for episode: " + this.§=!^§.length + " names, " + this.§!#J§() + " levels");
         }
         if(this.§=!^§ == null)
         {
            _loc1_ = new Array();
            for each(_loc2_ in this.§5"Q§)
            {
               _loc3_ = this.getDefaultLevelNamesForPage(_loc2_);
               for each(_loc4_ in _loc3_)
               {
                  _loc1_.push(_loc4_);
               }
            }
            this.§=!^§ = _loc1_;
         }
      }
      
      public function §0!_§() : Array
      {
         this.§7!M§();
         return this.§=!^§.concat();
      }
      
      public function §3#4§(param1:String) : int
      {
         var _loc2_:int = this.§=!^§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            return _loc2_ / this.§#"X§;
         }
         return -1;
      }
      
      public function §^"0§(param1:String) : int
      {
         var _loc2_:int = this.§=!^§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            return _loc2_ % this.§#"X§;
         }
         return -1;
      }
      
      public function getNextLevelId(param1:String) : String
      {
         this.§7!M§();
         var _loc2_:int = this.getLevelIndex(param1);
         if(_loc2_ >= 0 && _loc2_ < this.§=!^§.length - 1)
         {
            return this.§=!^§[_loc2_ + 1];
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
         return this.§^"E§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§^"E§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§#"X§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§#"X§ = param1;
      }
      
      public function set §"!p§(param1:Array) : void
      {
         this.§@"[§ = param1;
      }
      
      public function get currentPage() : int
      {
         return this.§#"x§;
      }
      
      public function set currentPage(param1:int) : void
      {
         if(param1 >= 0 && param1 < this.§6">§)
         {
            this.§#"x§ = param1;
         }
      }
      
      public function get §6">§() : int
      {
         return this.§5"Q§.length;
      }
      
      public function getPageIndex(param1:int) : int
      {
         if(param1 >= 0 && param1 < this.§6">§)
         {
            return this.§5"Q§[param1];
         }
         return -1;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         var _loc2_:String = null;
         this.§5"Q§ = new Vector.<int>();
         for each(_loc2_ in param1)
         {
            this.§5"Q§.push(parseInt(_loc2_));
         }
      }
      
      public function § "Y§(param1:String, param2:String) : void
      {
         this.§@#R§[param1] = param2;
      }
      
      public function getCutScene(param1:String) : String
      {
         return this.§@#R§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§;!^§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§;!^§ = param1;
      }
      
      public function get §@#$§() : String
      {
         return this.§@#U§;
      }
      
      public function set §@#$§(param1:String) : void
      {
         this.§@#U§ = param1;
      }
      
      public function get §#!w§() : String
      {
         return this.§3"h§;
      }
      
      public function set §#!w§(param1:String) : void
      {
         this.§3"h§ = param1;
      }
      
      public function get writtenName() : String
      {
         return this.§@#_§;
      }
      
      public function set writtenName(param1:String) : void
      {
         this.§@#_§ = param1;
      }
      
      public function addLevel(param1:String, param2:§8!B§) : void
      {
         this.§["?§[param1] = param2;
      }
      
      public function §8N§(param1:String) : §8!B§
      {
         return this.§["?§[param1];
      }
      
      public function get §3"i§() : Boolean
      {
         return this.§,#G§;
      }
      
      public function set §3"i§(param1:Boolean) : void
      {
         this.§,#G§ = param1;
      }
      
      public function get isLocked() : Boolean
      {
         return this.§'!2§;
      }
      
      public function set isLocked(param1:Boolean) : void
      {
         this.§'!2§ = param1;
      }
   }
}
