package §5=§
{
   import flash.utils.Dictionary;
   
   public class §-+§
   {
       
      
      private var §5!C§:String = "";
      
      private var mName:String = "";
      
      private var §0§:String = "";
      
      private var §?H§:String = "";
      
      private var §;x§:String = "";
      
      private var §90§:Array = null;
      
      private var §!!K§:int = 0;
      
      private var §<!O§:Array = null;
      
      private var §8T§:Array;
      
      private var §3y§:Array;
      
      private var §@p§:int = 0;
      
      private var §7X§:Dictionary;
      
      public function §-+§()
      {
         this.§7X§ = new Dictionary();
         super();
      }
      
      public function §#!§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function § e§(param1:String) : Array
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
      
      public function §1k§(param1:int) : Object
      {
         return this.§8T§[param1];
      }
      
      public function §->§(param1:int) : String
      {
         return this.§3y§[param1];
      }
      
      public function §0t§(param1:String) : Boolean
      {
         return this.§`H§().indexOf(param1) != -1;
      }
      
      public function §`H§() : Array
      {
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(this.§<!O§ == null)
         {
            _loc1_ = new Array();
            for each(_loc2_ in this.pageIndexes)
            {
               _loc3_ = this.§ e§(_loc2_);
               for each(_loc4_ in _loc3_)
               {
                  _loc1_.push(_loc4_);
               }
            }
            this.§<!O§ = _loc1_;
            return _loc1_;
         }
         return this.§<!O§;
      }
      
      public function §"4§(param1:String) : int
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
      
      public function §<_§(param1:String) : String
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
         return this.§0§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§0§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§!!K§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§!!K§ = param1;
      }
      
      public function get §-p§() : Array
      {
         return this.§<!O§;
      }
      
      public function get §>@§() : Array
      {
         return this.§8T§;
      }
      
      public function set §>@§(param1:Array) : void
      {
         this.§8T§ = param1;
      }
      
      public function get §&b§() : int
      {
         return this.§@p§;
      }
      
      public function set §&b§(param1:int) : void
      {
         if(param1 >= 0 && param1 < this.pageIndexes.length)
         {
            this.§@p§ = param1;
         }
      }
      
      public function get pageIndexes() : Array
      {
         return this.§90§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         this.§90§ = param1;
      }
      
      public function §+%§(param1:String, param2:String) : void
      {
         this.§7X§[param1] = param2;
      }
      
      public function §-!F§(param1:String) : String
      {
         return this.§7X§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§3y§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§3y§ = param1;
      }
      
      public function get §]k§() : String
      {
         return this.§?H§;
      }
      
      public function set §]k§(param1:String) : void
      {
         this.§?H§ = param1;
      }
      
      public function get §4t§() : String
      {
         return this.§;x§;
      }
      
      public function set §4t§(param1:String) : void
      {
         this.§;x§ = param1;
      }
      
      public function get writtenName() : String
      {
         return this.§5!C§;
      }
      
      public function set writtenName(param1:String) : void
      {
         this.§5!C§ = param1;
      }
   }
}
