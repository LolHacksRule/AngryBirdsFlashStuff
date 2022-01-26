package §_-ZV§
{
   import §_-RG§.§_-HT§;
   import §_-VX§.JSON;
   
   public class §_-pK§
   {
       
      
      private var §_-xR§:Vector.<§_-5B§>;
      
      public function §_-pK§()
      {
         super();
         this.§_-xR§ = new Vector.<§_-5B§>();
      }
      
      public function §_-f6§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            §_-HT§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §_-VX§.JSON.§_-RN§(responseObj.json);
               for(k2 in jsonObj)
               {
                  §_-HT§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§_-5B§ = this.§_-a7§(responseObj.C);
         if(responseObj.E)
         {
            this.§_-jx§(responseObj);
            return;
         }
         if(sc.§_-uz§())
         {
            for each(fnc in sc.§_-Fa§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            §_-HT§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §_-jx§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§_-5B§ = this.§_-a7§(param1.C);
         if(_loc2_.§_-uz§())
         {
            for each(_loc3_ in _loc2_.§_-Fa§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            §_-HT§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §class§(param1:String, param2:Function) : void
      {
         var _loc3_:§_-5B§ = new §_-5B§(param1,param2);
         this.§_-xR§.push(_loc3_);
         §_-HT§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §_-YN§() : Vector.<§_-5B§>
      {
         return this.§_-xR§;
      }
      
      public function §_-a7§(param1:String) : §_-5B§
      {
         var _loc2_:§_-5B§ = null;
         for each(_loc2_ in this.§_-xR§)
         {
            if(_loc2_.§_-ps§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
