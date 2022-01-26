package §_-bz§
{
   import §_-e3§.§_-54§;
   import §_-hq§.§_-AD§;
   
   public class §_-aP§
   {
       
      
      private var §_-w-§:Vector.<§_-BW§>;
      
      public function §_-aP§()
      {
         super();
         this.§_-w-§ = new Vector.<§_-BW§>();
      }
      
      public function §_-n1§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            §_-54§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §_-AD§.§_-Ae§(responseObj.json);
               for(k2 in jsonObj)
               {
                  §_-54§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§_-BW§ = this.§_-qh§(responseObj.C);
         if(responseObj.E)
         {
            this.§_-Yr§(responseObj);
            return;
         }
         if(sc.§_-jv§())
         {
            for each(fnc in sc.§_-ir§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            §_-54§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §_-Yr§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§_-BW§ = this.§_-qh§(param1.C);
         if(_loc2_.§_-jv§())
         {
            for each(_loc3_ in _loc2_.§_-ir§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            §_-54§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §_-RY§(param1:String, param2:Function) : void
      {
         var _loc3_:§_-BW§ = new §_-BW§(param1,param2);
         this.§_-w-§.push(_loc3_);
         §_-54§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §_-w0§() : Vector.<§_-BW§>
      {
         return this.§_-w-§;
      }
      
      public function §_-qh§(param1:String) : §_-BW§
      {
         var _loc2_:§_-BW§ = null;
         for each(_loc2_ in this.§_-w-§)
         {
            if(_loc2_.§_-nt§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
