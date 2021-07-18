package §_-Qx§
{
   import flash.utils.Dictionary;
   
   public class §_-JO§
   {
       
      
      private var mName:String = "";
      
      private var §_-N1§:String = "";
      
      private var §_-Dp§:String = "";
      
      private var §_-GK§:String = "";
      
      private var §_-2e§:Array = null;
      
      private var §_-HE§:int = 0;
      
      private var §_-5x§:Array = null;
      
      private var §_-q-§:Array;
      
      private var §_-Ck§:Array;
      
      private var §_-uw§:int = 0;
      
      private var §_-X7§:Dictionary;
      
      public function §_-JO§()
      {
         this.§_-X7§ = new Dictionary();
         super();
      }
      
      public function §_-Ru§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §_-84§(param1:String) : Array
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
      
      public function §_-4Q§(param1:int) : Object
      {
         return this.§_-q-§[param1];
      }
      
      public function §_-O4§(param1:int) : String
      {
         return this.§_-Ck§[param1];
      }
      
      public function §_-Sr§(param1:String) : Boolean
      {
         return this.§_-h0§().indexOf(param1) != -1;
      }
      
      public function §_-h0§() : Array
      {
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(this.§_-5x§ == null)
         {
            _loc1_ = new Array();
            for each(_loc2_ in this.pageIndexes)
            {
               _loc3_ = this.§_-84§(_loc2_);
               for each(_loc4_ in _loc3_)
               {
                  _loc1_.push(_loc4_);
               }
            }
            this.§_-5x§ = _loc1_;
            return _loc1_;
         }
         return this.§_-5x§;
      }
      
      public function §_-ZP§(param1:String) : String
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
         return this.§_-N1§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§_-N1§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§_-HE§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§_-HE§ = param1;
      }
      
      public function get §_-7M§() : Array
      {
         return this.§_-5x§;
      }
      
      public function get §_-OD§() : Array
      {
         return this.§_-q-§;
      }
      
      public function set §_-OD§(param1:Array) : void
      {
         this.§_-q-§ = param1;
      }
      
      public function get currentPage() : int
      {
         return this.§_-uw§;
      }
      
      public function set currentPage(param1:int) : void
      {
         this.§_-uw§ = param1;
      }
      
      public function get pageIndexes() : Array
      {
         return this.§_-2e§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         this.§_-2e§ = param1;
      }
      
      public function §_-N6§(param1:String, param2:String) : void
      {
         this.§_-X7§[param1] = param2;
      }
      
      public function §_-4B§(param1:String) : String
      {
         return this.§_-X7§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§_-Ck§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§_-Ck§ = param1;
      }
      
      public function get §_-ZS§() : String
      {
         return this.§_-Dp§;
      }
      
      public function set §_-ZS§(param1:String) : void
      {
         this.§_-Dp§ = param1;
      }
      
      public function get §_-aZ§() : String
      {
         return this.§_-GK§;
      }
      
      public function set §_-aZ§(param1:String) : void
      {
         this.§_-GK§ = param1;
      }
   }
}
