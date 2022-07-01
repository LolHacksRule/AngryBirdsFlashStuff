package §+%§
{
   import flash.utils.Dictionary;
   
   public class §=^§
   {
       
      
      private var §&n§:String = "";
      
      private var mName:String = "";
      
      private var §+a§:String = "";
      
      private var §`!j§:String = "";
      
      private var §?!2§:String = "";
      
      private var §6!$§:Array = null;
      
      private var §4!D§:int = 0;
      
      private var §50§:Array = null;
      
      private var §,"7§:Array;
      
      private var §+![§:Array;
      
      private var §9E§:int = 0;
      
      private var §55§:Dictionary;
      
      public function §=^§()
      {
         this.§55§ = new Dictionary();
         super();
      }
      
      public function §7!%§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §#![§(param1:String) : Array
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
      
      public function §'"4§(param1:int) : Object
      {
         return this.§,"7§[param1];
      }
      
      public function §@w§(param1:int) : String
      {
         return this.§+![§[param1];
      }
      
      public function §5!n§(param1:String) : Boolean
      {
         return this.§7,§().indexOf(param1) != -1;
      }
      
      public function §7,§() : Array
      {
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(this.§50§ == null)
         {
            _loc1_ = new Array();
            for each(_loc2_ in this.pageIndexes)
            {
               _loc3_ = this.§#![§(_loc2_);
               for each(_loc4_ in _loc3_)
               {
                  _loc1_.push(_loc4_);
               }
            }
            this.§50§ = _loc1_;
            return _loc1_;
         }
         return this.§50§;
      }
      
      public function §0!=§(param1:String) : int
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
      
      public function §^!`§(param1:String) : String
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
         return this.§+a§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§+a§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§4!D§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§4!D§ = param1;
      }
      
      public function get §do§() : Array
      {
         return this.§50§;
      }
      
      public function get §;U§() : Array
      {
         return this.§,"7§;
      }
      
      public function set §;U§(param1:Array) : void
      {
         this.§,"7§ = param1;
      }
      
      public function get §@K§() : int
      {
         return this.§9E§;
      }
      
      public function set §@K§(param1:int) : void
      {
         if(param1 >= 0 && param1 < this.pageIndexes.length)
         {
            this.§9E§ = param1;
         }
      }
      
      public function get pageIndexes() : Array
      {
         return this.§6!$§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         this.§6!$§ = param1;
      }
      
      public function §0!W§(param1:String, param2:String) : void
      {
         this.§55§[param1] = param2;
      }
      
      public function §&h§(param1:String) : String
      {
         return this.§55§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§+![§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§+![§ = param1;
      }
      
      public function get §'0§() : String
      {
         return this.§`!j§;
      }
      
      public function set §'0§(param1:String) : void
      {
         this.§`!j§ = param1;
      }
      
      public function get §'!B§() : String
      {
         return this.§?!2§;
      }
      
      public function set §'!B§(param1:String) : void
      {
         this.§?!2§ = param1;
      }
      
      public function get writtenName() : String
      {
         return this.§&n§;
      }
      
      public function set writtenName(param1:String) : void
      {
         this.§&n§ = param1;
      }
   }
}
