package §<i§
{
   import flash.utils.Dictionary;
   
   public class §3!l§
   {
       
      
      private var §+"8§:String = "";
      
      private var mName:String = "";
      
      private var §63§:String = "";
      
      private var §9p§:String = "";
      
      private var §07§:String = "";
      
      private var §&B§:Array = null;
      
      private var §@!H§:int = 0;
      
      private var §2!Z§:Array = null;
      
      private var §7!k§:Array;
      
      private var §<!L§:Array;
      
      private var §<!6§:int = 0;
      
      private var §?l§:Dictionary;
      
      public function §3!l§()
      {
         this.§?l§ = new Dictionary();
         super();
      }
      
      public function §;!§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §-!L§(param1:String) : Array
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
      
      public function §@G§(param1:int) : Object
      {
         return this.§7!k§[param1];
      }
      
      public function §^b§(param1:int) : String
      {
         return this.§<!L§[param1];
      }
      
      public function §,e§(param1:String) : Boolean
      {
         return this.§ "?§().indexOf(param1) != -1;
      }
      
      public function § "?§() : Array
      {
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(this.§2!Z§ == null)
         {
            _loc1_ = new Array();
            for each(_loc2_ in this.pageIndexes)
            {
               _loc3_ = this.§-!L§(_loc2_);
               for each(_loc4_ in _loc3_)
               {
                  _loc1_.push(_loc4_);
               }
            }
            this.§2!Z§ = _loc1_;
            return _loc1_;
         }
         return this.§2!Z§;
      }
      
      public function §#"<§(param1:String) : int
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
      
      public function §8E§(param1:String) : String
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
         return this.§63§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§63§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§@!H§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§@!H§ = param1;
      }
      
      public function get §=Q§() : Array
      {
         return this.§2!Z§;
      }
      
      public function get § "#§() : Array
      {
         return this.§7!k§;
      }
      
      public function set § "#§(param1:Array) : void
      {
         this.§7!k§ = param1;
      }
      
      public function get §?"8§() : int
      {
         return this.§<!6§;
      }
      
      public function set §?"8§(param1:int) : void
      {
         if(param1 >= 0 && param1 < this.pageIndexes.length)
         {
            this.§<!6§ = param1;
         }
      }
      
      public function get pageIndexes() : Array
      {
         return this.§&B§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         this.§&B§ = param1;
      }
      
      public function §""?§(param1:String, param2:String) : void
      {
         this.§?l§[param1] = param2;
      }
      
      public function §#!F§(param1:String) : String
      {
         return this.§?l§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§<!L§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§<!L§ = param1;
      }
      
      public function get §#! §() : String
      {
         return this.§9p§;
      }
      
      public function set §#! §(param1:String) : void
      {
         this.§9p§ = param1;
      }
      
      public function get § "'§() : String
      {
         return this.§07§;
      }
      
      public function set § "'§(param1:String) : void
      {
         this.§07§ = param1;
      }
      
      public function get writtenName() : String
      {
         return this.§+"8§;
      }
      
      public function set writtenName(param1:String) : void
      {
         this.§+"8§ = param1;
      }
   }
}
