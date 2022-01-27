package §9!D§
{
   import §0i§.§]_§;
   import §?j§.§4W§;
   
   public class §2!P§
   {
       
      
      private var §#!c§:Vector.<§2>§>;
      
      public function §2!P§()
      {
         super();
         this.§#!c§ = new Vector.<§2>§>();
      }
      
      public function §0!>§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            §]_§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §4W§.§`!+§(responseObj.json);
               for(k2 in jsonObj)
               {
                  §]_§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§2>§ = this.§]!0§(responseObj.C);
         if(responseObj.E)
         {
            this.§=§(responseObj);
            return;
         }
         if(sc.§!!`§())
         {
            for each(fnc in sc.§%<§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            §]_§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §=§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§2>§ = this.§]!0§(param1.C);
         if(_loc2_.§!!`§())
         {
            for each(_loc3_ in _loc2_.§%<§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            §]_§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §get §(param1:String, param2:Function) : void
      {
         var _loc3_:§2>§ = new §2>§(param1,param2);
         this.§#!c§.push(_loc3_);
         §]_§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §?#§() : Vector.<§2>§>
      {
         return this.§#!c§;
      }
      
      public function §]!0§(param1:String) : §2>§
      {
         var _loc2_:§2>§ = null;
         for each(_loc2_ in this.§#!c§)
         {
            if(_loc2_.§]c§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
