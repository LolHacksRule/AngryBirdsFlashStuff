package §_-7x§
{
   import flash.utils.Dictionary;
   
   public class §_-MT§
   {
       
      
      private var §_-Wb§:String = "";
      
      private var mName:String = "";
      
      private var §_-Xi§:String = "";
      
      private var §_-MZ§:String = "";
      
      private var §_-y5§:String = "";
      
      private var §_-4i§:Array = null;
      
      private var §_-z7§:int = 0;
      
      private var §_-Ph§:Array = null;
      
      private var §_-qI§:Array;
      
      private var §_-7m§:Array;
      
      private var §_-Px§:int = 0;
      
      private var §_-pe§:Dictionary;
      
      public function §_-MT§()
      {
         this.§_-pe§ = new Dictionary();
         super();
      }
      
      public function §_-E7§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §_-MK§(param1:String) : Array
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
      
      public function §_-UV§(param1:int) : Object
      {
         return this.§_-qI§[param1];
      }
      
      public function §_-TY§(param1:int) : String
      {
         return this.§_-7m§[param1];
      }
      
      public function §_-rc§(param1:String) : Boolean
      {
         return this.§_-yR§().indexOf(param1) != -1;
      }
      
      public function §_-yR§() : Array
      {
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(this.§_-Ph§ == null)
         {
            _loc1_ = new Array();
            for each(_loc2_ in this.pageIndexes)
            {
               _loc3_ = this.§_-MK§(_loc2_);
               for each(_loc4_ in _loc3_)
               {
                  _loc1_.push(_loc4_);
               }
            }
            this.§_-Ph§ = _loc1_;
            return _loc1_;
         }
         return this.§_-Ph§;
      }
      
      public function §_-Ap§(param1:String) : int
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
      
      public function §_-Dt§(param1:String) : String
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
         return this.§_-Xi§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§_-Xi§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§_-z7§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§_-z7§ = param1;
      }
      
      public function get §_-OU§() : Array
      {
         return this.§_-Ph§;
      }
      
      public function get §_-1p§() : Array
      {
         return this.§_-qI§;
      }
      
      public function set §_-1p§(param1:Array) : void
      {
         this.§_-qI§ = param1;
      }
      
      public function get currentPage() : int
      {
         return this.§_-Px§;
      }
      
      public function set currentPage(param1:int) : void
      {
         if(param1 >= 0 && param1 < this.pageIndexes.length)
         {
            this.§_-Px§ = param1;
         }
      }
      
      public function get pageIndexes() : Array
      {
         return this.§_-4i§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         this.§_-4i§ = param1;
      }
      
      public function §_-rg§(param1:String, param2:String) : void
      {
         this.§_-pe§[param1] = param2;
      }
      
      public function §_-3l§(param1:String) : String
      {
         return this.§_-pe§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§_-7m§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§_-7m§ = param1;
      }
      
      public function get §_-Qt§() : String
      {
         return this.§_-MZ§;
      }
      
      public function set §_-Qt§(param1:String) : void
      {
         this.§_-MZ§ = param1;
      }
      
      public function get §_-JD§() : String
      {
         return this.§_-y5§;
      }
      
      public function set §_-JD§(param1:String) : void
      {
         this.§_-y5§ = param1;
      }
      
      public function get writtenName() : String
      {
         return this.§_-Wb§;
      }
      
      public function set writtenName(param1:String) : void
      {
         this.§_-Wb§ = param1;
      }
   }
}
