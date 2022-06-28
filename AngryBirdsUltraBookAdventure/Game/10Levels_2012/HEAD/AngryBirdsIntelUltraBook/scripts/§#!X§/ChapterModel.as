package §#!X§
{
   import flash.utils.Dictionary;
   
   public class ChapterModel
   {
       
      
      private var §=?§:String = "";
      
      private var mName:String = "";
      
      private var §?!J§:String = "";
      
      private var §+!E§:String = "";
      
      private var §@j§:String = "";
      
      private var §!;§:Array = null;
      
      private var §+k§:int = 0;
      
      private var §66§:Array = null;
      
      private var §4!@§:Array;
      
      private var §04§:Array;
      
      private var §?f§:int = 0;
      
      private var §;!R§:Dictionary;
      
      public function ChapterModel()
      {
         this.§;!R§ = new Dictionary();
         super();
      }
      
      public function §#!%§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §]l§(param1:String) : Array
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
      
      public function §>!O§(param1:int) : Object
      {
         return this.§4!@§[param1];
      }
      
      public function §4[§(param1:int) : String
      {
         return this.§04§[param1];
      }
      
      public function §15§(param1:String) : Boolean
      {
         return this.§-Y§().indexOf(param1) != -1;
      }
      
      public function §-Y§() : Array
      {
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(this.§66§ == null)
         {
            _loc1_ = new Array();
            for each(_loc2_ in this.pageIndexes)
            {
               _loc3_ = this.§]l§(_loc2_);
               for each(_loc4_ in _loc3_)
               {
                  _loc1_.push(_loc4_);
               }
            }
            this.§66§ = _loc1_;
            return _loc1_;
         }
         return this.§66§;
      }
      
      public function § !,§(param1:String) : int
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
      
      public function §`l§(param1:String) : String
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
         return this.§?!J§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§?!J§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§+k§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§+k§ = param1;
      }
      
      public function get levels() : Array
      {
         return this.§66§;
      }
      
      public function get §79§() : Array
      {
         return this.§4!@§;
      }
      
      public function set §79§(param1:Array) : void
      {
         this.§4!@§ = param1;
      }
      
      public function get §9!O§() : int
      {
         return this.§?f§;
      }
      
      public function set §9!O§(param1:int) : void
      {
         if(param1 >= 0 && param1 < this.pageIndexes.length)
         {
            this.§?f§ = param1;
         }
      }
      
      public function get pageIndexes() : Array
      {
         return this.§!;§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         this.§!;§ = param1;
      }
      
      public function §[K§(param1:String, param2:String) : void
      {
         this.§;!R§[param1] = param2;
      }
      
      public function §#L§(param1:String) : String
      {
         return this.§;!R§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§04§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§04§ = param1;
      }
      
      public function get §=F§() : String
      {
         return this.§+!E§;
      }
      
      public function set §=F§(param1:String) : void
      {
         this.§+!E§ = param1;
      }
      
      public function get §,`§() : String
      {
         return this.§@j§;
      }
      
      public function set §,`§(param1:String) : void
      {
         this.§@j§ = param1;
      }
      
      public function get writtenName() : String
      {
         return this.§=?§;
      }
      
      public function set writtenName(param1:String) : void
      {
         this.§=?§ = param1;
      }
   }
}
