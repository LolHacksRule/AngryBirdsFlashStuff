package §,l§
{
   import flash.net.SharedObject;
   import flash.utils.Dictionary;
   
   public class §4"7§
   {
      
      private static var §+!Y§:§4"7§;
       
      
      private var §'2§:Array;
      
      private var §@!!§:Dictionary;
      
      private var §&"!§:Dictionary;
      
      public function §4"7§()
      {
         this.§'2§ = [];
         this.§@!!§ = new Dictionary();
         this.§&"!§ = new Dictionary();
         super();
         if(§+!Y§)
         {
            throw new Error("Can\'t create more than one instance of a singleton.");
         }
         §+!Y§ = this;
      }
      
      public static function get §&"5§() : §4"7§
      {
         if(!§+!Y§)
         {
            §+!Y§ = new §4"7§();
         }
         return §+!Y§;
      }
      
      public static function §&!z§(param1:Array, param2:Array) : Array
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
      
      public function §0!Q§(param1:String) : void
      {
         if(this.§@!!§[param1] == null)
         {
            this.§@!!§[param1] = param1;
         }
      }
      
      public function §^8§(param1:String, param2:Boolean = false) : void
      {
         var _loc3_:SharedObject = null;
         if(this.§'2§.indexOf(param1) == -1)
         {
            this.§'2§.push(param1);
         }
         if(!param2)
         {
            try
            {
               _loc3_ = SharedObject.getLocal(§%"S§.§@!I§(),§%"S§.override);
               _loc3_.data.excludedChallenges = this.§'2§;
               _loc3_.flush();
            }
            catch(e:Error)
            {
            }
         }
      }
      
      public function §[>§(param1:String) : Boolean
      {
         return this.§@!!§[param1] == null && this.§&"!§[param1] == null;
      }
      
      public function §>!Z§(param1:String) : Boolean
      {
         return this.§'2§.indexOf(param1) == -1 && this.§&"!§[param1] == null;
      }
      
      public function §,'§(param1:String) : Boolean
      {
         return this.§&"!§[param1] == null;
      }
      
      public function §6u§(param1:String) : Boolean
      {
         return this.§&"!§[param1] == null;
      }
      
      public function §+V§() : Array
      {
         return this.§'2§;
      }
      
      public function §9"T§() : Dictionary
      {
         return this.§@!!§;
      }
      
      public function §4!h§() : Dictionary
      {
         return this.§&"!§;
      }
      
      public function §1!N§() : Boolean
      {
         var _loc1_:* = undefined;
         var _loc2_:int = 0;
         var _loc3_:* = this.§&"!§;
         for(_loc1_ in _loc3_)
         {
            return false;
         }
         return true;
      }
      
      public function §]!%§(param1:Array) : void
      {
         var _loc3_:String = null;
         var _loc4_:SharedObject = null;
         var _loc2_:Array = [];
         try
         {
            if((_loc4_ = SharedObject.getLocal(§%"S§.§@!I§(),§%"S§.override)).data.excludedChallenges != undefined)
            {
               _loc2_ = _loc4_.data.excludedChallenges;
            }
         }
         catch(e:Error)
         {
         }
         for each(_loc3_ in _loc2_)
         {
            this.§^8§(_loc3_,true);
         }
      }
      
      public function §5"8§(param1:Array) : void
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            this.§0!Q§(_loc2_);
         }
      }
      
      public function §39§(param1:Array) : void
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            if(this.§&"!§[_loc2_] == null)
            {
               this.§&"!§[_loc2_] = _loc2_;
            }
         }
      }
   }
}
