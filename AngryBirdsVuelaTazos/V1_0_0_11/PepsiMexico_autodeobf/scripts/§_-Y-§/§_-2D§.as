package §_-Y-§
{
   import flash.utils.Dictionary;
   
   public class §_-2D§
   {
       
      
      private var mName:String = "";
      
      private var §_-hw§:String = "";
      
      private var §_-T8§:String = "";
      
      private var §_-1u§:String = "";
      
      private var §_-us§:Array = null;
      
      private var §_-H§:int = 0;
      
      private var §_-qB§:Array = null;
      
      private var §_-Pi§:Array;
      
      private var §_-n8§:Array;
      
      private var §_-Bm§:int = 0;
      
      private var §_-C5§:Dictionary;
      
      public function §_-2D§()
      {
         this.§_-C5§ = new Dictionary();
         super();
      }
      
      public function §_-vj§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §_-bc§(param1:String) : Array
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
      
      public function §_-8J§(param1:int) : Object
      {
         return this.§_-Pi§[param1];
      }
      
      public function §_-9z§(param1:int) : String
      {
         return this.§_-n8§[param1];
      }
      
      public function §_-CY§(param1:String) : Boolean
      {
         return this.§_-k1§().indexOf(param1) != -1;
      }
      
      public function §_-k1§() : Array
      {
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(this.§_-qB§ == null)
         {
            _loc1_ = new Array();
            for each(_loc2_ in this.pageIndexes)
            {
               _loc3_ = this.§_-bc§(_loc2_);
               for each(_loc4_ in _loc3_)
               {
                  _loc1_.push(_loc4_);
               }
            }
            this.§_-qB§ = _loc1_;
            return _loc1_;
         }
         return this.§_-qB§;
      }
      
      public function §_-Jo§(param1:String) : String
      {
         var _loc4_:Number = NaN;
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
         return this.§_-hw§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§_-hw§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§_-H§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§_-H§ = param1;
      }
      
      public function get §_-wv§() : Array
      {
         return this.§_-qB§;
      }
      
      public function get §_-i6§() : Array
      {
         return this.§_-Pi§;
      }
      
      public function set §_-i6§(param1:Array) : void
      {
         this.§_-Pi§ = param1;
      }
      
      public function get currentPage() : int
      {
         return this.§_-Bm§;
      }
      
      public function set currentPage(param1:int) : void
      {
         this.§_-Bm§ = param1;
      }
      
      public function get pageIndexes() : Array
      {
         return this.§_-us§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         this.§_-us§ = param1;
      }
      
      public function §_-v-§(param1:String, param2:String) : void
      {
         this.§_-C5§[param1] = param2;
      }
      
      public function §_-EI§(param1:String) : String
      {
         return this.§_-C5§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§_-n8§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§_-n8§ = param1;
      }
      
      public function get §_-Om§() : String
      {
         return this.§_-T8§;
      }
      
      public function set §_-Om§(param1:String) : void
      {
         this.§_-T8§ = param1;
      }
      
      public function get §_-qx§() : String
      {
         return this.§_-1u§;
      }
      
      public function set §_-qx§(param1:String) : void
      {
         this.§_-1u§ = param1;
      }
   }
}
