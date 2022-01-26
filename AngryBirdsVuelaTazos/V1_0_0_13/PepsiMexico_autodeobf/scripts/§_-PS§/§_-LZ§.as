package §_-PS§
{
   import flash.utils.Dictionary;
   
   public class §_-LZ§
   {
       
      
      private var mName:String = "";
      
      private var §_-mP§:String = "";
      
      private var §_-fC§:String = "";
      
      private var §_-On§:String = "";
      
      private var §_-mV§:Array = null;
      
      private var §_-P2§:int = 0;
      
      private var §_-qr§:Array = null;
      
      private var §_-RA§:Array;
      
      private var §_-Uo§:Array;
      
      private var §_-z8§:int = 0;
      
      private var §_-XG§:Dictionary;
      
      public function §_-LZ§()
      {
         this.§_-XG§ = new Dictionary();
         super();
      }
      
      public function §_-As§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §_-uk§(param1:String) : Array
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
      
      public function §_-7m§(param1:int) : Object
      {
         return this.§_-RA§[param1];
      }
      
      public function §_-uT§(param1:int) : String
      {
         return this.§_-Uo§[param1];
      }
      
      public function §_-lO§(param1:String) : Boolean
      {
         return this.§_-k2§().indexOf(param1) != -1;
      }
      
      public function §_-k2§() : Array
      {
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(this.§_-qr§ == null)
         {
            _loc1_ = new Array();
            for each(_loc2_ in this.pageIndexes)
            {
               _loc3_ = this.§_-uk§(_loc2_);
               for each(_loc4_ in _loc3_)
               {
                  _loc1_.push(_loc4_);
               }
            }
            this.§_-qr§ = _loc1_;
            return _loc1_;
         }
         return this.§_-qr§;
      }
      
      public function §_-ly§(param1:String) : String
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
         return this.§_-mP§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§_-mP§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§_-P2§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§_-P2§ = param1;
      }
      
      public function get §_-41§() : Array
      {
         return this.§_-qr§;
      }
      
      public function get §_-yY§() : Array
      {
         return this.§_-RA§;
      }
      
      public function set §_-yY§(param1:Array) : void
      {
         this.§_-RA§ = param1;
      }
      
      public function get currentPage() : int
      {
         return this.§_-z8§;
      }
      
      public function set currentPage(param1:int) : void
      {
         this.§_-z8§ = param1;
      }
      
      public function get pageIndexes() : Array
      {
         return this.§_-mV§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         this.§_-mV§ = param1;
      }
      
      public function §_-vz§(param1:String, param2:String) : void
      {
         this.§_-XG§[param1] = param2;
      }
      
      public function §_-W5§(param1:String) : String
      {
         return this.§_-XG§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§_-Uo§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§_-Uo§ = param1;
      }
      
      public function get §_-QL§() : String
      {
         return this.§_-fC§;
      }
      
      public function set §_-QL§(param1:String) : void
      {
         this.§_-fC§ = param1;
      }
      
      public function get §_-GA§() : String
      {
         return this.§_-On§;
      }
      
      public function set §_-GA§(param1:String) : void
      {
         this.§_-On§ = param1;
      }
   }
}
