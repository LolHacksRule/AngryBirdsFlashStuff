package §7_§
{
   import flash.utils.Dictionary;
   
   public class §3!Q§
   {
       
      
      private var §!<§:String = "";
      
      private var mName:String = "";
      
      private var §[6§:String = "";
      
      private var §]!G§:String = "";
      
      private var §<!m§:String = "";
      
      private var § x§:Array = null;
      
      private var §%8§:int = 0;
      
      private var §0o§:Array = null;
      
      private var §&a§:Array;
      
      private var § m§:Array;
      
      private var §7D§:int = 0;
      
      private var §&9§:Dictionary;
      
      public function §3!Q§()
      {
         this.§&9§ = new Dictionary();
         super();
      }
      
      public function §7k§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §,E§(param1:String) : Array
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
      
      public function §]v§(param1:int) : Object
      {
         return this.§&a§[param1];
      }
      
      public function §;<§(param1:int) : String
      {
         return this.§ m§[param1];
      }
      
      public function §?e§(param1:String) : Boolean
      {
         return this.§3-§().indexOf(param1) != -1;
      }
      
      public function §3-§() : Array
      {
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(this.§0o§ == null)
         {
            _loc1_ = new Array();
            for each(_loc2_ in this.pageIndexes)
            {
               _loc3_ = this.§,E§(_loc2_);
               for each(_loc4_ in _loc3_)
               {
                  _loc1_.push(_loc4_);
               }
            }
            this.§0o§ = _loc1_;
            return _loc1_;
         }
         return this.§0o§;
      }
      
      public function §+!b§(param1:String) : int
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
      
      public function §3!B§(param1:String) : String
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
         return this.§[6§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§[6§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§%8§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§%8§ = param1;
      }
      
      public function get §0l§() : Array
      {
         return this.§0o§;
      }
      
      public function get §4!`§() : Array
      {
         return this.§&a§;
      }
      
      public function set §4!`§(param1:Array) : void
      {
         this.§&a§ = param1;
      }
      
      public function get §7V§() : int
      {
         return this.§7D§;
      }
      
      public function set §7V§(param1:int) : void
      {
         if(param1 >= 0 && param1 < this.pageIndexes.length)
         {
            this.§7D§ = param1;
         }
      }
      
      public function get pageIndexes() : Array
      {
         return this.§ x§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         this.§ x§ = param1;
      }
      
      public function §2!]§(param1:String, param2:String) : void
      {
         this.§&9§[param1] = param2;
      }
      
      public function §#!@§(param1:String) : String
      {
         return this.§&9§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§ m§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§ m§ = param1;
      }
      
      public function get §=D§() : String
      {
         return this.§]!G§;
      }
      
      public function set §=D§(param1:String) : void
      {
         this.§]!G§ = param1;
      }
      
      public function get §5!X§() : String
      {
         return this.§<!m§;
      }
      
      public function set §5!X§(param1:String) : void
      {
         this.§<!m§ = param1;
      }
      
      public function get writtenName() : String
      {
         return this.§!<§;
      }
      
      public function set writtenName(param1:String) : void
      {
         this.§!<§ = param1;
      }
   }
}
