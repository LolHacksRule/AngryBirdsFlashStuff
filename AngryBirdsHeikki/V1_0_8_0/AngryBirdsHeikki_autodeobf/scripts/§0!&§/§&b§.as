package §0!&§
{
   import flash.utils.Dictionary;
   
   public class §&b§
   {
       
      
      private var each:String = "";
      
      private var mName:String = "";
      
      private var §4!'§:String = "";
      
      private var §`Z§:String = "";
      
      private var §1h§:String = "";
      
      private var §`2§:Array = null;
      
      private var §+!^§:int = 0;
      
      private var §<L§:Array = null;
      
      private var §^!Z§:Array;
      
      private var §3j§:Array;
      
      private var §1Z§:int = 0;
      
      private var §,s§:Dictionary;
      
      public function §&b§()
      {
         this.§,s§ = new Dictionary();
         super();
      }
      
      public function §<!?§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §`E§(param1:String) : Array
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
      
      public function §>!A§(param1:int) : Object
      {
         return this.§^!Z§[param1];
      }
      
      public function §0!H§(param1:int) : String
      {
         return this.§3j§[param1];
      }
      
      public function §[!E§(param1:String) : Boolean
      {
         return this.§,3§().indexOf(param1) != -1;
      }
      
      public function §,3§() : Array
      {
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(this.§<L§ == null)
         {
            _loc1_ = new Array();
            for each(_loc2_ in this.pageIndexes)
            {
               _loc3_ = this.§`E§(_loc2_);
               for each(_loc4_ in _loc3_)
               {
                  _loc1_.push(_loc4_);
               }
            }
            this.§<L§ = _loc1_;
            return _loc1_;
         }
         return this.§<L§;
      }
      
      public function §&x§(param1:String) : int
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
      
      public function §1+§(param1:String) : String
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
         return this.§4!'§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§4!'§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§+!^§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§+!^§ = param1;
      }
      
      public function get §2!B§() : Array
      {
         return this.§<L§;
      }
      
      public function get §;!F§() : Array
      {
         return this.§^!Z§;
      }
      
      public function set §;!F§(param1:Array) : void
      {
         this.§^!Z§ = param1;
      }
      
      public function get §9c§() : int
      {
         return this.§1Z§;
      }
      
      public function set §9c§(param1:int) : void
      {
         if(param1 >= 0 && param1 < this.pageIndexes.length)
         {
            this.§1Z§ = param1;
         }
      }
      
      public function get pageIndexes() : Array
      {
         return this.§`2§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         this.§`2§ = param1;
      }
      
      public function §]W§(param1:String, param2:String) : void
      {
         this.§,s§[param1] = param2;
      }
      
      public function §1Q§(param1:String) : String
      {
         return this.§,s§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§3j§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§3j§ = param1;
      }
      
      public function get §`+§() : String
      {
         return this.§`Z§;
      }
      
      public function set §`+§(param1:String) : void
      {
         this.§`Z§ = param1;
      }
      
      public function get §9!E§() : String
      {
         return this.§1h§;
      }
      
      public function set §9!E§(param1:String) : void
      {
         this.§1h§ = param1;
      }
      
      public function get writtenName() : String
      {
         return this.each;
      }
      
      public function set writtenName(param1:String) : void
      {
         this.each = param1;
      }
   }
}
