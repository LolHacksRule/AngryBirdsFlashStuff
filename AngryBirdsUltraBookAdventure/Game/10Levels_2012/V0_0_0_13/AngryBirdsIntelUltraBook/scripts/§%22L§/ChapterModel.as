package §"L§
{
   import flash.utils.Dictionary;
   
   public class ChapterModel
   {
       
      
      private var §[!L§:String = "";
      
      private var mName:String = "";
      
      private var §6f§:String = "";
      
      private var §-W§:String = "";
      
      private var §super§:String = "";
      
      private var §@!P§:Array = null;
      
      private var §"!1§:int = 0;
      
      private var §`Z§:Array = null;
      
      private var §7W§:Array;
      
      private var §!!"§:Array;
      
      private var §3!&§:int = 0;
      
      private var §`!<§:Dictionary;
      
      public function ChapterModel()
      {
         this.§`!<§ = new Dictionary();
         super();
      }
      
      public function §+u§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §;Z§(param1:String) : Array
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
      
      public function §?b§(param1:int) : Object
      {
         return this.§7W§[param1];
      }
      
      public function §5J§(param1:int) : String
      {
         return this.§!!"§[param1];
      }
      
      public function §=$§(param1:String) : Boolean
      {
         return this.§&W§().indexOf(param1) != -1;
      }
      
      public function §&W§() : Array
      {
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(this.§`Z§ == null)
         {
            _loc1_ = new Array();
            for each(_loc2_ in this.pageIndexes)
            {
               _loc3_ = this.§;Z§(_loc2_);
               for each(_loc4_ in _loc3_)
               {
                  _loc1_.push(_loc4_);
               }
            }
            this.§`Z§ = _loc1_;
            return _loc1_;
         }
         return this.§`Z§;
      }
      
      public function §-u§(param1:String) : int
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
      
      public function §>!1§(param1:String) : String
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
         return this.§6f§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§6f§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§"!1§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§"!1§ = param1;
      }
      
      public function get levels() : Array
      {
         return this.§`Z§;
      }
      
      public function get §@@§() : Array
      {
         return this.§7W§;
      }
      
      public function set §@@§(param1:Array) : void
      {
         this.§7W§ = param1;
      }
      
      public function get § !_§() : int
      {
         return this.§3!&§;
      }
      
      public function set § !_§(param1:int) : void
      {
         if(param1 >= 0 && param1 < this.pageIndexes.length)
         {
            this.§3!&§ = param1;
         }
      }
      
      public function get pageIndexes() : Array
      {
         return this.§@!P§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         this.§@!P§ = param1;
      }
      
      public function §0!k§(param1:String, param2:String) : void
      {
         this.§`!<§[param1] = param2;
      }
      
      public function §9!Z§(param1:String) : String
      {
         return this.§`!<§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§!!"§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§!!"§ = param1;
      }
      
      public function get §set §() : String
      {
         return this.§-W§;
      }
      
      public function set §set §(param1:String) : void
      {
         this.§-W§ = param1;
      }
      
      public function get §8!^§() : String
      {
         return this.§super§;
      }
      
      public function set §8!^§(param1:String) : void
      {
         this.§super§ = param1;
      }
      
      public function get writtenName() : String
      {
         return this.§[!L§;
      }
      
      public function set writtenName(param1:String) : void
      {
         this.§[!L§ = param1;
      }
   }
}
