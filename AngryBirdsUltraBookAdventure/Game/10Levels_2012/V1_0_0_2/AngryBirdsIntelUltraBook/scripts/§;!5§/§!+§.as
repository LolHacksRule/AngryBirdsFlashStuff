package §;!5§
{
   import §;<§.§4!d§;
   import §^_§.§!>§;
   
   public class §!+§
   {
       
      
      private var §"!0§:Vector.<§,e§>;
      
      public function §!+§()
      {
         super();
         this.§"!0§ = new Vector.<§,e§>();
      }
      
      public function §2>§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            §!>§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §4!d§.§6!p§(responseObj.json);
               for(k2 in jsonObj)
               {
                  §!>§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§,e§ = this.§6!0§(responseObj.C);
         if(responseObj.E)
         {
            this.§3'§(responseObj);
            return;
         }
         if(sc.§#@§())
         {
            for each(fnc in sc.§#!R§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            §!>§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §3'§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§,e§ = this.§6!0§(param1.C);
         if(_loc2_.§#@§())
         {
            for each(_loc3_ in _loc2_.§#!R§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            §!>§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §7Y§(param1:String, param2:Function) : void
      {
         var _loc3_:§,e§ = new §,e§(param1,param2);
         this.§"!0§.push(_loc3_);
         §!>§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §8!P§() : Vector.<§,e§>
      {
         return this.§"!0§;
      }
      
      public function §6!0§(param1:String) : §,e§
      {
         var _loc2_:§,e§ = null;
         for each(_loc2_ in this.§"!0§)
         {
            if(_loc2_.§>q§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
