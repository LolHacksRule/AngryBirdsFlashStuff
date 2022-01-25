package §86§
{
   import flash.utils.Dictionary;
   
   public class §[!$§
   {
       
      
      private var §^P§:String = "";
      
      private var mName:String = "";
      
      private var §=;§:String = "";
      
      private var §<!4§:String = "";
      
      private var §^!X§:String = "";
      
      private var § d§:Array = null;
      
      private var §9g§:int = 0;
      
      private var §,^§:Array = null;
      
      private var §+s§:Array;
      
      private var §7!c§:Array;
      
      private var §#c§:int = 0;
      
      private var §^F§:Dictionary;
      
      public function §[!$§()
      {
         this.§^F§ = new Dictionary();
         super();
      }
      
      public function §+O§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §<!&§(param1:String) : Array
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
      
      public function §6!]§(param1:int) : Object
      {
         return this.§+s§[param1];
      }
      
      public function §"!8§(param1:int) : String
      {
         return this.§7!c§[param1];
      }
      
      public function §`!§(param1:String) : Boolean
      {
         return this.§&!5§().indexOf(param1) != -1;
      }
      
      public function §&!5§() : Array
      {
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(this.§,^§ == null)
         {
            _loc1_ = new Array();
            for each(_loc2_ in this.pageIndexes)
            {
               _loc3_ = this.§<!&§(_loc2_);
               for each(_loc4_ in _loc3_)
               {
                  _loc1_.push(_loc4_);
               }
            }
            this.§,^§ = _loc1_;
            return _loc1_;
         }
         return this.§,^§;
      }
      
      public function §4!A§(param1:String) : int
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
      
      public function §;[§(param1:String) : String
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
         return this.§=;§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§=;§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§9g§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§9g§ = param1;
      }
      
      public function get § ![§() : Array
      {
         return this.§,^§;
      }
      
      public function get §5!F§() : Array
      {
         return this.§+s§;
      }
      
      public function set §5!F§(param1:Array) : void
      {
         this.§+s§ = param1;
      }
      
      public function get §[G§() : int
      {
         return this.§#c§;
      }
      
      public function set §[G§(param1:int) : void
      {
         if(param1 >= 0 && param1 < this.pageIndexes.length)
         {
            this.§#c§ = param1;
         }
      }
      
      public function get pageIndexes() : Array
      {
         return this.§ d§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         this.§ d§ = param1;
      }
      
      public function §-!6§(param1:String, param2:String) : void
      {
         this.§^F§[param1] = param2;
      }
      
      public function §;e§(param1:String) : String
      {
         return this.§^F§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§7!c§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§7!c§ = param1;
      }
      
      public function get § 7§() : String
      {
         return this.§<!4§;
      }
      
      public function set § 7§(param1:String) : void
      {
         this.§<!4§ = param1;
      }
      
      public function get §9`§() : String
      {
         return this.§^!X§;
      }
      
      public function set §9`§(param1:String) : void
      {
         this.§^!X§ = param1;
      }
      
      public function get writtenName() : String
      {
         return this.§^P§;
      }
      
      public function set writtenName(param1:String) : void
      {
         this.§^P§ = param1;
      }
   }
}
