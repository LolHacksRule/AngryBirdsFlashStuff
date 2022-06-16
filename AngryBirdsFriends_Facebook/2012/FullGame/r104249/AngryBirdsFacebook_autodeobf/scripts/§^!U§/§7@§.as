package §^!U§
{
   import flash.net.SharedObject;
   import flash.utils.Dictionary;
   
   public class §7@§
   {
      
      private static var §`"$§:§7@§;
       
      
      private var §-"<§:Array;
      
      private var §]!'§:Dictionary;
      
      private var §%"1§:Dictionary;
      
      public function §7@§()
      {
         this.§-"<§ = [];
         this.§]!'§ = new Dictionary();
         this.§%"1§ = new Dictionary();
         super();
         if(§`"$§)
         {
            throw new Error("Can\'t create more than one instance of a singleton.");
         }
         §`"$§ = this;
      }
      
      public static function get §1[§() : §7@§
      {
         if(!§`"$§)
         {
            §`"$§ = new §7@§();
         }
         return §`"$§;
      }
      
      public static function §5!m§(param1:Array, param2:Array) : Array
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
      
      public function §^!-§(param1:String) : void
      {
         if(this.§]!'§[param1] == null)
         {
            this.§]!'§[param1] = param1;
         }
      }
      
      public function §&!f§(param1:String, param2:Boolean = false) : void
      {
         var _loc3_:SharedObject = null;
         if(this.§-"<§.indexOf(param1) == -1)
         {
            this.§-"<§.push(param1);
         }
         if(!param2)
         {
            try
            {
               _loc3_ = SharedObject.getLocal(§,"I§.§%A§(),§,"I§.§<"'§);
               _loc3_.data.excludedChallenges = this.§-"<§;
               _loc3_.flush();
            }
            catch(e:Error)
            {
            }
         }
      }
      
      public function §0q§(param1:String) : Boolean
      {
         return this.§]!'§[param1] == null && this.§%"1§[param1] == null;
      }
      
      public function §["A§(param1:String) : Boolean
      {
         return this.§-"<§.indexOf(param1) == -1 && this.§%"1§[param1] == null;
      }
      
      public function §>&§(param1:String) : Boolean
      {
         return this.§%"1§[param1] == null;
      }
      
      public function §@!-§(param1:String) : Boolean
      {
         return this.§%"1§[param1] == null;
      }
      
      public function §9!X§() : Array
      {
         return this.§-"<§;
      }
      
      public function §8I§() : Dictionary
      {
         return this.§]!'§;
      }
      
      public function §9O§() : Dictionary
      {
         return this.§%"1§;
      }
      
      public function §+T§() : Boolean
      {
         var _loc1_:* = undefined;
         var _loc2_:int = 0;
         var _loc3_:* = this.§%"1§;
         for(_loc1_ in _loc3_)
         {
            return false;
         }
         return true;
      }
      
      public function §<!§(param1:Array) : void
      {
         var _loc3_:String = null;
         var _loc4_:SharedObject = null;
         var _loc2_:Array = [];
         try
         {
            if((_loc4_ = SharedObject.getLocal(§,"I§.§%A§(),§,"I§.§<"'§)).data.excludedChallenges != undefined)
            {
               _loc2_ = _loc4_.data.excludedChallenges;
            }
         }
         catch(e:Error)
         {
         }
         for each(_loc3_ in _loc2_)
         {
            this.§&!f§(_loc3_,true);
         }
      }
      
      public function §]" §(param1:Array) : void
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            this.§^!-§(_loc2_);
         }
      }
      
      public function §9";§(param1:Array) : void
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            if(this.§%"1§[_loc2_] == null)
            {
               this.§%"1§[_loc2_] = _loc2_;
            }
         }
      }
   }
}
