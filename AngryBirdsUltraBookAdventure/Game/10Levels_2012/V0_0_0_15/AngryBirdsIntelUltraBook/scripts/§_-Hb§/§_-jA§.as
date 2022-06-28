package §_-Hb§
{
   import §_-0BH§.§_-FK§;
   import §_-py§.§_-bu§;
   
   public class §_-jA§
   {
       
      
      private var §_-wF§:Vector.<§_-5p§>;
      
      public function §_-jA§()
      {
         super();
         this.§_-wF§ = new Vector.<§_-5p§>();
      }
      
      public function §_-Oi§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            §_-FK§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §_-bu§.§_-aW§(responseObj.json);
               for(k2 in jsonObj)
               {
                  §_-FK§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§_-5p§ = this.§_-nZ§(responseObj.C);
         if(responseObj.E)
         {
            this.§_-03N§(responseObj);
            return;
         }
         if(sc.§_-r6§())
         {
            for each(fnc in sc.§_-k4§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            §_-FK§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §_-03N§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§_-5p§ = this.§_-nZ§(param1.C);
         if(_loc2_.§_-r6§())
         {
            for each(_loc3_ in _loc2_.§_-k4§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            §_-FK§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §_-0-r§(param1:String, param2:Function) : void
      {
         var _loc3_:§_-5p§ = new §_-5p§(param1,param2);
         this.§_-wF§.push(_loc3_);
         §_-FK§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §_-Q8§() : Vector.<§_-5p§>
      {
         return this.§_-wF§;
      }
      
      public function §_-nZ§(param1:String) : §_-5p§
      {
         var _loc2_:§_-5p§ = null;
         for each(_loc2_ in this.§_-wF§)
         {
            if(_loc2_.§_-dz§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
