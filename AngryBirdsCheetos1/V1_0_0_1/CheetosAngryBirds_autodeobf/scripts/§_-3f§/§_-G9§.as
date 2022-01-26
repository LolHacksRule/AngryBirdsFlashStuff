package §_-3f§
{
   import §_-U0§.§_-tF§;
   import §_-zE§.§_-XJ§;
   
   public class §_-G9§
   {
       
      
      private var §_-fo§:Vector.<§_-HB§>;
      
      public function §_-G9§()
      {
         super();
         this.§_-fo§ = new Vector.<§_-HB§>();
      }
      
      public function §_-Gq§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            §_-tF§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §_-XJ§.§_-NV§(responseObj.json);
               for(k2 in jsonObj)
               {
                  §_-tF§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§_-HB§ = this.§_-aG§(responseObj.C);
         if(responseObj.E)
         {
            this.§_-ZN§(responseObj);
            return;
         }
         if(sc.§_-4r§())
         {
            for each(fnc in sc.§_-mi§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            §_-tF§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §_-ZN§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§_-HB§ = this.§_-aG§(param1.C);
         if(_loc2_.§_-4r§())
         {
            for each(_loc3_ in _loc2_.§_-mi§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            §_-tF§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function § get§(param1:String, param2:Function) : void
      {
         var _loc3_:§_-HB§ = new §_-HB§(param1,param2);
         this.§_-fo§.push(_loc3_);
         §_-tF§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function § each§() : Vector.<§_-HB§>
      {
         return this.§_-fo§;
      }
      
      public function §_-aG§(param1:String) : §_-HB§
      {
         var _loc2_:§_-HB§ = null;
         for each(_loc2_ in this.§_-fo§)
         {
            if(_loc2_.§_-kr§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
