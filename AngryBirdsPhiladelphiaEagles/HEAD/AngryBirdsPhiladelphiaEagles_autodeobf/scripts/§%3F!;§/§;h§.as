package §?!;§
{
   import flash.utils.Dictionary;
   
   public class §;h§
   {
       
      
      private var §6E§:String = "";
      
      private var mName:String = "";
      
      private var §6!@§:String = "";
      
      private var §,?§:String = "";
      
      private var §#O§:String = "";
      
      private var §?b§:Array = null;
      
      private var §@!#§:int = 0;
      
      private var §4c§:Array = null;
      
      private var §5Q§:Array;
      
      private var §8!#§:Array;
      
      private var §0P§:int = 0;
      
      private var §#!=§:Dictionary;
      
      public function §;h§()
      {
         this.§#!=§ = new Dictionary();
         super();
      }
      
      public function §%m§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §`#§(param1:String) : Array
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
      
      public function §;!0§(param1:int) : Object
      {
         return this.§5Q§[param1];
      }
      
      public function §,!$§(param1:int) : String
      {
         return this.§8!#§[param1];
      }
      
      public function § 4§(param1:String) : Boolean
      {
         return this.§5G§().indexOf(param1) != -1;
      }
      
      public function §5G§() : Array
      {
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(this.§4c§ == null)
         {
            _loc1_ = new Array();
            for each(_loc2_ in this.pageIndexes)
            {
               _loc3_ = this.§`#§(_loc2_);
               for each(_loc4_ in _loc3_)
               {
                  _loc1_.push(_loc4_);
               }
            }
            this.§4c§ = _loc1_;
            return _loc1_;
         }
         return this.§4c§;
      }
      
      public function §@;§(param1:String) : int
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
      
      public function § O§(param1:String) : String
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
         return this.§6!@§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§6!@§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§@!#§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§@!#§ = param1;
      }
      
      public function get §2!E§() : Array
      {
         return this.§4c§;
      }
      
      public function get §1R§() : Array
      {
         return this.§5Q§;
      }
      
      public function set §1R§(param1:Array) : void
      {
         this.§5Q§ = param1;
      }
      
      public function get §6§() : int
      {
         return this.§0P§;
      }
      
      public function set §6§(param1:int) : void
      {
         if(param1 >= 0 && param1 < this.pageIndexes.length)
         {
            this.§0P§ = param1;
         }
      }
      
      public function get pageIndexes() : Array
      {
         return this.§?b§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         this.§?b§ = param1;
      }
      
      public function §`!$§(param1:String, param2:String) : void
      {
         this.§#!=§[param1] = param2;
      }
      
      public function §&T§(param1:String) : String
      {
         return this.§#!=§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§8!#§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§8!#§ = param1;
      }
      
      public function get §"W§() : String
      {
         return this.§,?§;
      }
      
      public function set §"W§(param1:String) : void
      {
         this.§,?§ = param1;
      }
      
      public function get §6'§() : String
      {
         return this.§#O§;
      }
      
      public function set §6'§(param1:String) : void
      {
         this.§#O§ = param1;
      }
      
      public function get writtenName() : String
      {
         return this.§6E§;
      }
      
      public function set writtenName(param1:String) : void
      {
         this.§6E§ = param1;
      }
   }
}
