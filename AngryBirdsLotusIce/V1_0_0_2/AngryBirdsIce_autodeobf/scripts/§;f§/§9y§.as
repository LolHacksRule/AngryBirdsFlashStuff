package §;f§
{
   import flash.utils.Dictionary;
   
   public class §9y§
   {
       
      
      private var §;!"§:String = "";
      
      private var mName:String = "";
      
      private var §[x§:String = "";
      
      private var §1D§:String = "";
      
      private var §>P§:String = "";
      
      private var §"`§:Array = null;
      
      private var §9[§:int = 0;
      
      private var §"G§:Array = null;
      
      private var §]!§:Array;
      
      private var §?!D§:Array;
      
      private var §?§:int = 0;
      
      private var §'>§:Dictionary;
      
      public function §9y§()
      {
         this.§'>§ = new Dictionary();
         super();
      }
      
      public function §2S§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §?!0§(param1:String) : Array
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
      
      public function §'<§(param1:int) : Object
      {
         return this.§]!§[param1];
      }
      
      public function §;R§(param1:int) : String
      {
         return this.§?!D§[param1];
      }
      
      public function §^5§(param1:String) : Boolean
      {
         return this.§if §().indexOf(param1) != -1;
      }
      
      public function §if §() : Array
      {
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(this.§"G§ == null)
         {
            _loc1_ = new Array();
            for each(_loc2_ in this.pageIndexes)
            {
               _loc3_ = this.§?!0§(_loc2_);
               for each(_loc4_ in _loc3_)
               {
                  _loc1_.push(_loc4_);
               }
            }
            this.§"G§ = _loc1_;
            return _loc1_;
         }
         return this.§"G§;
      }
      
      public function §4L§(param1:String) : int
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
      
      public function §6!§(param1:String) : String
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
         return this.§[x§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§[x§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§9[§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§9[§ = param1;
      }
      
      public function get §3!9§() : Array
      {
         return this.§"G§;
      }
      
      public function get §2n§() : Array
      {
         return this.§]!§;
      }
      
      public function set §2n§(param1:Array) : void
      {
         this.§]!§ = param1;
      }
      
      public function get §8w§() : int
      {
         return this.§?§;
      }
      
      public function set §8w§(param1:int) : void
      {
         if(param1 >= 0 && param1 < this.pageIndexes.length)
         {
            this.§?§ = param1;
         }
      }
      
      public function get pageIndexes() : Array
      {
         return this.§"`§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         this.§"`§ = param1;
      }
      
      public function §1<§(param1:String, param2:String) : void
      {
         this.§'>§[param1] = param2;
      }
      
      public function §#$§(param1:String) : String
      {
         return this.§'>§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§?!D§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§?!D§ = param1;
      }
      
      public function get §&C§() : String
      {
         return this.§1D§;
      }
      
      public function set §&C§(param1:String) : void
      {
         this.§1D§ = param1;
      }
      
      public function get §!F§() : String
      {
         return this.§>P§;
      }
      
      public function set §!F§(param1:String) : void
      {
         this.§>P§ = param1;
      }
      
      public function get writtenName() : String
      {
         return this.§;!"§;
      }
      
      public function set writtenName(param1:String) : void
      {
         this.§;!"§ = param1;
      }
   }
}
