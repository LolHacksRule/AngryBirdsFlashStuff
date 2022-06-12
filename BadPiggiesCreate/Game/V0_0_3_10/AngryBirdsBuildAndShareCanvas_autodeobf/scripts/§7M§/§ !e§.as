package §7M§
{
   import flash.utils.Dictionary;
   
   public class § !e§
   {
       
      
      private var §'!8§:String = "";
      
      private var mName:String = "";
      
      private var §@!3§:String = "";
      
      private var §9!l§:String = "";
      
      private var §5"4§:String = "";
      
      private var §+I§:Array = null;
      
      private var §8!A§:int = 0;
      
      private var §9"#§:Array = null;
      
      private var §," §:Array;
      
      private var §=!e§:Array;
      
      private var §`!$§:int = 0;
      
      private var §3a§:Dictionary;
      
      public function § !e§()
      {
         this.§3a§ = new Dictionary();
         super();
      }
      
      public function §->§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §+p§(param1:String) : Array
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
      
      public function §9!A§(param1:int) : Object
      {
         return this.§," §[param1];
      }
      
      public function § S§(param1:int) : String
      {
         return this.§=!e§[param1];
      }
      
      public function §7%§(param1:String) : Boolean
      {
         return this.§9=§().indexOf(param1) != -1;
      }
      
      public function §9=§() : Array
      {
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(this.§9"#§ == null)
         {
            _loc1_ = new Array();
            for each(_loc2_ in this.pageIndexes)
            {
               _loc3_ = this.§+p§(_loc2_);
               for each(_loc4_ in _loc3_)
               {
                  _loc1_.push(_loc4_);
               }
            }
            this.§9"#§ = _loc1_;
            return _loc1_;
         }
         return this.§9"#§;
      }
      
      public function §+K§(param1:String) : int
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
      
      public function §7!=§(param1:String) : String
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
         return this.§@!3§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§@!3§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§8!A§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§8!A§ = param1;
      }
      
      public function get §<!S§() : Array
      {
         return this.§9"#§;
      }
      
      public function get § Z§() : Array
      {
         return this.§," §;
      }
      
      public function set § Z§(param1:Array) : void
      {
         this.§," § = param1;
      }
      
      public function get §@w§() : int
      {
         return this.§`!$§;
      }
      
      public function set §@w§(param1:int) : void
      {
         if(param1 >= 0 && param1 < this.pageIndexes.length)
         {
            this.§`!$§ = param1;
         }
      }
      
      public function get pageIndexes() : Array
      {
         return this.§+I§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         this.§+I§ = param1;
      }
      
      public function §do§(param1:String, param2:String) : void
      {
         this.§3a§[param1] = param2;
      }
      
      public function §;U§(param1:String) : String
      {
         return this.§3a§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§=!e§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§=!e§ = param1;
      }
      
      public function get §<"8§() : String
      {
         return this.§9!l§;
      }
      
      public function set §<"8§(param1:String) : void
      {
         this.§9!l§ = param1;
      }
      
      public function get §5"-§() : String
      {
         return this.§5"4§;
      }
      
      public function set §5"-§(param1:String) : void
      {
         this.§5"4§ = param1;
      }
      
      public function get writtenName() : String
      {
         return this.§'!8§;
      }
      
      public function set writtenName(param1:String) : void
      {
         this.§'!8§ = param1;
      }
   }
}
