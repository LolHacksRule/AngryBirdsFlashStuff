package §6!&§
{
   import flash.utils.Dictionary;
   
   public class §68§
   {
       
      
      private var §>"8§:String = "";
      
      private var mName:String = "";
      
      private var §9!J§:String = "";
      
      private var §+!D§:String = "";
      
      private var §'!D§:String = "";
      
      private var §[!§:Array = null;
      
      private var §;!M§:int = 0;
      
      private var §@!>§:Array = null;
      
      private var §-x§:Array;
      
      private var §[P§:Array;
      
      private var §]!r§:int = 0;
      
      private var §61§:Dictionary;
      
      public function §68§()
      {
         this.§61§ = new Dictionary();
         super();
      }
      
      public function §#"0§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §#O§(param1:String) : Array
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
      
      public function §+!0§(param1:int) : Object
      {
         return this.§-x§[param1];
      }
      
      public function §10§(param1:int) : String
      {
         return this.§[P§[param1];
      }
      
      public function §@"3§(param1:String) : Boolean
      {
         return this.§]!C§().indexOf(param1) != -1;
      }
      
      public function §]!C§() : Array
      {
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(this.§@!>§ == null)
         {
            _loc1_ = new Array();
            for each(_loc2_ in this.pageIndexes)
            {
               _loc3_ = this.§#O§(_loc2_);
               for each(_loc4_ in _loc3_)
               {
                  _loc1_.push(_loc4_);
               }
            }
            this.§@!>§ = _loc1_;
            return _loc1_;
         }
         return this.§@!>§;
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
      
      public function §+5§(param1:String) : String
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
         return this.§9!J§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§9!J§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§;!M§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§;!M§ = param1;
      }
      
      public function get §2b§() : Array
      {
         return this.§@!>§;
      }
      
      public function get §%!Z§() : Array
      {
         return this.§-x§;
      }
      
      public function set §%!Z§(param1:Array) : void
      {
         this.§-x§ = param1;
      }
      
      public function get §#z§() : int
      {
         return this.§]!r§;
      }
      
      public function set §#z§(param1:int) : void
      {
         if(param1 >= 0 && param1 < this.pageIndexes.length)
         {
            this.§]!r§ = param1;
         }
      }
      
      public function get pageIndexes() : Array
      {
         return this.§[!§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         this.§[!§ = param1;
      }
      
      public function §<r§(param1:String, param2:String) : void
      {
         this.§61§[param1] = param2;
      }
      
      public function §>1§(param1:String) : String
      {
         return this.§61§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§[P§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§[P§ = param1;
      }
      
      public function get §[!]§() : String
      {
         return this.§+!D§;
      }
      
      public function set §[!]§(param1:String) : void
      {
         this.§+!D§ = param1;
      }
      
      public function get §9H§() : String
      {
         return this.§'!D§;
      }
      
      public function set §9H§(param1:String) : void
      {
         this.§'!D§ = param1;
      }
      
      public function get writtenName() : String
      {
         return this.§>"8§;
      }
      
      public function set writtenName(param1:String) : void
      {
         this.§>"8§ = param1;
      }
   }
}
