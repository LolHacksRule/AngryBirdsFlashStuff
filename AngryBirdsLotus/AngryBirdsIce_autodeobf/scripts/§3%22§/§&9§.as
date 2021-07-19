package §3"§
{
   import flash.utils.Dictionary;
   
   public class §&9§
   {
       
      
      private var §%q§:String = "";
      
      private var mName:String = "";
      
      private var §'!7§:String = "";
      
      private var §"H§:String = "";
      
      private var §7!$§:String = "";
      
      private var §2Z§:Array = null;
      
      private var §0!F§:int = 0;
      
      private var §7B§:Array = null;
      
      private var §#L§:Array;
      
      private var §^U§:Array;
      
      private var §!O§:int = 0;
      
      private var §-u§:Dictionary;
      
      public function §&9§()
      {
         this.§-u§ = new Dictionary();
         super();
      }
      
      public function §"v§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §4!5§(param1:String) : Array
      {
         var _loc4_:String = null;
         var _loc2_:Array = new Array();
         var _loc3_:Number = 0;
         while(_loc3_ < this.levelsPerPage)
         {
            _loc4_ = param1 + "-" + (_loc3_ + 1);
            _loc2_.push(_loc4_);
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function §6_§(param1:int) : Object
      {
         return this.§#L§[param1];
      }
      
      public function §"X§(param1:int) : String
      {
         return this.§^U§[param1];
      }
      
      public function §&;§(param1:String) : Boolean
      {
         return this.§ ;§().indexOf(param1) != -1;
      }
      
      public function § ;§() : Array
      {
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(this.§7B§ == null)
         {
            _loc1_ = new Array();
            for each(_loc2_ in this.pageIndexes)
            {
               _loc3_ = this.§4!5§(_loc2_);
               for each(_loc4_ in _loc3_)
               {
                  _loc1_.push(_loc4_);
               }
            }
            this.§7B§ = _loc1_;
            return _loc1_;
         }
         return this.§7B§;
      }
      
      public function §%X§(param1:String) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.pageIndexes.length)
         {
            _loc3_ = this.pageIndexes[_loc2_];
            if(param1.indexOf(_loc3_ + "-") == 0)
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public function §?W§(param1:String) : String
      {
         var _loc4_:int = 0;
         var _loc2_:String = param1.substring(0,param1.indexOf("-"));
         var _loc3_:int = parseInt(param1.substring(param1.indexOf("-") + 1));
         if(_loc3_ < this.levelsPerPage)
         {
            return _loc2_ + "-" + (_loc3_ + 1);
         }
         _loc4_ = 0;
         while(_loc4_ < this.pageIndexes.length)
         {
            if(this.pageIndexes[_loc4_] == _loc2_)
            {
               if(_loc4_ + 1 < this.pageIndexes.length)
               {
                  return this.pageIndexes[_loc4_ + 1] + "-" + 1;
               }
               break;
            }
            _loc4_++;
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
         return this.§'!7§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§'!7§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§0!F§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§0!F§ = param1;
      }
      
      public function get §'v§() : Array
      {
         return this.§7B§;
      }
      
      public function get §,!'§() : Array
      {
         return this.§#L§;
      }
      
      public function set §,!'§(param1:Array) : void
      {
         this.§#L§ = param1;
      }
      
      public function get §^A§() : int
      {
         return this.§!O§;
      }
      
      public function set §^A§(param1:int) : void
      {
         if(param1 >= 0 && param1 < this.pageIndexes.length)
         {
            this.§!O§ = param1;
         }
      }
      
      public function get pageIndexes() : Array
      {
         return this.§2Z§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         this.§2Z§ = param1;
      }
      
      public function §0!'§(param1:String, param2:String) : void
      {
         this.§-u§[param1] = param2;
      }
      
      public function §1!2§(param1:String) : String
      {
         return this.§-u§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§^U§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§^U§ = param1;
      }
      
      public function get §-a§() : String
      {
         return this.§"H§;
      }
      
      public function set §-a§(param1:String) : void
      {
         this.§"H§ = param1;
      }
      
      public function get § v§() : String
      {
         return this.§7!$§;
      }
      
      public function set § v§(param1:String) : void
      {
         this.§7!$§ = param1;
      }
      
      public function get writtenName() : String
      {
         return this.§%q§;
      }
      
      public function set writtenName(param1:String) : void
      {
         this.§%q§ = param1;
      }
   }
}
