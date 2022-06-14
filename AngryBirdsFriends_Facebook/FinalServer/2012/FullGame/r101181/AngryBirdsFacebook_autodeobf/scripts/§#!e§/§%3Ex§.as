package §#!e§
{
   import flash.utils.Dictionary;
   
   public class §>x§
   {
       
      
      private var §+,§:String = "";
      
      private var mName:String = "";
      
      private var §>@§:String = "";
      
      private var §1Q§:String = "";
      
      private var §2!a§:String = "";
      
      private var §7"$§:Array = null;
      
      private var §7H§:int = 0;
      
      private var §=!J§:Array = null;
      
      private var §^!l§:Array;
      
      private var §@H§:Array;
      
      private var §`&§:int = 0;
      
      private var §7z§:Dictionary;
      
      public function §>x§()
      {
         this.§7z§ = new Dictionary();
         super();
      }
      
      public function §@>§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §<6§(param1:String) : Array
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
      
      public function §^" §(param1:int) : Object
      {
         return this.§^!l§[param1];
      }
      
      public function §?T§(param1:int) : String
      {
         return this.§@H§[param1];
      }
      
      public function §2"C§(param1:String) : Boolean
      {
         return this.§&<§().indexOf(param1) != -1;
      }
      
      public function §&<§() : Array
      {
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(this.§=!J§ == null)
         {
            _loc1_ = new Array();
            for each(_loc2_ in this.pageIndexes)
            {
               _loc3_ = this.§<6§(_loc2_);
               for each(_loc4_ in _loc3_)
               {
                  _loc1_.push(_loc4_);
               }
            }
            this.§=!J§ = _loc1_;
            return _loc1_;
         }
         return this.§=!J§;
      }
      
      public function §3"0§(param1:String) : int
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
      
      public function §6!M§(param1:String) : String
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
         return this.§>@§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§>@§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§7H§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§7H§ = param1;
      }
      
      public function get levels() : Array
      {
         return this.§=!J§;
      }
      
      public function get §7f§() : Array
      {
         return this.§^!l§;
      }
      
      public function set §7f§(param1:Array) : void
      {
         this.§^!l§ = param1;
      }
      
      public function get §9!f§() : int
      {
         return this.§`&§;
      }
      
      public function set §9!f§(param1:int) : void
      {
         if(param1 >= 0 && param1 < this.pageIndexes.length)
         {
            this.§`&§ = param1;
         }
      }
      
      public function get pageIndexes() : Array
      {
         return this.§7"$§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         this.§7"$§ = param1;
      }
      
      public function §9!j§(param1:String, param2:String) : void
      {
         this.§7z§[param1] = param2;
      }
      
      public function §<!5§(param1:String) : String
      {
         return this.§7z§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§@H§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§@H§ = param1;
      }
      
      public function get §return§() : String
      {
         return this.§1Q§;
      }
      
      public function set §return§(param1:String) : void
      {
         this.§1Q§ = param1;
      }
      
      public function get §!!u§() : String
      {
         return this.§2!a§;
      }
      
      public function set §!!u§(param1:String) : void
      {
         this.§2!a§ = param1;
      }
      
      public function get writtenName() : String
      {
         return this.§+,§;
      }
      
      public function set writtenName(param1:String) : void
      {
         this.§+,§ = param1;
      }
   }
}
