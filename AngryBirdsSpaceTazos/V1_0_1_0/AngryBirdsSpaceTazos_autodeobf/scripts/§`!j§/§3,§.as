package §`!j§
{
   import § !Y§.§[!%§;
   
   public class §3,§
   {
       
      
      private var §,!G§:String = "";
      
      private var mName:String = "";
      
      private var §?L§:String = "";
      
      private var §^3§:String = "";
      
      private var §4%§:String = "";
      
      private var §>M§:Vector.<int> = null;
      
      private var §%%§:int = 0;
      
      private var §%"4§:Array = null;
      
      private var §1-§:Array;
      
      private var §]!F§:Array;
      
      private var §@!-§:int = 0;
      
      private var §"!e§:§[!%§;
      
      private var §>!h§:Boolean = false;
      
      private var §`!c§:Boolean = false;
      
      protected var §0i§:§[!%§;
      
      public function §3,§(param1:Array)
      {
         var _loc2_:String = null;
         this.§"!e§ = new §[!%§();
         this.§0i§ = new §[!%§();
         super();
         if(param1)
         {
            this.§%"4§ = [];
            for each(_loc2_ in param1)
            {
               this.§%"4§.push(_loc2_.toLowerCase());
            }
         }
      }
      
      public function §^!-§() : int
      {
         return this.§`;§ * this.levelsPerPage;
      }
      
      public function §-!;§(param1:String) : int
      {
         this.§@",§();
         return int(this.§%"4§.indexOf(param1));
      }
      
      public function §=!U§(param1:int) : String
      {
         this.§@",§();
         if(param1 >= 0 && param1 < this.§%"4§.length)
         {
            return this.§%"4§[param1];
         }
         return null;
      }
      
      public function §<!n§(param1:int) : Object
      {
         return this.§1-§[param1];
      }
      
      public function §,"2§(param1:int) : String
      {
         return this.§]!F§[param1];
      }
      
      public function §[9§(param1:String) : Boolean
      {
         this.§@",§();
         return this.§%"4§.indexOf(param1) != -1;
      }
      
      public function §`!x§(param1:int) : Array
      {
         var _loc3_:int = 0;
         var _loc4_:String = null;
         this.§@",§();
         var _loc2_:Array = new Array();
         if(param1 >= 0 && param1 < this.§`;§)
         {
            _loc3_ = 0;
            while(_loc3_ < this.levelsPerPage)
            {
               _loc4_ = this.§%"4§[_loc3_ + param1 * this.levelsPerPage];
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
            _loc4_ = "level" + param1 + "-" + (_loc3_ + 1);
            _loc2_.push(_loc4_);
            _loc3_++;
         }
         return _loc2_;
      }
      
      private function §@",§() : void
      {
         var _loc1_:Array = null;
         var _loc2_:int = 0;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(this.§%"4§ && this.§%"4§.length < this.§^!-§())
         {
            throw new Error("Not enough level names defined for episode: " + this.§%"4§.length + " names, " + this.§^!-§() + " levels");
         }
         if(this.§%"4§ == null)
         {
            _loc1_ = new Array();
            for each(_loc2_ in this.§>M§)
            {
               _loc3_ = this.getDefaultLevelNamesForPage(_loc2_);
               for each(_loc4_ in _loc3_)
               {
                  _loc1_.push(_loc4_);
               }
            }
            this.§%"4§ = _loc1_;
         }
      }
      
      public function §9"<§() : Array
      {
         this.§@",§();
         return this.§%"4§.concat();
      }
      
      public function §'!f§(param1:String) : int
      {
         var _loc2_:int = this.§%"4§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            return _loc2_ / this.§%%§;
         }
         return -1;
      }
      
      public function §"@§(param1:String) : int
      {
         var _loc2_:int = this.§%"4§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            return _loc2_ % this.§%%§;
         }
         return -1;
      }
      
      public function getNextLevelId(param1:String) : String
      {
         this.§@",§();
         var _loc2_:int = this.§-!;§(param1);
         if(_loc2_ >= 0 && _loc2_ < this.§%"4§.length - 1)
         {
            return this.§%"4§[_loc2_ + 1];
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
         return this.§?L§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§?L§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§%%§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§%%§ = param1;
      }
      
      public function set §9@§(param1:Array) : void
      {
         this.§1-§ = param1;
      }
      
      public function get currentPage() : int
      {
         return this.§@!-§;
      }
      
      public function set currentPage(param1:int) : void
      {
         if(param1 >= 0 && param1 < this.§`;§)
         {
            this.§@!-§ = param1;
         }
      }
      
      public function get §`;§() : int
      {
         return this.§>M§.length;
      }
      
      public function getPageIndex(param1:int) : int
      {
         if(param1 >= 0 && param1 < this.§`;§)
         {
            return this.§>M§[param1];
         }
         return -1;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         var _loc2_:String = null;
         this.§>M§ = new Vector.<int>();
         for each(_loc2_ in param1)
         {
            this.§>M§.push(parseInt(_loc2_));
         }
      }
      
      public function § z§(param1:String, param2:String) : void
      {
         this.§"!e§[param1] = param2;
      }
      
      public function getCutScene(param1:String) : String
      {
         return this.§"!e§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§]!F§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§]!F§ = param1;
      }
      
      public function get §[! §() : String
      {
         return this.§^3§;
      }
      
      public function set §[! §(param1:String) : void
      {
         this.§^3§ = param1;
      }
      
      public function get §`!]§() : String
      {
         return this.§4%§;
      }
      
      public function set §`!]§(param1:String) : void
      {
         this.§4%§ = param1;
      }
      
      public function get writtenName() : String
      {
         return this.§,!G§;
      }
      
      public function set writtenName(param1:String) : void
      {
         this.§,!G§ = param1;
      }
      
      public function addLevel(param1:String, param2:§#b§) : void
      {
         this.§0i§[param1] = param2;
      }
      
      public function §1!B§(param1:String) : §#b§
      {
         return this.§0i§[param1];
      }
      
      public function get §@!i§() : Boolean
      {
         return this.§>!h§;
      }
      
      public function set §@!i§(param1:Boolean) : void
      {
         this.§>!h§ = param1;
      }
      
      public function get §]Y§() : Boolean
      {
         return this.§`!c§;
      }
      
      public function set §]Y§(param1:Boolean) : void
      {
         this.§`!c§ = param1;
      }
   }
}
