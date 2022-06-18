package §8!G§
{
   import flash.utils.Dictionary;
   
   public class §>!C§
   {
       
      
      private var §"t§:String = "";
      
      private var mName:String = "";
      
      private var §6B§:String = "";
      
      private var §;"§:String = "";
      
      private var §9Q§:String = "";
      
      private var §<0§:Array = null;
      
      private var §49§:int = 0;
      
      private var §5^§:Array = null;
      
      private var §<!?§:Array;
      
      private var §-u§:Array;
      
      private var §+"§:int = 0;
      
      private var § !-§:Dictionary;
      
      public function §>!C§()
      {
         this.§ !-§ = new Dictionary();
         super();
      }
      
      public function §7!G§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §5!#§(param1:String) : Array
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
      
      public function §7!E§(param1:int) : Object
      {
         return this.§<!?§[param1];
      }
      
      public function §'"§(param1:int) : String
      {
         return this.§-u§[param1];
      }
      
      public function §[e§(param1:String) : Boolean
      {
         return this.§^J§().indexOf(param1) != -1;
      }
      
      public function §^J§() : Array
      {
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(this.§5^§ == null)
         {
            _loc1_ = new Array();
            for each(_loc2_ in this.pageIndexes)
            {
               _loc3_ = this.§5!#§(_loc2_);
               for each(_loc4_ in _loc3_)
               {
                  _loc1_.push(_loc4_);
               }
            }
            this.§5^§ = _loc1_;
            return _loc1_;
         }
         return this.§5^§;
      }
      
      public function §-!2§(param1:String) : int
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
      
      public function §'Z§(param1:String) : String
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
         return this.§6B§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§6B§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§49§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§49§ = param1;
      }
      
      public function get §%2§() : Array
      {
         return this.§5^§;
      }
      
      public function get §2%§() : Array
      {
         return this.§<!?§;
      }
      
      public function set §2%§(param1:Array) : void
      {
         this.§<!?§ = param1;
      }
      
      public function get §function§() : int
      {
         return this.§+"§;
      }
      
      public function set §function§(param1:int) : void
      {
         if(param1 >= 0 && param1 < this.pageIndexes.length)
         {
            this.§+"§ = param1;
         }
      }
      
      public function get pageIndexes() : Array
      {
         return this.§<0§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         this.§<0§ = param1;
      }
      
      public function §"[§(param1:String, param2:String) : void
      {
         this.§ !-§[param1] = param2;
      }
      
      public function §3A§(param1:String) : String
      {
         return this.§ !-§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§-u§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§-u§ = param1;
      }
      
      public function get §`!A§() : String
      {
         return this.§;"§;
      }
      
      public function set §`!A§(param1:String) : void
      {
         this.§;"§ = param1;
      }
      
      public function get §2;§() : String
      {
         return this.§9Q§;
      }
      
      public function set §2;§(param1:String) : void
      {
         this.§9Q§ = param1;
      }
      
      public function get writtenName() : String
      {
         return this.§"t§;
      }
      
      public function set writtenName(param1:String) : void
      {
         this.§"t§ = param1;
      }
   }
}
