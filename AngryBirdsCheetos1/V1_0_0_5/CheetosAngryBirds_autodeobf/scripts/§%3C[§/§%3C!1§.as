package §<[§
{
   import §&N§.§@,§;
   import §,!D§.§5E§;
   
   public class §<!1§
   {
       
      
      private var §5Y§:Vector.<§0_§>;
      
      public function §<!1§()
      {
         super();
         this.§5Y§ = new Vector.<§0_§>();
      }
      
      public function §<P§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            §@,§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §5E§.§4O§(responseObj.json);
               for(k2 in jsonObj)
               {
                  §@,§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§0_§ = this.§"!Y§(responseObj.C);
         if(responseObj.E)
         {
            this.§try §(responseObj);
            return;
         }
         if(sc.§&s§())
         {
            for each(fnc in sc.§!9§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            §@,§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §try §(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§0_§ = this.§"!Y§(param1.C);
         if(_loc2_.§&s§())
         {
            for each(_loc3_ in _loc2_.§!9§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            §@,§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §&P§(param1:String, param2:Function) : void
      {
         var _loc3_:§0_§ = new §0_§(param1,param2);
         this.§5Y§.push(_loc3_);
         §@,§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §#!S§() : Vector.<§0_§>
      {
         return this.§5Y§;
      }
      
      public function §"!Y§(param1:String) : §0_§
      {
         var _loc2_:§0_§ = null;
         for each(_loc2_ in this.§5Y§)
         {
            if(_loc2_.§3!W§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
