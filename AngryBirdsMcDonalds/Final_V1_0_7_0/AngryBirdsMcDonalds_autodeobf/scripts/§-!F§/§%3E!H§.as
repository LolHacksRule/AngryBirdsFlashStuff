package §-!F§
{
   import flash.utils.Dictionary;
   
   public class §>!H§
   {
       
      
      private var §`!I§:String = "";
      
      private var mName:String = "";
      
      private var §!!#§:String = "";
      
      private var §7!Q§:String = "";
      
      private var §@Y§:String = "";
      
      private var §;!#§:Array = null;
      
      private var §&!=§:int = 0;
      
      private var §1!J§:Array = null;
      
      private var §^!Q§:Array;
      
      private var § !-§:Array;
      
      private var §@=§:int = 0;
      
      private var §?,§:Dictionary;
      
      public function §>!H§()
      {
         this.§?,§ = new Dictionary();
         super();
      }
      
      public function §!!5§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §,!K§(param1:String) : Array
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
      
      public function §%§(param1:int) : Object
      {
         return this.§^!Q§[param1];
      }
      
      public function §3!d§(param1:int) : String
      {
         return this.§ !-§[param1];
      }
      
      public function §>G§(param1:String) : Boolean
      {
         return this.§^y§().indexOf(param1) != -1;
      }
      
      public function §^y§() : Array
      {
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(this.§1!J§ == null)
         {
            _loc1_ = new Array();
            for each(_loc2_ in this.pageIndexes)
            {
               _loc3_ = this.§,!K§(_loc2_);
               for each(_loc4_ in _loc3_)
               {
                  _loc1_.push(_loc4_);
               }
            }
            this.§1!J§ = _loc1_;
            return _loc1_;
         }
         return this.§1!J§;
      }
      
      public function §6!U§(param1:String) : int
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
      
      public function §+G§(param1:String) : String
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
         return this.§!!#§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§!!#§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§&!=§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§&!=§ = param1;
      }
      
      public function get §8A§() : Array
      {
         return this.§1!J§;
      }
      
      public function get §0J§() : Array
      {
         return this.§^!Q§;
      }
      
      public function set §0J§(param1:Array) : void
      {
         this.§^!Q§ = param1;
      }
      
      public function get §#U§() : int
      {
         return this.§@=§;
      }
      
      public function set §#U§(param1:int) : void
      {
         if(param1 >= 0 && param1 < this.pageIndexes.length)
         {
            this.§@=§ = param1;
         }
      }
      
      public function get pageIndexes() : Array
      {
         return this.§;!#§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         this.§;!#§ = param1;
      }
      
      public function §"!5§(param1:String, param2:String) : void
      {
         this.§?,§[param1] = param2;
      }
      
      public function §6f§(param1:String) : String
      {
         return this.§?,§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§ !-§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§ !-§ = param1;
      }
      
      public function get §@!O§() : String
      {
         return this.§7!Q§;
      }
      
      public function set §@!O§(param1:String) : void
      {
         this.§7!Q§ = param1;
      }
      
      public function get §8!l§() : String
      {
         return this.§@Y§;
      }
      
      public function set §8!l§(param1:String) : void
      {
         this.§@Y§ = param1;
      }
      
      public function get writtenName() : String
      {
         return this.§`!I§;
      }
      
      public function set writtenName(param1:String) : void
      {
         this.§`!I§ = param1;
      }
   }
}
