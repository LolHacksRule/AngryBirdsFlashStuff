package §^]§
{
   import flash.utils.Dictionary;
   
   public class §7!K§
   {
       
      
      private var §&!0§:String = "";
      
      private var mName:String = "";
      
      private var §4Q§:String = "";
      
      private var §;r§:String = "";
      
      private var §+#§:String = "";
      
      private var §[3§:Array = null;
      
      private var §&b§:int = 0;
      
      private var §@P§:Array = null;
      
      private var §]!7§:Array;
      
      private var §]C§:Array;
      
      private var §,8§:int = 0;
      
      private var §?!=§:Dictionary;
      
      public function §7!K§()
      {
         this.§?!=§ = new Dictionary();
         super();
      }
      
      public function §-!B§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §0t§(param1:String) : Array
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
      
      public function §#!N§(param1:int) : Object
      {
         return this.§]!7§[param1];
      }
      
      public function §-7§(param1:int) : String
      {
         return this.§]C§[param1];
      }
      
      public function §1e§(param1:String) : Boolean
      {
         return this.§4!G§().indexOf(param1) != -1;
      }
      
      public function §4!G§() : Array
      {
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(this.§@P§ == null)
         {
            _loc1_ = new Array();
            for each(_loc2_ in this.pageIndexes)
            {
               _loc3_ = this.§0t§(_loc2_);
               for each(_loc4_ in _loc3_)
               {
                  _loc1_.push(_loc4_);
               }
            }
            this.§@P§ = _loc1_;
            return _loc1_;
         }
         return this.§@P§;
      }
      
      public function §"!#§(param1:String) : int
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
      
      public function §6J§(param1:String) : String
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
         return this.§4Q§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§4Q§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§&b§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§&b§ = param1;
      }
      
      public function get §+8§() : Array
      {
         return this.§@P§;
      }
      
      public function get §8!L§() : Array
      {
         return this.§]!7§;
      }
      
      public function set §8!L§(param1:Array) : void
      {
         this.§]!7§ = param1;
      }
      
      public function get §9!F§() : int
      {
         return this.§,8§;
      }
      
      public function set §9!F§(param1:int) : void
      {
         if(param1 >= 0 && param1 < this.pageIndexes.length)
         {
            this.§,8§ = param1;
         }
      }
      
      public function get pageIndexes() : Array
      {
         return this.§[3§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         this.§[3§ = param1;
      }
      
      public function §&L§(param1:String, param2:String) : void
      {
         this.§?!=§[param1] = param2;
      }
      
      public function §?3§(param1:String) : String
      {
         return this.§?!=§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§]C§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§]C§ = param1;
      }
      
      public function get §9`§() : String
      {
         return this.§;r§;
      }
      
      public function set §9`§(param1:String) : void
      {
         this.§;r§ = param1;
      }
      
      public function get §@<§() : String
      {
         return this.§+#§;
      }
      
      public function set §@<§(param1:String) : void
      {
         this.§+#§ = param1;
      }
      
      public function get writtenName() : String
      {
         return this.§&!0§;
      }
      
      public function set writtenName(param1:String) : void
      {
         this.§&!0§ = param1;
      }
   }
}
