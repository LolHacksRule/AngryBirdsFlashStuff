package §39§
{
   import flash.utils.Dictionary;
   
   public class §6R§
   {
       
      
      private var §6+§:String = "";
      
      private var mName:String = "";
      
      private var §?"§:String = "";
      
      private var §#M§:String = "";
      
      private var §4d§:String = "";
      
      private var §>6§:Array = null;
      
      private var §&]§:int = 0;
      
      private var §#0§:Array = null;
      
      private var §&!G§:Array;
      
      private var §implements§:Array;
      
      private var §`^§:int = 0;
      
      private var §]t§:Dictionary;
      
      public function §6R§()
      {
         this.§]t§ = new Dictionary();
         super();
      }
      
      public function §2s§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §+$§(param1:String) : Array
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
      
      public function §%!K§(param1:int) : Object
      {
         return this.§&!G§[param1];
      }
      
      public function §"!'§(param1:int) : String
      {
         return this.§implements§[param1];
      }
      
      public function §5c§(param1:String) : Boolean
      {
         return this.§ !>§().indexOf(param1) != -1;
      }
      
      public function § !>§() : Array
      {
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(this.§#0§ == null)
         {
            _loc1_ = new Array();
            for each(_loc2_ in this.pageIndexes)
            {
               _loc3_ = this.§+$§(_loc2_);
               for each(_loc4_ in _loc3_)
               {
                  _loc1_.push(_loc4_);
               }
            }
            this.§#0§ = _loc1_;
            return _loc1_;
         }
         return this.§#0§;
      }
      
      public function §&!%§(param1:String) : int
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
      
      public function §[?§(param1:String) : String
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
         return this.§?"§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§?"§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§&]§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§&]§ = param1;
      }
      
      public function get §^f§() : Array
      {
         return this.§#0§;
      }
      
      public function get §2a§() : Array
      {
         return this.§&!G§;
      }
      
      public function set §2a§(param1:Array) : void
      {
         this.§&!G§ = param1;
      }
      
      public function get currentPage() : int
      {
         return this.§`^§;
      }
      
      public function set currentPage(param1:int) : void
      {
         if(param1 >= 0 && param1 < this.pageIndexes.length)
         {
            this.§`^§ = param1;
         }
      }
      
      public function get pageIndexes() : Array
      {
         return this.§>6§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         this.§>6§ = param1;
      }
      
      public function §7!G§(param1:String, param2:String) : void
      {
         this.§]t§[param1] = param2;
      }
      
      public function §"!H§(param1:String) : String
      {
         return this.§]t§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§implements§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§implements§ = param1;
      }
      
      public function get §`J§() : String
      {
         return this.§#M§;
      }
      
      public function set §`J§(param1:String) : void
      {
         this.§#M§ = param1;
      }
      
      public function get §'f§() : String
      {
         return this.§4d§;
      }
      
      public function set §'f§(param1:String) : void
      {
         this.§4d§ = param1;
      }
      
      public function get writtenName() : String
      {
         return this.§6+§;
      }
      
      public function set writtenName(param1:String) : void
      {
         this.§6+§ = param1;
      }
   }
}
