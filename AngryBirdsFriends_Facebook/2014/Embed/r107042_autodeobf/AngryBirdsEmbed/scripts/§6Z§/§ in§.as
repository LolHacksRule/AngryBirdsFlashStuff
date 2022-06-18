package §6Z§
{
   import flash.utils.Dictionary;
   
   public class § in§
   {
       
      
      private var §]!F§:String = "";
      
      private var mName:String = "";
      
      private var §!1§:String = "";
      
      private var §%!§:String = "";
      
      private var §;!$§:String = "";
      
      private var §^U§:Array = null;
      
      private var §2!7§:int = 0;
      
      private var §+X§:Array = null;
      
      private var §]9§:Array;
      
      private var §[!B§:Array;
      
      private var §6q§:int = 0;
      
      private var §<@§:Dictionary;
      
      public function § in§()
      {
         this.§<@§ = new Dictionary();
         super();
      }
      
      public function §5[§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §#V§(param1:String) : Array
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
      
      public function §;5§(param1:int) : Object
      {
         return this.§]9§[param1];
      }
      
      public function §1K§(param1:int) : String
      {
         return this.§[!B§[param1];
      }
      
      public function §-g§(param1:String) : Boolean
      {
         return this.§+`§().indexOf(param1) != -1;
      }
      
      public function §+`§() : Array
      {
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(this.§+X§ == null)
         {
            _loc1_ = new Array();
            for each(_loc2_ in this.pageIndexes)
            {
               _loc3_ = this.§#V§(_loc2_);
               for each(_loc4_ in _loc3_)
               {
                  _loc1_.push(_loc4_);
               }
            }
            this.§+X§ = _loc1_;
            return _loc1_;
         }
         return this.§+X§;
      }
      
      public function §5Q§(param1:String) : int
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
      
      public function §[§(param1:String) : String
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
         return this.§!1§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§!1§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§2!7§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§2!7§ = param1;
      }
      
      public function get §6!O§() : Array
      {
         return this.§+X§;
      }
      
      public function get §[z§() : Array
      {
         return this.§]9§;
      }
      
      public function set §[z§(param1:Array) : void
      {
         this.§]9§ = param1;
      }
      
      public function get §2L§() : int
      {
         return this.§6q§;
      }
      
      public function set §2L§(param1:int) : void
      {
         if(param1 >= 0 && param1 < this.pageIndexes.length)
         {
            this.§6q§ = param1;
         }
      }
      
      public function get pageIndexes() : Array
      {
         return this.§^U§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         this.§^U§ = param1;
      }
      
      public function §8c§(param1:String, param2:String) : void
      {
         this.§<@§[param1] = param2;
      }
      
      public function §9J§(param1:String) : String
      {
         return this.§<@§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§[!B§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§[!B§ = param1;
      }
      
      public function get §[!7§() : String
      {
         return this.§%!§;
      }
      
      public function set §[!7§(param1:String) : void
      {
         this.§%!§ = param1;
      }
      
      public function get §%!>§() : String
      {
         return this.§;!$§;
      }
      
      public function set §%!>§(param1:String) : void
      {
         this.§;!$§ = param1;
      }
      
      public function get writtenName() : String
      {
         return this.§]!F§;
      }
      
      public function set writtenName(param1:String) : void
      {
         this.§]!F§ = param1;
      }
   }
}
