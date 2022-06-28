package §0!N§
{
   import flash.utils.Dictionary;
   
   public class §4n§
   {
       
      
      private var §6!o§:String = "";
      
      private var mName:String = "";
      
      private var §+r§:String = "";
      
      private var §8E§:String = "";
      
      private var §30§:String = "";
      
      private var §+!y§:Array = null;
      
      private var §9!6§:int = 0;
      
      private var §0c§:Array = null;
      
      private var §=!;§:Array;
      
      private var § !<§:Array;
      
      private var §;!q§:int = 0;
      
      private var §'V§:Dictionary;
      
      public function §4n§()
      {
         this.§'V§ = new Dictionary();
         super();
      }
      
      public function §?!`§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §]!"§(param1:String) : Array
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
      
      public function §9!R§(param1:int) : Object
      {
         return this.§=!;§[param1];
      }
      
      public function §]!C§(param1:int) : String
      {
         return this.§ !<§[param1];
      }
      
      public function §'!,§(param1:String) : Boolean
      {
         return this.§3!"§().indexOf(param1) != -1;
      }
      
      public function §3!"§() : Array
      {
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(this.§0c§ == null)
         {
            _loc1_ = new Array();
            for each(_loc2_ in this.pageIndexes)
            {
               _loc3_ = this.§]!"§(_loc2_);
               for each(_loc4_ in _loc3_)
               {
                  _loc1_.push(_loc4_);
               }
            }
            this.§0c§ = _loc1_;
            return _loc1_;
         }
         return this.§0c§;
      }
      
      public function §@h§(param1:String) : int
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
      
      public function §9!j§(param1:String) : String
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
         return this.§+r§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§+r§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§9!6§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§9!6§ = param1;
      }
      
      public function get §+!v§() : Array
      {
         return this.§0c§;
      }
      
      public function get §0!"§() : Array
      {
         return this.§=!;§;
      }
      
      public function set §0!"§(param1:Array) : void
      {
         this.§=!;§ = param1;
      }
      
      public function get §-!F§() : int
      {
         return this.§;!q§;
      }
      
      public function set §-!F§(param1:int) : void
      {
         if(param1 >= 0 && param1 < this.pageIndexes.length)
         {
            this.§;!q§ = param1;
         }
      }
      
      public function get pageIndexes() : Array
      {
         return this.§+!y§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         this.§+!y§ = param1;
      }
      
      public function §&!Z§(param1:String, param2:String) : void
      {
         this.§'V§[param1] = param2;
      }
      
      public function §['§(param1:String) : String
      {
         return this.§'V§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§ !<§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§ !<§ = param1;
      }
      
      public function get §-!p§() : String
      {
         return this.§8E§;
      }
      
      public function set §-!p§(param1:String) : void
      {
         this.§8E§ = param1;
      }
      
      public function get §%V§() : String
      {
         return this.§30§;
      }
      
      public function set §%V§(param1:String) : void
      {
         this.§30§ = param1;
      }
      
      public function get writtenName() : String
      {
         return this.§6!o§;
      }
      
      public function set writtenName(param1:String) : void
      {
         this.§6!o§ = param1;
      }
   }
}
