package §`y§
{
   import §!4§.§=!Z§;
   import §^!5§.§8!_§;
   
   public class §66§
   {
       
      
      private var §%! §:Vector.<§7P§>;
      
      public function §66§()
      {
         super();
         this.§%! § = new Vector.<§7P§>();
      }
      
      public function §";§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            §=!Z§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §8!_§.§`>§(responseObj.json);
               for(k2 in jsonObj)
               {
                  §=!Z§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§7P§ = this.§ #§(responseObj.C);
         if(responseObj.E)
         {
            this.§8!C§(responseObj);
            return;
         }
         if(sc.§"B§())
         {
            for each(fnc in sc.§3O§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            §=!Z§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §8!C§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§7P§ = this.§ #§(param1.C);
         if(_loc2_.§"B§())
         {
            for each(_loc3_ in _loc2_.§3O§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            §=!Z§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §3!B§(param1:String, param2:Function) : void
      {
         var _loc3_:§7P§ = new §7P§(param1,param2);
         this.§%! §.push(_loc3_);
         §=!Z§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §-!R§() : Vector.<§7P§>
      {
         return this.§%! §;
      }
      
      public function § #§(param1:String) : §7P§
      {
         var _loc2_:§7P§ = null;
         for each(_loc2_ in this.§%! §)
         {
            if(_loc2_.§;!=§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
