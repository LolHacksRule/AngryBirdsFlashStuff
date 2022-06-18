package §<!@§
{
   import flash.utils.Dictionary;
   
   public class §#c§
   {
       
      
      private var §<!<§:String = "";
      
      private var mName:String = "";
      
      private var §05§:String = "";
      
      private var §-A§:String = "";
      
      private var §?l§:String = "";
      
      private var §1D§:Array = null;
      
      private var §-!G§:int = 0;
      
      private var §8,§:Array = null;
      
      private var §-!5§:Array;
      
      private var §2N§:Array;
      
      private var §]B§:int = 0;
      
      private var §^!;§:Dictionary;
      
      public function §#c§()
      {
         this.§^!;§ = new Dictionary();
         super();
      }
      
      public function §&f§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §-!#§(param1:String) : Array
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
      
      public function § u§(param1:int) : Object
      {
         return this.§-!5§[param1];
      }
      
      public function §;4§(param1:int) : String
      {
         return this.§2N§[param1];
      }
      
      public function §^!2§(param1:String) : Boolean
      {
         return this.§5%§().indexOf(param1) != -1;
      }
      
      public function §5%§() : Array
      {
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(this.§8,§ == null)
         {
            _loc1_ = new Array();
            for each(_loc2_ in this.pageIndexes)
            {
               _loc3_ = this.§-!#§(_loc2_);
               for each(_loc4_ in _loc3_)
               {
                  _loc1_.push(_loc4_);
               }
            }
            this.§8,§ = _loc1_;
            return _loc1_;
         }
         return this.§8,§;
      }
      
      public function §"a§(param1:String) : int
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
      
      public function §]y§(param1:String) : String
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
         return this.§05§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§05§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§-!G§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§-!G§ = param1;
      }
      
      public function get §@<§() : Array
      {
         return this.§8,§;
      }
      
      public function get §^N§() : Array
      {
         return this.§-!5§;
      }
      
      public function set §^N§(param1:Array) : void
      {
         this.§-!5§ = param1;
      }
      
      public function get §[y§() : int
      {
         return this.§]B§;
      }
      
      public function set §[y§(param1:int) : void
      {
         if(param1 >= 0 && param1 < this.pageIndexes.length)
         {
            this.§]B§ = param1;
         }
      }
      
      public function get pageIndexes() : Array
      {
         return this.§1D§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         this.§1D§ = param1;
      }
      
      public function §[6§(param1:String, param2:String) : void
      {
         this.§^!;§[param1] = param2;
      }
      
      public function §&&§(param1:String) : String
      {
         return this.§^!;§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§2N§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§2N§ = param1;
      }
      
      public function get §^2§() : String
      {
         return this.§-A§;
      }
      
      public function set §^2§(param1:String) : void
      {
         this.§-A§ = param1;
      }
      
      public function get §77§() : String
      {
         return this.§?l§;
      }
      
      public function set §77§(param1:String) : void
      {
         this.§?l§ = param1;
      }
      
      public function get writtenName() : String
      {
         return this.§<!<§;
      }
      
      public function set writtenName(param1:String) : void
      {
         this.§<!<§ = param1;
      }
   }
}
