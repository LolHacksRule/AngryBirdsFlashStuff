package §#b§
{
   import flash.utils.Dictionary;
   
   public class §%Y§
   {
       
      
      private var § get§:String = "";
      
      private var mName:String = "";
      
      private var §[!>§:String = "";
      
      private var §+m§:String = "";
      
      private var §@`§:String = "";
      
      private var §"x§:Array = null;
      
      private var §'H§:int = 0;
      
      private var §"o§:Array = null;
      
      private var §'! §:Array;
      
      private var §8b§:Array;
      
      private var §8!I§:int = 0;
      
      private var §"!6§:Dictionary;
      
      public function §%Y§()
      {
         this.§"!6§ = new Dictionary();
         super();
      }
      
      public function §7G§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §5Z§(param1:String) : Array
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
      
      public function §>%§(param1:int) : Object
      {
         return this.§'! §[param1];
      }
      
      public function §7!4§(param1:int) : String
      {
         return this.§8b§[param1];
      }
      
      public function §5c§(param1:String) : Boolean
      {
         return this.§"V§().indexOf(param1) != -1;
      }
      
      public function §"V§() : Array
      {
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(this.§"o§ == null)
         {
            _loc1_ = new Array();
            for each(_loc2_ in this.pageIndexes)
            {
               _loc3_ = this.§5Z§(_loc2_);
               for each(_loc4_ in _loc3_)
               {
                  _loc1_.push(_loc4_);
               }
            }
            this.§"o§ = _loc1_;
            return _loc1_;
         }
         return this.§"o§;
      }
      
      public function §&!X§(param1:String) : int
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
      
      public function §8!<§(param1:String) : String
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
         return this.§[!>§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§[!>§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§'H§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§'H§ = param1;
      }
      
      public function get §^j§() : Array
      {
         return this.§"o§;
      }
      
      public function get § ! §() : Array
      {
         return this.§'! §;
      }
      
      public function set § ! §(param1:Array) : void
      {
         this.§'! § = param1;
      }
      
      public function get currentPage() : int
      {
         return this.§8!I§;
      }
      
      public function set currentPage(param1:int) : void
      {
         if(param1 >= 0 && param1 < this.pageIndexes.length)
         {
            this.§8!I§ = param1;
         }
      }
      
      public function get pageIndexes() : Array
      {
         return this.§"x§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         this.§"x§ = param1;
      }
      
      public function §?!T§(param1:String, param2:String) : void
      {
         this.§"!6§[param1] = param2;
      }
      
      public function §"!#§(param1:String) : String
      {
         return this.§"!6§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§8b§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§8b§ = param1;
      }
      
      public function get §;j§() : String
      {
         return this.§+m§;
      }
      
      public function set §;j§(param1:String) : void
      {
         this.§+m§ = param1;
      }
      
      public function get §2V§() : String
      {
         return this.§@`§;
      }
      
      public function set §2V§(param1:String) : void
      {
         this.§@`§ = param1;
      }
      
      public function get writtenName() : String
      {
         return this.§ get§;
      }
      
      public function set writtenName(param1:String) : void
      {
         this.§ get§ = param1;
      }
   }
}
