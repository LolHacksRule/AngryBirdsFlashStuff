package §>#Y§
{
   import § h§.ErrorPopup;
   import flash.net.SharedObject;
   import flash.utils.Dictionary;
   
   public class §6"k§
   {
      
      private static var §!#m§:§6"k§;
       
      
      private var §;$ §:Array;
      
      private var §?,§:Dictionary;
      
      private var §%"T§:Dictionary;
      
      public function §6"k§()
      {
         this.§;$ § = [];
         this.§?,§ = new Dictionary();
         this.§%"T§ = new Dictionary();
         super();
         if(§!#m§)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§ !I§,"Can\'t create more than one instance of ExceptionUserIDsManager."));
         }
         §!#m§ = this;
      }
      
      public static function get §3"1§() : §6"k§
      {
         if(!§!#m§)
         {
            §!#m§ = new §6"k§();
         }
         return §!#m§;
      }
      
      public static function §1"k§(param1:Array, param2:Array) : Array
      {
         var _loc4_:String = null;
         var _loc3_:Array = param1.concat();
         for each(_loc4_ in param2)
         {
            if(_loc3_.indexOf(_loc4_) == -1)
            {
               _loc3_.push(_loc4_);
            }
         }
         return _loc3_;
      }
      
      public function §`"5§(param1:String) : void
      {
         if(this.§?,§[param1] == null)
         {
            this.§?,§[param1] = param1;
         }
      }
      
      public function §@"L§(param1:String, param2:Boolean = false) : void
      {
         var _loc3_:SharedObject = null;
         if(this.§;$ §.indexOf(param1) == -1)
         {
            this.§;$ §.push(param1);
         }
         if(!param2)
         {
            try
            {
               _loc3_ = SharedObject.getLocal(§^"a§.§ $"§(),§^"a§.§7!l§);
               _loc3_.data.excludedChallenges = this.§;$ §;
               _loc3_.flush();
            }
            catch(e:Error)
            {
            }
         }
      }
      
      public function §=#M§(param1:String) : Boolean
      {
         return this.§?,§[param1] == null && this.§%"T§[param1] == null;
      }
      
      public function §3"t§(param1:String) : Boolean
      {
         return this.§;$ §.indexOf(param1) == -1 && this.§%"T§[param1] == null;
      }
      
      public function §^"H§(param1:String) : Boolean
      {
         return this.§%"T§[param1] == null;
      }
      
      public function §`#7§(param1:String) : Boolean
      {
         return this.§%"T§[param1] == null;
      }
      
      public function §5!o§() : Array
      {
         return this.§;$ §;
      }
      
      public function §?"T§() : Dictionary
      {
         return this.§?,§;
      }
      
      public function §0!o§() : Dictionary
      {
         return this.§%"T§;
      }
      
      public function §+",§() : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:* = this.§%"T§;
         if(!(§§hasnext(_loc3_,_loc2_)))
         {
            return true;
         }
      }
      
      public function §-"?§(param1:Array) : void
      {
         var _loc3_:String = null;
         var _loc4_:SharedObject = null;
         var _loc2_:Array = [];
         try
         {
            if((_loc4_ = SharedObject.getLocal(§^"a§.§ $"§(),§^"a§.§7!l§)).data.excludedChallenges != undefined)
            {
               _loc2_ = _loc4_.data.excludedChallenges;
            }
         }
         catch(e:Error)
         {
         }
         for each(_loc3_ in _loc2_)
         {
            this.§@"L§(_loc3_,true);
         }
      }
      
      public function §>!m§(param1:Array) : void
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            this.§`"5§(_loc2_);
         }
      }
      
      public function §!!P§(param1:Array) : void
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            if(this.§%"T§[_loc2_] == null)
            {
               this.§%"T§[_loc2_] = _loc2_;
            }
         }
      }
   }
}
