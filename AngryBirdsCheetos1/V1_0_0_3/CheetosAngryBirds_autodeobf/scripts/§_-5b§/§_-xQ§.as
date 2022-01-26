package §_-5b§
{
   import flash.utils.Dictionary;
   
   public class §_-xQ§
   {
       
      
      private var §_-L0§:String = "";
      
      private var mName:String = "";
      
      private var §_-ar§:String = "";
      
      private var §_-0-x§:String = "";
      
      private var §_-ys§:String = "";
      
      private var §_-sv§:Array = null;
      
      private var §_-0-l§:int = 0;
      
      private var §_-u0§:Array = null;
      
      private var §_-9O§:Array;
      
      private var §_-Qp§:Array;
      
      private var §_-XW§:int = 0;
      
      private var §_-JD§:Dictionary;
      
      public function §_-xQ§()
      {
         this.§_-JD§ = new Dictionary();
         super();
      }
      
      public function §_-fr§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §_-yK§(param1:String) : Array
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
      
      public function §_-iy§(param1:int) : Object
      {
         return this.§_-9O§[param1];
      }
      
      public function §_-uo§(param1:int) : String
      {
         return this.§_-Qp§[param1];
      }
      
      public function §_-pT§(param1:String) : Boolean
      {
         return this.§_-95§().indexOf(param1) != -1;
      }
      
      public function §_-95§() : Array
      {
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(this.§_-u0§ == null)
         {
            _loc1_ = new Array();
            for each(_loc2_ in this.pageIndexes)
            {
               _loc3_ = this.§_-yK§(_loc2_);
               for each(_loc4_ in _loc3_)
               {
                  _loc1_.push(_loc4_);
               }
            }
            this.§_-u0§ = _loc1_;
            return _loc1_;
         }
         return this.§_-u0§;
      }
      
      public function §_-47§(param1:String) : int
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
      
      public function §_-iM§(param1:String) : String
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
         return this.§_-ar§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§_-ar§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§_-0-l§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§_-0-l§ = param1;
      }
      
      public function get §_-C9§() : Array
      {
         return this.§_-u0§;
      }
      
      public function get §_-Yw§() : Array
      {
         return this.§_-9O§;
      }
      
      public function set §_-Yw§(param1:Array) : void
      {
         this.§_-9O§ = param1;
      }
      
      public function get currentPage() : int
      {
         return this.§_-XW§;
      }
      
      public function set currentPage(param1:int) : void
      {
         if(param1 >= 0 && param1 < this.pageIndexes.length)
         {
            this.§_-XW§ = param1;
         }
      }
      
      public function get pageIndexes() : Array
      {
         return this.§_-sv§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         this.§_-sv§ = param1;
      }
      
      public function §_-e6§(param1:String, param2:String) : void
      {
         this.§_-JD§[param1] = param2;
      }
      
      public function §_-nT§(param1:String) : String
      {
         return this.§_-JD§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§_-Qp§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§_-Qp§ = param1;
      }
      
      public function get §_-p4§() : String
      {
         return this.§_-0-x§;
      }
      
      public function set §_-p4§(param1:String) : void
      {
         this.§_-0-x§ = param1;
      }
      
      public function get §_-Rj§() : String
      {
         return this.§_-ys§;
      }
      
      public function set §_-Rj§(param1:String) : void
      {
         this.§_-ys§ = param1;
      }
      
      public function get writtenName() : String
      {
         return this.§_-L0§;
      }
      
      public function set writtenName(param1:String) : void
      {
         this.§_-L0§ = param1;
      }
   }
}
