package §,J§
{
   import flash.utils.Dictionary;
   
   public class §04§
   {
       
      
      private var §8I§:String = "";
      
      private var mName:String = "";
      
      private var §1!<§:String = "";
      
      private var § K§:String = "";
      
      private var §"!&§:String = "";
      
      private var §'!+§:Array = null;
      
      private var §@#§:int = 0;
      
      private var §&l§:Array = null;
      
      private var §&T§:Array;
      
      private var §]!C§:Array;
      
      private var §^Q§:int = 0;
      
      private var §<j§:Dictionary;
      
      public function §04§()
      {
         this.§<j§ = new Dictionary();
         super();
      }
      
      public function §;!X§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §>y§(param1:String) : Array
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
      
      public function §2K§(param1:int) : Object
      {
         return this.§&T§[param1];
      }
      
      public function §finally§(param1:int) : String
      {
         return this.§]!C§[param1];
      }
      
      public function §,!§(param1:String) : Boolean
      {
         return this.§+a§().indexOf(param1) != -1;
      }
      
      public function §+a§() : Array
      {
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(this.§&l§ == null)
         {
            _loc1_ = new Array();
            for each(_loc2_ in this.pageIndexes)
            {
               _loc3_ = this.§>y§(_loc2_);
               for each(_loc4_ in _loc3_)
               {
                  _loc1_.push(_loc4_);
               }
            }
            this.§&l§ = _loc1_;
            return _loc1_;
         }
         return this.§&l§;
      }
      
      public function §`!L§(param1:String) : int
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
      
      public function §5R§(param1:String) : String
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
         return this.§1!<§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§1!<§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§@#§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§@#§ = param1;
      }
      
      public function get §&S§() : Array
      {
         return this.§&l§;
      }
      
      public function get §-D§() : Array
      {
         return this.§&T§;
      }
      
      public function set §-D§(param1:Array) : void
      {
         this.§&T§ = param1;
      }
      
      public function get §0i§() : int
      {
         return this.§^Q§;
      }
      
      public function set §0i§(param1:int) : void
      {
         if(param1 >= 0 && param1 < this.pageIndexes.length)
         {
            this.§^Q§ = param1;
         }
      }
      
      public function get pageIndexes() : Array
      {
         return this.§'!+§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         this.§'!+§ = param1;
      }
      
      public function § =§(param1:String, param2:String) : void
      {
         this.§<j§[param1] = param2;
      }
      
      public function §]+§(param1:String) : String
      {
         return this.§<j§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§]!C§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§]!C§ = param1;
      }
      
      public function get §!!V§() : String
      {
         return this.§ K§;
      }
      
      public function set §!!V§(param1:String) : void
      {
         this.§ K§ = param1;
      }
      
      public function get §4S§() : String
      {
         return this.§"!&§;
      }
      
      public function set §4S§(param1:String) : void
      {
         this.§"!&§ = param1;
      }
      
      public function get writtenName() : String
      {
         return this.§8I§;
      }
      
      public function set writtenName(param1:String) : void
      {
         this.§8I§ = param1;
      }
   }
}
