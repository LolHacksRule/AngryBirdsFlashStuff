package §!!§
{
   import flash.utils.Dictionary;
   
   public class §@+§
   {
       
      
      private var §,!,§:String = "";
      
      private var mName:String = "";
      
      private var §8!v§:String = "";
      
      private var §!!e§:String = "";
      
      private var §7§:String = "";
      
      private var §@y§:Array = null;
      
      private var §`T§:int = 0;
      
      private var §1!-§:Array = null;
      
      private var §9!g§:Array;
      
      private var §;A§:Array;
      
      private var §7O§:int = 0;
      
      private var §4L§:Dictionary;
      
      public function §@+§()
      {
         this.§4L§ = new Dictionary();
         super();
      }
      
      public function §+]§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §=H§(param1:String) : Array
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
      
      public function §8=§(param1:int) : Object
      {
         return this.§9!g§[param1];
      }
      
      public function §%c§(param1:int) : String
      {
         return this.§;A§[param1];
      }
      
      public function §]!1§(param1:String) : Boolean
      {
         return this.§-K§().indexOf(param1) != -1;
      }
      
      public function §-K§() : Array
      {
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(this.§1!-§ == null)
         {
            _loc1_ = new Array();
            for each(_loc2_ in this.pageIndexes)
            {
               _loc3_ = this.§=H§(_loc2_);
               for each(_loc4_ in _loc3_)
               {
                  _loc1_.push(_loc4_);
               }
            }
            this.§1!-§ = _loc1_;
            return _loc1_;
         }
         return this.§1!-§;
      }
      
      public function §'Z§(param1:String) : int
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
      
      public function §=L§(param1:String) : String
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
         return this.§8!v§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§8!v§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§`T§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§`T§ = param1;
      }
      
      public function get §%v§() : Array
      {
         return this.§1!-§;
      }
      
      public function get §^B§() : Array
      {
         return this.§9!g§;
      }
      
      public function set §^B§(param1:Array) : void
      {
         this.§9!g§ = param1;
      }
      
      public function get §-+§() : int
      {
         return this.§7O§;
      }
      
      public function set §-+§(param1:int) : void
      {
         if(param1 >= 0 && param1 < this.pageIndexes.length)
         {
            this.§7O§ = param1;
         }
      }
      
      public function get pageIndexes() : Array
      {
         return this.§@y§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         this.§@y§ = param1;
      }
      
      public function §5k§(param1:String, param2:String) : void
      {
         this.§4L§[param1] = param2;
      }
      
      public function §4!#§(param1:String) : String
      {
         return this.§4L§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§;A§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§;A§ = param1;
      }
      
      public function get §0l§() : String
      {
         return this.§!!e§;
      }
      
      public function set §0l§(param1:String) : void
      {
         this.§!!e§ = param1;
      }
      
      public function get §1!S§() : String
      {
         return this.§7§;
      }
      
      public function set §1!S§(param1:String) : void
      {
         this.§7§ = param1;
      }
      
      public function get writtenName() : String
      {
         return this.§,!,§;
      }
      
      public function set writtenName(param1:String) : void
      {
         this.§,!,§ = param1;
      }
   }
}
