package §>!C§
{
   import flash.utils.Dictionary;
   
   public class §1$§
   {
       
      
      private var §^h§:String = "";
      
      private var mName:String = "";
      
      private var §4g§:String = "";
      
      private var §>!A§:String = "";
      
      private var §@!@§:String = "";
      
      private var §3!§:Array = null;
      
      private var §0!D§:int = 0;
      
      private var §=!7§:Array = null;
      
      private var §#4§:Array;
      
      private var §6q§:Array;
      
      private var §^y§:int = 0;
      
      private var § try§:Dictionary;
      
      public function §1$§()
      {
         this.§ try§ = new Dictionary();
         super();
      }
      
      public function §3!+§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §'T§(param1:String) : Array
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
      
      public function §?h§(param1:int) : Object
      {
         return this.§#4§[param1];
      }
      
      public function §!f§(param1:int) : String
      {
         return this.§6q§[param1];
      }
      
      public function §1! §(param1:String) : Boolean
      {
         return this.§2!"§().indexOf(param1) != -1;
      }
      
      public function §2!"§() : Array
      {
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(this.§=!7§ == null)
         {
            _loc1_ = new Array();
            for each(_loc2_ in this.pageIndexes)
            {
               _loc3_ = this.§'T§(_loc2_);
               for each(_loc4_ in _loc3_)
               {
                  _loc1_.push(_loc4_);
               }
            }
            this.§=!7§ = _loc1_;
            return _loc1_;
         }
         return this.§=!7§;
      }
      
      public function § B§(param1:String) : int
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
      
      public function §"p§(param1:String) : String
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
         return this.§4g§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§4g§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§0!D§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§0!D§ = param1;
      }
      
      public function get §var§() : Array
      {
         return this.§=!7§;
      }
      
      public function get §;!-§() : Array
      {
         return this.§#4§;
      }
      
      public function set §;!-§(param1:Array) : void
      {
         this.§#4§ = param1;
      }
      
      public function get §8B§() : int
      {
         return this.§^y§;
      }
      
      public function set §8B§(param1:int) : void
      {
         if(param1 >= 0 && param1 < this.pageIndexes.length)
         {
            this.§^y§ = param1;
         }
      }
      
      public function get pageIndexes() : Array
      {
         return this.§3!§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         this.§3!§ = param1;
      }
      
      public function §8H§(param1:String, param2:String) : void
      {
         this.§ try§[param1] = param2;
      }
      
      public function §]!3§(param1:String) : String
      {
         return this.§ try§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§6q§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§6q§ = param1;
      }
      
      public function get §,"§() : String
      {
         return this.§>!A§;
      }
      
      public function set §,"§(param1:String) : void
      {
         this.§>!A§ = param1;
      }
      
      public function get §;!%§() : String
      {
         return this.§@!@§;
      }
      
      public function set §;!%§(param1:String) : void
      {
         this.§@!@§ = param1;
      }
      
      public function get writtenName() : String
      {
         return this.§^h§;
      }
      
      public function set writtenName(param1:String) : void
      {
         this.§^h§ = param1;
      }
   }
}
