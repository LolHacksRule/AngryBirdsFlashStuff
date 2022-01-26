package §_-MP§
{
   import flash.utils.Dictionary;
   
   public class §_-ZZ§
   {
       
      
      private var §_-mB§:String = "";
      
      private var mName:String = "";
      
      private var §_-3D§:String = "";
      
      private var §_-dx§:String = "";
      
      private var §_-P1§:String = "";
      
      private var §_-KB§:Array = null;
      
      private var §_-QW§:int = 0;
      
      private var §_-0m§:Array = null;
      
      private var §_-Lm§:Array;
      
      private var §_-lL§:Array;
      
      private var §_-jt§:int = 0;
      
      private var §_-Kv§:Dictionary;
      
      public function §_-ZZ§()
      {
         this.§_-Kv§ = new Dictionary();
         super();
      }
      
      public function §_-rE§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §_-TX§(param1:String) : Array
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
      
      public function §_-sw§(param1:int) : Object
      {
         return this.§_-Lm§[param1];
      }
      
      public function §_-h0§(param1:int) : String
      {
         return this.§_-lL§[param1];
      }
      
      public function §_-Rq§(param1:String) : Boolean
      {
         return this.§_-j-§().indexOf(param1) != -1;
      }
      
      public function §_-j-§() : Array
      {
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(this.§_-0m§ == null)
         {
            _loc1_ = new Array();
            for each(_loc2_ in this.pageIndexes)
            {
               _loc3_ = this.§_-TX§(_loc2_);
               for each(_loc4_ in _loc3_)
               {
                  _loc1_.push(_loc4_);
               }
            }
            this.§_-0m§ = _loc1_;
            return _loc1_;
         }
         return this.§_-0m§;
      }
      
      public function §_-Sl§(param1:String) : int
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
      
      public function § in§(param1:String) : String
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
         return this.§_-3D§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§_-3D§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§_-QW§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§_-QW§ = param1;
      }
      
      public function get §_-lH§() : Array
      {
         return this.§_-0m§;
      }
      
      public function get §_-w7§() : Array
      {
         return this.§_-Lm§;
      }
      
      public function set §_-w7§(param1:Array) : void
      {
         this.§_-Lm§ = param1;
      }
      
      public function get currentPage() : int
      {
         return this.§_-jt§;
      }
      
      public function set currentPage(param1:int) : void
      {
         if(param1 >= 0 && param1 < this.pageIndexes.length)
         {
            this.§_-jt§ = param1;
         }
      }
      
      public function get pageIndexes() : Array
      {
         return this.§_-KB§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         this.§_-KB§ = param1;
      }
      
      public function §_-hh§(param1:String, param2:String) : void
      {
         this.§_-Kv§[param1] = param2;
      }
      
      public function §_-xM§(param1:String) : String
      {
         return this.§_-Kv§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§_-lL§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§_-lL§ = param1;
      }
      
      public function get §_-uu§() : String
      {
         return this.§_-dx§;
      }
      
      public function set §_-uu§(param1:String) : void
      {
         this.§_-dx§ = param1;
      }
      
      public function get §_-OP§() : String
      {
         return this.§_-P1§;
      }
      
      public function set §_-OP§(param1:String) : void
      {
         this.§_-P1§ = param1;
      }
      
      public function get writtenName() : String
      {
         return this.§_-mB§;
      }
      
      public function set writtenName(param1:String) : void
      {
         this.§_-mB§ = param1;
      }
   }
}
