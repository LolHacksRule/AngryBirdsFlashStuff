package §3!%§
{
   import flash.utils.Dictionary;
   
   public class §9i§
   {
       
      
      private var §=]§:String = "";
      
      private var mName:String = "";
      
      private var § ^§:String = "";
      
      private var §@g§:String = "";
      
      private var §0D§:String = "";
      
      private var §9z§:Array = null;
      
      private var §`J§:int = 0;
      
      private var §7,§:Array = null;
      
      private var §9D§:Array;
      
      private var §'u§:Array;
      
      private var §?m§:int = 0;
      
      private var § 0§:Dictionary;
      
      public function §9i§()
      {
         this.§ 0§ = new Dictionary();
         super();
      }
      
      public function §1!G§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §5?§(param1:String) : Array
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
      
      public function §<z§(param1:int) : Object
      {
         return this.§9D§[param1];
      }
      
      public function §?!L§(param1:int) : String
      {
         return this.§'u§[param1];
      }
      
      public function §2!8§(param1:String) : Boolean
      {
         return this.§7!7§().indexOf(param1) != -1;
      }
      
      public function §7!7§() : Array
      {
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(this.§7,§ == null)
         {
            _loc1_ = new Array();
            for each(_loc2_ in this.pageIndexes)
            {
               _loc3_ = this.§5?§(_loc2_);
               for each(_loc4_ in _loc3_)
               {
                  _loc1_.push(_loc4_);
               }
            }
            this.§7,§ = _loc1_;
            return _loc1_;
         }
         return this.§7,§;
      }
      
      public function §"n§(param1:String) : int
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
      
      public function §7#§(param1:String) : String
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
         return this.§ ^§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§ ^§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§`J§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§`J§ = param1;
      }
      
      public function get §+v§() : Array
      {
         return this.§7,§;
      }
      
      public function get §+!+§() : Array
      {
         return this.§9D§;
      }
      
      public function set §+!+§(param1:Array) : void
      {
         this.§9D§ = param1;
      }
      
      public function get §3Y§() : int
      {
         return this.§?m§;
      }
      
      public function set §3Y§(param1:int) : void
      {
         if(param1 >= 0 && param1 < this.pageIndexes.length)
         {
            this.§?m§ = param1;
         }
      }
      
      public function get pageIndexes() : Array
      {
         return this.§9z§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         this.§9z§ = param1;
      }
      
      public function §;Y§(param1:String, param2:String) : void
      {
         this.§ 0§[param1] = param2;
      }
      
      public function §[x§(param1:String) : String
      {
         return this.§ 0§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§'u§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§'u§ = param1;
      }
      
      public function get §8t§() : String
      {
         return this.§@g§;
      }
      
      public function set §8t§(param1:String) : void
      {
         this.§@g§ = param1;
      }
      
      public function get §<D§() : String
      {
         return this.§0D§;
      }
      
      public function set §<D§(param1:String) : void
      {
         this.§0D§ = param1;
      }
      
      public function get writtenName() : String
      {
         return this.§=]§;
      }
      
      public function set writtenName(param1:String) : void
      {
         this.§=]§ = param1;
      }
   }
}
