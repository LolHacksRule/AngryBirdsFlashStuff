package §6!L§
{
   import flash.utils.Dictionary;
   
   public class §7n§
   {
       
      
      private var §@+§:String = "";
      
      private var mName:String = "";
      
      private var §-a§:String = "";
      
      private var §%i§:String = "";
      
      private var §%Y§:String = "";
      
      private var §4!K§:Array = null;
      
      private var §4p§:int = 0;
      
      private var §4!!§:Array = null;
      
      private var §@X§:Array;
      
      private var §>1§:Array;
      
      private var §0J§:int = 0;
      
      private var §#t§:Dictionary;
      
      public function §7n§()
      {
         this.§#t§ = new Dictionary();
         super();
      }
      
      public function §3<§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §!>§(param1:String) : Array
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
      
      public function § do§(param1:int) : Object
      {
         return this.§@X§[param1];
      }
      
      public function §`!J§(param1:int) : String
      {
         return this.§>1§[param1];
      }
      
      public function §@O§(param1:String) : Boolean
      {
         return this.§@c§().indexOf(param1) != -1;
      }
      
      public function §@c§() : Array
      {
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(this.§4!!§ == null)
         {
            _loc1_ = new Array();
            for each(_loc2_ in this.pageIndexes)
            {
               _loc3_ = this.§!>§(_loc2_);
               for each(_loc4_ in _loc3_)
               {
                  _loc1_.push(_loc4_);
               }
            }
            this.§4!!§ = _loc1_;
            return _loc1_;
         }
         return this.§4!!§;
      }
      
      public function §@9§(param1:String) : int
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
      
      public function §7E§(param1:String) : String
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
         return this.§-a§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§-a§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§4p§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§4p§ = param1;
      }
      
      public function get §9X§() : Array
      {
         return this.§4!!§;
      }
      
      public function get §2+§() : Array
      {
         return this.§@X§;
      }
      
      public function set §2+§(param1:Array) : void
      {
         this.§@X§ = param1;
      }
      
      public function get §&<§() : int
      {
         return this.§0J§;
      }
      
      public function set §&<§(param1:int) : void
      {
         if(param1 >= 0 && param1 < this.pageIndexes.length)
         {
            this.§0J§ = param1;
         }
      }
      
      public function get pageIndexes() : Array
      {
         return this.§4!K§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         this.§4!K§ = param1;
      }
      
      public function §]B§(param1:String, param2:String) : void
      {
         this.§#t§[param1] = param2;
      }
      
      public function §&!4§(param1:String) : String
      {
         return this.§#t§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§>1§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§>1§ = param1;
      }
      
      public function get §?!"§() : String
      {
         return this.§%i§;
      }
      
      public function set §?!"§(param1:String) : void
      {
         this.§%i§ = param1;
      }
      
      public function get §?]§() : String
      {
         return this.§%Y§;
      }
      
      public function set §?]§(param1:String) : void
      {
         this.§%Y§ = param1;
      }
      
      public function get writtenName() : String
      {
         return this.§@+§;
      }
      
      public function set writtenName(param1:String) : void
      {
         this.§@+§ = param1;
      }
   }
}
