package §_-Su§
{
   import flash.utils.Dictionary;
   
   public class §_-N3§
   {
       
      
      private var mName:String = "";
      
      private var §_-E3§:String = "";
      
      private var §_-ca§:String = "";
      
      private var §_-tT§:String = "";
      
      private var §_-dx§:Array = null;
      
      private var §_-c-§:int = 0;
      
      private var §_-h2§:Array = null;
      
      private var §_-8D§:Array;
      
      private var §_-Et§:Array;
      
      private var override:int = 0;
      
      private var §_-Yl§:Dictionary;
      
      public function §_-N3§()
      {
         this.§_-Yl§ = new Dictionary();
         super();
      }
      
      public function §_-3e§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §_-RH§(param1:String) : Array
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
      
      public function §_-R8§(param1:int) : Object
      {
         return this.§_-8D§[param1];
      }
      
      public function §_-95§(param1:int) : String
      {
         return this.§_-Et§[param1];
      }
      
      public function §_-a8§(param1:String) : Boolean
      {
         return this.§_-GV§().indexOf(param1) != -1;
      }
      
      public function §_-GV§() : Array
      {
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(this.§_-h2§ == null)
         {
            _loc1_ = new Array();
            for each(_loc2_ in this.pageIndexes)
            {
               _loc3_ = this.§_-RH§(_loc2_);
               for each(_loc4_ in _loc3_)
               {
                  _loc1_.push(_loc4_);
               }
            }
            this.§_-h2§ = _loc1_;
            return _loc1_;
         }
         return this.§_-h2§;
      }
      
      public function §_-r3§(param1:String) : String
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
         return this.§_-E3§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§_-E3§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§_-c-§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§_-c-§ = param1;
      }
      
      public function get §_-Fc§() : Array
      {
         return this.§_-h2§;
      }
      
      public function get §_-OU§() : Array
      {
         return this.§_-8D§;
      }
      
      public function set §_-OU§(param1:Array) : void
      {
         this.§_-8D§ = param1;
      }
      
      public function get currentPage() : int
      {
         return this.override;
      }
      
      public function set currentPage(param1:int) : void
      {
         this.override = param1;
      }
      
      public function get pageIndexes() : Array
      {
         return this.§_-dx§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         this.§_-dx§ = param1;
      }
      
      public function §_-LN§(param1:String, param2:String) : void
      {
         this.§_-Yl§[param1] = param2;
      }
      
      public function §_-lG§(param1:String) : String
      {
         return this.§_-Yl§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§_-Et§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§_-Et§ = param1;
      }
      
      public function get §_-JL§() : String
      {
         return this.§_-ca§;
      }
      
      public function set §_-JL§(param1:String) : void
      {
         this.§_-ca§ = param1;
      }
      
      public function get §_-3B§() : String
      {
         return this.§_-tT§;
      }
      
      public function set §_-3B§(param1:String) : void
      {
         this.§_-tT§ = param1;
      }
   }
}
