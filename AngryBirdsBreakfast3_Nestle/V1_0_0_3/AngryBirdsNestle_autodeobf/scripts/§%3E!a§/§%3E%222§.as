package §>!a§
{
   import §-!F§.§^!k§;
   
   public class §>"2§
   {
       
      
      private var §^"2§:String = "";
      
      private var mName:String = "";
      
      private var §&"-§:String = "";
      
      private var §9!i§:String = "";
      
      private var §3+§:String = "";
      
      private var § !U§:Vector.<int> = null;
      
      private var §"!a§:int = 0;
      
      private var §,"%§:Array = null;
      
      private var §4!h§:Array;
      
      private var §8!H§:Array;
      
      private var §#C§:int = 0;
      
      private var §5!&§:§^!k§;
      
      private var §[!O§:Boolean = false;
      
      private var § use§:Boolean = false;
      
      protected var §-z§:§^!k§;
      
      public function §>"2§(param1:Array)
      {
         var _loc2_:String = null;
         this.§5!&§ = new §^!k§();
         this.§-z§ = new §^!k§();
         super();
         if(param1)
         {
            this.§,"%§ = [];
            for each(_loc2_ in param1)
            {
               this.§,"%§.push(_loc2_.toLowerCase());
            }
         }
      }
      
      public function §'!I§() : int
      {
         return this.§ !Q§ * this.levelsPerPage;
      }
      
      public function §4!f§(param1:String) : int
      {
         this.§;s§();
         return int(this.§,"%§.indexOf(param1));
      }
      
      public function §8!F§(param1:int) : String
      {
         this.§;s§();
         if(param1 >= 0 && param1 < this.§,"%§.length)
         {
            return this.§,"%§[param1];
         }
         return null;
      }
      
      public function §`!I§(param1:int) : Object
      {
         return this.§4!h§[param1];
      }
      
      public function §8!6§(param1:int) : String
      {
         return this.§8!H§[param1];
      }
      
      public function §2! §(param1:String) : Boolean
      {
         this.§;s§();
         return this.§,"%§.indexOf(param1) != -1;
      }
      
      public function §`!e§(param1:int) : Array
      {
         var _loc3_:int = 0;
         var _loc4_:String = null;
         this.§;s§();
         var _loc2_:Array = new Array();
         if(param1 >= 0 && param1 < this.§ !Q§)
         {
            _loc3_ = 0;
            while(_loc3_ < this.levelsPerPage)
            {
               _loc4_ = this.§,"%§[_loc3_ + param1 * this.levelsPerPage];
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
            _loc4_ = "" + param1 + "-" + (_loc3_ + 1);
            _loc2_.push(_loc4_);
            _loc3_++;
         }
         return _loc2_;
      }
      
      private function §;s§() : void
      {
         var _loc1_:Array = null;
         var _loc2_:int = 0;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(this.§,"%§ && this.§,"%§.length < this.§'!I§())
         {
            throw new Error("Not enough level names defined for episode: " + this.§,"%§.length + " names, " + this.§'!I§() + " levels");
         }
         if(this.§,"%§ == null)
         {
            _loc1_ = new Array();
            for each(_loc2_ in this.§ !U§)
            {
               _loc3_ = this.getDefaultLevelNamesForPage(_loc2_);
               for each(_loc4_ in _loc3_)
               {
                  _loc1_.push(_loc4_);
               }
            }
            this.§,"%§ = _loc1_;
         }
      }
      
      public function §=!5§() : Array
      {
         this.§;s§();
         return this.§,"%§.concat();
      }
      
      public function §[x§(param1:String) : int
      {
         var _loc2_:int = this.§,"%§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            return _loc2_ / this.§"!a§;
         }
         return -1;
      }
      
      public function §#!A§(param1:String) : int
      {
         var _loc2_:int = this.§,"%§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            return _loc2_ % this.§"!a§;
         }
         return -1;
      }
      
      public function getNextLevelId(param1:String) : String
      {
         this.§;s§();
         var _loc2_:int = this.§4!f§(param1);
         if(_loc2_ >= 0 && _loc2_ < this.§,"%§.length - 1)
         {
            return this.§,"%§[_loc2_ + 1];
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
         return this.§&"-§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§&"-§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§"!a§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§"!a§ = param1;
      }
      
      public function set § f§(param1:Array) : void
      {
         this.§4!h§ = param1;
      }
      
      public function get currentPage() : int
      {
         return this.§#C§;
      }
      
      public function set currentPage(param1:int) : void
      {
         if(param1 >= 0 && param1 < this.§ !Q§)
         {
            this.§#C§ = param1;
         }
      }
      
      public function get § !Q§() : int
      {
         return this.§ !U§.length;
      }
      
      public function getPageIndex(param1:int) : int
      {
         if(param1 >= 0 && param1 < this.§ !Q§)
         {
            return this.§ !U§[param1];
         }
         return -1;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         var _loc2_:String = null;
         this.§ !U§ = new Vector.<int>();
         for each(_loc2_ in param1)
         {
            this.§ !U§.push(parseInt(_loc2_));
         }
      }
      
      public function §#G§(param1:String, param2:String) : void
      {
         this.§5!&§[param1] = param2;
      }
      
      public function getCutScene(param1:String) : String
      {
         return this.§5!&§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§8!H§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§8!H§ = param1;
      }
      
      public function get §8!K§() : String
      {
         return this.§9!i§;
      }
      
      public function set §8!K§(param1:String) : void
      {
         this.§9!i§ = param1;
      }
      
      public function get §9]§() : String
      {
         return this.§3+§;
      }
      
      public function set §9]§(param1:String) : void
      {
         this.§3+§ = param1;
      }
      
      public function get writtenName() : String
      {
         return this.§^"2§;
      }
      
      public function set writtenName(param1:String) : void
      {
         this.§^"2§ = param1;
      }
      
      public function §];§(param1:String, param2:§-?§) : void
      {
         this.§-z§[param1] = param2;
      }
      
      public function §9N§(param1:String) : §-?§
      {
         return this.§-z§[param1];
      }
      
      public function get §+!W§() : Boolean
      {
         return this.§[!O§;
      }
      
      public function set §+!W§(param1:Boolean) : void
      {
         this.§[!O§ = param1;
      }
      
      public function get §]=§() : Boolean
      {
         return this.§ use§;
      }
      
      public function set §]=§(param1:Boolean) : void
      {
         this.§ use§ = param1;
      }
   }
}
