package §6J§
{
   import flash.utils.Dictionary;
   
   public class §?S§
   {
       
      
      private var §%g§:String = "";
      
      private var mName:String = "";
      
      private var §'v§:String = "";
      
      private var §,Q§:String = "";
      
      private var § I§:String = "";
      
      private var §;!#§:Array = null;
      
      private var § !E§:int = 0;
      
      private var §4A§:Array = null;
      
      private var §3!2§:Array;
      
      private var § !A§:Array;
      
      private var §[!6§:int = 0;
      
      private var §8c§:Dictionary;
      
      public function §?S§()
      {
         this.§8c§ = new Dictionary();
         super();
      }
      
      public function §^9§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §81§(param1:String) : Array
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
      
      public function §7!D§(param1:int) : Object
      {
         return this.§3!2§[param1];
      }
      
      public function §#2§(param1:int) : String
      {
         return this.§ !A§[param1];
      }
      
      public function §2!+§(param1:String) : Boolean
      {
         return this.§=$§().indexOf(param1) != -1;
      }
      
      public function §=$§() : Array
      {
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(this.§4A§ == null)
         {
            _loc1_ = new Array();
            for each(_loc2_ in this.pageIndexes)
            {
               _loc3_ = this.§81§(_loc2_);
               for each(_loc4_ in _loc3_)
               {
                  _loc1_.push(_loc4_);
               }
            }
            this.§4A§ = _loc1_;
            return _loc1_;
         }
         return this.§4A§;
      }
      
      public function §'+§(param1:String) : int
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
      
      public function §&1§(param1:String) : String
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
         return this.§'v§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§'v§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§ !E§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§ !E§ = param1;
      }
      
      public function get §4!4§() : Array
      {
         return this.§4A§;
      }
      
      public function get §var §() : Array
      {
         return this.§3!2§;
      }
      
      public function set §var §(param1:Array) : void
      {
         this.§3!2§ = param1;
      }
      
      public function get §7E§() : int
      {
         return this.§[!6§;
      }
      
      public function set §7E§(param1:int) : void
      {
         if(param1 >= 0 && param1 < this.pageIndexes.length)
         {
            this.§[!6§ = param1;
         }
      }
      
      public function get pageIndexes() : Array
      {
         return this.§;!#§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         this.§;!#§ = param1;
      }
      
      public function §8!D§(param1:String, param2:String) : void
      {
         this.§8c§[param1] = param2;
      }
      
      public function §0!9§(param1:String) : String
      {
         return this.§8c§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§ !A§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§ !A§ = param1;
      }
      
      public function get §7<§() : String
      {
         return this.§,Q§;
      }
      
      public function set §7<§(param1:String) : void
      {
         this.§,Q§ = param1;
      }
      
      public function get §8S§() : String
      {
         return this.§ I§;
      }
      
      public function set §8S§(param1:String) : void
      {
         this.§ I§ = param1;
      }
      
      public function get writtenName() : String
      {
         return this.§%g§;
      }
      
      public function set writtenName(param1:String) : void
      {
         this.§%g§ = param1;
      }
   }
}
