package §9U§
{
   import § else§.§]!8§;
   import §^!&§.§;C§;
   
   public class §59§
   {
       
      
      private var §0!_§:Vector.<§-4§>;
      
      public function §59§()
      {
         super();
         this.§0!_§ = new Vector.<§-4§>();
      }
      
      public function §`!E§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            §;C§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §]!8§.§?!A§(responseObj.json);
               for(k2 in jsonObj)
               {
                  §;C§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§-4§ = this.§<K§(responseObj.C);
         if(responseObj.E)
         {
            this.§6! §(responseObj);
            return;
         }
         if(sc.§=V§())
         {
            for each(fnc in sc.§super§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            §;C§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §6! §(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§-4§ = this.§<K§(param1.C);
         if(_loc2_.§=V§())
         {
            for each(_loc3_ in _loc2_.§super§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            §;C§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §?!J§(param1:String, param2:Function) : void
      {
         var _loc3_:§-4§ = new §-4§(param1,param2);
         this.§0!_§.push(_loc3_);
         §;C§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §>!T§() : Vector.<§-4§>
      {
         return this.§0!_§;
      }
      
      public function §<K§(param1:String) : §-4§
      {
         var _loc2_:§-4§ = null;
         for each(_loc2_ in this.§0!_§)
         {
            if(_loc2_.§=D§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
