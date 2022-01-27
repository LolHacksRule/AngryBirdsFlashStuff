package §1E§
{
   import flash.utils.Dictionary;
   
   public class §8P§
   {
       
      
      private var §+"§:String = "";
      
      private var mName:String = "";
      
      private var §,!H§:String = "";
      
      private var §'6§:String = "";
      
      private var §0r§:String = "";
      
      private var §9+§:Array = null;
      
      private var §^Z§:int = 0;
      
      private var §]!M§:Array = null;
      
      private var §^#§:Array;
      
      private var §"U§:Array;
      
      private var §"!E§:int = 0;
      
      private var §#A§:Dictionary;
      
      public function §8P§()
      {
         this.§#A§ = new Dictionary();
         super();
      }
      
      public function §?h§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §case§(param1:String) : Array
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
      
      public function §>K§(param1:int) : Object
      {
         return this.§^#§[param1];
      }
      
      public function §6B§(param1:int) : String
      {
         return this.§"U§[param1];
      }
      
      public function §7k§(param1:String) : Boolean
      {
         return this.§8r§().indexOf(param1) != -1;
      }
      
      public function §8r§() : Array
      {
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(this.§]!M§ == null)
         {
            _loc1_ = new Array();
            for each(_loc2_ in this.pageIndexes)
            {
               _loc3_ = this.§case§(_loc2_);
               for each(_loc4_ in _loc3_)
               {
                  _loc1_.push(_loc4_);
               }
            }
            this.§]!M§ = _loc1_;
            return _loc1_;
         }
         return this.§]!M§;
      }
      
      public function §=!-§(param1:String) : int
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
      
      public function §@!8§(param1:String) : String
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
         return this.§,!H§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§,!H§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§^Z§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§^Z§ = param1;
      }
      
      public function get §`C§() : Array
      {
         return this.§]!M§;
      }
      
      public function get §]K§() : Array
      {
         return this.§^#§;
      }
      
      public function set §]K§(param1:Array) : void
      {
         this.§^#§ = param1;
      }
      
      public function get §`!C§() : int
      {
         return this.§"!E§;
      }
      
      public function set §`!C§(param1:int) : void
      {
         if(param1 >= 0 && param1 < this.pageIndexes.length)
         {
            this.§"!E§ = param1;
         }
      }
      
      public function get pageIndexes() : Array
      {
         return this.§9+§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         this.§9+§ = param1;
      }
      
      public function §3d§(param1:String, param2:String) : void
      {
         this.§#A§[param1] = param2;
      }
      
      public function §68§(param1:String) : String
      {
         return this.§#A§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§"U§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§"U§ = param1;
      }
      
      public function get §6!>§() : String
      {
         return this.§'6§;
      }
      
      public function set §6!>§(param1:String) : void
      {
         this.§'6§ = param1;
      }
      
      public function get §;!K§() : String
      {
         return this.§0r§;
      }
      
      public function set §;!K§(param1:String) : void
      {
         this.§0r§ = param1;
      }
      
      public function get writtenName() : String
      {
         return this.§+"§;
      }
      
      public function set writtenName(param1:String) : void
      {
         this.§+"§ = param1;
      }
   }
}
