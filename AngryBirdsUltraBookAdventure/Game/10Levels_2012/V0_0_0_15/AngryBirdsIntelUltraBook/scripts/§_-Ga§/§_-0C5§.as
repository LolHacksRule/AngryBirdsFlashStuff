package §_-Ga§
{
   import flash.utils.Dictionary;
   
   public class §_-0C5§
   {
       
      
      private var §_-0Bb§:String = "";
      
      private var mName:String = "";
      
      private var §_-Nt§:String = "";
      
      private var §_-b4§:String = "";
      
      private var §_-3D§:String = "";
      
      private var §_-vf§:Array = null;
      
      private var §_-36§:int = 0;
      
      private var §_-T7§:Array = null;
      
      private var §_-01S§:Array;
      
      private var §_-t7§:Array;
      
      private var §_-TW§:int = 0;
      
      private var §_-My§:Dictionary;
      
      public function §_-0C5§()
      {
         this.§_-My§ = new Dictionary();
         super();
      }
      
      public function §_-Dd§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §_-27§(param1:String) : Array
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
      
      public function §_-3k§(param1:int) : Object
      {
         return this.§_-01S§[param1];
      }
      
      public function §_-vx§(param1:int) : String
      {
         return this.§_-t7§[param1];
      }
      
      public function §_-PP§(param1:String) : Boolean
      {
         return this.§_-3R§().indexOf(param1) != -1;
      }
      
      public function §_-3R§() : Array
      {
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(this.§_-T7§ == null)
         {
            _loc1_ = new Array();
            for each(_loc2_ in this.pageIndexes)
            {
               _loc3_ = this.§_-27§(_loc2_);
               for each(_loc4_ in _loc3_)
               {
                  _loc1_.push(_loc4_);
               }
            }
            this.§_-T7§ = _loc1_;
            return _loc1_;
         }
         return this.§_-T7§;
      }
      
      public function §_-tT§(param1:String) : int
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
      
      public function §_-xE§(param1:String) : String
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
         return this.§_-Nt§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§_-Nt§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§_-36§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§_-36§ = param1;
      }
      
      public function get §_-bD§() : Array
      {
         return this.§_-T7§;
      }
      
      public function get §_-rc§() : Array
      {
         return this.§_-01S§;
      }
      
      public function set §_-rc§(param1:Array) : void
      {
         this.§_-01S§ = param1;
      }
      
      public function get §_-h-§() : int
      {
         return this.§_-TW§;
      }
      
      public function set §_-h-§(param1:int) : void
      {
         if(param1 >= 0 && param1 < this.pageIndexes.length)
         {
            this.§_-TW§ = param1;
         }
      }
      
      public function get pageIndexes() : Array
      {
         return this.§_-vf§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         this.§_-vf§ = param1;
      }
      
      public function §_-0E8§(param1:String, param2:String) : void
      {
         this.§_-My§[param1] = param2;
      }
      
      public function §_-gy§(param1:String) : String
      {
         return this.§_-My§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§_-t7§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§_-t7§ = param1;
      }
      
      public function get §_-Rx§() : String
      {
         return this.§_-b4§;
      }
      
      public function set §_-Rx§(param1:String) : void
      {
         this.§_-b4§ = param1;
      }
      
      public function get §_-dx§() : String
      {
         return this.§_-3D§;
      }
      
      public function set §_-dx§(param1:String) : void
      {
         this.§_-3D§ = param1;
      }
      
      public function get writtenName() : String
      {
         return this.§_-0Bb§;
      }
      
      public function set writtenName(param1:String) : void
      {
         this.§_-0Bb§ = param1;
      }
   }
}
