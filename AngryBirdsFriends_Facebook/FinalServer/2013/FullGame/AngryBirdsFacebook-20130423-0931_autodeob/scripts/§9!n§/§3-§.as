package §9!n§
{
   import flash.utils.Dictionary;
   
   public class §3-§
   {
       
      
      private var §?!"§:String = "";
      
      private var mName:String = "";
      
      private var §[!]§:String = "";
      
      private var §]Q§:String = "";
      
      private var §?!e§:String = "";
      
      private var §9§:Array = null;
      
      private var §]!W§:int = 0;
      
      private var §5"O§:Array = null;
      
      private var §,"O§:Array;
      
      private var §<!&§:Array;
      
      private var §6"B§:int = 0;
      
      private var §+!P§:Dictionary;
      
      public function §3-§()
      {
         this.§+!P§ = new Dictionary();
         super();
      }
      
      public function §,!i§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §3B§(param1:String) : Array
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
      
      public function §-D§(param1:int) : Object
      {
         return this.§,"O§[param1];
      }
      
      public function §2T§(param1:int) : String
      {
         return this.§<!&§[param1];
      }
      
      public function §6_§(param1:String) : Boolean
      {
         return this.§-"K§().indexOf(param1) != -1;
      }
      
      public function §-"K§() : Array
      {
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(this.§5"O§ == null)
         {
            _loc1_ = new Array();
            for each(_loc2_ in this.pageIndexes)
            {
               _loc3_ = this.§3B§(_loc2_);
               for each(_loc4_ in _loc3_)
               {
                  _loc1_.push(_loc4_);
               }
            }
            this.§5"O§ = _loc1_;
            return _loc1_;
         }
         return this.§5"O§;
      }
      
      public function §!!N§(param1:String) : int
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
      
      public function §8t§(param1:String) : String
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
         return this.§[!]§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§[!]§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§]!W§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§]!W§ = param1;
      }
      
      public function get levels() : Array
      {
         return this.§5"O§;
      }
      
      public function get §%"2§() : Array
      {
         return this.§,"O§;
      }
      
      public function set §%"2§(param1:Array) : void
      {
         this.§,"O§ = param1;
      }
      
      public function get §4t§() : int
      {
         return this.§6"B§;
      }
      
      public function set §4t§(param1:int) : void
      {
         if(param1 >= 0 && param1 < this.pageIndexes.length)
         {
            this.§6"B§ = param1;
         }
      }
      
      public function get pageIndexes() : Array
      {
         return this.§9§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         this.§9§ = param1;
      }
      
      public function §=""§(param1:String, param2:String) : void
      {
         this.§+!P§[param1] = param2;
      }
      
      public function §"!X§(param1:String) : String
      {
         return this.§+!P§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§<!&§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§<!&§ = param1;
      }
      
      public function get §#">§() : String
      {
         return this.§]Q§;
      }
      
      public function set §#">§(param1:String) : void
      {
         this.§]Q§ = param1;
      }
      
      public function get §2A§() : String
      {
         return this.§?!e§;
      }
      
      public function set §2A§(param1:String) : void
      {
         this.§?!e§ = param1;
      }
      
      public function get writtenName() : String
      {
         return this.§?!"§;
      }
      
      public function set writtenName(param1:String) : void
      {
         this.§?!"§ = param1;
      }
   }
}
