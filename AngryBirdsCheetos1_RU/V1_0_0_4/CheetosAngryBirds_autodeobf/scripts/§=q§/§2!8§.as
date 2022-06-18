package §=q§
{
   import flash.utils.Dictionary;
   
   public class §2!8§
   {
       
      
      private var §>!+§:String = "";
      
      private var mName:String = "";
      
      private var §-!G§:String = "";
      
      private var §;N§:String = "";
      
      private var §2!9§:String = "";
      
      private var § d§:Array = null;
      
      private var §'!O§:int = 0;
      
      private var § j§:Array = null;
      
      private var §#3§:Array;
      
      private var §3H§:Array;
      
      private var § H§:int = 0;
      
      private var §5!,§:Dictionary;
      
      public function §2!8§()
      {
         this.§5!,§ = new Dictionary();
         super();
      }
      
      public function §,Q§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §@!$§(param1:String) : Array
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
      
      public function §1R§(param1:int) : Object
      {
         return this.§#3§[param1];
      }
      
      public function §!!Q§(param1:int) : String
      {
         return this.§3H§[param1];
      }
      
      public function §3!-§(param1:String) : Boolean
      {
         return this.§[!=§().indexOf(param1) != -1;
      }
      
      public function §[!=§() : Array
      {
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(this.§ j§ == null)
         {
            _loc1_ = new Array();
            for each(_loc2_ in this.pageIndexes)
            {
               _loc3_ = this.§@!$§(_loc2_);
               for each(_loc4_ in _loc3_)
               {
                  _loc1_.push(_loc4_);
               }
            }
            this.§ j§ = _loc1_;
            return _loc1_;
         }
         return this.§ j§;
      }
      
      public function §7f§(param1:String) : int
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
      
      public function §8`§(param1:String) : String
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
         return this.§-!G§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§-!G§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§'!O§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§'!O§ = param1;
      }
      
      public function get §5!`§() : Array
      {
         return this.§ j§;
      }
      
      public function get §0^§() : Array
      {
         return this.§#3§;
      }
      
      public function set §0^§(param1:Array) : void
      {
         this.§#3§ = param1;
      }
      
      public function get currentPage() : int
      {
         return this.§ H§;
      }
      
      public function set currentPage(param1:int) : void
      {
         if(param1 >= 0 && param1 < this.pageIndexes.length)
         {
            this.§ H§ = param1;
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
      
      public function §49§(param1:String, param2:String) : void
      {
         this.§5!,§[param1] = param2;
      }
      
      public function §2=§(param1:String) : String
      {
         return this.§5!,§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§3H§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§3H§ = param1;
      }
      
      public function get §5f§() : String
      {
         return this.§;N§;
      }
      
      public function set §5f§(param1:String) : void
      {
         this.§;N§ = param1;
      }
      
      public function get §@!6§() : String
      {
         return this.§2!9§;
      }
      
      public function set §@!6§(param1:String) : void
      {
         this.§2!9§ = param1;
      }
      
      public function get writtenName() : String
      {
         return this.§>!+§;
      }
      
      public function set writtenName(param1:String) : void
      {
         this.§>!+§ = param1;
      }
   }
}
