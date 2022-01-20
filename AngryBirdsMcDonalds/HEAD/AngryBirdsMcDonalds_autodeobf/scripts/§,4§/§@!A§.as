package §,4§
{
   import flash.utils.Dictionary;
   
   public class §@!A§
   {
       
      
      private var §?^§:String = "";
      
      private var mName:String = "";
      
      private var §9]§:String = "";
      
      private var §!!J§:String = "";
      
      private var §8!J§:String = "";
      
      private var §2m§:Array = null;
      
      private var §`!L§:int = 0;
      
      private var §;!>§:Array = null;
      
      private var §?"§:Array;
      
      private var §,7§:Array;
      
      private var §^d§:int = 0;
      
      private var §=&§:Dictionary;
      
      public function §@!A§()
      {
         this.§=&§ = new Dictionary();
         super();
      }
      
      public function §"_§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §6@§(param1:String) : Array
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
      
      public function §<!K§(param1:int) : Object
      {
         return this.§?"§[param1];
      }
      
      public function §"=§(param1:int) : String
      {
         return this.§,7§[param1];
      }
      
      public function §?!T§(param1:String) : Boolean
      {
         return this.§+!+§().indexOf(param1) != -1;
      }
      
      public function §+!+§() : Array
      {
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(this.§;!>§ == null)
         {
            _loc1_ = new Array();
            for each(_loc2_ in this.pageIndexes)
            {
               _loc3_ = this.§6@§(_loc2_);
               for each(_loc4_ in _loc3_)
               {
                  _loc1_.push(_loc4_);
               }
            }
            this.§;!>§ = _loc1_;
            return _loc1_;
         }
         return this.§;!>§;
      }
      
      public function §<!c§(param1:String) : int
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
      
      public function §]!h§(param1:String) : String
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
         return this.§9]§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§9]§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§`!L§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§`!L§ = param1;
      }
      
      public function get §"B§() : Array
      {
         return this.§;!>§;
      }
      
      public function get §2W§() : Array
      {
         return this.§?"§;
      }
      
      public function set §2W§(param1:Array) : void
      {
         this.§?"§ = param1;
      }
      
      public function get §^t§() : int
      {
         return this.§^d§;
      }
      
      public function set §^t§(param1:int) : void
      {
         if(param1 >= 0 && param1 < this.pageIndexes.length)
         {
            this.§^d§ = param1;
         }
      }
      
      public function get pageIndexes() : Array
      {
         return this.§2m§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         this.§2m§ = param1;
      }
      
      public function §<!X§(param1:String, param2:String) : void
      {
         this.§=&§[param1] = param2;
      }
      
      public function §=w§(param1:String) : String
      {
         return this.§=&§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§,7§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§,7§ = param1;
      }
      
      public function get §4!Y§() : String
      {
         return this.§!!J§;
      }
      
      public function set §4!Y§(param1:String) : void
      {
         this.§!!J§ = param1;
      }
      
      public function get §0-§() : String
      {
         return this.§8!J§;
      }
      
      public function set §0-§(param1:String) : void
      {
         this.§8!J§ = param1;
      }
      
      public function get writtenName() : String
      {
         return this.§?^§;
      }
      
      public function set writtenName(param1:String) : void
      {
         this.§?^§ = param1;
      }
   }
}
