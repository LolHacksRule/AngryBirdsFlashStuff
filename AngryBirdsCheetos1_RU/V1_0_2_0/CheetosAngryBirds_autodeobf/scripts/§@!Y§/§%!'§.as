package §@!Y§
{
   import §,J§.§'!C§;
   import §=g§.§@!L§;
   
   public class §%!'§
   {
       
      
      private var §&4§:Vector.<§<M§>;
      
      public function §%!'§()
      {
         super();
         this.§&4§ = new Vector.<§<M§>();
      }
      
      public function §60§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            §@!L§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §'!C§.§ f§(responseObj.json);
               for(k2 in jsonObj)
               {
                  §@!L§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§<M§ = this.§7<§(responseObj.C);
         if(responseObj.E)
         {
            this.§%!I§(responseObj);
            return;
         }
         if(sc.§6O§())
         {
            for each(fnc in sc.§^S§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            §@!L§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §%!I§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§<M§ = this.§7<§(param1.C);
         if(_loc2_.§6O§())
         {
            for each(_loc3_ in _loc2_.§^S§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            §@!L§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §%!4§(param1:String, param2:Function) : void
      {
         var _loc3_:§<M§ = new §<M§(param1,param2);
         this.§&4§.push(_loc3_);
         §@!L§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §#p§() : Vector.<§<M§>
      {
         return this.§&4§;
      }
      
      public function §7<§(param1:String) : §<M§
      {
         var _loc2_:§<M§ = null;
         for each(_loc2_ in this.§&4§)
         {
            if(_loc2_.§0o§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
