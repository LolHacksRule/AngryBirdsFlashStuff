package §_-3P§
{
   import flash.utils.Dictionary;
   
   public class §_-SQ§
   {
       
      
      private var mName:String = "";
      
      private var §_-mt§:String = "";
      
      private var §_-b§:String = "";
      
      private var §_-vg§:String = "";
      
      private var §_-Hw§:Array = null;
      
      private var §_-FF§:int = 0;
      
      private var §_-f-§:Array = null;
      
      private var §_-iz§:Array;
      
      private var §_-oY§:Array;
      
      private var §_-9h§:int = 0;
      
      private var §_-2I§:Dictionary;
      
      public function §_-SQ§()
      {
         this.§_-2I§ = new Dictionary();
         super();
      }
      
      public function §_-r-§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §_-dr§(param1:String) : Array
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
      
      public function override(param1:int) : Object
      {
         return this.§_-iz§[param1];
      }
      
      public function §_-9p§(param1:int) : String
      {
         return this.§_-oY§[param1];
      }
      
      public function §_-Dc§(param1:String) : Boolean
      {
         return this.§_-Ir§().indexOf(param1) != -1;
      }
      
      public function §_-Ir§() : Array
      {
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(this.§_-f-§ == null)
         {
            _loc1_ = new Array();
            for each(_loc2_ in this.pageIndexes)
            {
               _loc3_ = this.§_-dr§(_loc2_);
               for each(_loc4_ in _loc3_)
               {
                  _loc1_.push(_loc4_);
               }
            }
            this.§_-f-§ = _loc1_;
            return _loc1_;
         }
         return this.§_-f-§;
      }
      
      public function §_-XC§(param1:String) : String
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
         return this.§_-mt§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§_-mt§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§_-FF§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§_-FF§ = param1;
      }
      
      public function get §_-Ef§() : Array
      {
         return this.§_-f-§;
      }
      
      public function get §_-iH§() : Array
      {
         return this.§_-iz§;
      }
      
      public function set §_-iH§(param1:Array) : void
      {
         this.§_-iz§ = param1;
      }
      
      public function get currentPage() : int
      {
         return this.§_-9h§;
      }
      
      public function set currentPage(param1:int) : void
      {
         this.§_-9h§ = param1;
      }
      
      public function get pageIndexes() : Array
      {
         return this.§_-Hw§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         this.§_-Hw§ = param1;
      }
      
      public function §_-Oj§(param1:String, param2:String) : void
      {
         this.§_-2I§[param1] = param2;
      }
      
      public function §_-nC§(param1:String) : String
      {
         return this.§_-2I§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§_-oY§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§_-oY§ = param1;
      }
      
      public function get §_-4T§() : String
      {
         return this.§_-b§;
      }
      
      public function set §_-4T§(param1:String) : void
      {
         this.§_-b§ = param1;
      }
      
      public function get §_-Ru§() : String
      {
         return this.§_-vg§;
      }
      
      public function set §_-Ru§(param1:String) : void
      {
         this.§_-vg§ = param1;
      }
   }
}
