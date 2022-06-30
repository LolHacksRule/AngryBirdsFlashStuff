package §7e§
{
   import flash.utils.Dictionary;
   
   public class §8!-§
   {
       
      
      private var §7M§:String = "";
      
      private var mName:String = "";
      
      private var §?!!§:String = "";
      
      private var §,i§:String = "";
      
      private var §<!0§:String = "";
      
      private var §#I§:Array = null;
      
      private var §#W§:int = 0;
      
      private var §5l§:Array = null;
      
      private var §1k§:Array;
      
      private var §8!A§:Array;
      
      private var §1b§:int = 0;
      
      private var §5!g§:Dictionary;
      
      public function §8!-§()
      {
         this.§5!g§ = new Dictionary();
         super();
      }
      
      public function §-!G§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §`!9§(param1:String) : Array
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
      
      public function §for §(param1:int) : Object
      {
         return this.§1k§[param1];
      }
      
      public function §%!b§(param1:int) : String
      {
         return this.§8!A§[param1];
      }
      
      public function § &§(param1:String) : Boolean
      {
         return this.§19§().indexOf(param1) != -1;
      }
      
      public function §19§() : Array
      {
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(this.§5l§ == null)
         {
            _loc1_ = new Array();
            for each(_loc2_ in this.pageIndexes)
            {
               _loc3_ = this.§`!9§(_loc2_);
               for each(_loc4_ in _loc3_)
               {
                  _loc1_.push(_loc4_);
               }
            }
            this.§5l§ = _loc1_;
            return _loc1_;
         }
         return this.§5l§;
      }
      
      public function §2i§(param1:String) : int
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
      
      public function §7$§(param1:String) : String
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
         return this.§?!!§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§?!!§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§#W§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§#W§ = param1;
      }
      
      public function get §4?§() : Array
      {
         return this.§5l§;
      }
      
      public function get §=!f§() : Array
      {
         return this.§1k§;
      }
      
      public function set §=!f§(param1:Array) : void
      {
         this.§1k§ = param1;
      }
      
      public function get §`E§() : int
      {
         return this.§1b§;
      }
      
      public function set §`E§(param1:int) : void
      {
         if(param1 >= 0 && param1 < this.pageIndexes.length)
         {
            this.§1b§ = param1;
         }
      }
      
      public function get pageIndexes() : Array
      {
         return this.§#I§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         this.§#I§ = param1;
      }
      
      public function §]N§(param1:String, param2:String) : void
      {
         this.§5!g§[param1] = param2;
      }
      
      public function §2$§(param1:String) : String
      {
         return this.§5!g§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§8!A§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§8!A§ = param1;
      }
      
      public function get § !!§() : String
      {
         return this.§,i§;
      }
      
      public function set § !!§(param1:String) : void
      {
         this.§,i§ = param1;
      }
      
      public function get §]!F§() : String
      {
         return this.§<!0§;
      }
      
      public function set §]!F§(param1:String) : void
      {
         this.§<!0§ = param1;
      }
      
      public function get writtenName() : String
      {
         return this.§7M§;
      }
      
      public function set writtenName(param1:String) : void
      {
         this.§7M§ = param1;
      }
   }
}
