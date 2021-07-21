package §-!0§
{
   import flash.utils.Dictionary;
   
   public class §4!N§
   {
       
      
      private var §=f§:String = "";
      
      private var mName:String = "";
      
      private var §]M§:String = "";
      
      private var §9!9§:String = "";
      
      private var §^<§:String = "";
      
      private var §%!U§:Array = null;
      
      private var §'!R§:int = 0;
      
      private var §"n§:Array = null;
      
      private var §[u§:Array;
      
      private var §%U§:Array;
      
      private var §%<§:int = 0;
      
      private var §9!5§:Dictionary;
      
      public function §4!N§()
      {
         this.§9!5§ = new Dictionary();
         super();
      }
      
      public function §=!?§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §1S§(param1:String) : Array
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
      
      public function §6!%§(param1:int) : Object
      {
         return this.§[u§[param1];
      }
      
      public function §,!X§(param1:int) : String
      {
         return this.§%U§[param1];
      }
      
      public function §,!k§(param1:String) : Boolean
      {
         return this.§ >§().indexOf(param1) != -1;
      }
      
      public function § >§() : Array
      {
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(this.§"n§ == null)
         {
            _loc1_ = new Array();
            for each(_loc2_ in this.pageIndexes)
            {
               _loc3_ = this.§1S§(_loc2_);
               for each(_loc4_ in _loc3_)
               {
                  _loc1_.push(_loc4_);
               }
            }
            this.§"n§ = _loc1_;
            return _loc1_;
         }
         return this.§"n§;
      }
      
      public function §#;§(param1:String) : int
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
      
      public function §`!L§(param1:String) : String
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
         return this.§]M§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§]M§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§'!R§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§'!R§ = param1;
      }
      
      public function get levels() : Array
      {
         return this.§"n§;
      }
      
      public function get §2!f§() : Array
      {
         return this.§[u§;
      }
      
      public function set §2!f§(param1:Array) : void
      {
         this.§[u§ = param1;
      }
      
      public function get §2!%§() : int
      {
         return this.§%<§;
      }
      
      public function set §2!%§(param1:int) : void
      {
         if(param1 >= 0 && param1 < this.pageIndexes.length)
         {
            this.§%<§ = param1;
         }
      }
      
      public function get pageIndexes() : Array
      {
         return this.§%!U§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         this.§%!U§ = param1;
      }
      
      public function §%!'§(param1:String, param2:String) : void
      {
         this.§9!5§[param1] = param2;
      }
      
      public function §8!Z§(param1:String) : String
      {
         return this.§9!5§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§%U§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§%U§ = param1;
      }
      
      public function get §!!6§() : String
      {
         return this.§9!9§;
      }
      
      public function set §!!6§(param1:String) : void
      {
         this.§9!9§ = param1;
      }
      
      public function get §1!§() : String
      {
         return this.§^<§;
      }
      
      public function set §1!§(param1:String) : void
      {
         this.§^<§ = param1;
      }
      
      public function get writtenName() : String
      {
         return this.§=f§;
      }
      
      public function set writtenName(param1:String) : void
      {
         this.§=f§ = param1;
      }
   }
}
