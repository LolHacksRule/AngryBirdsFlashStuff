package §8!e§
{
   import §%f§.§ n§;
   
   public class §,!M§
   {
       
      
      protected var §;1§:String = "";
      
      protected var mName:String = "";
      
      protected var §48§:String = "";
      
      protected var §&!G§:String = "";
      
      protected var §2,§:String = "";
      
      protected var §5!4§:Vector.<int> = null;
      
      protected var §8t§:int = 0;
      
      protected var §!!g§:Array = null;
      
      protected var §-q§:Array;
      
      protected var §[1§:Array;
      
      protected var §8P§:int = 0;
      
      protected var §`#§:§ n§;
      
      protected var §"S§:Boolean = false;
      
      protected var §[!b§:Boolean = false;
      
      protected var §[!E§:§ n§;
      
      public function §,!M§(param1:Array)
      {
         var _loc2_:String = null;
         this.§`#§ = new § n§();
         this.§[!E§ = new § n§();
         super();
         if(param1)
         {
            this.§!!g§ = [];
            for each(_loc2_ in param1)
            {
               this.§!!g§.push(_loc2_.toLowerCase());
            }
         }
      }
      
      public function §<s§() : int
      {
         return this.§`!=§ * this.levelsPerPage;
      }
      
      public function §+"$§(param1:String) : int
      {
         this.§0%§();
         return int(this.§!!g§.indexOf(param1));
      }
      
      public function §2!>§(param1:int) : String
      {
         this.§0%§();
         if(param1 >= 0 && param1 < this.§!!g§.length)
         {
            return this.§!!g§[param1];
         }
         return null;
      }
      
      public function §-[§(param1:int) : Object
      {
         return this.§-q§[param1];
      }
      
      public function §?!0§(param1:int) : String
      {
         return this.§[1§[param1];
      }
      
      public function §9!=§(param1:String) : Boolean
      {
         this.§0%§();
         return this.§!!g§.indexOf(param1) != -1;
      }
      
      public function §!e§(param1:String) : Boolean
      {
         this.§0%§();
         if(this.§!!g§.indexOf(param1) >= 0)
         {
            return false;
         }
         this.§!!g§.push(param1);
         return true;
      }
      
      public function §%!N§(param1:int) : Array
      {
         var _loc3_:int = 0;
         var _loc4_:String = null;
         this.§0%§();
         var _loc2_:Array = new Array();
         if(param1 >= 0 && param1 < this.§`!=§)
         {
            _loc3_ = 0;
            while(_loc3_ < this.levelsPerPage)
            {
               _loc4_ = this.§!!g§[_loc3_ + param1 * this.levelsPerPage];
               _loc2_.push(_loc4_);
               _loc3_++;
            }
         }
         return _loc2_;
      }
      
      protected function getDefaultLevelNamesForPage(param1:int) : Array
      {
         var _loc4_:String = null;
         var _loc2_:Array = [];
         var _loc3_:int = 0;
         while(_loc3_ < this.levelsPerPage)
         {
            _loc4_ = param1 + "-" + (_loc3_ + 1);
            _loc2_.push(_loc4_);
            _loc3_++;
         }
         return _loc2_;
      }
      
      private function §0%§() : void
      {
         var _loc1_:Array = null;
         var _loc2_:int = 0;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(this.§!!g§ && this.§!!g§.length < this.§<s§())
         {
            throw new Error("Not enough level names defined for episode: " + this.§!!g§.length + " names, " + this.§<s§() + " levels");
         }
         if(this.§!!g§ == null)
         {
            _loc1_ = new Array();
            for each(_loc2_ in this.§5!4§)
            {
               _loc3_ = this.getDefaultLevelNamesForPage(_loc2_);
               for each(_loc4_ in _loc3_)
               {
                  _loc1_.push(_loc4_);
               }
            }
            this.§!!g§ = _loc1_;
         }
      }
      
      public function §7""§() : Array
      {
         this.§0%§();
         return this.§!!g§.concat();
      }
      
      public function §9!%§(param1:String) : int
      {
         var _loc2_:int = this.§!!g§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            return _loc2_ / this.§8t§;
         }
         return -1;
      }
      
      public function §3"2§(param1:String) : int
      {
         var _loc2_:int = this.§!!g§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            return _loc2_ % this.§8t§;
         }
         return -1;
      }
      
      public function getNextLevelId(param1:String) : String
      {
         this.§0%§();
         var _loc2_:int = this.§+"$§(param1);
         if(_loc2_ >= 0 && _loc2_ < this.§!!g§.length - 1)
         {
            return this.§!!g§[_loc2_ + 1];
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
         return this.§48§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§48§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§8t§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§8t§ = param1;
      }
      
      public function set §&"!§(param1:Array) : void
      {
         this.§-q§ = param1;
      }
      
      public function get currentPage() : int
      {
         return this.§8P§;
      }
      
      public function set currentPage(param1:int) : void
      {
         if(param1 >= 0 && param1 < this.§`!=§)
         {
            this.§8P§ = param1;
         }
      }
      
      public function get §`!=§() : int
      {
         return this.§5!4§.length;
      }
      
      public function getPageIndex(param1:int) : int
      {
         if(param1 >= 0 && param1 < this.§`!=§)
         {
            return this.§5!4§[param1];
         }
         return -1;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         var _loc2_:String = null;
         this.§5!4§ = new Vector.<int>();
         for each(_loc2_ in param1)
         {
            this.§5!4§.push(parseInt(_loc2_));
         }
      }
      
      public function §["7§(param1:String, param2:String) : void
      {
         this.§`#§[param1] = param2;
      }
      
      public function getCutScene(param1:String) : String
      {
         return this.§`#§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§[1§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§[1§ = param1;
      }
      
      public function get §2"-§() : String
      {
         return this.§&!G§;
      }
      
      public function set §2"-§(param1:String) : void
      {
         this.§&!G§ = param1;
      }
      
      public function get §=!`§() : String
      {
         return this.§2,§;
      }
      
      public function set §=!`§(param1:String) : void
      {
         this.§2,§ = param1;
      }
      
      public function get writtenName() : String
      {
         return this.§;1§;
      }
      
      public function set writtenName(param1:String) : void
      {
         this.§;1§ = param1;
      }
      
      public function §#!J§(param1:String, param2:§!!E§) : void
      {
         this.§[!E§[param1] = param2;
      }
      
      public function §%F§(param1:String) : §!!E§
      {
         return this.§[!E§[param1];
      }
      
      public function get §,t§() : Boolean
      {
         return this.§"S§;
      }
      
      public function set §,t§(param1:Boolean) : void
      {
         this.§"S§ = param1;
      }
      
      public function get §-!q§() : Boolean
      {
         return this.§[!b§;
      }
      
      public function set §-!q§(param1:Boolean) : void
      {
         this.§[!b§ = param1;
      }
   }
}
