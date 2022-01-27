package §4",§
{
   import §'!n§.§@B§;
   
   public class §2!S§
   {
       
      
      protected var §`"@§:String = "";
      
      protected var mName:String = "";
      
      protected var §9!S§:String = "";
      
      protected var §^x§:String = "";
      
      protected var §+!%§:String = "";
      
      protected var §+!U§:Vector.<int> = null;
      
      protected var §'!W§:int = 0;
      
      protected var § !P§:Array = null;
      
      protected var §7!4§:Array;
      
      protected var §4!K§:Array;
      
      protected var §2I§:int = 0;
      
      protected var §59§:§@B§;
      
      protected var § 8§:Boolean = false;
      
      protected var §"!U§:Boolean = false;
      
      protected var §2!U§:§@B§;
      
      public function §2!S§(param1:Array)
      {
         var _loc2_:String = null;
         this.§59§ = new §@B§();
         this.§2!U§ = new §@B§();
         super();
         if(param1)
         {
            this.§ !P§ = [];
            for each(_loc2_ in param1)
            {
               this.§ !P§.push(_loc2_.toLowerCase());
            }
         }
      }
      
      public function §88§() : int
      {
         return this.§#!9§ * this.levelsPerPage;
      }
      
      public function §2!m§(param1:String) : int
      {
         this.§^z§();
         return int(this.§ !P§.indexOf(param1));
      }
      
      public function §9!I§(param1:int) : String
      {
         this.§^z§();
         if(param1 >= 0 && param1 < this.§ !P§.length)
         {
            return this.§ !P§[param1];
         }
         return null;
      }
      
      public function §-!"§(param1:int) : Object
      {
         return this.§7!4§[param1];
      }
      
      public function §,!A§(param1:int) : String
      {
         return this.§4!K§[param1];
      }
      
      public function §#!§(param1:String) : Boolean
      {
         this.§^z§();
         return this.§ !P§.indexOf(param1) != -1;
      }
      
      public function §3P§(param1:int) : Array
      {
         var _loc3_:int = 0;
         var _loc4_:String = null;
         this.§^z§();
         var _loc2_:Array = new Array();
         if(param1 >= 0 && param1 < this.§#!9§)
         {
            _loc3_ = 0;
            while(_loc3_ < this.levelsPerPage)
            {
               _loc4_ = this.§ !P§[_loc3_ + param1 * this.levelsPerPage];
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
            _loc4_ = "level" + param1 + "-" + (_loc3_ + 1);
            _loc2_.push(_loc4_);
            _loc3_++;
         }
         return _loc2_;
      }
      
      private function §^z§() : void
      {
         var _loc1_:Array = null;
         var _loc2_:int = 0;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(this.§ !P§ && this.§ !P§.length < this.§88§())
         {
            throw new Error("Not enough level names defined for episode: " + this.§ !P§.length + " names, " + this.§88§() + " levels");
         }
         if(this.§ !P§ == null)
         {
            _loc1_ = new Array();
            for each(_loc2_ in this.§+!U§)
            {
               _loc3_ = this.getDefaultLevelNamesForPage(_loc2_);
               for each(_loc4_ in _loc3_)
               {
                  _loc1_.push(_loc4_);
               }
            }
            this.§ !P§ = _loc1_;
         }
      }
      
      public function § "!§() : Array
      {
         this.§^z§();
         return this.§ !P§.concat();
      }
      
      public function §4!A§(param1:String) : int
      {
         var _loc2_:int = this.§ !P§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            return _loc2_ / this.§'!W§;
         }
         return -1;
      }
      
      public function §1!4§(param1:String) : int
      {
         var _loc2_:int = this.§ !P§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            return _loc2_ % this.§'!W§;
         }
         return -1;
      }
      
      public function getNextLevelId(param1:String) : String
      {
         this.§^z§();
         var _loc2_:int = this.§2!m§(param1);
         if(_loc2_ >= 0 && _loc2_ < this.§ !P§.length - 1)
         {
            return this.§ !P§[_loc2_ + 1];
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
         return this.§9!S§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§9!S§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§'!W§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§'!W§ = param1;
      }
      
      public function set §^!9§(param1:Array) : void
      {
         this.§7!4§ = param1;
      }
      
      public function get currentPage() : int
      {
         return this.§2I§;
      }
      
      public function set currentPage(param1:int) : void
      {
         if(param1 >= 0 && param1 < this.§#!9§)
         {
            this.§2I§ = param1;
         }
      }
      
      public function get §#!9§() : int
      {
         return this.§+!U§.length;
      }
      
      public function getPageIndex(param1:int) : int
      {
         if(param1 >= 0 && param1 < this.§#!9§)
         {
            return this.§+!U§[param1];
         }
         return -1;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         var _loc2_:String = null;
         this.§+!U§ = new Vector.<int>();
         for each(_loc2_ in param1)
         {
            this.§+!U§.push(parseInt(_loc2_));
         }
      }
      
      public function §#!n§(param1:String, param2:String) : void
      {
         this.§59§[param1] = param2;
      }
      
      public function getCutScene(param1:String) : String
      {
         return this.§59§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§4!K§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§4!K§ = param1;
      }
      
      public function get §8c§() : String
      {
         return this.§^x§;
      }
      
      public function set §8c§(param1:String) : void
      {
         this.§^x§ = param1;
      }
      
      public function get §="§() : String
      {
         return this.§+!%§;
      }
      
      public function set §="§(param1:String) : void
      {
         this.§+!%§ = param1;
      }
      
      public function get writtenName() : String
      {
         return this.§`"@§;
      }
      
      public function set writtenName(param1:String) : void
      {
         this.§`"@§ = param1;
      }
      
      public function addLevel(param1:String, param2:§3v§) : void
      {
         this.§2!U§[param1] = param2;
      }
      
      public function § "§(param1:String) : §3v§
      {
         return this.§2!U§[param1];
      }
      
      public function get §^0§() : Boolean
      {
         return this.§ 8§;
      }
      
      public function set §^0§(param1:Boolean) : void
      {
         this.§ 8§ = param1;
      }
      
      public function get §-!k§() : Boolean
      {
         return this.§"!U§;
      }
      
      public function set §-!k§(param1:Boolean) : void
      {
         this.§"!U§ = param1;
      }
   }
}
