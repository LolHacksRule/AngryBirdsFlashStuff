package §"$=§
{
   import §+#B§.§4"[§;
   
   public class §[#5§
   {
       
      
      protected var §+#0§:String = "";
      
      protected var §-!O§:String = "";
      
      protected var §>!1§:String = "";
      
      protected var §1!#§:String = "";
      
      protected var §'!F§:String = "";
      
      protected var §&i§:Vector.<int> = null;
      
      protected var §6#'§:int = 0;
      
      protected var §`!§:Array = null;
      
      protected var §^#g§:Array;
      
      protected var §3q§:Array;
      
      protected var §#"0§:int = 0;
      
      protected var §3§:§4"[§;
      
      protected var §9R§:Boolean = false;
      
      protected var §1#f§:Boolean = false;
      
      protected var §?#]§:Boolean = false;
      
      protected var §+#i§:§4"[§;
      
      public function §[#5§(param1:Array)
      {
         var _loc2_:String = null;
         this.§3§ = new §4"[§();
         this.§+#i§ = new §4"[§();
         super();
         if(param1)
         {
            this.§`!§ = [];
            for each(_loc2_ in param1)
            {
               this.§`!§.push(_loc2_.toLowerCase());
            }
         }
      }
      
      public function §^""§() : int
      {
         return this.§'B§ * this.levelsPerPage;
      }
      
      public function §!#d§(param1:String) : int
      {
         this.§9"?§();
         return int(this.§`!§.indexOf(param1));
      }
      
      public function §7$"§(param1:int) : String
      {
         this.§9"?§();
         if(param1 >= 0 && param1 < this.§`!§.length)
         {
            return this.§`!§[param1];
         }
         return null;
      }
      
      public function §3P§(param1:int) : Object
      {
         return this.§^#g§[param1];
      }
      
      public function §=!w§(param1:int) : String
      {
         return this.§3q§[param1];
      }
      
      public function §`!6§(param1:String) : Boolean
      {
         this.§9"?§();
         return this.§`!§.indexOf(param1) != -1;
      }
      
      public function §=#@§(param1:String) : Boolean
      {
         this.§9"?§();
         if(this.§`!§.indexOf(param1) >= 0)
         {
            return false;
         }
         this.§`!§.push(param1);
         return true;
      }
      
      public function §4@§(param1:int) : Array
      {
         var _loc3_:int = 0;
         var _loc4_:String = null;
         this.§9"?§();
         var _loc2_:Array = new Array();
         if(param1 >= 0 && param1 < this.§'B§)
         {
            _loc3_ = 0;
            while(_loc3_ < this.levelsPerPage)
            {
               _loc4_ = this.§`!§[_loc3_ + param1 * this.levelsPerPage];
               _loc2_.push(_loc4_);
               _loc3_++;
            }
         }
         return _loc2_;
      }
      
      protected function §5!o§(param1:int) : Array
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
      
      protected function §9"?§() : void
      {
         var _loc1_:Array = null;
         var _loc2_:int = 0;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(!this.isTournament && this.§`!§ && this.§`!§.length < this.§^""§())
         {
            throw new Error("Not enough level names defined for episode: " + this.§`!§.length + " names, " + this.§^""§() + " levels");
         }
         if(this.§`!§ == null)
         {
            if(this.isTournament)
            {
               this.§`!§ = new Array();
            }
            else
            {
               _loc1_ = new Array();
               for each(_loc2_ in this.§&i§)
               {
                  _loc3_ = this.§5!o§(_loc2_);
                  for each(_loc4_ in _loc3_)
                  {
                     _loc1_.push(_loc4_);
                  }
               }
               this.§`!§ = _loc1_;
            }
         }
      }
      
      public function getLevelNames() : Array
      {
         this.§9"?§();
         return this.§`!§.concat();
      }
      
      public function §"!=§(param1:String) : int
      {
         var _loc2_:int = this.§`!§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            return _loc2_ / this.§6#'§;
         }
         return -1;
      }
      
      public function §-$'§(param1:String) : int
      {
         var _loc2_:int = this.§`!§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            return _loc2_ % this.§6#'§;
         }
         return -1;
      }
      
      public function getNextLevelId(param1:String) : String
      {
         this.§9"?§();
         var _loc2_:int = this.§!#d§(param1);
         if(_loc2_ >= 0 && _loc2_ < this.§`!§.length - 1)
         {
            return this.§`!§[_loc2_ + 1];
         }
         return null;
      }
      
      public function get name() : String
      {
         return this.§-!O§;
      }
      
      public function set name(param1:String) : void
      {
         this.§-!O§ = param1;
      }
      
      public function get menuImage() : String
      {
         return this.§>!1§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§>!1§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§6#'§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§6#'§ = param1;
      }
      
      public function set §1"s§(param1:Array) : void
      {
         this.§^#g§ = param1;
      }
      
      public function get currentPage() : int
      {
         return this.§#"0§;
      }
      
      public function set currentPage(param1:int) : void
      {
         if(param1 >= 0 && param1 < this.§'B§)
         {
            this.§#"0§ = param1;
         }
      }
      
      public function get §'B§() : int
      {
         return this.§&i§.length;
      }
      
      public function getPageIndex(param1:int) : int
      {
         if(param1 >= 0 && param1 < this.§'B§)
         {
            return this.§&i§[param1];
         }
         return -1;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         var _loc2_:String = null;
         this.§&i§ = new Vector.<int>();
         for each(_loc2_ in param1)
         {
            this.§&i§.push(parseInt(_loc2_));
         }
      }
      
      public function §<""§(param1:String, param2:String) : void
      {
         this.§3§[param1] = param2;
      }
      
      public function getCutScene(param1:String) : String
      {
         return this.§3§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§3q§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§3q§ = param1;
      }
      
      public function get §,"B§() : String
      {
         return this.§1!#§;
      }
      
      public function set §,"B§(param1:String) : void
      {
         this.§1!#§ = param1;
      }
      
      public function get §>!E§() : String
      {
         return this.§'!F§;
      }
      
      public function set §>!E§(param1:String) : void
      {
         this.§'!F§ = param1;
      }
      
      public function get writtenName() : String
      {
         return this.§+#0§;
      }
      
      public function set writtenName(param1:String) : void
      {
         this.§+#0§ = param1;
      }
      
      public function addLevel(param1:String, param2:§=$&§) : void
      {
         this.§+#i§[param1] = param2;
      }
      
      public function §>";§(param1:String) : §=$&§
      {
         return this.§+#i§[param1];
      }
      
      public function get §3"O§() : Boolean
      {
         return this.§9R§;
      }
      
      public function set §3"O§(param1:Boolean) : void
      {
         this.§9R§ = param1;
      }
      
      public function get §%"y§() : Boolean
      {
         return this.§1#f§;
      }
      
      public function set §%"y§(param1:Boolean) : void
      {
         this.§1#f§ = param1;
      }
      
      public function get isTournament() : Boolean
      {
         return this.§?#]§;
      }
      
      public function set isTournament(param1:Boolean) : void
      {
         this.§?#]§ = param1;
      }
   }
}
