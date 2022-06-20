package §?o§
{
   import §2E§.§&#a§;
   
   public class §79§
   {
       
      
      protected var §5]§:String = "";
      
      protected var §-#3§:String = "";
      
      protected var §[#h§:String = "";
      
      protected var §="q§:String = "";
      
      protected var §^!S§:String = "";
      
      protected var §?"O§:Vector.<int> = null;
      
      protected var §9u§:int = 0;
      
      protected var §;#G§:Array = null;
      
      protected var §=I§:Array;
      
      protected var §@!g§:Array;
      
      protected var §5F§:int = 0;
      
      protected var §6n§:§&#a§;
      
      protected var §;u§:Boolean = false;
      
      protected var §8$A§:Boolean = false;
      
      protected var §9?§:Boolean = false;
      
      protected var §"!5§:§&#a§;
      
      public function §79§(param1:Array)
      {
         var _loc2_:String = null;
         this.§6n§ = new §&#a§();
         this.§"!5§ = new §&#a§();
         super();
         if(param1)
         {
            this.§;#G§ = [];
            for each(_loc2_ in param1)
            {
               this.§;#G§.push(_loc2_.toLowerCase());
            }
         }
      }
      
      public function §?`§() : int
      {
         return this.§+!A§ * this.levelsPerPage;
      }
      
      public function §9#D§(param1:String) : int
      {
         this.§<#x§();
         return int(this.§;#G§.indexOf(param1));
      }
      
      public function §=#f§(param1:int) : String
      {
         this.§<#x§();
         if(param1 >= 0 && param1 < this.§;#G§.length)
         {
            return this.§;#G§[param1];
         }
         return null;
      }
      
      public function §@!S§(param1:int) : Object
      {
         return this.§=I§[param1];
      }
      
      public function §[#u§(param1:int) : String
      {
         return this.§@!g§[param1];
      }
      
      public function §%#-§(param1:String) : Boolean
      {
         this.§<#x§();
         return this.§;#G§.indexOf(param1) != -1;
      }
      
      public function §&"H§(param1:String) : Boolean
      {
         this.§<#x§();
         if(this.§;#G§.indexOf(param1) >= 0)
         {
            return false;
         }
         this.§;#G§.push(param1);
         return true;
      }
      
      public function §,!k§(param1:int) : Array
      {
         var _loc3_:int = 0;
         var _loc4_:String = null;
         this.§<#x§();
         var _loc2_:Array = new Array();
         if(param1 >= 0 && param1 < this.§+!A§)
         {
            _loc3_ = 0;
            while(_loc3_ < this.levelsPerPage)
            {
               _loc4_ = this.§;#G§[_loc3_ + param1 * this.levelsPerPage];
               _loc2_.push(_loc4_);
               _loc3_++;
            }
         }
         return _loc2_;
      }
      
      protected function §@#d§(param1:int) : Array
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
      
      protected function §<#x§() : void
      {
         var _loc1_:Array = null;
         var _loc2_:int = 0;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(!this.isTournament && this.§;#G§ && this.§;#G§.length < this.§?`§())
         {
            throw new Error("Not enough level names defined for episode: " + this.§;#G§.length + " names, " + this.§?`§() + " levels");
         }
         if(this.§;#G§ == null)
         {
            if(this.isTournament)
            {
               this.§;#G§ = new Array();
            }
            else
            {
               _loc1_ = new Array();
               for each(_loc2_ in this.§?"O§)
               {
                  _loc3_ = this.§@#d§(_loc2_);
                  for each(_loc4_ in _loc3_)
                  {
                     _loc1_.push(_loc4_);
                  }
               }
               this.§;#G§ = _loc1_;
            }
         }
      }
      
      public function getLevelNames() : Array
      {
         this.§<#x§();
         return this.§;#G§.concat();
      }
      
      public function §0!u§(param1:String) : int
      {
         var _loc2_:int = this.§;#G§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            return _loc2_ / this.§9u§;
         }
         return -1;
      }
      
      public function §-!P§(param1:String) : int
      {
         var _loc2_:int = this.§;#G§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            return _loc2_ % this.§9u§;
         }
         return -1;
      }
      
      public function getNextLevelId(param1:String) : String
      {
         this.§<#x§();
         var _loc2_:int = this.§9#D§(param1);
         if(_loc2_ >= 0 && _loc2_ < this.§;#G§.length - 1)
         {
            return this.§;#G§[_loc2_ + 1];
         }
         return null;
      }
      
      public function get name() : String
      {
         return this.§-#3§;
      }
      
      public function set name(param1:String) : void
      {
         this.§-#3§ = param1;
      }
      
      public function get menuImage() : String
      {
         return this.§[#h§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§[#h§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§9u§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§9u§ = param1;
      }
      
      public function set §9" §(param1:Array) : void
      {
         this.§=I§ = param1;
      }
      
      public function get currentPage() : int
      {
         return this.§5F§;
      }
      
      public function set currentPage(param1:int) : void
      {
         if(param1 >= 0 && param1 < this.§+!A§)
         {
            this.§5F§ = param1;
         }
      }
      
      public function get §+!A§() : int
      {
         return this.§?"O§.length;
      }
      
      public function getPageIndex(param1:int) : int
      {
         if(param1 >= 0 && param1 < this.§+!A§)
         {
            return this.§?"O§[param1];
         }
         return -1;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         var _loc2_:String = null;
         this.§?"O§ = new Vector.<int>();
         for each(_loc2_ in param1)
         {
            this.§?"O§.push(parseInt(_loc2_));
         }
      }
      
      public function §;#c§(param1:String, param2:String) : void
      {
         this.§6n§[param1] = param2;
      }
      
      public function getCutScene(param1:String) : String
      {
         return this.§6n§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§@!g§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§@!g§ = param1;
      }
      
      public function get §3"=§() : String
      {
         return this.§="q§;
      }
      
      public function set §3"=§(param1:String) : void
      {
         this.§="q§ = param1;
      }
      
      public function get §0!C§() : String
      {
         return this.§^!S§;
      }
      
      public function set §0!C§(param1:String) : void
      {
         this.§^!S§ = param1;
      }
      
      public function get writtenName() : String
      {
         return this.§5]§;
      }
      
      public function set writtenName(param1:String) : void
      {
         this.§5]§ = param1;
      }
      
      public function addLevel(param1:String, param2:§ ^§) : void
      {
         this.§"!5§[param1] = param2;
      }
      
      public function §?"C§(param1:String) : § ^§
      {
         return this.§"!5§[param1];
      }
      
      public function get §^$5§() : Boolean
      {
         return this.§;u§;
      }
      
      public function set §^$5§(param1:Boolean) : void
      {
         this.§;u§ = param1;
      }
      
      public function get §8#y§() : Boolean
      {
         return this.§8$A§;
      }
      
      public function set §8#y§(param1:Boolean) : void
      {
         this.§8$A§ = param1;
      }
      
      public function get isTournament() : Boolean
      {
         return this.§9?§;
      }
      
      public function set isTournament(param1:Boolean) : void
      {
         this.§9?§ = param1;
      }
   }
}
