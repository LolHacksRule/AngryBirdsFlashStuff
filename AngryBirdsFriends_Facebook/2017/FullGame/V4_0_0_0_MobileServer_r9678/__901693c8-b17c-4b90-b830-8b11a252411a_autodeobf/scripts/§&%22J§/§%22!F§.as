package §&"J§
{
   import flash.net.SharedObject;
   import flash.utils.Dictionary;
   
   public class §"!F§
   {
      
      private static var §%#b§:§"!F§;
       
      
      private var §0#g§:Array;
      
      private var §[2§:Dictionary;
      
      private var § $2§:Dictionary;
      
      public function §"!F§()
      {
         this.§0#g§ = [];
         this.§[2§ = new Dictionary();
         this.§ $2§ = new Dictionary();
         super();
         if(§%#b§)
         {
            throw new Error("Can\'t create more than one instance of a singleton.");
         }
         §%#b§ = this;
      }
      
      public static function get § "D§() : §"!F§
      {
         if(!§%#b§)
         {
            §%#b§ = new §"!F§();
         }
         return §%#b§;
      }
      
      public static function §8_§(param1:Array, param2:Array) : Array
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
      
      public function §<$$§(param1:String) : void
      {
         if(this.§[2§[param1] == null)
         {
            this.§[2§[param1] = param1;
         }
      }
      
      public function §-!I§(param1:String, param2:Boolean = false) : void
      {
         var _loc3_:SharedObject = null;
         if(this.§0#g§.indexOf(param1) == -1)
         {
            this.§0#g§.push(param1);
         }
         if(!param2)
         {
            try
            {
               _loc3_ = SharedObject.getLocal(§-#+§.§2"0§(),§-#+§.§1!L§);
               _loc3_.data.excludedChallenges = this.§0#g§;
               _loc3_.flush();
            }
            catch(e:Error)
            {
            }
         }
      }
      
      public function §=!F§(param1:String) : Boolean
      {
         return this.§[2§[param1] == null && this.§ $2§[param1] == null;
      }
      
      public function §5"q§(param1:String) : Boolean
      {
         return this.§0#g§.indexOf(param1) == -1 && this.§ $2§[param1] == null;
      }
      
      public function §?^§(param1:String) : Boolean
      {
         return this.§ $2§[param1] == null;
      }
      
      public function §#c§(param1:String) : Boolean
      {
         return this.§ $2§[param1] == null;
      }
      
      public function §@"3§() : Array
      {
         return this.§0#g§;
      }
      
      public function §># §() : Dictionary
      {
         return this.§[2§;
      }
      
      public function §>"Z§() : Dictionary
      {
         return this.§ $2§;
      }
      
      public function §`u§() : Boolean
      {
         var _loc1_:* = undefined;
         var _loc2_:int = 0;
         var _loc3_:* = this.§ $2§;
         for(_loc1_ in _loc3_)
         {
            return false;
         }
         return true;
      }
      
      public function §?!F§(param1:Array) : void
      {
         var _loc3_:String = null;
         var _loc4_:SharedObject = null;
         var _loc2_:Array = [];
         try
         {
            if((_loc4_ = SharedObject.getLocal(§-#+§.§2"0§(),§-#+§.§1!L§)).data.excludedChallenges != undefined)
            {
               _loc2_ = _loc4_.data.excludedChallenges;
            }
         }
         catch(e:Error)
         {
         }
         for each(_loc3_ in _loc2_)
         {
            this.§-!I§(_loc3_,true);
         }
      }
      
      public function §@#i§(param1:Array) : void
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            this.§<$$§(_loc2_);
         }
      }
      
      public function §@6§(param1:Array) : void
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            if(this.§ $2§[_loc2_] == null)
            {
               this.§ $2§[_loc2_] = _loc2_;
            }
         }
      }
   }
}
