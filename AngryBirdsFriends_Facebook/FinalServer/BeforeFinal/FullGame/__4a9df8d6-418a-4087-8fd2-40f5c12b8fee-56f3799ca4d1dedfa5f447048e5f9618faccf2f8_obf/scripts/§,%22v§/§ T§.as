package §,"v§
{
   import §&!_§.§[!j§;
   
   public class § T§
   {
       
      
      protected var §@!s§:String = "";
      
      protected var §!I§:String = "";
      
      protected var §#!f§:String = "";
      
      protected var §<!Z§:String = "";
      
      protected var §2!3§:String = "";
      
      protected var §#b§:Vector.<int> = null;
      
      protected var §!#5§:int = 0;
      
      protected var §0"G§:Array = null;
      
      protected var §]j§:Array;
      
      protected var §[!p§:Array;
      
      protected var §9N§:int = 0;
      
      protected var §4!+§:§[!j§;
      
      protected var §@#T§:Boolean = false;
      
      protected var §%!4§:Boolean = false;
      
      protected var §4!&§:Boolean = false;
      
      protected var § !9§:§[!j§;
      
      public function § T§(param1:Array)
      {
         var _loc2_:String = null;
         this.§4!+§ = new §[!j§();
         this.§ !9§ = new §[!j§();
         super();
         if(param1)
         {
            this.§0"G§ = [];
            for each(_loc2_ in param1)
            {
               this.§0"G§.push(_loc2_.toLowerCase());
            }
         }
      }
      
      public function §##z§() : int
      {
         return this.§ "&§ * this.levelsPerPage;
      }
      
      public function §3!_§(param1:String) : int
      {
         this.§9"!§();
         return int(this.§0"G§.indexOf(param1));
      }
      
      public function §<#K§(param1:int) : String
      {
         this.§9"!§();
         if(param1 >= 0 && param1 < this.§0"G§.length)
         {
            return this.§0"G§[param1];
         }
         return null;
      }
      
      public function §,$?§(param1:int) : Object
      {
         return this.§]j§[param1];
      }
      
      public function §%"4§(param1:int) : String
      {
         return this.§[!p§[param1];
      }
      
      public function §=" §(param1:String) : Boolean
      {
         this.§9"!§();
         return this.§0"G§.indexOf(param1) != -1;
      }
      
      public function §&$=§(param1:String) : Boolean
      {
         this.§9"!§();
         if(this.§0"G§.indexOf(param1) >= 0)
         {
            return false;
         }
         this.§0"G§.push(param1);
         return true;
      }
      
      public function §3$0§(param1:int) : Array
      {
         var _loc3_:int = 0;
         var _loc4_:String = null;
         this.§9"!§();
         var _loc2_:Array = new Array();
         if(param1 >= 0 && param1 < this.§ "&§)
         {
            _loc3_ = 0;
            while(_loc3_ < this.levelsPerPage)
            {
               _loc4_ = this.§0"G§[_loc3_ + param1 * this.levelsPerPage];
               _loc2_.push(_loc4_);
               _loc3_++;
            }
         }
         return _loc2_;
      }
      
      protected function §77§(param1:int) : Array
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
      
      protected function §9"!§() : void
      {
         var _loc1_:Array = null;
         var _loc2_:int = 0;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(!this.isTournament && this.§0"G§ && this.§0"G§.length < this.§##z§())
         {
            throw new Error("Not enough level names defined for episode: " + this.§0"G§.length + " names, " + this.§##z§() + " levels");
         }
         if(this.§0"G§ == null)
         {
            if(this.isTournament)
            {
               this.§0"G§ = new Array();
            }
            else
            {
               _loc1_ = new Array();
               for each(_loc2_ in this.§#b§)
               {
                  _loc3_ = this.§77§(_loc2_);
                  for each(_loc4_ in _loc3_)
                  {
                     _loc1_.push(_loc4_);
                  }
               }
               this.§0"G§ = _loc1_;
            }
         }
      }
      
      public function getLevelNames() : Array
      {
         this.§9"!§();
         return this.§0"G§.concat();
      }
      
      public function §7#L§(param1:String) : int
      {
         var _loc2_:int = this.§0"G§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            return _loc2_ / this.§!#5§;
         }
         return -1;
      }
      
      public function §-y§(param1:String) : int
      {
         var _loc2_:int = this.§0"G§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            return _loc2_ % this.§!#5§;
         }
         return -1;
      }
      
      public function getNextLevelId(param1:String) : String
      {
         this.§9"!§();
         var _loc2_:int = this.§3!_§(param1);
         if(_loc2_ >= 0 && _loc2_ < this.§0"G§.length - 1)
         {
            return this.§0"G§[_loc2_ + 1];
         }
         return null;
      }
      
      public function get name() : String
      {
         return this.§!I§;
      }
      
      public function set name(param1:String) : void
      {
         this.§!I§ = param1;
      }
      
      public function get menuImage() : String
      {
         return this.§#!f§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§#!f§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§!#5§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§!#5§ = param1;
      }
      
      public function set §2#U§(param1:Array) : void
      {
         this.§]j§ = param1;
      }
      
      public function get currentPage() : int
      {
         return this.§9N§;
      }
      
      public function set currentPage(param1:int) : void
      {
         if(param1 >= 0 && param1 < this.§ "&§)
         {
            this.§9N§ = param1;
         }
      }
      
      public function get § "&§() : int
      {
         return this.§#b§.length;
      }
      
      public function getPageIndex(param1:int) : int
      {
         if(param1 >= 0 && param1 < this.§ "&§)
         {
            return this.§#b§[param1];
         }
         return -1;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         var _loc2_:String = null;
         this.§#b§ = new Vector.<int>();
         for each(_loc2_ in param1)
         {
            this.§#b§.push(parseInt(_loc2_));
         }
      }
      
      public function §&"&§(param1:String, param2:String) : void
      {
         this.§4!+§[param1] = param2;
      }
      
      public function getCutScene(param1:String) : String
      {
         return this.§4!+§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§[!p§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§[!p§ = param1;
      }
      
      public function get §,,§() : String
      {
         return this.§<!Z§;
      }
      
      public function set §,,§(param1:String) : void
      {
         this.§<!Z§ = param1;
      }
      
      public function get §;$;§() : String
      {
         return this.§2!3§;
      }
      
      public function set §;$;§(param1:String) : void
      {
         this.§2!3§ = param1;
      }
      
      public function get writtenName() : String
      {
         return this.§@!s§;
      }
      
      public function set writtenName(param1:String) : void
      {
         this.§@!s§ = param1;
      }
      
      public function addLevel(param1:String, param2:§7!J§) : void
      {
         this.§ !9§[param1] = param2;
      }
      
      public function §-!f§(param1:String) : §7!J§
      {
         return this.§ !9§[param1];
      }
      
      public function get §1"m§() : Boolean
      {
         return this.§@#T§;
      }
      
      public function set §1"m§(param1:Boolean) : void
      {
         this.§@#T§ = param1;
      }
      
      public function get §9$§() : Boolean
      {
         return this.§%!4§;
      }
      
      public function set §9$§(param1:Boolean) : void
      {
         this.§%!4§ = param1;
      }
      
      public function get isTournament() : Boolean
      {
         return this.§4!&§;
      }
      
      public function set isTournament(param1:Boolean) : void
      {
         this.§4!&§ = param1;
      }
   }
}
