package §!P§
{
   import §!!&§.§4!7§;
   
   public class §4K§
   {
       
      
      private var §,"+§:String = "";
      
      private var mName:String = "";
      
      private var §["$§:String = "";
      
      private var § !c§:String = "";
      
      private var §=!b§:String = "";
      
      private var §;-§:Vector.<int> = null;
      
      private var §`![§:int = 0;
      
      private var §"e§:Array = null;
      
      private var §-i§:Array;
      
      private var §&=§:Array;
      
      private var §0!h§:int = 0;
      
      private var §3"4§:§4!7§;
      
      private var §8S§:Boolean = false;
      
      private var §?!q§:Boolean = false;
      
      protected var §;"+§:§4!7§;
      
      public function §4K§(param1:Array)
      {
         var _loc2_:String = null;
         this.§3"4§ = new §4!7§();
         this.§;"+§ = new §4!7§();
         super();
         if(param1)
         {
            this.§"e§ = [];
            for each(_loc2_ in param1)
            {
               this.§"e§.push(_loc2_.toLowerCase());
            }
         }
      }
      
      public function § S§() : int
      {
         return this.§"!0§ * this.levelsPerPage;
      }
      
      public function §0"%§(param1:String) : int
      {
         this.§78§();
         return int(this.§"e§.indexOf(param1));
      }
      
      public function §3m§(param1:int) : String
      {
         this.§78§();
         if(param1 >= 0 && param1 < this.§"e§.length)
         {
            return this.§"e§[param1];
         }
         return null;
      }
      
      public function §1!o§(param1:int) : Object
      {
         return this.§-i§[param1];
      }
      
      public function §#!L§(param1:int) : String
      {
         return this.§&=§[param1];
      }
      
      public function §?!i§(param1:String) : Boolean
      {
         this.§78§();
         return this.§"e§.indexOf(param1) != -1;
      }
      
      public function §'!X§(param1:int) : Array
      {
         var _loc3_:int = 0;
         var _loc4_:String = null;
         this.§78§();
         var _loc2_:Array = new Array();
         if(param1 >= 0 && param1 < this.§"!0§)
         {
            _loc3_ = 0;
            while(_loc3_ < this.levelsPerPage)
            {
               _loc4_ = this.§"e§[_loc3_ + param1 * this.levelsPerPage];
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
      
      private function §78§() : void
      {
         var _loc1_:Array = null;
         var _loc2_:int = 0;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(this.§"e§ && this.§"e§.length < this.§ S§())
         {
            throw new Error("Not enough level names defined for episode: " + this.§"e§.length + " names, " + this.§ S§() + " levels");
         }
         if(this.§"e§ == null)
         {
            _loc1_ = new Array();
            for each(_loc2_ in this.§;-§)
            {
               _loc3_ = this.getDefaultLevelNamesForPage(_loc2_);
               for each(_loc4_ in _loc3_)
               {
                  _loc1_.push(_loc4_);
               }
            }
            this.§"e§ = _loc1_;
         }
      }
      
      public function §6!O§() : Array
      {
         this.§78§();
         return this.§"e§.concat();
      }
      
      public function §50§(param1:String) : int
      {
         var _loc2_:int = this.§"e§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            return _loc2_ / this.§`![§;
         }
         return -1;
      }
      
      public function §9o§(param1:String) : int
      {
         var _loc2_:int = this.§"e§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            return _loc2_ % this.§`![§;
         }
         return -1;
      }
      
      public function getNextLevelId(param1:String) : String
      {
         this.§78§();
         var _loc2_:int = this.§0"%§(param1);
         if(_loc2_ >= 0 && _loc2_ < this.§"e§.length - 1)
         {
            return this.§"e§[_loc2_ + 1];
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
         return this.§["$§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§["$§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§`![§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§`![§ = param1;
      }
      
      public function set §3=§(param1:Array) : void
      {
         this.§-i§ = param1;
      }
      
      public function get currentPage() : int
      {
         return this.§0!h§;
      }
      
      public function set currentPage(param1:int) : void
      {
         if(param1 >= 0 && param1 < this.§"!0§)
         {
            this.§0!h§ = param1;
         }
      }
      
      public function get §"!0§() : int
      {
         return this.§;-§.length;
      }
      
      public function getPageIndex(param1:int) : int
      {
         if(param1 >= 0 && param1 < this.§"!0§)
         {
            return this.§;-§[param1];
         }
         return -1;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         var _loc2_:String = null;
         this.§;-§ = new Vector.<int>();
         for each(_loc2_ in param1)
         {
            this.§;-§.push(parseInt(_loc2_));
         }
      }
      
      public function §super§(param1:String, param2:String) : void
      {
         this.§3"4§[param1] = param2;
      }
      
      public function getCutScene(param1:String) : String
      {
         return this.§3"4§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§&=§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§&=§ = param1;
      }
      
      public function get §`?§() : String
      {
         return this.§ !c§;
      }
      
      public function set §`?§(param1:String) : void
      {
         this.§ !c§ = param1;
      }
      
      public function get §<!-§() : String
      {
         return this.§=!b§;
      }
      
      public function set §<!-§(param1:String) : void
      {
         this.§=!b§ = param1;
      }
      
      public function get writtenName() : String
      {
         return this.§,"+§;
      }
      
      public function set writtenName(param1:String) : void
      {
         this.§,"+§ = param1;
      }
      
      public function §14§(param1:String, param2:§2"4§) : void
      {
         this.§;"+§[param1] = param2;
      }
      
      public function §5!M§(param1:String) : §2"4§
      {
         return this.§;"+§[param1];
      }
      
      public function get §19§() : Boolean
      {
         return this.§8S§;
      }
      
      public function set §19§(param1:Boolean) : void
      {
         this.§8S§ = param1;
      }
      
      public function get §-[§() : Boolean
      {
         return this.§?!q§;
      }
      
      public function set §-[§(param1:Boolean) : void
      {
         this.§?!q§ = param1;
      }
   }
}
