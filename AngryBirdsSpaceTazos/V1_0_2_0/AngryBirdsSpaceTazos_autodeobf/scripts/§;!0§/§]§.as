package §;!0§
{
   import §'#§.§?u§;
   
   public class §]§
   {
       
      
      private var §^!4§:String = "";
      
      private var mName:String = "";
      
      private var §-!4§:String = "";
      
      private var §[Y§:String = "";
      
      private var §9"@§:String = "";
      
      private var §+=§:Vector.<int> = null;
      
      private var §0s§:int = 0;
      
      private var §6">§:Array = null;
      
      private var §1!R§:Array;
      
      private var §!!x§:Array;
      
      private var §,Y§:int = 0;
      
      private var §3!s§:§?u§;
      
      private var §-"1§:Boolean = false;
      
      private var §'",§:Boolean = false;
      
      protected var §1"+§:§?u§;
      
      public function §]§(param1:Array)
      {
         var _loc2_:String = null;
         this.§3!s§ = new §?u§();
         this.§1"+§ = new §?u§();
         super();
         if(param1)
         {
            this.§6">§ = [];
            for each(_loc2_ in param1)
            {
               this.§6">§.push(_loc2_.toLowerCase());
            }
         }
      }
      
      public function §9=§() : int
      {
         return this.§>"4§ * this.levelsPerPage;
      }
      
      public function §3"G§(param1:String) : int
      {
         this.§try §();
         return int(this.§6">§.indexOf(param1));
      }
      
      public function §06§(param1:int) : String
      {
         this.§try §();
         if(param1 >= 0 && param1 < this.§6">§.length)
         {
            return this.§6">§[param1];
         }
         return null;
      }
      
      public function §3!V§(param1:int) : Object
      {
         return this.§1!R§[param1];
      }
      
      public function §6'§(param1:int) : String
      {
         return this.§!!x§[param1];
      }
      
      public function §7"#§(param1:String) : Boolean
      {
         this.§try §();
         return this.§6">§.indexOf(param1) != -1;
      }
      
      public function §!w§(param1:int) : Array
      {
         var _loc3_:int = 0;
         var _loc4_:String = null;
         this.§try §();
         var _loc2_:Array = new Array();
         if(param1 >= 0 && param1 < this.§>"4§)
         {
            _loc3_ = 0;
            while(_loc3_ < this.levelsPerPage)
            {
               _loc4_ = this.§6">§[_loc3_ + param1 * this.levelsPerPage];
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
      
      private function §try §() : void
      {
         var _loc1_:Array = null;
         var _loc2_:int = 0;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(this.§6">§ && this.§6">§.length < this.§9=§())
         {
            throw new Error("Not enough level names defined for episode: " + this.§6">§.length + " names, " + this.§9=§() + " levels");
         }
         if(this.§6">§ == null)
         {
            _loc1_ = new Array();
            for each(_loc2_ in this.§+=§)
            {
               _loc3_ = this.getDefaultLevelNamesForPage(_loc2_);
               for each(_loc4_ in _loc3_)
               {
                  _loc1_.push(_loc4_);
               }
            }
            this.§6">§ = _loc1_;
         }
      }
      
      public function §4e§() : Array
      {
         this.§try §();
         return this.§6">§.concat();
      }
      
      public function §+"9§(param1:String) : int
      {
         var _loc2_:int = this.§6">§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            return _loc2_ / this.§0s§;
         }
         return -1;
      }
      
      public function §2"E§(param1:String) : int
      {
         var _loc2_:int = this.§6">§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            return _loc2_ % this.§0s§;
         }
         return -1;
      }
      
      public function getNextLevelId(param1:String) : String
      {
         this.§try §();
         var _loc2_:int = this.§3"G§(param1);
         if(_loc2_ >= 0 && _loc2_ < this.§6">§.length - 1)
         {
            return this.§6">§[_loc2_ + 1];
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
         return this.§-!4§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§-!4§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§0s§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§0s§ = param1;
      }
      
      public function set §;"8§(param1:Array) : void
      {
         this.§1!R§ = param1;
      }
      
      public function get currentPage() : int
      {
         return this.§,Y§;
      }
      
      public function set currentPage(param1:int) : void
      {
         if(param1 >= 0 && param1 < this.§>"4§)
         {
            this.§,Y§ = param1;
         }
      }
      
      public function get §>"4§() : int
      {
         return this.§+=§.length;
      }
      
      public function getPageIndex(param1:int) : int
      {
         if(param1 >= 0 && param1 < this.§>"4§)
         {
            return this.§+=§[param1];
         }
         return -1;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         var _loc2_:String = null;
         this.§+=§ = new Vector.<int>();
         for each(_loc2_ in param1)
         {
            this.§+=§.push(parseInt(_loc2_));
         }
      }
      
      public function §?!P§(param1:String, param2:String) : void
      {
         this.§3!s§[param1] = param2;
      }
      
      public function getCutScene(param1:String) : String
      {
         return this.§3!s§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§!!x§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§!!x§ = param1;
      }
      
      public function get §`1§() : String
      {
         return this.§[Y§;
      }
      
      public function set §`1§(param1:String) : void
      {
         this.§[Y§ = param1;
      }
      
      public function get §?c§() : String
      {
         return this.§9"@§;
      }
      
      public function set §?c§(param1:String) : void
      {
         this.§9"@§ = param1;
      }
      
      public function get writtenName() : String
      {
         return this.§^!4§;
      }
      
      public function set writtenName(param1:String) : void
      {
         this.§^!4§ = param1;
      }
      
      public function addLevel(param1:String, param2:§!!X§) : void
      {
         this.§1"+§[param1] = param2;
      }
      
      public function §7!-§(param1:String) : §!!X§
      {
         return this.§1"+§[param1];
      }
      
      public function get §0!_§() : Boolean
      {
         return this.§-"1§;
      }
      
      public function set §0!_§(param1:Boolean) : void
      {
         this.§-"1§ = param1;
      }
      
      public function get §`"4§() : Boolean
      {
         return this.§'",§;
      }
      
      public function set §`"4§(param1:Boolean) : void
      {
         this.§'",§ = param1;
      }
   }
}
