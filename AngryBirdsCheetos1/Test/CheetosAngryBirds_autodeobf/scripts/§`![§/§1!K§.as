package §`![§
{
   import flash.utils.Dictionary;
   
   public class §1!K§
   {
       
      
      private var §6A§:String = "";
      
      private var mName:String = "";
      
      private var §6!-§:String = "";
      
      private var §,! §:String = "";
      
      private var §>`§:String = "";
      
      private var §=l§:Array = null;
      
      private var §2!J§:int = 0;
      
      private var §"H§:Array = null;
      
      private var §9z§:Array;
      
      private var §#t§:Array;
      
      private var §0e§:int = 0;
      
      private var §3Y§:Dictionary;
      
      public function §1!K§()
      {
         this.§3Y§ = new Dictionary();
         super();
      }
      
      public function §-b§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §2!D§(param1:String) : Array
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
         return this.§9z§[param1];
      }
      
      public function §6i§(param1:int) : String
      {
         return this.§#t§[param1];
      }
      
      public function §&!e§(param1:String) : Boolean
      {
         return this.§4%§().indexOf(param1) != -1;
      }
      
      public function §4%§() : Array
      {
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(this.§"H§ == null)
         {
            _loc1_ = new Array();
            for each(_loc2_ in this.pageIndexes)
            {
               _loc3_ = this.§2!D§(_loc2_);
               for each(_loc4_ in _loc3_)
               {
                  _loc1_.push(_loc4_);
               }
            }
            this.§"H§ = _loc1_;
            return _loc1_;
         }
         return this.§"H§;
      }
      
      public function §5g§(param1:String) : int
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
      
      public function §,!L§(param1:String) : String
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
         return this.§6!-§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§6!-§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§2!J§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§2!J§ = param1;
      }
      
      public function get §0!B§() : Array
      {
         return this.§"H§;
      }
      
      public function get §`$§() : Array
      {
         return this.§9z§;
      }
      
      public function set §`$§(param1:Array) : void
      {
         this.§9z§ = param1;
      }
      
      public function get § !X§() : int
      {
         return this.§0e§;
      }
      
      public function set § !X§(param1:int) : void
      {
         if(param1 >= 0 && param1 < this.pageIndexes.length)
         {
            this.§0e§ = param1;
         }
      }
      
      public function get pageIndexes() : Array
      {
         return this.§=l§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         this.§=l§ = param1;
      }
      
      public function §?!f§(param1:String, param2:String) : void
      {
         this.§3Y§[param1] = param2;
      }
      
      public function §]<§(param1:String) : String
      {
         return this.§3Y§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§#t§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§#t§ = param1;
      }
      
      public function get §4+§() : String
      {
         return this.§,! §;
      }
      
      public function set §4+§(param1:String) : void
      {
         this.§,! § = param1;
      }
      
      public function get §`k§() : String
      {
         return this.§>`§;
      }
      
      public function set §`k§(param1:String) : void
      {
         this.§>`§ = param1;
      }
      
      public function get writtenName() : String
      {
         return this.§6A§;
      }
      
      public function set writtenName(param1:String) : void
      {
         this.§6A§ = param1;
      }
   }
}
