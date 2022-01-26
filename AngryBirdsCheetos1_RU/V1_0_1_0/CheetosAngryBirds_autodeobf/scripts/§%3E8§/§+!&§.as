package §>8§
{
   import flash.utils.Dictionary;
   
   public class §+!&§
   {
       
      
      private var §4!T§:String = "";
      
      private var mName:String = "";
      
      private var §]W§:String = "";
      
      private var §^!O§:String = "";
      
      private var §[!9§:String = "";
      
      private var §`=§:Array = null;
      
      private var §!F§:int = 0;
      
      private var §=v§:Array = null;
      
      private var §2&§:Array;
      
      private var § G§:Array;
      
      private var §'x§:int = 0;
      
      private var §!G§:Dictionary;
      
      public function §+!&§()
      {
         this.§!G§ = new Dictionary();
         super();
      }
      
      public function §9!V§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §,u§(param1:String) : Array
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
      
      public function §30§(param1:int) : Object
      {
         return this.§2&§[param1];
      }
      
      public function §8S§(param1:int) : String
      {
         return this.§ G§[param1];
      }
      
      public function §&P§(param1:String) : Boolean
      {
         return this.§5!X§().indexOf(param1) != -1;
      }
      
      public function §5!X§() : Array
      {
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(this.§=v§ == null)
         {
            _loc1_ = new Array();
            for each(_loc2_ in this.pageIndexes)
            {
               _loc3_ = this.§,u§(_loc2_);
               for each(_loc4_ in _loc3_)
               {
                  _loc1_.push(_loc4_);
               }
            }
            this.§=v§ = _loc1_;
            return _loc1_;
         }
         return this.§=v§;
      }
      
      public function §?]§(param1:String) : int
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
      
      public function §?f§(param1:String) : String
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
         return this.§]W§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§]W§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§!F§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§!F§ = param1;
      }
      
      public function get §2!`§() : Array
      {
         return this.§=v§;
      }
      
      public function get §%!&§() : Array
      {
         return this.§2&§;
      }
      
      public function set §%!&§(param1:Array) : void
      {
         this.§2&§ = param1;
      }
      
      public function get currentPage() : int
      {
         return this.§'x§;
      }
      
      public function set currentPage(param1:int) : void
      {
         if(param1 >= 0 && param1 < this.pageIndexes.length)
         {
            this.§'x§ = param1;
         }
      }
      
      public function get pageIndexes() : Array
      {
         return this.§`=§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         this.§`=§ = param1;
      }
      
      public function §%3§(param1:String, param2:String) : void
      {
         this.§!G§[param1] = param2;
      }
      
      public function §5y§(param1:String) : String
      {
         return this.§!G§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§ G§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§ G§ = param1;
      }
      
      public function get §4>§() : String
      {
         return this.§^!O§;
      }
      
      public function set §4>§(param1:String) : void
      {
         this.§^!O§ = param1;
      }
      
      public function get §<b§() : String
      {
         return this.§[!9§;
      }
      
      public function set §<b§(param1:String) : void
      {
         this.§[!9§ = param1;
      }
      
      public function get writtenName() : String
      {
         return this.§4!T§;
      }
      
      public function set writtenName(param1:String) : void
      {
         this.§4!T§ = param1;
      }
   }
}
