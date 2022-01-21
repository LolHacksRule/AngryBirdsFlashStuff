package §+-§
{
   import flash.utils.Dictionary;
   
   public class §;!n§
   {
       
      
      private var §=P§:String = "";
      
      private var mName:String = "";
      
      private var §"q§:String = "";
      
      private var §#`§:String = "";
      
      private var §`W§:String = "";
      
      private var §4]§:Array = null;
      
      private var §3!9§:int = 0;
      
      private var §`!P§:Array = null;
      
      private var §4!=§:Array;
      
      private var §]!a§:Array;
      
      private var §9!`§:int = 0;
      
      private var §57§:Dictionary;
      
      public function §;!n§()
      {
         this.§57§ = new Dictionary();
         super();
      }
      
      public function §"6§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §=J§(param1:String) : Array
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
      
      public function §0!R§(param1:int) : Object
      {
         return this.§4!=§[param1];
      }
      
      public function §9!?§(param1:int) : String
      {
         return this.§]!a§[param1];
      }
      
      public function §'!§(param1:String) : Boolean
      {
         return this.§"'§().indexOf(param1) != -1;
      }
      
      public function §"'§() : Array
      {
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(this.§`!P§ == null)
         {
            _loc1_ = new Array();
            for each(_loc2_ in this.pageIndexes)
            {
               _loc3_ = this.§=J§(_loc2_);
               for each(_loc4_ in _loc3_)
               {
                  _loc1_.push(_loc4_);
               }
            }
            this.§`!P§ = _loc1_;
            return _loc1_;
         }
         return this.§`!P§;
      }
      
      public function §]!l§(param1:String) : int
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
      
      public function §@!4§(param1:String) : String
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
         return this.§"q§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§"q§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§3!9§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§3!9§ = param1;
      }
      
      public function get §8q§() : Array
      {
         return this.§`!P§;
      }
      
      public function get §"e§() : Array
      {
         return this.§4!=§;
      }
      
      public function set §"e§(param1:Array) : void
      {
         this.§4!=§ = param1;
      }
      
      public function get §7G§() : int
      {
         return this.§9!`§;
      }
      
      public function set §7G§(param1:int) : void
      {
         if(param1 >= 0 && param1 < this.pageIndexes.length)
         {
            this.§9!`§ = param1;
         }
      }
      
      public function get pageIndexes() : Array
      {
         return this.§4]§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         this.§4]§ = param1;
      }
      
      public function §4T§(param1:String, param2:String) : void
      {
         this.§57§[param1] = param2;
      }
      
      public function §?!U§(param1:String) : String
      {
         return this.§57§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§]!a§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§]!a§ = param1;
      }
      
      public function get §]!c§() : String
      {
         return this.§#`§;
      }
      
      public function set §]!c§(param1:String) : void
      {
         this.§#`§ = param1;
      }
      
      public function get §@r§() : String
      {
         return this.§`W§;
      }
      
      public function set §@r§(param1:String) : void
      {
         this.§`W§ = param1;
      }
      
      public function get writtenName() : String
      {
         return this.§=P§;
      }
      
      public function set writtenName(param1:String) : void
      {
         this.§=P§ = param1;
      }
   }
}
