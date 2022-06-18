package §@#§
{
   import §6V§.§&"g§;
   
   public class §9##§
   {
       
      
      protected var §##j§:String = "";
      
      protected var §;!p§:String = "";
      
      protected var §[!A§:String = "";
      
      protected var §^$&§:String = "";
      
      protected var §9!;§:String = "";
      
      protected var §@d§:Vector.<int> = null;
      
      protected var §6"3§:int = 0;
      
      protected var §8#3§:Array = null;
      
      protected var §1" §:Array;
      
      protected var §^$ §:Array;
      
      protected var §%#e§:int = 0;
      
      protected var §2c§:§&"g§;
      
      protected var §7l§:Boolean = false;
      
      protected var §9!-§:Boolean = false;
      
      protected var §"#a§:Boolean = false;
      
      protected var §=#'§:§&"g§;
      
      public function §9##§(param1:Array)
      {
         var _loc2_:String = null;
         this.§2c§ = new §&"g§();
         this.§=#'§ = new §&"g§();
         super();
         if(param1)
         {
            this.§8#3§ = [];
            for each(_loc2_ in param1)
            {
               this.§8#3§.push(_loc2_.toLowerCase());
            }
         }
      }
      
      public function §]#8§() : int
      {
         return this.§]!7§ * this.levelsPerPage;
      }
      
      public function §"">§(param1:String) : int
      {
         this.§3"l§();
         return int(this.§8#3§.indexOf(param1));
      }
      
      public function §>K§(param1:int) : String
      {
         this.§3"l§();
         if(param1 >= 0 && param1 < this.§8#3§.length)
         {
            return this.§8#3§[param1];
         }
         return null;
      }
      
      public function §?#v§(param1:int) : Object
      {
         return this.§1" §[param1];
      }
      
      public function §8$5§(param1:int) : String
      {
         return this.§^$ §[param1];
      }
      
      public function §+B§(param1:String) : Boolean
      {
         this.§3"l§();
         return this.§8#3§.indexOf(param1) != -1;
      }
      
      public function §44§(param1:String) : Boolean
      {
         this.§3"l§();
         if(this.§8#3§.indexOf(param1) >= 0)
         {
            return false;
         }
         this.§8#3§.push(param1);
         return true;
      }
      
      public function §%!k§(param1:int) : Array
      {
         var _loc3_:int = 0;
         var _loc4_:String = null;
         this.§3"l§();
         var _loc2_:Array = new Array();
         if(param1 >= 0 && param1 < this.§]!7§)
         {
            _loc3_ = 0;
            while(_loc3_ < this.levelsPerPage)
            {
               _loc4_ = this.§8#3§[_loc3_ + param1 * this.levelsPerPage];
               _loc2_.push(_loc4_);
               _loc3_++;
            }
         }
         return _loc2_;
      }
      
      protected function §8"p§(param1:int) : Array
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
      
      protected function §3"l§() : void
      {
         var _loc1_:Array = null;
         var _loc2_:int = 0;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(!this.isTournament && this.§8#3§ && this.§8#3§.length < this.§]#8§())
         {
            throw new Error("Not enough level names defined for episode: " + this.§8#3§.length + " names, " + this.§]#8§() + " levels");
         }
         if(this.§8#3§ == null)
         {
            if(this.isTournament)
            {
               this.§8#3§ = new Array();
            }
            else
            {
               _loc1_ = new Array();
               for each(_loc2_ in this.§@d§)
               {
                  _loc3_ = this.§8"p§(_loc2_);
                  for each(_loc4_ in _loc3_)
                  {
                     _loc1_.push(_loc4_);
                  }
               }
               this.§8#3§ = _loc1_;
            }
         }
      }
      
      public function getLevelNames() : Array
      {
         this.§3"l§();
         return this.§8#3§.concat();
      }
      
      public function §,!i§(param1:String) : int
      {
         var _loc2_:int = this.§8#3§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            return _loc2_ / this.§6"3§;
         }
         return -1;
      }
      
      public function §5#j§(param1:String) : int
      {
         var _loc2_:int = this.§8#3§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            return _loc2_ % this.§6"3§;
         }
         return -1;
      }
      
      public function getNextLevelId(param1:String) : String
      {
         this.§3"l§();
         var _loc2_:int = this.§"">§(param1);
         if(_loc2_ >= 0 && _loc2_ < this.§8#3§.length - 1)
         {
            return this.§8#3§[_loc2_ + 1];
         }
         return null;
      }
      
      public function get name() : String
      {
         return this.§;!p§;
      }
      
      public function set name(param1:String) : void
      {
         this.§;!p§ = param1;
      }
      
      public function get menuImage() : String
      {
         return this.§[!A§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§[!A§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§6"3§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§6"3§ = param1;
      }
      
      public function set §<y§(param1:Array) : void
      {
         this.§1" § = param1;
      }
      
      public function get currentPage() : int
      {
         return this.§%#e§;
      }
      
      public function set currentPage(param1:int) : void
      {
         if(param1 >= 0 && param1 < this.§]!7§)
         {
            this.§%#e§ = param1;
         }
      }
      
      public function get §]!7§() : int
      {
         return this.§@d§.length;
      }
      
      public function getPageIndex(param1:int) : int
      {
         if(param1 >= 0 && param1 < this.§]!7§)
         {
            return this.§@d§[param1];
         }
         return -1;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         var _loc2_:String = null;
         this.§@d§ = new Vector.<int>();
         for each(_loc2_ in param1)
         {
            this.§@d§.push(parseInt(_loc2_));
         }
      }
      
      public function §,!c§(param1:String, param2:String) : void
      {
         this.§2c§[param1] = param2;
      }
      
      public function getCutScene(param1:String) : String
      {
         return this.§2c§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§^$ §;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§^$ § = param1;
      }
      
      public function get §"5§() : String
      {
         return this.§^$&§;
      }
      
      public function set §"5§(param1:String) : void
      {
         this.§^$&§ = param1;
      }
      
      public function get §4#t§() : String
      {
         return this.§9!;§;
      }
      
      public function set §4#t§(param1:String) : void
      {
         this.§9!;§ = param1;
      }
      
      public function get writtenName() : String
      {
         return this.§##j§;
      }
      
      public function set writtenName(param1:String) : void
      {
         this.§##j§ = param1;
      }
      
      public function addLevel(param1:String, param2:§]#B§) : void
      {
         this.§=#'§[param1] = param2;
      }
      
      public function §3o§(param1:String) : §]#B§
      {
         return this.§=#'§[param1];
      }
      
      public function get §4"Q§() : Boolean
      {
         return this.§7l§;
      }
      
      public function set §4"Q§(param1:Boolean) : void
      {
         this.§7l§ = param1;
      }
      
      public function get §?§() : Boolean
      {
         return this.§9!-§;
      }
      
      public function set §?§(param1:Boolean) : void
      {
         this.§9!-§ = param1;
      }
      
      public function get isTournament() : Boolean
      {
         return this.§"#a§;
      }
      
      public function set isTournament(param1:Boolean) : void
      {
         this.§"#a§ = param1;
      }
   }
}
