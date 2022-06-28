package §=!B§
{
   import flash.utils.Dictionary;
   
   public class §=e§
   {
       
      
      private var § D§:String = "";
      
      private var mName:String = "";
      
      private var §%T§:String = "";
      
      private var §]<§:String = "";
      
      private var §,e§:String = "";
      
      private var §1T§:Array = null;
      
      private var §!n§:int = 0;
      
      private var §6W§:Array = null;
      
      private var §#C§:Array;
      
      private var § M§:Array;
      
      private var §<,§:int = 0;
      
      private var §7k§:Dictionary;
      
      public function §=e§()
      {
         this.§7k§ = new Dictionary();
         super();
      }
      
      public function §1g§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §3p§(param1:String) : Array
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
      
      public function §&!;§(param1:int) : Object
      {
         return this.§#C§[param1];
      }
      
      public function §;!;§(param1:int) : String
      {
         return this.§ M§[param1];
      }
      
      public function §<#§(param1:String) : Boolean
      {
         return this.§%-§().indexOf(param1) != -1;
      }
      
      public function §%-§() : Array
      {
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(this.§6W§ == null)
         {
            _loc1_ = new Array();
            for each(_loc2_ in this.pageIndexes)
            {
               _loc3_ = this.§3p§(_loc2_);
               for each(_loc4_ in _loc3_)
               {
                  _loc1_.push(_loc4_);
               }
            }
            this.§6W§ = _loc1_;
            return _loc1_;
         }
         return this.§6W§;
      }
      
      public function §6!F§(param1:String) : int
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
      
      public function §+-§(param1:String) : String
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
         return this.§%T§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§%T§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§!n§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§!n§ = param1;
      }
      
      public function get § P§() : Array
      {
         return this.§6W§;
      }
      
      public function get §4u§() : Array
      {
         return this.§#C§;
      }
      
      public function set §4u§(param1:Array) : void
      {
         this.§#C§ = param1;
      }
      
      public function get §6!%§() : int
      {
         return this.§<,§;
      }
      
      public function set §6!%§(param1:int) : void
      {
         if(param1 >= 0 && param1 < this.pageIndexes.length)
         {
            this.§<,§ = param1;
         }
      }
      
      public function get pageIndexes() : Array
      {
         return this.§1T§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         this.§1T§ = param1;
      }
      
      public function §3m§(param1:String, param2:String) : void
      {
         this.§7k§[param1] = param2;
      }
      
      public function §&n§(param1:String) : String
      {
         return this.§7k§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§ M§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§ M§ = param1;
      }
      
      public function get §2L§() : String
      {
         return this.§]<§;
      }
      
      public function set §2L§(param1:String) : void
      {
         this.§]<§ = param1;
      }
      
      public function get §%!%§() : String
      {
         return this.§,e§;
      }
      
      public function set §%!%§(param1:String) : void
      {
         this.§,e§ = param1;
      }
      
      public function get writtenName() : String
      {
         return this.§ D§;
      }
      
      public function set writtenName(param1:String) : void
      {
         this.§ D§ = param1;
      }
   }
}
