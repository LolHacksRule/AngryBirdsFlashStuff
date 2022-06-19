package §_-T8§
{
   import flash.utils.Dictionary;
   
   public class §_-Cx§
   {
       
      
      private var §_-cK§:String = "";
      
      private var mName:String = "";
      
      private var §_-TP§:String = "";
      
      private var §_-4t§:String = "";
      
      private var §_-XH§:String = "";
      
      private var §_-lx§:Array = null;
      
      private var §_-Zv§:int = 0;
      
      private var §_-QI§:Array = null;
      
      private var §_-Fs§:Array;
      
      private var §_-0-8§:Array;
      
      private var §_-T§:int = 0;
      
      private var §_-ha§:Dictionary;
      
      public function §_-Cx§()
      {
         this.§_-ha§ = new Dictionary();
         super();
      }
      
      public function §_-a4§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §_-tW§(param1:String) : Array
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
      
      public function §_-PX§(param1:int) : Object
      {
         return this.§_-Fs§[param1];
      }
      
      public function §_-VH§(param1:int) : String
      {
         return this.§_-0-8§[param1];
      }
      
      public function §_-zf§(param1:String) : Boolean
      {
         return this.§_-5z§().indexOf(param1) != -1;
      }
      
      public function §_-5z§() : Array
      {
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(this.§_-QI§ == null)
         {
            _loc1_ = new Array();
            for each(_loc2_ in this.pageIndexes)
            {
               _loc3_ = this.§_-tW§(_loc2_);
               for each(_loc4_ in _loc3_)
               {
                  _loc1_.push(_loc4_);
               }
            }
            this.§_-QI§ = _loc1_;
            return _loc1_;
         }
         return this.§_-QI§;
      }
      
      public function §_-0P§(param1:String) : int
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
      
      public function §_-TD§(param1:String) : String
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
         return this.§_-TP§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§_-TP§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§_-Zv§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§_-Zv§ = param1;
      }
      
      public function get §_-zc§() : Array
      {
         return this.§_-QI§;
      }
      
      public function get §_-bi§() : Array
      {
         return this.§_-Fs§;
      }
      
      public function set §_-bi§(param1:Array) : void
      {
         this.§_-Fs§ = param1;
      }
      
      public function get currentPage() : int
      {
         return this.§_-T§;
      }
      
      public function set currentPage(param1:int) : void
      {
         if(param1 >= 0 && param1 < this.pageIndexes.length)
         {
            this.§_-T§ = param1;
         }
      }
      
      public function get pageIndexes() : Array
      {
         return this.§_-lx§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         this.§_-lx§ = param1;
      }
      
      public function §_-f§(param1:String, param2:String) : void
      {
         this.§_-ha§[param1] = param2;
      }
      
      public function §_-6f§(param1:String) : String
      {
         return this.§_-ha§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§_-0-8§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§_-0-8§ = param1;
      }
      
      public function get §_-iX§() : String
      {
         return this.§_-4t§;
      }
      
      public function set §_-iX§(param1:String) : void
      {
         this.§_-4t§ = param1;
      }
      
      public function get §_-nO§() : String
      {
         return this.§_-XH§;
      }
      
      public function set §_-nO§(param1:String) : void
      {
         this.§_-XH§ = param1;
      }
      
      public function get writtenName() : String
      {
         return this.§_-cK§;
      }
      
      public function set writtenName(param1:String) : void
      {
         this.§_-cK§ = param1;
      }
   }
}
