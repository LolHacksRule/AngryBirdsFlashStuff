package §_-wM§
{
   import §_-gM§.§_-yj§;
   import §_-s-§.§_-hQ§;
   
   public class §_-6J§
   {
       
      
      private var §_-LV§:Vector.<§_-nm§>;
      
      public function §_-6J§()
      {
         super();
         this.§_-LV§ = new Vector.<§_-nm§>();
      }
      
      public function §_-uq§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            §_-yj§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §_-hQ§.§_-sx§(responseObj.json);
               for(k2 in jsonObj)
               {
                  §_-yj§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§_-nm§ = this.§_-Gw§(responseObj.C);
         if(responseObj.E)
         {
            this.§_-yT§(responseObj);
            return;
         }
         if(sc.§_-EA§())
         {
            for each(fnc in sc.§_-D9§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            §_-yj§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §_-yT§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§_-nm§ = this.§_-Gw§(param1.C);
         if(_loc2_.§_-EA§())
         {
            for each(_loc3_ in _loc2_.§_-D9§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            §_-yj§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §_-DD§(param1:String, param2:Function) : void
      {
         var _loc3_:§_-nm§ = new §_-nm§(param1,param2);
         this.§_-LV§.push(_loc3_);
         §_-yj§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §_-9b§() : Vector.<§_-nm§>
      {
         return this.§_-LV§;
      }
      
      public function §_-Gw§(param1:String) : §_-nm§
      {
         var _loc2_:§_-nm§ = null;
         for each(_loc2_ in this.§_-LV§)
         {
            if(_loc2_.§_-1e§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
