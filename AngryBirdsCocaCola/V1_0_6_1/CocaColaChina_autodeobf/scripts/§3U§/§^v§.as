package §3U§
{
   import flash.utils.Dictionary;
   
   public class §^v§
   {
       
      
      private var §^C§:String = "";
      
      private var mName:String = "";
      
      private var §2j§:String = "";
      
      private var §8!$§:String = "";
      
      private var §4!F§:String = "";
      
      private var §,!V§:Array = null;
      
      private var §59§:int = 0;
      
      private var §[0§:Array = null;
      
      private var §%I§:Array;
      
      private var §@!5§:Array;
      
      private var §=!-§:int = 0;
      
      private var § d§:Dictionary;
      
      public function §^v§()
      {
         this.§ d§ = new Dictionary();
         super();
      }
      
      public function §]O§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §5!D§(param1:String) : Array
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
      
      public function §8!_§(param1:int) : Object
      {
         return this.§%I§[param1];
      }
      
      public function § !J§(param1:int) : String
      {
         return this.§@!5§[param1];
      }
      
      public function §%!_§(param1:String) : Boolean
      {
         return this.§%h§().indexOf(param1) != -1;
      }
      
      public function §%h§() : Array
      {
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(this.§[0§ == null)
         {
            _loc1_ = new Array();
            for each(_loc2_ in this.pageIndexes)
            {
               _loc3_ = this.§5!D§(_loc2_);
               for each(_loc4_ in _loc3_)
               {
                  _loc1_.push(_loc4_);
               }
            }
            this.§[0§ = _loc1_;
            return _loc1_;
         }
         return this.§[0§;
      }
      
      public function §[Q§(param1:String) : int
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
      
      public function §>1§(param1:String) : String
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
         return this.§2j§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§2j§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§59§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§59§ = param1;
      }
      
      public function get §]_§() : Array
      {
         return this.§[0§;
      }
      
      public function get §,#§() : Array
      {
         return this.§%I§;
      }
      
      public function set §,#§(param1:Array) : void
      {
         this.§%I§ = param1;
      }
      
      public function get §>!L§() : int
      {
         return this.§=!-§;
      }
      
      public function set §>!L§(param1:int) : void
      {
         if(param1 >= 0 && param1 < this.pageIndexes.length)
         {
            this.§=!-§ = param1;
         }
      }
      
      public function get pageIndexes() : Array
      {
         return this.§,!V§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         this.§,!V§ = param1;
      }
      
      public function §7!#§(param1:String, param2:String) : void
      {
         this.§ d§[param1] = param2;
      }
      
      public function §0K§(param1:String) : String
      {
         return this.§ d§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§@!5§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§@!5§ = param1;
      }
      
      public function get §5!X§() : String
      {
         return this.§8!$§;
      }
      
      public function set §5!X§(param1:String) : void
      {
         this.§8!$§ = param1;
      }
      
      public function get §&-§() : String
      {
         return this.§4!F§;
      }
      
      public function set §&-§(param1:String) : void
      {
         this.§4!F§ = param1;
      }
      
      public function get writtenName() : String
      {
         return this.§^C§;
      }
      
      public function set writtenName(param1:String) : void
      {
         this.§^C§ = param1;
      }
   }
}
