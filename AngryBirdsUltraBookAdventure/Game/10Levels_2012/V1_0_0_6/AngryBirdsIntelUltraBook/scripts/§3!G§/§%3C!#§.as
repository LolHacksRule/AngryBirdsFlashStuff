package §3!G§
{
   import flash.utils.Dictionary;
   
   public class §<!#§
   {
       
      
      private var §,!=§:String = "";
      
      private var mName:String = "";
      
      private var §?M§:String = "";
      
      private var §4!d§:String = "";
      
      private var §@u§:String = "";
      
      private var §"!U§:Array = null;
      
      private var §-!2§:int = 0;
      
      private var §;5§:Array = null;
      
      private var §?!N§:Array;
      
      private var §^!f§:Array;
      
      private var §2!D§:int = 0;
      
      private var §,q§:Dictionary;
      
      public function §<!#§()
      {
         this.§,q§ = new Dictionary();
         super();
      }
      
      public function §&!R§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §^!j§(param1:String) : Array
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
      
      public function §^J§(param1:int) : Object
      {
         return this.§?!N§[param1];
      }
      
      public function §+>§(param1:int) : String
      {
         return this.§^!f§[param1];
      }
      
      public function §,H§(param1:String) : Boolean
      {
         return this.§9f§().indexOf(param1) != -1;
      }
      
      public function §9f§() : Array
      {
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(this.§;5§ == null)
         {
            _loc1_ = new Array();
            for each(_loc2_ in this.pageIndexes)
            {
               _loc3_ = this.§^!j§(_loc2_);
               for each(_loc4_ in _loc3_)
               {
                  _loc1_.push(_loc4_);
               }
            }
            this.§;5§ = _loc1_;
            return _loc1_;
         }
         return this.§;5§;
      }
      
      public function §"!>§(param1:String) : int
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
      
      public function §7!X§(param1:String) : String
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
         return this.§?M§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§?M§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§-!2§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§-!2§ = param1;
      }
      
      public function get §!!C§() : Array
      {
         return this.§;5§;
      }
      
      public function get §=m§() : Array
      {
         return this.§?!N§;
      }
      
      public function set §=m§(param1:Array) : void
      {
         this.§?!N§ = param1;
      }
      
      public function get § each§() : int
      {
         return this.§2!D§;
      }
      
      public function set § each§(param1:int) : void
      {
         if(param1 >= 0 && param1 < this.pageIndexes.length)
         {
            this.§2!D§ = param1;
         }
      }
      
      public function get pageIndexes() : Array
      {
         return this.§"!U§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         this.§"!U§ = param1;
      }
      
      public function §]!0§(param1:String, param2:String) : void
      {
         this.§,q§[param1] = param2;
      }
      
      public function §`!q§(param1:String) : String
      {
         return this.§,q§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§^!f§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§^!f§ = param1;
      }
      
      public function get §3#§() : String
      {
         return this.§4!d§;
      }
      
      public function set §3#§(param1:String) : void
      {
         this.§4!d§ = param1;
      }
      
      public function get §4x§() : String
      {
         return this.§@u§;
      }
      
      public function set §4x§(param1:String) : void
      {
         this.§@u§ = param1;
      }
      
      public function get writtenName() : String
      {
         return this.§,!=§;
      }
      
      public function set writtenName(param1:String) : void
      {
         this.§,!=§ = param1;
      }
   }
}
