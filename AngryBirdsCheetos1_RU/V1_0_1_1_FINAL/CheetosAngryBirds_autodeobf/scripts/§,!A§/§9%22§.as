package §,!A§
{
   import § N§.§]M§;
   import §5#§.§!j§;
   
   public class §9"§
   {
       
      
      private var §-Q§:Vector.<§#!N§>;
      
      public function §9"§()
      {
         super();
         this.§-Q§ = new Vector.<§#!N§>();
      }
      
      public function §%4§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            §]M§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §!j§.§2Q§(responseObj.json);
               for(k2 in jsonObj)
               {
                  §]M§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§#!N§ = this.§`§(responseObj.C);
         if(responseObj.E)
         {
            this.§@!;§(responseObj);
            return;
         }
         if(sc.§9!5§())
         {
            for each(fnc in sc.§+!P§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            §]M§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §@!;§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§#!N§ = this.§`§(param1.C);
         if(_loc2_.§9!5§())
         {
            for each(_loc3_ in _loc2_.§+!P§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            §]M§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §-_§(param1:String, param2:Function) : void
      {
         var _loc3_:§#!N§ = new §#!N§(param1,param2);
         this.§-Q§.push(_loc3_);
         §]M§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §>M§() : Vector.<§#!N§>
      {
         return this.§-Q§;
      }
      
      public function §`§(param1:String) : §#!N§
      {
         var _loc2_:§#!N§ = null;
         for each(_loc2_ in this.§-Q§)
         {
            if(_loc2_.§<"§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
