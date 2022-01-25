package §-X§
{
   import flash.utils.Dictionary;
   
   public class §0x§
   {
       
      
      private var §+0§:String = "";
      
      private var mName:String = "";
      
      private var §^!a§:String = "";
      
      private var §`$§:String = "";
      
      private var §;[§:String = "";
      
      private var §[!$§:Array = null;
      
      private var §^P§:int = 0;
      
      private var §=;§:Array = null;
      
      private var §<!4§:Array;
      
      private var §7!c§:Array;
      
      private var §#c§:int = 0;
      
      private var §^!X§:Dictionary;
      
      public function §0x§()
      {
         this.§^!X§ = new Dictionary();
         super();
      }
      
      public function § d§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §9g§(param1:String) : Array
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
      
      public function §,^§(param1:int) : Object
      {
         return this.§<!4§[param1];
      }
      
      public function §+s§(param1:int) : String
      {
         return this.§7!c§[param1];
      }
      
      public function §^F§(param1:String) : Boolean
      {
         return this.§+O§().indexOf(param1) != -1;
      }
      
      public function §+O§() : Array
      {
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(this.§=;§ == null)
         {
            _loc1_ = new Array();
            for each(_loc2_ in this.pageIndexes)
            {
               _loc3_ = this.§9g§(_loc2_);
               for each(_loc4_ in _loc3_)
               {
                  _loc1_.push(_loc4_);
               }
            }
            this.§=;§ = _loc1_;
            return _loc1_;
         }
         return this.§=;§;
      }
      
      public function §<!&§(param1:String) : int
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
      
      public function §#P§(param1:String) : String
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
         return this.§^!a§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§^!a§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§^P§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§^P§ = param1;
      }
      
      public function get §6!]§() : Array
      {
         return this.§=;§;
      }
      
      public function get §"!8§() : Array
      {
         return this.§<!4§;
      }
      
      public function set §"!8§(param1:Array) : void
      {
         this.§<!4§ = param1;
      }
      
      public function get §,!-§() : int
      {
         return this.§#c§;
      }
      
      public function set §,!-§(param1:int) : void
      {
         if(param1 >= 0 && param1 < this.pageIndexes.length)
         {
            this.§#c§ = param1;
         }
      }
      
      public function get pageIndexes() : Array
      {
         return this.§[!$§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         this.§[!$§ = param1;
      }
      
      public function §`!§(param1:String, param2:String) : void
      {
         this.§^!X§[param1] = param2;
      }
      
      public function §&!5§(param1:String) : String
      {
         return this.§^!X§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§7!c§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§7!c§ = param1;
      }
      
      public function get §4!A§() : String
      {
         return this.§`$§;
      }
      
      public function set §4!A§(param1:String) : void
      {
         this.§`$§ = param1;
      }
      
      public function get § ![§() : String
      {
         return this.§;[§;
      }
      
      public function set § ![§(param1:String) : void
      {
         this.§;[§ = param1;
      }
      
      public function get writtenName() : String
      {
         return this.§+0§;
      }
      
      public function set writtenName(param1:String) : void
      {
         this.§+0§ = param1;
      }
   }
}
