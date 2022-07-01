package
{
   import §`!s§.§4M§;
   
   public class §4<§
   {
       
      
      protected var §&!#§:String = "";
      
      protected var mName:String = "";
      
      protected var §^9§:String = "";
      
      protected var §4"6§:String = "";
      
      protected var §-I§:String = "";
      
      protected var §!!%§:Vector.<int> = null;
      
      protected var §>;§:int = 0;
      
      protected var §0"+§:Array = null;
      
      protected var §=E§:Array;
      
      protected var §[!n§:Array;
      
      protected var §'"5§:int = 0;
      
      protected var §8!z§:§4M§;
      
      protected var §,d§:Boolean = false;
      
      protected var §[!_§:Boolean = false;
      
      protected var §=!S§:§4M§;
      
      public function §4<§(param1:Array)
      {
         var _loc2_:String = null;
         this.§8!z§ = new §4M§();
         this.§=!S§ = new §4M§();
         super();
         if(param1)
         {
            this.§0"+§ = [];
            for each(_loc2_ in param1)
            {
               this.§0"+§.push(_loc2_.toLowerCase());
            }
         }
      }
      
      public function §"" §() : int
      {
         return this.§3"5§ * this.levelsPerPage;
      }
      
      public function §!u§(param1:String) : int
      {
         this.§&i§();
         return int(this.§0"+§.indexOf(param1));
      }
      
      public function §`![§(param1:int) : String
      {
         this.§&i§();
         if(param1 >= 0 && param1 < this.§0"+§.length)
         {
            return this.§0"+§[param1];
         }
         return null;
      }
      
      public function §?!y§(param1:int) : Object
      {
         return this.§=E§[param1];
      }
      
      public function §>!j§(param1:int) : String
      {
         return this.§[!n§[param1];
      }
      
      public function §4-§(param1:String) : Boolean
      {
         this.§&i§();
         return this.§0"+§.indexOf(param1) != -1;
      }
      
      public function §6" §(param1:String) : Boolean
      {
         this.§&i§();
         if(this.§0"+§.indexOf(param1) >= 0)
         {
            return false;
         }
         this.§0"+§.push(param1);
         return true;
      }
      
      public function §>>§(param1:int) : Array
      {
         var _loc3_:int = 0;
         var _loc4_:String = null;
         this.§&i§();
         var _loc2_:Array = new Array();
         if(param1 >= 0 && param1 < this.§3"5§)
         {
            _loc3_ = 0;
            while(_loc3_ < this.levelsPerPage)
            {
               _loc4_ = this.§0"+§[_loc3_ + param1 * this.levelsPerPage];
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
      
      private function §&i§() : void
      {
         var _loc1_:Array = null;
         var _loc2_:int = 0;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(this.§0"+§ && this.§0"+§.length < this.§"" §())
         {
            throw new Error("Not enough level names defined for episode: " + this.§0"+§.length + " names, " + this.§"" §() + " levels");
         }
         if(this.§0"+§ == null)
         {
            _loc1_ = new Array();
            for each(_loc2_ in this.§!!%§)
            {
               _loc3_ = this.getDefaultLevelNamesForPage(_loc2_);
               for each(_loc4_ in _loc3_)
               {
                  _loc1_.push(_loc4_);
               }
            }
            this.§0"+§ = _loc1_;
         }
      }
      
      public function §4!+§() : Array
      {
         this.§&i§();
         return this.§0"+§.concat();
      }
      
      public function §<",§(param1:String) : int
      {
         var _loc2_:int = this.§0"+§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            return _loc2_ / this.§>;§;
         }
         return -1;
      }
      
      public function §`!1§(param1:String) : int
      {
         var _loc2_:int = this.§0"+§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            return _loc2_ % this.§>;§;
         }
         return -1;
      }
      
      public function getNextLevelId(param1:String) : String
      {
         this.§&i§();
         var _loc2_:int = this.§!u§(param1);
         if(_loc2_ >= 0 && _loc2_ < this.§0"+§.length - 1)
         {
            return this.§0"+§[_loc2_ + 1];
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
         return this.§^9§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§^9§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§>;§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§>;§ = param1;
      }
      
      public function set §8o§(param1:Array) : void
      {
         this.§=E§ = param1;
      }
      
      public function get currentPage() : int
      {
         return this.§'"5§;
      }
      
      public function set currentPage(param1:int) : void
      {
         if(param1 >= 0 && param1 < this.§3"5§)
         {
            this.§'"5§ = param1;
         }
      }
      
      public function get §3"5§() : int
      {
         return this.§!!%§.length;
      }
      
      public function getPageIndex(param1:int) : int
      {
         if(param1 >= 0 && param1 < this.§3"5§)
         {
            return this.§!!%§[param1];
         }
         return -1;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         var _loc2_:String = null;
         this.§!!%§ = new Vector.<int>();
         for each(_loc2_ in param1)
         {
            this.§!!%§.push(parseInt(_loc2_));
         }
      }
      
      public function §]!h§(param1:String, param2:String) : void
      {
         this.§8!z§[param1] = param2;
      }
      
      public function getCutScene(param1:String) : String
      {
         return this.§8!z§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§[!n§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§[!n§ = param1;
      }
      
      public function get §-!1§() : String
      {
         return this.§4"6§;
      }
      
      public function set §-!1§(param1:String) : void
      {
         this.§4"6§ = param1;
      }
      
      public function get §7N§() : String
      {
         return this.§-I§;
      }
      
      public function set §7N§(param1:String) : void
      {
         this.§-I§ = param1;
      }
      
      public function get writtenName() : String
      {
         return this.§&!#§;
      }
      
      public function set writtenName(param1:String) : void
      {
         this.§&!#§ = param1;
      }
      
      public function §'n§(param1:String, param2:§[d§) : void
      {
         this.§=!S§[param1] = param2;
      }
      
      public function §?!,§(param1:String) : §[d§
      {
         return this.§=!S§[param1];
      }
      
      public function get §8"'§() : Boolean
      {
         return this.§,d§;
      }
      
      public function set §8"'§(param1:Boolean) : void
      {
         this.§,d§ = param1;
      }
      
      public function get §;!_§() : Boolean
      {
         return this.§[!_§;
      }
      
      public function set §;!_§(param1:Boolean) : void
      {
         this.§[!_§ = param1;
      }
   }
}
