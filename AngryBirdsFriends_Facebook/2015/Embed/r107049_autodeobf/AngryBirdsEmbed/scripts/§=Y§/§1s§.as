package §=Y§
{
   import §#!<§.§@!B§;
   import §@!;§.§!!=§;
   
   public class §1s§
   {
       
      
      private var §"i§:Vector.<§[<§>;
      
      public function §1s§()
      {
         super();
         this.§"i§ = new Vector.<§[<§>();
      }
      
      public function §!!+§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            §!!=§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §@!B§.decode(responseObj.json);
               for(k2 in jsonObj)
               {
                  §!!=§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§[<§ = this.§-!?§(responseObj.C);
         if(responseObj.E)
         {
            this.§%!7§(responseObj);
            return;
         }
         if(sc.§%!G§())
         {
            for each(fnc in sc.§2j§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            §!!=§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §%!7§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§[<§ = this.§-!?§(param1.C);
         if(_loc2_.§%!G§())
         {
            for each(_loc3_ in _loc2_.§2j§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            §!!=§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §3!+§(param1:String, param2:Function) : void
      {
         var _loc3_:§[<§ = new §[<§(param1,param2);
         this.§"i§.push(_loc3_);
         §!!=§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §&K§() : Vector.<§[<§>
      {
         return this.§"i§;
      }
      
      public function §-!?§(param1:String) : §[<§
      {
         var _loc2_:§[<§ = null;
         for each(_loc2_ in this.§"i§)
         {
            if(_loc2_.§[u§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
