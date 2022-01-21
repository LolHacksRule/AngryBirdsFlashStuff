package §`!d§
{
   import flash.utils.Dictionary;
   
   public class §6b§
   {
       
      
      private var §6h§:String = "";
      
      private var mName:String = "";
      
      private var §[!m§:String = "";
      
      private var §-!Q§:String = "";
      
      private var §>c§:String = "";
      
      private var §8p§:Array = null;
      
      private var §0y§:int = 0;
      
      private var § !b§:Array = null;
      
      private var §=^§:Array;
      
      private var §[!%§:Array;
      
      private var §9!o§:int = 0;
      
      private var §8W§:Dictionary;
      
      public function §6b§()
      {
         this.§8W§ = new Dictionary();
         super();
      }
      
      public function §[O§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §;0§(param1:String) : Array
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
      
      public function §!K§(param1:int) : Object
      {
         return this.§=^§[param1];
      }
      
      public function §for§(param1:int) : String
      {
         return this.§[!%§[param1];
      }
      
      public function §?!i§(param1:String) : Boolean
      {
         return this.§6s§().indexOf(param1) != -1;
      }
      
      public function §6s§() : Array
      {
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(this.§ !b§ == null)
         {
            _loc1_ = new Array();
            for each(_loc2_ in this.pageIndexes)
            {
               _loc3_ = this.§;0§(_loc2_);
               for each(_loc4_ in _loc3_)
               {
                  _loc1_.push(_loc4_);
               }
            }
            this.§ !b§ = _loc1_;
            return _loc1_;
         }
         return this.§ !b§;
      }
      
      public function §3D§(param1:String) : int
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
      
      public function §<n§(param1:String) : String
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
         return this.§[!m§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§[!m§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§0y§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§0y§ = param1;
      }
      
      public function get §4S§() : Array
      {
         return this.§ !b§;
      }
      
      public function get §^$§() : Array
      {
         return this.§=^§;
      }
      
      public function set §^$§(param1:Array) : void
      {
         this.§=^§ = param1;
      }
      
      public function get §"!T§() : int
      {
         return this.§9!o§;
      }
      
      public function set §"!T§(param1:int) : void
      {
         if(param1 >= 0 && param1 < this.pageIndexes.length)
         {
            this.§9!o§ = param1;
         }
      }
      
      public function get pageIndexes() : Array
      {
         return this.§8p§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         this.§8p§ = param1;
      }
      
      public function §4m§(param1:String, param2:String) : void
      {
         this.§8W§[param1] = param2;
      }
      
      public function §6;§(param1:String) : String
      {
         return this.§8W§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§[!%§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§[!%§ = param1;
      }
      
      public function get §0!J§() : String
      {
         return this.§-!Q§;
      }
      
      public function set §0!J§(param1:String) : void
      {
         this.§-!Q§ = param1;
      }
      
      public function get §`e§() : String
      {
         return this.§>c§;
      }
      
      public function set §`e§(param1:String) : void
      {
         this.§>c§ = param1;
      }
      
      public function get writtenName() : String
      {
         return this.§6h§;
      }
      
      public function set writtenName(param1:String) : void
      {
         this.§6h§ = param1;
      }
   }
}
