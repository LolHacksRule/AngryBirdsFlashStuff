package §;$3§
{
   import §`7§.§0t§;
   
   public class §"m§
   {
       
      
      protected var §]z§:String = "";
      
      protected var §=q§:String = "";
      
      protected var §!!x§:String = "";
      
      protected var §,!;§:String = "";
      
      protected var §[#B§:String = "";
      
      protected var §>!K§:Vector.<int> = null;
      
      protected var §!"y§:int = 0;
      
      protected var §1?§:Array = null;
      
      protected var §!"A§:Array;
      
      protected var §1!U§:Array;
      
      protected var §"#+§:int = 0;
      
      protected var §?"'§:§0t§;
      
      protected var §!2§:Boolean = false;
      
      protected var §2L§:Boolean = false;
      
      protected var §;_§:Boolean = false;
      
      protected var §`;§:§0t§;
      
      public function §"m§(param1:Array)
      {
         var _loc2_:String = null;
         this.§?"'§ = new §0t§();
         this.§`;§ = new §0t§();
         super();
         if(param1)
         {
            this.§1?§ = [];
            for each(_loc2_ in param1)
            {
               this.§1?§.push(_loc2_.toLowerCase());
            }
         }
      }
      
      public function §&#`§() : int
      {
         return this.§@#&§ * this.levelsPerPage;
      }
      
      public function §[#2§(param1:String) : int
      {
         this.§,#§();
         return int(this.§1?§.indexOf(param1));
      }
      
      public function §<!u§(param1:int) : String
      {
         this.§,#§();
         if(param1 >= 0 && param1 < this.§1?§.length)
         {
            return this.§1?§[param1];
         }
         return null;
      }
      
      public function §!#A§(param1:int) : Object
      {
         return this.§!"A§[param1];
      }
      
      public function §#",§(param1:int) : String
      {
         return this.§1!U§[param1];
      }
      
      public function §0r§(param1:String) : Boolean
      {
         this.§,#§();
         return this.§1?§.indexOf(param1) != -1;
      }
      
      public function §>m§(param1:String) : Boolean
      {
         this.§,#§();
         if(this.§1?§.indexOf(param1) >= 0)
         {
            return false;
         }
         this.§1?§.push(param1);
         return true;
      }
      
      public function §0#s§(param1:int) : Array
      {
         var _loc3_:int = 0;
         var _loc4_:String = null;
         this.§,#§();
         var _loc2_:Array = new Array();
         if(param1 >= 0 && param1 < this.§@#&§)
         {
            _loc3_ = 0;
            while(_loc3_ < this.levelsPerPage)
            {
               _loc4_ = this.§1?§[_loc3_ + param1 * this.levelsPerPage];
               _loc2_.push(_loc4_);
               _loc3_++;
            }
         }
         return _loc2_;
      }
      
      protected function §,!'§(param1:int) : Array
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
      
      protected function §,#§() : void
      {
         var _loc1_:Array = null;
         var _loc2_:int = 0;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(!this.isTournament && this.§1?§ && this.§1?§.length < this.§&#`§())
         {
            throw new Error("Not enough level names defined for episode: " + this.§1?§.length + " names, " + this.§&#`§() + " levels");
         }
         if(this.§1?§ == null)
         {
            if(this.isTournament)
            {
               this.§1?§ = new Array();
            }
            else
            {
               _loc1_ = new Array();
               for each(_loc2_ in this.§>!K§)
               {
                  _loc3_ = this.§,!'§(_loc2_);
                  for each(_loc4_ in _loc3_)
                  {
                     _loc1_.push(_loc4_);
                  }
               }
               this.§1?§ = _loc1_;
            }
         }
      }
      
      public function getLevelNames() : Array
      {
         this.§,#§();
         return this.§1?§.concat();
      }
      
      public function §>!k§(param1:String) : int
      {
         var _loc2_:int = this.§1?§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            return _loc2_ / this.§!"y§;
         }
         return -1;
      }
      
      public function §%#b§(param1:String) : int
      {
         var _loc2_:int = this.§1?§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            return _loc2_ % this.§!"y§;
         }
         return -1;
      }
      
      public function getNextLevelId(param1:String) : String
      {
         this.§,#§();
         var _loc2_:int = this.§[#2§(param1);
         if(_loc2_ >= 0 && _loc2_ < this.§1?§.length - 1)
         {
            return this.§1?§[_loc2_ + 1];
         }
         return null;
      }
      
      public function get name() : String
      {
         return this.§=q§;
      }
      
      public function set name(param1:String) : void
      {
         this.§=q§ = param1;
      }
      
      public function get menuImage() : String
      {
         return this.§!!x§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§!!x§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§!"y§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§!"y§ = param1;
      }
      
      public function set §null §(param1:Array) : void
      {
         this.§!"A§ = param1;
      }
      
      public function get currentPage() : int
      {
         return this.§"#+§;
      }
      
      public function set currentPage(param1:int) : void
      {
         if(param1 >= 0 && param1 < this.§@#&§)
         {
            this.§"#+§ = param1;
         }
      }
      
      public function get §@#&§() : int
      {
         return this.§>!K§.length;
      }
      
      public function getPageIndex(param1:int) : int
      {
         if(param1 >= 0 && param1 < this.§@#&§)
         {
            return this.§>!K§[param1];
         }
         return -1;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         var _loc2_:String = null;
         this.§>!K§ = new Vector.<int>();
         for each(_loc2_ in param1)
         {
            this.§>!K§.push(parseInt(_loc2_));
         }
      }
      
      public function §#!=§(param1:String, param2:String) : void
      {
         this.§?"'§[param1] = param2;
      }
      
      public function getCutScene(param1:String) : String
      {
         return this.§?"'§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§1!U§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§1!U§ = param1;
      }
      
      public function get §^$$§() : String
      {
         return this.§,!;§;
      }
      
      public function set §^$$§(param1:String) : void
      {
         this.§,!;§ = param1;
      }
      
      public function get §7!!§() : String
      {
         return this.§[#B§;
      }
      
      public function set §7!!§(param1:String) : void
      {
         this.§[#B§ = param1;
      }
      
      public function get writtenName() : String
      {
         return this.§]z§;
      }
      
      public function set writtenName(param1:String) : void
      {
         this.§]z§ = param1;
      }
      
      public function addLevel(param1:String, param2:§>f§) : void
      {
         this.§`;§[param1] = param2;
      }
      
      public function §[§(param1:String) : §>f§
      {
         return this.§`;§[param1];
      }
      
      public function get §"!=§() : Boolean
      {
         return this.§!2§;
      }
      
      public function set §"!=§(param1:Boolean) : void
      {
         this.§!2§ = param1;
      }
      
      public function get §1"A§() : Boolean
      {
         return this.§2L§;
      }
      
      public function set §1"A§(param1:Boolean) : void
      {
         this.§2L§ = param1;
      }
      
      public function get isTournament() : Boolean
      {
         return this.§;_§;
      }
      
      public function set isTournament(param1:Boolean) : void
      {
         this.§;_§ = param1;
      }
   }
}
