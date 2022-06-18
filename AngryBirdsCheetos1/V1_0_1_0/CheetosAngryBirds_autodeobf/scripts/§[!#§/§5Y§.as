package §[!#§
{
   import §,!D§.§5E§;
   import §@,§.§4h§;
   
   public class §5Y§
   {
       
      
      private var §<P§:Vector.<§-Z§>;
      
      public function §5Y§()
      {
         super();
         this.§<P§ = new Vector.<§-Z§>();
      }
      
      public function §try §(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            §4h§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §5E§.§,§(responseObj.json);
               for(k2 in jsonObj)
               {
                  §4h§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§-Z§ = this.§=y§(responseObj.C);
         if(responseObj.E)
         {
            this.§#!S§(responseObj);
            return;
         }
         if(sc.§@_§())
         {
            for each(fnc in sc.§=!@§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            §4h§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §#!S§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§-Z§ = this.§=y§(param1.C);
         if(_loc2_.§@_§())
         {
            for each(_loc3_ in _loc2_.§=!@§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            §4h§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §9!D§(param1:String, param2:Function) : void
      {
         var _loc3_:§-Z§ = new §-Z§(param1,param2);
         this.§<P§.push(_loc3_);
         §4h§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §"!Y§() : Vector.<§-Z§>
      {
         return this.§<P§;
      }
      
      public function §=y§(param1:String) : §-Z§
      {
         var _loc2_:§-Z§ = null;
         for each(_loc2_ in this.§<P§)
         {
            if(_loc2_.§5!$§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
