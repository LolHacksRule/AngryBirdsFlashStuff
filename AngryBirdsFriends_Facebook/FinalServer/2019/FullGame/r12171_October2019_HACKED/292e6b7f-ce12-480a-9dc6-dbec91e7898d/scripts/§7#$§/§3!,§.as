package §7#$§
{
   import §#"4§.§&r§;
   
   public class §3!,§
   {
       
      
      protected var §#<§:String = "";
      
      protected var §&$"§:String = "";
      
      protected var §[$"§:String = "";
      
      protected var §3$E§:String = "";
      
      protected var §8#'§:String = "";
      
      protected var § #q§:Vector.<int> = null;
      
      protected var §1!i§:int = 0;
      
      protected var §3!O§:Array = null;
      
      protected var §]E§:Array;
      
      protected var §,#&§:Array;
      
      protected var §1#!§:int = 0;
      
      protected var §6!'§:§&r§;
      
      protected var §"!;§:Boolean = false;
      
      protected var §[!R§:Boolean = false;
      
      protected var §%#9§:Boolean = false;
      
      protected var §3k§:§&r§;
      
      public function §3!,§(param1:Array)
      {
         var _loc2_:String = null;
         this.§6!'§ = new §&r§();
         this.§3k§ = new §&r§();
         super();
         if(param1)
         {
            this.§3!O§ = [];
            for each(_loc2_ in param1)
            {
               this.§3!O§.push(_loc2_.toLowerCase());
            }
         }
      }
      
      public function §-!%§() : int
      {
         return this.§7E§ * this.levelsPerPage;
      }
      
      public function §]! §(param1:String) : int
      {
         this.§+"v§();
         return int(this.§3!O§.indexOf(param1));
      }
      
      public function §1!d§(param1:int) : String
      {
         this.§+"v§();
         if(param1 >= 0 && param1 < this.§3!O§.length)
         {
            return this.§3!O§[param1];
         }
         return null;
      }
      
      public function §^"H§(param1:int) : Object
      {
         return this.§]E§[param1];
      }
      
      public function §<P§(param1:int) : String
      {
         return this.§,#&§[param1];
      }
      
      public function §"! §(param1:String) : Boolean
      {
         this.§+"v§();
         return this.§3!O§.indexOf(param1) != -1;
      }
      
      public function §?"x§(param1:String) : Boolean
      {
         this.§+"v§();
         if(this.§3!O§.indexOf(param1) >= 0)
         {
            return false;
         }
         this.§3!O§.push(param1);
         return true;
      }
      
      public function §;!N§(param1:int) : Array
      {
         var _loc3_:int = 0;
         var _loc4_:String = null;
         this.§+"v§();
         var _loc2_:Array = new Array();
         if(param1 >= 0 && param1 < this.§7E§)
         {
            _loc3_ = 0;
            while(_loc3_ < this.levelsPerPage)
            {
               _loc4_ = this.§3!O§[_loc3_ + param1 * this.levelsPerPage];
               _loc2_.push(_loc4_);
               _loc3_++;
            }
         }
         return _loc2_;
      }
      
      protected function §3!§(param1:int) : Array
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
      
      protected function §+"v§() : void
      {
         var _loc1_:Array = null;
         var _loc2_:int = 0;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(!this.isTournament && this.§3!O§ && this.§3!O§.length < this.§-!%§())
         {
            throw new Error("Not enough level names defined for episode: " + this.§3!O§.length + " names, " + this.§-!%§() + " levels");
         }
         if(this.§3!O§ == null)
         {
            if(this.isTournament)
            {
               this.§3!O§ = new Array();
            }
            else
            {
               _loc1_ = new Array();
               for each(_loc2_ in this.§ #q§)
               {
                  _loc3_ = this.§3!§(_loc2_);
                  for each(_loc4_ in _loc3_)
                  {
                     _loc1_.push(_loc4_);
                  }
               }
               this.§3!O§ = _loc1_;
            }
         }
      }
      
      public function getLevelNames() : Array
      {
         this.§+"v§();
         return this.§3!O§.concat();
      }
      
      public function §for §(param1:String) : int
      {
         var _loc2_:int = this.§3!O§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            return _loc2_ / this.§1!i§;
         }
         return -1;
      }
      
      public function §@"g§(param1:String) : int
      {
         var _loc2_:int = this.§3!O§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            return _loc2_ % this.§1!i§;
         }
         return -1;
      }
      
      public function getNextLevelId(param1:String) : String
      {
         this.§+"v§();
         var _loc2_:int = this.§]! §(param1);
         if(_loc2_ >= 0 && _loc2_ < this.§3!O§.length - 1)
         {
            return this.§3!O§[_loc2_ + 1];
         }
         return null;
      }
      
      public function get name() : String
      {
         return this.§&$"§;
      }
      
      public function set name(param1:String) : void
      {
         this.§&$"§ = param1;
      }
      
      public function get menuImage() : String
      {
         return this.§[$"§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§[$"§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§1!i§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§1!i§ = param1;
      }
      
      public function set §]"O§(param1:Array) : void
      {
         this.§]E§ = param1;
      }
      
      public function get currentPage() : int
      {
         return this.§1#!§;
      }
      
      public function set currentPage(param1:int) : void
      {
         if(param1 >= 0 && param1 < this.§7E§)
         {
            this.§1#!§ = param1;
         }
      }
      
      public function get §7E§() : int
      {
         return this.§ #q§.length;
      }
      
      public function getPageIndex(param1:int) : int
      {
         if(param1 >= 0 && param1 < this.§7E§)
         {
            return this.§ #q§[param1];
         }
         return -1;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         var _loc2_:String = null;
         this.§ #q§ = new Vector.<int>();
         for each(_loc2_ in param1)
         {
            this.§ #q§.push(parseInt(_loc2_));
         }
      }
      
      public function §5m§(param1:String, param2:String) : void
      {
         this.§6!'§[param1] = param2;
      }
      
      public function getCutScene(param1:String) : String
      {
         return this.§6!'§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§,#&§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§,#&§ = param1;
      }
      
      public function get §,"T§() : String
      {
         return this.§3$E§;
      }
      
      public function set §,"T§(param1:String) : void
      {
         this.§3$E§ = param1;
      }
      
      public function get §;#e§() : String
      {
         return this.§8#'§;
      }
      
      public function set §;#e§(param1:String) : void
      {
         this.§8#'§ = param1;
      }
      
      public function get writtenName() : String
      {
         return this.§#<§;
      }
      
      public function set writtenName(param1:String) : void
      {
         this.§#<§ = param1;
      }
      
      public function addLevel(param1:String, param2:§?# §) : void
      {
         this.§3k§[param1] = param2;
      }
      
      public function §9#T§(param1:String) : §?# §
      {
         return this.§3k§[param1];
      }
      
      public function get § !k§() : Boolean
      {
         return this.§"!;§;
      }
      
      public function set § !k§(param1:Boolean) : void
      {
         this.§"!;§ = param1;
      }
      
      public function get §&#_§() : Boolean
      {
         return this.§[!R§;
      }
      
      public function set §&#_§(param1:Boolean) : void
      {
         this.§[!R§ = param1;
      }
      
      public function get isTournament() : Boolean
      {
         return this.§%#9§;
      }
      
      public function set isTournament(param1:Boolean) : void
      {
         this.§%#9§ = param1;
      }
   }
}
