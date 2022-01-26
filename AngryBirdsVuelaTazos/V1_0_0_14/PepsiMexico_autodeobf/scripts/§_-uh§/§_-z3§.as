package §_-uh§
{
   import flash.utils.Dictionary;
   
   public class §_-z3§
   {
       
      
      private var mName:String = "";
      
      private var §_-yS§:String = "";
      
      private var §_-NS§:String = "";
      
      private var §case§:String = "";
      
      private var §_-nZ§:Array = null;
      
      private var §_-ur§:int = 0;
      
      private var §_-kd§:Array = null;
      
      private var §_-71§:Array;
      
      private var §_-lS§:Array;
      
      private var §_-U4§:int = 0;
      
      private var §_-lU§:Dictionary;
      
      public function §_-z3§()
      {
         this.§_-lU§ = new Dictionary();
         super();
      }
      
      public function §_-wK§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §_-rr§(param1:String) : Array
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
      
      public function §_-KC§(param1:int) : Object
      {
         return this.§_-71§[param1];
      }
      
      public function §_-nJ§(param1:int) : String
      {
         return this.§_-lS§[param1];
      }
      
      public function §_-Of§(param1:String) : Boolean
      {
         return this.§_-Q6§().indexOf(param1) != -1;
      }
      
      public function §_-Q6§() : Array
      {
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(this.§_-kd§ == null)
         {
            _loc1_ = new Array();
            for each(_loc2_ in this.pageIndexes)
            {
               _loc3_ = this.§_-rr§(_loc2_);
               for each(_loc4_ in _loc3_)
               {
                  _loc1_.push(_loc4_);
               }
            }
            this.§_-kd§ = _loc1_;
            return _loc1_;
         }
         return this.§_-kd§;
      }
      
      public function §_-ru§(param1:String) : String
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
         return this.§_-yS§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§_-yS§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§_-ur§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§_-ur§ = param1;
      }
      
      public function get §_-Bo§() : Array
      {
         return this.§_-kd§;
      }
      
      public function get §_-F1§() : Array
      {
         return this.§_-71§;
      }
      
      public function set §_-F1§(param1:Array) : void
      {
         this.§_-71§ = param1;
      }
      
      public function get currentPage() : int
      {
         return this.§_-U4§;
      }
      
      public function set currentPage(param1:int) : void
      {
         this.§_-U4§ = param1;
      }
      
      public function get pageIndexes() : Array
      {
         return this.§_-nZ§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         this.§_-nZ§ = param1;
      }
      
      public function §_-uL§(param1:String, param2:String) : void
      {
         this.§_-lU§[param1] = param2;
      }
      
      public function §_-un§(param1:String) : String
      {
         return this.§_-lU§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§_-lS§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§_-lS§ = param1;
      }
      
      public function get §_-Km§() : String
      {
         return this.§_-NS§;
      }
      
      public function set §_-Km§(param1:String) : void
      {
         this.§_-NS§ = param1;
      }
      
      public function get §_-vE§() : String
      {
         return this.§case§;
      }
      
      public function set §_-vE§(param1:String) : void
      {
         this.§case§ = param1;
      }
   }
}
