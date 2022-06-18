package § "§
{
   import flash.utils.Dictionary;
   
   public class §1!9§
   {
       
      
      private var §;R§:String = "";
      
      private var mName:String = "";
      
      private var §@A§:String = "";
      
      private var §7,§:String = "";
      
      private var §,R§:String = "";
      
      private var §7"§:Array = null;
      
      private var §;s§:int = 0;
      
      private var §7!9§:Array = null;
      
      private var §,,§:Array;
      
      private var §>s§:Array;
      
      private var §4u§:int = 0;
      
      private var §^!D§:Dictionary;
      
      public function §1!9§()
      {
         this.§^!D§ = new Dictionary();
         super();
      }
      
      public function §1b§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §2!8§(param1:String) : Array
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
      
      public function §'!9§(param1:int) : Object
      {
         return this.§,,§[param1];
      }
      
      public function §]J§(param1:int) : String
      {
         return this.§>s§[param1];
      }
      
      public function §-!$§(param1:String) : Boolean
      {
         return this.§2L§().indexOf(param1) != -1;
      }
      
      public function §2L§() : Array
      {
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(this.§7!9§ == null)
         {
            _loc1_ = new Array();
            for each(_loc2_ in this.pageIndexes)
            {
               _loc3_ = this.§2!8§(_loc2_);
               for each(_loc4_ in _loc3_)
               {
                  _loc1_.push(_loc4_);
               }
            }
            this.§7!9§ = _loc1_;
            return _loc1_;
         }
         return this.§7!9§;
      }
      
      public function §5?§(param1:String) : int
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
      
      public function §9!$§(param1:String) : String
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
         return this.§@A§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§@A§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§;s§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§;s§ = param1;
      }
      
      public function get §-o§() : Array
      {
         return this.§7!9§;
      }
      
      public function get §+k§() : Array
      {
         return this.§,,§;
      }
      
      public function set §+k§(param1:Array) : void
      {
         this.§,,§ = param1;
      }
      
      public function get §&O§() : int
      {
         return this.§4u§;
      }
      
      public function set §&O§(param1:int) : void
      {
         if(param1 >= 0 && param1 < this.pageIndexes.length)
         {
            this.§4u§ = param1;
         }
      }
      
      public function get pageIndexes() : Array
      {
         return this.§7"§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         this.§7"§ = param1;
      }
      
      public function §<6§(param1:String, param2:String) : void
      {
         this.§^!D§[param1] = param2;
      }
      
      public function §`m§(param1:String) : String
      {
         return this.§^!D§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§>s§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§>s§ = param1;
      }
      
      public function get §2!4§() : String
      {
         return this.§7,§;
      }
      
      public function set §2!4§(param1:String) : void
      {
         this.§7,§ = param1;
      }
      
      public function get §0!B§() : String
      {
         return this.§,R§;
      }
      
      public function set §0!B§(param1:String) : void
      {
         this.§,R§ = param1;
      }
      
      public function get writtenName() : String
      {
         return this.§;R§;
      }
      
      public function set writtenName(param1:String) : void
      {
         this.§;R§ = param1;
      }
   }
}
