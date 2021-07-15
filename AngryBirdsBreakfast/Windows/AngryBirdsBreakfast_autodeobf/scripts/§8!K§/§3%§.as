package §8!K§
{
   import §"n§.§<!Z§;
   
   public class §3%§
   {
       
      
      protected var §?o§:String = "";
      
      protected var mName:String = "";
      
      protected var §`!p§:String = "";
      
      protected var §4",§:String = "";
      
      protected var §?k§:String = "";
      
      protected var §%!e§:Vector.<int> = null;
      
      protected var §^!c§:int = 0;
      
      protected var §%f§:Array = null;
      
      protected var §"§:Array;
      
      protected var §7W§:Array;
      
      protected var §6!x§:int = 0;
      
      protected var §7!,§:§<!Z§;
      
      protected var §^!I§:Boolean = false;
      
      protected var dynamic:Boolean = false;
      
      protected var §>s§:§<!Z§;
      
      public function §3%§(param1:Array)
      {
         var _loc2_:String = null;
         this.§7!,§ = new §<!Z§();
         this.§>s§ = new §<!Z§();
         super();
         if(param1)
         {
            this.§%f§ = [];
            for each(_loc2_ in param1)
            {
               this.§%f§.push(_loc2_.toLowerCase());
            }
         }
      }
      
      public function §7!f§() : int
      {
         return this.§4!5§ * this.levelsPerPage;
      }
      
      public function §#n§(param1:String) : int
      {
         this.§-"'§();
         return int(this.§%f§.indexOf(param1));
      }
      
      public function §;!l§(param1:int) : String
      {
         this.§-"'§();
         if(param1 >= 0 && param1 < this.§%f§.length)
         {
            return this.§%f§[param1];
         }
         return null;
      }
      
      public function §,U§(param1:int) : Object
      {
         return this.§"§[param1];
      }
      
      public function §1!#§(param1:int) : String
      {
         return this.§7W§[param1];
      }
      
      public function §]"-§(param1:String) : Boolean
      {
         this.§-"'§();
         return this.§%f§.indexOf(param1) != -1;
      }
      
      public function §,!"§(param1:String) : Boolean
      {
         this.§-"'§();
         if(this.§%f§.indexOf(param1) >= 0)
         {
            return false;
         }
         this.§%f§.push(param1);
         return true;
      }
      
      public function §>!N§(param1:int) : Array
      {
         var _loc3_:int = 0;
         var _loc4_:String = null;
         this.§-"'§();
         var _loc2_:Array = new Array();
         if(param1 >= 0 && param1 < this.§4!5§)
         {
            _loc3_ = 0;
            while(_loc3_ < this.levelsPerPage)
            {
               _loc4_ = this.§%f§[_loc3_ + param1 * this.levelsPerPage];
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
      
      private function §-"'§() : void
      {
         var _loc1_:Array = null;
         var _loc2_:int = 0;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(this.§%f§ && this.§%f§.length < this.§7!f§())
         {
            throw new Error("Not enough level names defined for episode: " + this.§%f§.length + " names, " + this.§7!f§() + " levels");
         }
         if(this.§%f§ == null)
         {
            _loc1_ = new Array();
            for each(_loc2_ in this.§%!e§)
            {
               _loc3_ = this.getDefaultLevelNamesForPage(_loc2_);
               for each(_loc4_ in _loc3_)
               {
                  _loc1_.push(_loc4_);
               }
            }
            this.§%f§ = _loc1_;
         }
      }
      
      public function §@!8§() : Array
      {
         this.§-"'§();
         return this.§%f§.concat();
      }
      
      public function §@e§(param1:String) : int
      {
         var _loc2_:int = this.§%f§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            return _loc2_ / this.§^!c§;
         }
         return -1;
      }
      
      public function §7!J§(param1:String) : int
      {
         var _loc2_:int = this.§%f§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            return _loc2_ % this.§^!c§;
         }
         return -1;
      }
      
      public function getNextLevelId(param1:String) : String
      {
         this.§-"'§();
         var _loc2_:int = this.§#n§(param1);
         if(_loc2_ >= 0 && _loc2_ < this.§%f§.length - 1)
         {
            return this.§%f§[_loc2_ + 1];
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
         return this.§`!p§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§`!p§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§^!c§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§^!c§ = param1;
      }
      
      public function set §&!<§(param1:Array) : void
      {
         this.§"§ = param1;
      }
      
      public function get currentPage() : int
      {
         return this.§6!x§;
      }
      
      public function set currentPage(param1:int) : void
      {
         if(param1 >= 0 && param1 < this.§4!5§)
         {
            this.§6!x§ = param1;
         }
      }
      
      public function get §4!5§() : int
      {
         return this.§%!e§.length;
      }
      
      public function getPageIndex(param1:int) : int
      {
         if(param1 >= 0 && param1 < this.§4!5§)
         {
            return this.§%!e§[param1];
         }
         return -1;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         var _loc2_:String = null;
         this.§%!e§ = new Vector.<int>();
         for each(_loc2_ in param1)
         {
            this.§%!e§.push(parseInt(_loc2_));
         }
      }
      
      public function §23§(param1:String, param2:String) : void
      {
         this.§7!,§[param1] = param2;
      }
      
      public function getCutScene(param1:String) : String
      {
         return this.§7!,§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§7W§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§7W§ = param1;
      }
      
      public function get §&!p§() : String
      {
         return this.§4",§;
      }
      
      public function set §&!p§(param1:String) : void
      {
         this.§4",§ = param1;
      }
      
      public function get §@"%§() : String
      {
         return this.§?k§;
      }
      
      public function set §@"%§(param1:String) : void
      {
         this.§?k§ = param1;
      }
      
      public function get writtenName() : String
      {
         return this.§?o§;
      }
      
      public function set writtenName(param1:String) : void
      {
         this.§?o§ = param1;
      }
      
      public function §^8§(param1:String, param2:§5!0§) : void
      {
         this.§>s§[param1] = param2;
      }
      
      public function §&t§(param1:String) : §5!0§
      {
         return this.§>s§[param1];
      }
      
      public function get §3F§() : Boolean
      {
         return this.§^!I§;
      }
      
      public function set §3F§(param1:Boolean) : void
      {
         this.§^!I§ = param1;
      }
      
      public function get §9>§() : Boolean
      {
         return this.dynamic;
      }
      
      public function set §9>§(param1:Boolean) : void
      {
         this.dynamic = param1;
      }
   }
}
