package §"v§
{
   import flash.utils.Dictionary;
   
   public class §"! §
   {
       
      
      private var §@x§:String = "";
      
      private var mName:String = "";
      
      private var §;!§:String = "";
      
      private var §0§:String = "";
      
      private var §,4§:String = "";
      
      private var §#C§:Array = null;
      
      private var §^"7§:int = 0;
      
      private var §3V§:Array = null;
      
      private var §4!!§:Array;
      
      private var §+!6§:Array;
      
      private var §7!+§:int = 0;
      
      private var §&h§:Dictionary;
      
      public function §"! §()
      {
         this.§&h§ = new Dictionary();
         super();
      }
      
      public function §#!r§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §"b§(param1:String) : Array
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
      
      public function §!";§(param1:int) : Object
      {
         return this.§4!!§[param1];
      }
      
      public function §^"1§(param1:int) : String
      {
         return this.§+!6§[param1];
      }
      
      public function §3!q§(param1:String) : Boolean
      {
         return this.§3h§().indexOf(param1) != -1;
      }
      
      public function §3h§() : Array
      {
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(this.§3V§ == null)
         {
            _loc1_ = new Array();
            for each(_loc2_ in this.pageIndexes)
            {
               _loc3_ = this.§"b§(_loc2_);
               for each(_loc4_ in _loc3_)
               {
                  _loc1_.push(_loc4_);
               }
            }
            this.§3V§ = _loc1_;
            return _loc1_;
         }
         return this.§3V§;
      }
      
      public function §8M§(param1:String) : int
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
      
      public function §;d§(param1:String) : String
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
         return this.§;!§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§;!§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§^"7§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§^"7§ = param1;
      }
      
      public function get §'a§() : Array
      {
         return this.§3V§;
      }
      
      public function get §>!j§() : Array
      {
         return this.§4!!§;
      }
      
      public function set §>!j§(param1:Array) : void
      {
         this.§4!!§ = param1;
      }
      
      public function get §@!M§() : int
      {
         return this.§7!+§;
      }
      
      public function set §@!M§(param1:int) : void
      {
         if(param1 >= 0 && param1 < this.pageIndexes.length)
         {
            this.§7!+§ = param1;
         }
      }
      
      public function get pageIndexes() : Array
      {
         return this.§#C§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         this.§#C§ = param1;
      }
      
      public function §7"#§(param1:String, param2:String) : void
      {
         this.§&h§[param1] = param2;
      }
      
      public function §3!2§(param1:String) : String
      {
         return this.§&h§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§+!6§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§+!6§ = param1;
      }
      
      public function get §#!"§() : String
      {
         return this.§0§;
      }
      
      public function set §#!"§(param1:String) : void
      {
         this.§0§ = param1;
      }
      
      public function get §`%§() : String
      {
         return this.§,4§;
      }
      
      public function set §`%§(param1:String) : void
      {
         this.§,4§ = param1;
      }
      
      public function get writtenName() : String
      {
         return this.§@x§;
      }
      
      public function set writtenName(param1:String) : void
      {
         this.§@x§ = param1;
      }
   }
}
