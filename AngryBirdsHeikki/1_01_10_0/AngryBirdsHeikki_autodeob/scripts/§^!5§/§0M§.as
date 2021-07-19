package §^!5§
{
   import flash.utils.Dictionary;
   
   public class §0M§
   {
       
      
      private var §#!@§:String = "";
      
      private var mName:String = "";
      
      private var §^!M§:String = "";
      
      private var §60§:String = "";
      
      private var § !B§:String = "";
      
      private var §do§:Array = null;
      
      private var § var§:int = 0;
      
      private var §#,§:Array = null;
      
      private var §=M§:Array;
      
      private var §"k§:Array;
      
      private var §2!T§:int = 0;
      
      private var §,%§:Dictionary;
      
      public function §0M§()
      {
         this.§,%§ = new Dictionary();
         super();
      }
      
      public function §?M§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §[q§(param1:String) : Array
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
      
      public function §"w§(param1:int) : Object
      {
         return this.§=M§[param1];
      }
      
      public function §^!$§(param1:int) : String
      {
         return this.§"k§[param1];
      }
      
      public function §6!^§(param1:String) : Boolean
      {
         return this.§9$§().indexOf(param1) != -1;
      }
      
      public function §9$§() : Array
      {
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(this.§#,§ == null)
         {
            _loc1_ = new Array();
            for each(_loc2_ in this.pageIndexes)
            {
               _loc3_ = this.§[q§(_loc2_);
               for each(_loc4_ in _loc3_)
               {
                  _loc1_.push(_loc4_);
               }
            }
            this.§#,§ = _loc1_;
            return _loc1_;
         }
         return this.§#,§;
      }
      
      public function §3c§(param1:String) : int
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
      
      public function §;!4§(param1:String) : String
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
         return this.§^!M§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§^!M§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§ var§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§ var§ = param1;
      }
      
      public function get §%!I§() : Array
      {
         return this.§#,§;
      }
      
      public function get §1!4§() : Array
      {
         return this.§=M§;
      }
      
      public function set §1!4§(param1:Array) : void
      {
         this.§=M§ = param1;
      }
      
      public function get §2l§() : int
      {
         return this.§2!T§;
      }
      
      public function set §2l§(param1:int) : void
      {
         if(param1 >= 0 && param1 < this.pageIndexes.length)
         {
            this.§2!T§ = param1;
         }
      }
      
      public function get pageIndexes() : Array
      {
         return this.§do§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         this.§do§ = param1;
      }
      
      public function §7W§(param1:String, param2:String) : void
      {
         this.§,%§[param1] = param2;
      }
      
      public function §4V§(param1:String) : String
      {
         return this.§,%§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§"k§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§"k§ = param1;
      }
      
      public function get §4!8§() : String
      {
         return this.§60§;
      }
      
      public function set §4!8§(param1:String) : void
      {
         this.§60§ = param1;
      }
      
      public function get §2N§() : String
      {
         return this.§ !B§;
      }
      
      public function set §2N§(param1:String) : void
      {
         this.§ !B§ = param1;
      }
      
      public function get writtenName() : String
      {
         return this.§#!@§;
      }
      
      public function set writtenName(param1:String) : void
      {
         this.§#!@§ = param1;
      }
   }
}
