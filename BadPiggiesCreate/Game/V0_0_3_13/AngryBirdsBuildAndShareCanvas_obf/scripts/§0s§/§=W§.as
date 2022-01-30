package §0s§
{
   import flash.utils.Dictionary;
   
   public class §=W§
   {
       
      
      private var §,@§:String = "";
      
      private var mName:String = "";
      
      private var §;!s§:String = "";
      
      private var §'!<§:String = "";
      
      private var §-!<§:String = "";
      
      private var §8!p§:Array = null;
      
      private var §=`§:int = 0;
      
      private var §9!_§:Array = null;
      
      private var §[@§:Array;
      
      private var §8!_§:Array;
      
      private var §4"4§:int = 0;
      
      private var §&!l§:Dictionary;
      
      public function §=W§()
      {
         this.§&!l§ = new Dictionary();
         super();
      }
      
      public function §!!5§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §0!;§(param1:String) : Array
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
      
      public function §1!s§(param1:int) : Object
      {
         return this.§[@§[param1];
      }
      
      public function §with§(param1:int) : String
      {
         return this.§8!_§[param1];
      }
      
      public function §'%§(param1:String) : Boolean
      {
         return this.§?8§().indexOf(param1) != -1;
      }
      
      public function §?8§() : Array
      {
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(this.§9!_§ == null)
         {
            _loc1_ = new Array();
            for each(_loc2_ in this.pageIndexes)
            {
               _loc3_ = this.§0!;§(_loc2_);
               for each(_loc4_ in _loc3_)
               {
                  _loc1_.push(_loc4_);
               }
            }
            this.§9!_§ = _loc1_;
            return _loc1_;
         }
         return this.§9!_§;
      }
      
      public function §^" §(param1:String) : int
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
      
      public function §6"&§(param1:String) : String
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
         return this.§;!s§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§;!s§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§=`§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§=`§ = param1;
      }
      
      public function get §2J§() : Array
      {
         return this.§9!_§;
      }
      
      public function get §7!%§() : Array
      {
         return this.§[@§;
      }
      
      public function set §7!%§(param1:Array) : void
      {
         this.§[@§ = param1;
      }
      
      public function get §^"?§() : int
      {
         return this.§4"4§;
      }
      
      public function set §^"?§(param1:int) : void
      {
         if(param1 >= 0 && param1 < this.pageIndexes.length)
         {
            this.§4"4§ = param1;
         }
      }
      
      public function get pageIndexes() : Array
      {
         return this.§8!p§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         this.§8!p§ = param1;
      }
      
      public function §3i§(param1:String, param2:String) : void
      {
         this.§&!l§[param1] = param2;
      }
      
      public function §2c§(param1:String) : String
      {
         return this.§&!l§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§8!_§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§8!_§ = param1;
      }
      
      public function get §[!3§() : String
      {
         return this.§'!<§;
      }
      
      public function set §[!3§(param1:String) : void
      {
         this.§'!<§ = param1;
      }
      
      public function get §?!L§() : String
      {
         return this.§-!<§;
      }
      
      public function set §?!L§(param1:String) : void
      {
         this.§-!<§ = param1;
      }
      
      public function get writtenName() : String
      {
         return this.§,@§;
      }
      
      public function set writtenName(param1:String) : void
      {
         this.§,@§ = param1;
      }
   }
}
