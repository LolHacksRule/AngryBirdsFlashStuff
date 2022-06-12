package §`!n§
{
   import flash.utils.Dictionary;
   
   public class §=!-§
   {
       
      
      private var §["J§:String = "";
      
      private var mName:String = "";
      
      private var §98§:String = "";
      
      private var §,!E§:String = "";
      
      private var §,!q§:String = "";
      
      private var §5T§:Array = null;
      
      private var §%r§:int = 0;
      
      private var §^k§:Array = null;
      
      private var §2!o§:Array;
      
      private var §6i§:Array;
      
      private var §2!l§:int = 0;
      
      private var §<!%§:Dictionary;
      
      public function §=!-§()
      {
         this.§<!%§ = new Dictionary();
         super();
      }
      
      public function §!a§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §88§(param1:String) : Array
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
      
      public function §"?§(param1:int) : Object
      {
         return this.§2!o§[param1];
      }
      
      public function §+'§(param1:int) : String
      {
         return this.§6i§[param1];
      }
      
      public function §0!X§(param1:String) : Boolean
      {
         return this.§0U§().indexOf(param1) != -1;
      }
      
      public function §0U§() : Array
      {
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(this.§^k§ == null)
         {
            _loc1_ = new Array();
            for each(_loc2_ in this.pageIndexes)
            {
               _loc3_ = this.§88§(_loc2_);
               for each(_loc4_ in _loc3_)
               {
                  _loc1_.push(_loc4_);
               }
            }
            this.§^k§ = _loc1_;
            return _loc1_;
         }
         return this.§^k§;
      }
      
      public function §-8§(param1:String) : int
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
      
      public function §&4§(param1:String) : String
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
         return this.§98§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§98§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§%r§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§%r§ = param1;
      }
      
      public function get levels() : Array
      {
         return this.§^k§;
      }
      
      public function get §;a§() : Array
      {
         return this.§2!o§;
      }
      
      public function set §;a§(param1:Array) : void
      {
         this.§2!o§ = param1;
      }
      
      public function get §]!q§() : int
      {
         return this.§2!l§;
      }
      
      public function set §]!q§(param1:int) : void
      {
         if(param1 >= 0 && param1 < this.pageIndexes.length)
         {
            this.§2!l§ = param1;
         }
      }
      
      public function get pageIndexes() : Array
      {
         return this.§5T§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         this.§5T§ = param1;
      }
      
      public function §@!"§(param1:String, param2:String) : void
      {
         this.§<!%§[param1] = param2;
      }
      
      public function §&!i§(param1:String) : String
      {
         return this.§<!%§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§6i§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§6i§ = param1;
      }
      
      public function get §["6§() : String
      {
         return this.§,!E§;
      }
      
      public function set §["6§(param1:String) : void
      {
         this.§,!E§ = param1;
      }
      
      public function get §"q§() : String
      {
         return this.§,!q§;
      }
      
      public function set §"q§(param1:String) : void
      {
         this.§,!q§ = param1;
      }
      
      public function get writtenName() : String
      {
         return this.§["J§;
      }
      
      public function set writtenName(param1:String) : void
      {
         this.§["J§ = param1;
      }
   }
}
