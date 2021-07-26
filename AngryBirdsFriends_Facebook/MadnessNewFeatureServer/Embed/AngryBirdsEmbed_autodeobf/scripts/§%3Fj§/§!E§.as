package §?j§
{
   import flash.utils.Dictionary;
   
   public class §!E§
   {
       
      
      private var §&w§:String = "";
      
      private var mName:String = "";
      
      private var §8!%§:String = "";
      
      private var §=a§:String = "";
      
      private var §7U§:String = "";
      
      private var §9O§:Array = null;
      
      private var §@!$§:int = 0;
      
      private var §8!A§:Array = null;
      
      private var §%!H§:Array;
      
      private var §&F§:Array;
      
      private var §5J§:int = 0;
      
      private var §&!6§:Dictionary;
      
      public function §!E§()
      {
         this.§&!6§ = new Dictionary();
         super();
      }
      
      public function §!G§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §?a§(param1:String) : Array
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
      
      public function §-P§(param1:int) : Object
      {
         return this.§%!H§[param1];
      }
      
      public function §3!L§(param1:int) : String
      {
         return this.§&F§[param1];
      }
      
      public function §?!J§(param1:String) : Boolean
      {
         return this.§0C§().indexOf(param1) != -1;
      }
      
      public function §0C§() : Array
      {
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(this.§8!A§ == null)
         {
            _loc1_ = new Array();
            for each(_loc2_ in this.pageIndexes)
            {
               _loc3_ = this.§?a§(_loc2_);
               for each(_loc4_ in _loc3_)
               {
                  _loc1_.push(_loc4_);
               }
            }
            this.§8!A§ = _loc1_;
            return _loc1_;
         }
         return this.§8!A§;
      }
      
      public function §=7§(param1:String) : int
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
      
      public function § 1§(param1:String) : String
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
         return this.§8!%§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§8!%§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§@!$§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§@!$§ = param1;
      }
      
      public function get §!K§() : Array
      {
         return this.§8!A§;
      }
      
      public function get §49§() : Array
      {
         return this.§%!H§;
      }
      
      public function set §49§(param1:Array) : void
      {
         this.§%!H§ = param1;
      }
      
      public function get §"!;§() : int
      {
         return this.§5J§;
      }
      
      public function set §"!;§(param1:int) : void
      {
         if(param1 >= 0 && param1 < this.pageIndexes.length)
         {
            this.§5J§ = param1;
         }
      }
      
      public function get pageIndexes() : Array
      {
         return this.§9O§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         this.§9O§ = param1;
      }
      
      public function §`!§(param1:String, param2:String) : void
      {
         this.§&!6§[param1] = param2;
      }
      
      public function §8z§(param1:String) : String
      {
         return this.§&!6§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§&F§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§&F§ = param1;
      }
      
      public function get §4w§() : String
      {
         return this.§=a§;
      }
      
      public function set §4w§(param1:String) : void
      {
         this.§=a§ = param1;
      }
      
      public function get §^+§() : String
      {
         return this.§7U§;
      }
      
      public function set §^+§(param1:String) : void
      {
         this.§7U§ = param1;
      }
      
      public function get writtenName() : String
      {
         return this.§&w§;
      }
      
      public function set writtenName(param1:String) : void
      {
         this.§&w§ = param1;
      }
   }
}
