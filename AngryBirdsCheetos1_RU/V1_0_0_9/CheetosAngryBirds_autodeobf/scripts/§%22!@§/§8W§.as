package §"!@§
{
   import flash.utils.Dictionary;
   
   public class §8W§
   {
       
      
      private var §9z§:String = "";
      
      private var mName:String = "";
      
      private var §<P§:String = "";
      
      private var §-Z§:String = "";
      
      private var §-%§:String = "";
      
      private var §!S§:Array = null;
      
      private var §+w§:int = 0;
      
      private var §^!"§:Array = null;
      
      private var §;i§:Array;
      
      private var §,!a§:Array;
      
      private var §#z§:int = 0;
      
      private var §<!K§:Dictionary;
      
      public function §8W§()
      {
         this.§<!K§ = new Dictionary();
         super();
      }
      
      public function §4z§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §@0§(param1:String) : Array
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
      
      public function §#!"§(param1:int) : Object
      {
         return this.§;i§[param1];
      }
      
      public function §%4§(param1:int) : String
      {
         return this.§,!a§[param1];
      }
      
      public function §,! §(param1:String) : Boolean
      {
         return this.§[y§().indexOf(param1) != -1;
      }
      
      public function §[y§() : Array
      {
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(this.§^!"§ == null)
         {
            _loc1_ = new Array();
            for each(_loc2_ in this.pageIndexes)
            {
               _loc3_ = this.§@0§(_loc2_);
               for each(_loc4_ in _loc3_)
               {
                  _loc1_.push(_loc4_);
               }
            }
            this.§^!"§ = _loc1_;
            return _loc1_;
         }
         return this.§^!"§;
      }
      
      public function §;y§(param1:String) : int
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
      
      public function §'^§(param1:String) : String
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
         return this.§<P§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§<P§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§+w§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§+w§ = param1;
      }
      
      public function get §while§() : Array
      {
         return this.§^!"§;
      }
      
      public function get §0=§() : Array
      {
         return this.§;i§;
      }
      
      public function set §0=§(param1:Array) : void
      {
         this.§;i§ = param1;
      }
      
      public function get currentPage() : int
      {
         return this.§#z§;
      }
      
      public function set currentPage(param1:int) : void
      {
         if(param1 >= 0 && param1 < this.pageIndexes.length)
         {
            this.§#z§ = param1;
         }
      }
      
      public function get pageIndexes() : Array
      {
         return this.§!S§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         this.§!S§ = param1;
      }
      
      public function §<L§(param1:String, param2:String) : void
      {
         this.§<!K§[param1] = param2;
      }
      
      public function §6!U§(param1:String) : String
      {
         return this.§<!K§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§,!a§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§,!a§ = param1;
      }
      
      public function get §-6§() : String
      {
         return this.§-Z§;
      }
      
      public function set §-6§(param1:String) : void
      {
         this.§-Z§ = param1;
      }
      
      public function get §1!!§() : String
      {
         return this.§-%§;
      }
      
      public function set §1!!§(param1:String) : void
      {
         this.§-%§ = param1;
      }
      
      public function get writtenName() : String
      {
         return this.§9z§;
      }
      
      public function set writtenName(param1:String) : void
      {
         this.§9z§ = param1;
      }
   }
}
