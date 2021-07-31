package §1!-§
{
   import flash.utils.Dictionary;
   
   public class §2n§
   {
       
      
      private var §>H§:String = "";
      
      private var mName:String = "";
      
      private var §2"§:String = "";
      
      private var §-T§:String = "";
      
      private var §8!"§:String = "";
      
      private var §>!$§:Array = null;
      
      private var §8!3§:int = 0;
      
      private var §@R§:Array = null;
      
      private var §=!@§:Array;
      
      private var §-W§:Array;
      
      private var §1x§:int = 0;
      
      private var §'d§:Dictionary;
      
      public function §2n§()
      {
         this.§'d§ = new Dictionary();
         super();
      }
      
      public function §7I§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §1M§(param1:String) : Array
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
      
      public function §7=§(param1:int) : Object
      {
         return this.§=!@§[param1];
      }
      
      public function §"Q§(param1:int) : String
      {
         return this.§-W§[param1];
      }
      
      public function §=9§(param1:String) : Boolean
      {
         return this.§=!N§().indexOf(param1) != -1;
      }
      
      public function §=!N§() : Array
      {
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(this.§@R§ == null)
         {
            _loc1_ = new Array();
            for each(_loc2_ in this.pageIndexes)
            {
               _loc3_ = this.§1M§(_loc2_);
               for each(_loc4_ in _loc3_)
               {
                  _loc1_.push(_loc4_);
               }
            }
            this.§@R§ = _loc1_;
            return _loc1_;
         }
         return this.§@R§;
      }
      
      public function §;N§(param1:String) : int
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
      
      public function §4E§(param1:String) : String
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
         return this.§2"§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§2"§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§8!3§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§8!3§ = param1;
      }
      
      public function get §8!?§() : Array
      {
         return this.§@R§;
      }
      
      public function get § 9§() : Array
      {
         return this.§=!@§;
      }
      
      public function set § 9§(param1:Array) : void
      {
         this.§=!@§ = param1;
      }
      
      public function get §>!=§() : int
      {
         return this.§1x§;
      }
      
      public function set §>!=§(param1:int) : void
      {
         if(param1 >= 0 && param1 < this.pageIndexes.length)
         {
            this.§1x§ = param1;
         }
      }
      
      public function get pageIndexes() : Array
      {
         return this.§>!$§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         this.§>!$§ = param1;
      }
      
      public function §2!E§(param1:String, param2:String) : void
      {
         this.§'d§[param1] = param2;
      }
      
      public function §1w§(param1:String) : String
      {
         return this.§'d§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§-W§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§-W§ = param1;
      }
      
      public function get §-!'§() : String
      {
         return this.§-T§;
      }
      
      public function set §-!'§(param1:String) : void
      {
         this.§-T§ = param1;
      }
      
      public function get §6!>§() : String
      {
         return this.§8!"§;
      }
      
      public function set §6!>§(param1:String) : void
      {
         this.§8!"§ = param1;
      }
      
      public function get writtenName() : String
      {
         return this.§>H§;
      }
      
      public function set writtenName(param1:String) : void
      {
         this.§>H§ = param1;
      }
   }
}
