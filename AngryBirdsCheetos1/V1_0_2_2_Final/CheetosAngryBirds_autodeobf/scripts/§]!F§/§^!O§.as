package §]!F§
{
   import flash.utils.Dictionary;
   
   public class §^!O§
   {
       
      
      private var §3`§:String = "";
      
      private var mName:String = "";
      
      private var §^;§:String = "";
      
      private var §+A§:String = "";
      
      private var §#V§:String = "";
      
      private var § H§:Array = null;
      
      private var §>i§:int = 0;
      
      private var §+g§:Array = null;
      
      private var §7U§:Array;
      
      private var §,C§:Array;
      
      private var §[H§:int = 0;
      
      private var §]!R§:Dictionary;
      
      public function §^!O§()
      {
         this.§]!R§ = new Dictionary();
         super();
      }
      
      public function §%!D§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §4!=§(param1:String) : Array
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
      
      public function §5Z§(param1:int) : Object
      {
         return this.§7U§[param1];
      }
      
      public function §@G§(param1:int) : String
      {
         return this.§,C§[param1];
      }
      
      public function §[g§(param1:String) : Boolean
      {
         return this.§0B§().indexOf(param1) != -1;
      }
      
      public function §0B§() : Array
      {
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(this.§+g§ == null)
         {
            _loc1_ = new Array();
            for each(_loc2_ in this.pageIndexes)
            {
               _loc3_ = this.§4!=§(_loc2_);
               for each(_loc4_ in _loc3_)
               {
                  _loc1_.push(_loc4_);
               }
            }
            this.§+g§ = _loc1_;
            return _loc1_;
         }
         return this.§+g§;
      }
      
      public function §7b§(param1:String) : int
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
      
      public function §3N§(param1:String) : String
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
         return this.§^;§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§^;§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§>i§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§>i§ = param1;
      }
      
      public function get §@g§() : Array
      {
         return this.§+g§;
      }
      
      public function get §8!C§() : Array
      {
         return this.§7U§;
      }
      
      public function set §8!C§(param1:Array) : void
      {
         this.§7U§ = param1;
      }
      
      public function get currentPage() : int
      {
         return this.§[H§;
      }
      
      public function set currentPage(param1:int) : void
      {
         if(param1 >= 0 && param1 < this.pageIndexes.length)
         {
            this.§[H§ = param1;
         }
      }
      
      public function get pageIndexes() : Array
      {
         return this.§ H§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         this.§ H§ = param1;
      }
      
      public function §6B§(param1:String, param2:String) : void
      {
         this.§]!R§[param1] = param2;
      }
      
      public function §9[§(param1:String) : String
      {
         return this.§]!R§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§,C§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§,C§ = param1;
      }
      
      public function get §;!'§() : String
      {
         return this.§+A§;
      }
      
      public function set §;!'§(param1:String) : void
      {
         this.§+A§ = param1;
      }
      
      public function get § 2§() : String
      {
         return this.§#V§;
      }
      
      public function set § 2§(param1:String) : void
      {
         this.§#V§ = param1;
      }
      
      public function get writtenName() : String
      {
         return this.§3`§;
      }
      
      public function set writtenName(param1:String) : void
      {
         this.§3`§ = param1;
      }
   }
}
