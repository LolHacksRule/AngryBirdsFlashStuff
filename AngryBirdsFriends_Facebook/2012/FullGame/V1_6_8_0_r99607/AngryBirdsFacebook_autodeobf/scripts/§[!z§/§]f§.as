package §[!z§
{
   import flash.utils.Dictionary;
   
   public class §]f§
   {
       
      
      private var §]"1§:String = "";
      
      private var mName:String = "";
      
      private var §&"§:String = "";
      
      private var §`L§:String = "";
      
      private var §8!R§:String = "";
      
      private var §;"9§:Array = null;
      
      private var §1;§:int = 0;
      
      private var §!K§:Array = null;
      
      private var §2;§:Array;
      
      private var §,"3§:Array;
      
      private var §3A§:int = 0;
      
      private var §+h§:Dictionary;
      
      public function §]f§()
      {
         this.§+h§ = new Dictionary();
         super();
      }
      
      public function §2#§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function § !%§(param1:String) : Array
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
      
      public function §2!u§(param1:int) : Object
      {
         return this.§2;§[param1];
      }
      
      public function §&"4§(param1:int) : String
      {
         return this.§,"3§[param1];
      }
      
      public function §3n§(param1:String) : Boolean
      {
         return this.§5!p§().indexOf(param1) != -1;
      }
      
      public function §5!p§() : Array
      {
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(this.§!K§ == null)
         {
            _loc1_ = new Array();
            for each(_loc2_ in this.pageIndexes)
            {
               _loc3_ = this.§ !%§(_loc2_);
               for each(_loc4_ in _loc3_)
               {
                  _loc1_.push(_loc4_);
               }
            }
            this.§!K§ = _loc1_;
            return _loc1_;
         }
         return this.§!K§;
      }
      
      public function §&t§(param1:String) : int
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
      
      public function §3$§(param1:String) : String
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
         return this.§&"§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§&"§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§1;§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§1;§ = param1;
      }
      
      public function get levels() : Array
      {
         return this.§!K§;
      }
      
      public function get §&9§() : Array
      {
         return this.§2;§;
      }
      
      public function set §&9§(param1:Array) : void
      {
         this.§2;§ = param1;
      }
      
      public function get §4z§() : int
      {
         return this.§3A§;
      }
      
      public function set §4z§(param1:int) : void
      {
         if(param1 >= 0 && param1 < this.pageIndexes.length)
         {
            this.§3A§ = param1;
         }
      }
      
      public function get pageIndexes() : Array
      {
         return this.§;"9§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         this.§;"9§ = param1;
      }
      
      public function §@!-§(param1:String, param2:String) : void
      {
         this.§+h§[param1] = param2;
      }
      
      public function §>z§(param1:String) : String
      {
         return this.§+h§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§,"3§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§,"3§ = param1;
      }
      
      public function get §&#§() : String
      {
         return this.§`L§;
      }
      
      public function set §&#§(param1:String) : void
      {
         this.§`L§ = param1;
      }
      
      public function get §@i§() : String
      {
         return this.§8!R§;
      }
      
      public function set §@i§(param1:String) : void
      {
         this.§8!R§ = param1;
      }
      
      public function get writtenName() : String
      {
         return this.§]"1§;
      }
      
      public function set writtenName(param1:String) : void
      {
         this.§]"1§ = param1;
      }
   }
}
