package §<!M§
{
   import flash.utils.Dictionary;
   
   public class §#W§
   {
       
      
      private var §<R§:String = "";
      
      private var mName:String = "";
      
      private var §-!+§:String = "";
      
      private var §=U§:String = "";
      
      private var §7D§:String = "";
      
      private var §-!5§:Array = null;
      
      private var §<!D§:int = 0;
      
      private var §[^§:Array = null;
      
      private var §3]§:Array;
      
      private var §0L§:Array;
      
      private var §finally§:int = 0;
      
      private var §=!<§:Dictionary;
      
      public function §#W§()
      {
         this.§=!<§ = new Dictionary();
         super();
      }
      
      public function §,+§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §>!N§(param1:String) : Array
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
      
      public function §=!L§(param1:int) : Object
      {
         return this.§3]§[param1];
      }
      
      public function §@!$§(param1:int) : String
      {
         return this.§0L§[param1];
      }
      
      public function §-y§(param1:String) : Boolean
      {
         return this.§;"§().indexOf(param1) != -1;
      }
      
      public function §;"§() : Array
      {
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(this.§[^§ == null)
         {
            _loc1_ = new Array();
            for each(_loc2_ in this.pageIndexes)
            {
               _loc3_ = this.§>!N§(_loc2_);
               for each(_loc4_ in _loc3_)
               {
                  _loc1_.push(_loc4_);
               }
            }
            this.§[^§ = _loc1_;
            return _loc1_;
         }
         return this.§[^§;
      }
      
      public function §7@§(param1:String) : int
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
      
      public function § §(param1:String) : String
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
         return this.§-!+§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§-!+§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§<!D§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§<!D§ = param1;
      }
      
      public function get §1]§() : Array
      {
         return this.§[^§;
      }
      
      public function get §0;§() : Array
      {
         return this.§3]§;
      }
      
      public function set §0;§(param1:Array) : void
      {
         this.§3]§ = param1;
      }
      
      public function get §0!N§() : int
      {
         return this.§finally§;
      }
      
      public function set §0!N§(param1:int) : void
      {
         if(param1 >= 0 && param1 < this.pageIndexes.length)
         {
            this.§finally§ = param1;
         }
      }
      
      public function get pageIndexes() : Array
      {
         return this.§-!5§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         this.§-!5§ = param1;
      }
      
      public function §<X§(param1:String, param2:String) : void
      {
         this.§=!<§[param1] = param2;
      }
      
      public function §[D§(param1:String) : String
      {
         return this.§=!<§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§0L§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§0L§ = param1;
      }
      
      public function get §8Q§() : String
      {
         return this.§=U§;
      }
      
      public function set §8Q§(param1:String) : void
      {
         this.§=U§ = param1;
      }
      
      public function get §;F§() : String
      {
         return this.§7D§;
      }
      
      public function set §;F§(param1:String) : void
      {
         this.§7D§ = param1;
      }
      
      public function get writtenName() : String
      {
         return this.§<R§;
      }
      
      public function set writtenName(param1:String) : void
      {
         this.§<R§ = param1;
      }
   }
}
