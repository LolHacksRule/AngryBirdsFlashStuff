package §+!Z§
{
   import §5!"§.§+!2§;
   import §6!Q§.§7!7§;
   
   public class §8!C§
   {
       
      
      private var §5!%§:Vector.<§?!^§>;
      
      public function §8!C§()
      {
         super();
         this.§5!%§ = new Vector.<§?!^§>();
      }
      
      public function §<I§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            §7!7§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §+!2§.§<!,§(responseObj.json);
               for(k2 in jsonObj)
               {
                  §7!7§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§?!^§ = this.§>u§(responseObj.C);
         if(responseObj.E)
         {
            this.§4+§(responseObj);
            return;
         }
         if(sc.§70§())
         {
            for each(fnc in sc.§4!I§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            §7!7§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §4+§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§?!^§ = this.§>u§(param1.C);
         if(_loc2_.§70§())
         {
            for each(_loc3_ in _loc2_.§4!I§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            §7!7§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §@f§(param1:String, param2:Function) : void
      {
         var _loc3_:§?!^§ = new §?!^§(param1,param2);
         this.§5!%§.push(_loc3_);
         §7!7§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §0Z§() : Vector.<§?!^§>
      {
         return this.§5!%§;
      }
      
      public function §>u§(param1:String) : §?!^§
      {
         var _loc2_:§?!^§ = null;
         for each(_loc2_ in this.§5!%§)
         {
            if(_loc2_.§3g§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
