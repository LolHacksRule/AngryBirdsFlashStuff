package §1z§
{
   import §4u§.§5!t§;
   
   public class §^"6§
   {
       
      
      private var §0""§:String = "";
      
      private var mName:String = "";
      
      private var §?!x§:String = "";
      
      private var §?!,§:String = "";
      
      private var § E§:String = "";
      
      private var §+!1§:Vector.<int> = null;
      
      private var §&""§:int = 0;
      
      private var §7F§:Array = null;
      
      private var §&!M§:Array;
      
      private var §%"0§:Array;
      
      private var §=w§:int = 0;
      
      private var §<""§:§5!t§;
      
      private var §=!O§:Boolean = false;
      
      private var §^j§:Boolean = false;
      
      protected var §+!i§:§5!t§;
      
      public function §^"6§(param1:Array)
      {
         var _loc2_:String = null;
         this.§<""§ = new §5!t§();
         this.§+!i§ = new §5!t§();
         super();
         if(param1)
         {
            this.§7F§ = [];
            for each(_loc2_ in param1)
            {
               this.§7F§.push(_loc2_.toLowerCase());
            }
         }
      }
      
      public function §5W§() : int
      {
         return this.§[! § * this.levelsPerPage;
      }
      
      public function §7J§(param1:String) : int
      {
         this.§+!p§();
         return int(this.§7F§.indexOf(param1));
      }
      
      public function §#+§(param1:int) : String
      {
         this.§+!p§();
         if(param1 >= 0 && param1 < this.§7F§.length)
         {
            return this.§7F§[param1];
         }
         return null;
      }
      
      public function § !-§(param1:int) : Object
      {
         return this.§&!M§[param1];
      }
      
      public function §'!E§(param1:int) : String
      {
         return this.§%"0§[param1];
      }
      
      public function §1!L§(param1:String) : Boolean
      {
         this.§+!p§();
         return this.§7F§.indexOf(param1) != -1;
      }
      
      public function §]"4§(param1:int) : Array
      {
         var _loc3_:int = 0;
         var _loc4_:String = null;
         this.§+!p§();
         var _loc2_:Array = new Array();
         if(param1 >= 0 && param1 < this.§[! §)
         {
            _loc3_ = 0;
            while(_loc3_ < this.levelsPerPage)
            {
               _loc4_ = this.§7F§[_loc3_ + param1 * this.levelsPerPage];
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
      
      private function §+!p§() : void
      {
         var _loc1_:Array = null;
         var _loc2_:int = 0;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(this.§7F§ && this.§7F§.length < this.§5W§())
         {
            throw new Error("Not enough level names defined for episode: " + this.§7F§.length + " names, " + this.§5W§() + " levels");
         }
         if(this.§7F§ == null)
         {
            _loc1_ = new Array();
            for each(_loc2_ in this.§+!1§)
            {
               _loc3_ = this.getDefaultLevelNamesForPage(_loc2_);
               for each(_loc4_ in _loc3_)
               {
                  _loc1_.push(_loc4_);
               }
            }
            this.§7F§ = _loc1_;
         }
      }
      
      public function §@,§() : Array
      {
         this.§+!p§();
         return this.§7F§.concat();
      }
      
      public function §1t§(param1:String) : int
      {
         var _loc2_:int = this.§7F§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            return _loc2_ / this.§&""§;
         }
         return -1;
      }
      
      public function §=?§(param1:String) : int
      {
         var _loc2_:int = this.§7F§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            return _loc2_ % this.§&""§;
         }
         return -1;
      }
      
      public function getNextLevelId(param1:String) : String
      {
         this.§+!p§();
         var _loc2_:int = this.§7J§(param1);
         if(_loc2_ >= 0 && _loc2_ < this.§7F§.length - 1)
         {
            return this.§7F§[_loc2_ + 1];
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
         return this.§?!x§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§?!x§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§&""§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§&""§ = param1;
      }
      
      public function set §=!6§(param1:Array) : void
      {
         this.§&!M§ = param1;
      }
      
      public function get currentPage() : int
      {
         return this.§=w§;
      }
      
      public function set currentPage(param1:int) : void
      {
         if(param1 >= 0 && param1 < this.§[! §)
         {
            this.§=w§ = param1;
         }
      }
      
      public function get §[! §() : int
      {
         return this.§+!1§.length;
      }
      
      public function getPageIndex(param1:int) : int
      {
         if(param1 >= 0 && param1 < this.§[! §)
         {
            return this.§+!1§[param1];
         }
         return -1;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         var _loc2_:String = null;
         this.§+!1§ = new Vector.<int>();
         for each(_loc2_ in param1)
         {
            this.§+!1§.push(parseInt(_loc2_));
         }
      }
      
      public function §&!z§(param1:String, param2:String) : void
      {
         this.§<""§[param1] = param2;
      }
      
      public function getCutScene(param1:String) : String
      {
         return this.§<""§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§%"0§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§%"0§ = param1;
      }
      
      public function get §8!E§() : String
      {
         return this.§?!,§;
      }
      
      public function set §8!E§(param1:String) : void
      {
         this.§?!,§ = param1;
      }
      
      public function get §`!R§() : String
      {
         return this.§ E§;
      }
      
      public function set §`!R§(param1:String) : void
      {
         this.§ E§ = param1;
      }
      
      public function get writtenName() : String
      {
         return this.§0""§;
      }
      
      public function set writtenName(param1:String) : void
      {
         this.§0""§ = param1;
      }
      
      public function addLevel(param1:String, param2:§2#§) : void
      {
         this.§+!i§[param1] = param2;
      }
      
      public function §<d§(param1:String) : §2#§
      {
         return this.§+!i§[param1];
      }
      
      public function get §="7§() : Boolean
      {
         return this.§=!O§;
      }
      
      public function set §="7§(param1:Boolean) : void
      {
         this.§=!O§ = param1;
      }
      
      public function get §^&§() : Boolean
      {
         return this.§^j§;
      }
      
      public function set §^&§(param1:Boolean) : void
      {
         this.§^j§ = param1;
      }
   }
}
