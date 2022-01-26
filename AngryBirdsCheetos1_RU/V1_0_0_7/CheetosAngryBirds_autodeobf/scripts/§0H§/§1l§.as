package §0H§
{
   import flash.utils.Dictionary;
   
   public class §1l§
   {
       
      
      private var §6!!§:String = "";
      
      private var mName:String = "";
      
      private var §!U§:String = "";
      
      private var §+[§:String = "";
      
      private var §,i§:String = "";
      
      private var §`P§:Array = null;
      
      private var §0!E§:int = 0;
      
      private var §4b§:Array = null;
      
      private var §@p§:Array;
      
      private var §4-§:Array;
      
      private var §`=§:int = 0;
      
      private var §#B§:Dictionary;
      
      public function §1l§()
      {
         this.§#B§ = new Dictionary();
         super();
      }
      
      public function §#a§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §=§(param1:String) : Array
      {
         var _loc4_:String = null;
         var _loc2_:Array = new Array();
         var _loc3_:Number = 0;
         while(_loc3_ < this.levelsPerPage)
         {
            _loc4_ = param1 + "-" + (_loc3_ + 1);
            _loc2_.push(_loc4_);
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function §5!?§(param1:int) : Object
      {
         return this.§@p§[param1];
      }
      
      public function §+G§(param1:int) : String
      {
         return this.§4-§[param1];
      }
      
      public function §1!W§(param1:String) : Boolean
      {
         return this.§%![§().indexOf(param1) != -1;
      }
      
      public function §%![§() : Array
      {
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(this.§4b§ == null)
         {
            _loc1_ = new Array();
            for each(_loc2_ in this.pageIndexes)
            {
               _loc3_ = this.§=§(_loc2_);
               for each(_loc4_ in _loc3_)
               {
                  _loc1_.push(_loc4_);
               }
            }
            this.§4b§ = _loc1_;
            return _loc1_;
         }
         return this.§4b§;
      }
      
      public function §^!G§(param1:String) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.pageIndexes.length)
         {
            _loc3_ = this.pageIndexes[_loc2_];
            if(param1.indexOf(_loc3_ + "-") == 0)
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public function §]b§(param1:String) : String
      {
         var _loc4_:int = 0;
         var _loc2_:String = param1.substring(0,param1.indexOf("-"));
         var _loc3_:int = parseInt(param1.substring(param1.indexOf("-") + 1));
         if(_loc3_ < this.levelsPerPage)
         {
            return _loc2_ + "-" + (_loc3_ + 1);
         }
         _loc4_ = 0;
         while(_loc4_ < this.pageIndexes.length)
         {
            if(this.pageIndexes[_loc4_] == _loc2_)
            {
               if(_loc4_ + 1 < this.pageIndexes.length)
               {
                  return this.pageIndexes[_loc4_ + 1] + "-" + 1;
               }
               break;
            }
            _loc4_++;
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
         return this.§!U§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§!U§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§0!E§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§0!E§ = param1;
      }
      
      public function get §+V§() : Array
      {
         return this.§4b§;
      }
      
      public function get §'6§() : Array
      {
         return this.§@p§;
      }
      
      public function set §'6§(param1:Array) : void
      {
         this.§@p§ = param1;
      }
      
      public function get currentPage() : int
      {
         return this.§`=§;
      }
      
      public function set currentPage(param1:int) : void
      {
         if(param1 >= 0 && param1 < this.pageIndexes.length)
         {
            this.§`=§ = param1;
         }
      }
      
      public function get pageIndexes() : Array
      {
         return this.§`P§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         this.§`P§ = param1;
      }
      
      public function §[!W§(param1:String, param2:String) : void
      {
         this.§#B§[param1] = param2;
      }
      
      public function §`M§(param1:String) : String
      {
         return this.§#B§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§4-§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§4-§ = param1;
      }
      
      public function get §9!'§() : String
      {
         return this.§+[§;
      }
      
      public function set §9!'§(param1:String) : void
      {
         this.§+[§ = param1;
      }
      
      public function get §36§() : String
      {
         return this.§,i§;
      }
      
      public function set §36§(param1:String) : void
      {
         this.§,i§ = param1;
      }
      
      public function get writtenName() : String
      {
         return this.§6!!§;
      }
      
      public function set writtenName(param1:String) : void
      {
         this.§6!!§ = param1;
      }
   }
}
