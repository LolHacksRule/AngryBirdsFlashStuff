package §!!a§
{
   import flash.utils.Dictionary;
   
   public class §^!>§
   {
       
      
      private var §4!6§:String = "";
      
      private var mName:String = "";
      
      private var §]!O§:String = "";
      
      private var § !4§:String = "";
      
      private var §"l§:String = "";
      
      private var §[!4§:Array = null;
      
      private var §2F§:int = 0;
      
      private var § D§:Array = null;
      
      private var §1`§:Array;
      
      private var §9t§:Array;
      
      private var §=I§:int = 0;
      
      private var §#!;§:Dictionary;
      
      public function §^!>§()
      {
         this.§#!;§ = new Dictionary();
         super();
      }
      
      public function §9!8§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §`&§(param1:String) : Array
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
      
      public function §^G§(param1:int) : Object
      {
         return this.§1`§[param1];
      }
      
      public function §#!D§(param1:int) : String
      {
         return this.§9t§[param1];
      }
      
      public function §<!@§(param1:String) : Boolean
      {
         return this.§`!^§().indexOf(param1) != -1;
      }
      
      public function §`!^§() : Array
      {
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(this.§ D§ == null)
         {
            _loc1_ = new Array();
            for each(_loc2_ in this.pageIndexes)
            {
               _loc3_ = this.§`&§(_loc2_);
               for each(_loc4_ in _loc3_)
               {
                  _loc1_.push(_loc4_);
               }
            }
            this.§ D§ = _loc1_;
            return _loc1_;
         }
         return this.§ D§;
      }
      
      public function §^!"§(param1:String) : int
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
      
      public function §7!X§(param1:String) : String
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
         return this.§]!O§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§]!O§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§2F§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§2F§ = param1;
      }
      
      public function get §<3§() : Array
      {
         return this.§ D§;
      }
      
      public function get §[v§() : Array
      {
         return this.§1`§;
      }
      
      public function set §[v§(param1:Array) : void
      {
         this.§1`§ = param1;
      }
      
      public function get §`=§() : int
      {
         return this.§=I§;
      }
      
      public function set §`=§(param1:int) : void
      {
         if(param1 >= 0 && param1 < this.pageIndexes.length)
         {
            this.§=I§ = param1;
         }
      }
      
      public function get pageIndexes() : Array
      {
         return this.§[!4§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         this.§[!4§ = param1;
      }
      
      public function §5_§(param1:String, param2:String) : void
      {
         this.§#!;§[param1] = param2;
      }
      
      public function §#!>§(param1:String) : String
      {
         return this.§#!;§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§9t§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§9t§ = param1;
      }
      
      public function get §%"§() : String
      {
         return this.§ !4§;
      }
      
      public function set §%"§(param1:String) : void
      {
         this.§ !4§ = param1;
      }
      
      public function get §,s§() : String
      {
         return this.§"l§;
      }
      
      public function set §,s§(param1:String) : void
      {
         this.§"l§ = param1;
      }
      
      public function get writtenName() : String
      {
         return this.§4!6§;
      }
      
      public function set writtenName(param1:String) : void
      {
         this.§4!6§ = param1;
      }
   }
}
