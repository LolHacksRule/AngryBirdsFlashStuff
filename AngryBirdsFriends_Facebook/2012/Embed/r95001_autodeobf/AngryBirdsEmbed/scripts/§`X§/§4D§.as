package §`X§
{
   import §9H§.§@M§;
   import §`t§.§>3§;
   
   public class §4D§
   {
       
      
      private var §-6§:Vector.<§ !$§>;
      
      public function §4D§()
      {
         super();
         this.§-6§ = new Vector.<§ !$§>();
      }
      
      public function §^`§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            §@M§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §>3§.decode(responseObj.json);
               for(k2 in jsonObj)
               {
                  §@M§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§ !$§ = this.§#q§(responseObj.C);
         if(responseObj.E)
         {
            this.§#Z§(responseObj);
            return;
         }
         if(sc.§6!6§())
         {
            for each(fnc in sc.§5]§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            §@M§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §#Z§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§ !$§ = this.§#q§(param1.C);
         if(_loc2_.§6!6§())
         {
            for each(_loc3_ in _loc2_.§5]§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            §@M§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §"!0§(param1:String, param2:Function) : void
      {
         var _loc3_:§ !$§ = new § !$§(param1,param2);
         this.§-6§.push(_loc3_);
         §@M§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §-!C§() : Vector.<§ !$§>
      {
         return this.§-6§;
      }
      
      public function §#q§(param1:String) : § !$§
      {
         var _loc2_:§ !$§ = null;
         for each(_loc2_ in this.§-6§)
         {
            if(_loc2_.§?G§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
