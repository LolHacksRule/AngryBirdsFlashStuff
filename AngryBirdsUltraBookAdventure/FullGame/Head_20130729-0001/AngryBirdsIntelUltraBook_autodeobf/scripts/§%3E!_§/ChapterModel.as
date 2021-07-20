package §>!_§
{
   import flash.utils.Dictionary;
   
   public class ChapterModel
   {
       
      
      private var §"!g§:String = "";
      
      private var mName:String = "";
      
      private var §'2§:String = "";
      
      private var §1j§:String = "";
      
      private var §5+§:String = "";
      
      private var §#!H§:Array = null;
      
      private var §[T§:int = 0;
      
      private var §;!B§:Array = null;
      
      private var §';§:Array;
      
      private var §4h§:Array;
      
      private var §]Y§:int = 0;
      
      private var §;>§:Dictionary;
      
      public function ChapterModel()
      {
         this.§;>§ = new Dictionary();
         super();
      }
      
      public function §=5§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §2!<§(param1:String) : Array
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
      
      public function §]!>§(param1:int) : Object
      {
         return this.§';§[param1];
      }
      
      public function §-f§(param1:int) : String
      {
         return this.§4h§[param1];
      }
      
      public function §,!B§(param1:String) : Boolean
      {
         return this.§"4§().indexOf(param1) != -1;
      }
      
      public function §"4§() : Array
      {
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(this.§;!B§ == null)
         {
            _loc1_ = new Array();
            for each(_loc2_ in this.pageIndexes)
            {
               _loc3_ = this.§2!<§(_loc2_);
               for each(_loc4_ in _loc3_)
               {
                  _loc1_.push(_loc4_);
               }
            }
            this.§;!B§ = _loc1_;
            return _loc1_;
         }
         return this.§;!B§;
      }
      
      public function §1k§(param1:String) : int
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
      
      public function §8!I§(param1:String) : String
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
         return this.§'2§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§'2§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§[T§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§[T§ = param1;
      }
      
      public function get levels() : Array
      {
         return this.§;!B§;
      }
      
      public function get §"K§() : Array
      {
         return this.§';§;
      }
      
      public function set §"K§(param1:Array) : void
      {
         this.§';§ = param1;
      }
      
      public function get §0N§() : int
      {
         return this.§]Y§;
      }
      
      public function set §0N§(param1:int) : void
      {
         if(param1 >= 0 && param1 < this.pageIndexes.length)
         {
            this.§]Y§ = param1;
         }
      }
      
      public function get pageIndexes() : Array
      {
         return this.§#!H§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         this.§#!H§ = param1;
      }
      
      public function §-!f§(param1:String, param2:String) : void
      {
         this.§;>§[param1] = param2;
      }
      
      public function §+B§(param1:String) : String
      {
         return this.§;>§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§4h§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§4h§ = param1;
      }
      
      public function get §=g§() : String
      {
         return this.§1j§;
      }
      
      public function set §=g§(param1:String) : void
      {
         this.§1j§ = param1;
      }
      
      public function get §>3§() : String
      {
         return this.§5+§;
      }
      
      public function set §>3§(param1:String) : void
      {
         this.§5+§ = param1;
      }
      
      public function get writtenName() : String
      {
         return this.§"!g§;
      }
      
      public function set writtenName(param1:String) : void
      {
         this.§"!g§ = param1;
      }
   }
}
