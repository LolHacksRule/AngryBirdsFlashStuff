package §&!0§
{
   import § !r§.§`![§;
   import §]!Z§.§@!j§;
   
   public class §%>§
   {
       
      
      private var §6!M§:Vector.<§?M§>;
      
      public function §%>§()
      {
         super();
         this.§6!M§ = new Vector.<§?M§>();
      }
      
      public function §<!p§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            §`![§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §@!j§.decode(responseObj.json);
               for(k2 in jsonObj)
               {
                  §`![§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§?M§ = this.§50§(responseObj.C);
         if(responseObj.E)
         {
            this.§=P§(responseObj);
            return;
         }
         if(sc.§=^§())
         {
            for each(fnc in sc.§!K§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            §`![§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §=P§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§?M§ = this.§50§(param1.C);
         if(_loc2_.§=^§())
         {
            for each(_loc3_ in _loc2_.§!K§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            §`![§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §7!E§(param1:String, param2:Function) : void
      {
         var _loc3_:§?M§ = new §?M§(param1,param2);
         this.§6!M§.push(_loc3_);
         §`![§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §9#§() : Vector.<§?M§>
      {
         return this.§6!M§;
      }
      
      public function §50§(param1:String) : §?M§
      {
         var _loc2_:§?M§ = null;
         for each(_loc2_ in this.§6!M§)
         {
            if(_loc2_.§!;§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
