package §_-rh§
{
   import §_-Y7§.JSON;
   import §_-ot§.§_-o6§;
   
   public class §_-qr§
   {
       
      
      private var §_-jo§:Vector.<§_-Dj§>;
      
      public function §_-qr§()
      {
         super();
         this.§_-jo§ = new Vector.<§_-Dj§>();
      }
      
      public function §_-XG§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            §_-o6§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §_-Y7§.JSON.§_-YM§(responseObj.json);
               for(k2 in jsonObj)
               {
                  §_-o6§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§_-Dj§ = this.§_-M0§(responseObj.C);
         if(responseObj.E)
         {
            this.§_-8h§(responseObj);
            return;
         }
         if(sc.§_-EA§())
         {
            for each(fnc in sc.§_-a9§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            §_-o6§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §_-8h§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§_-Dj§ = this.§_-M0§(param1.C);
         if(_loc2_.§_-EA§())
         {
            for each(_loc3_ in _loc2_.§_-a9§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            §_-o6§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §_-Vo§(param1:String, param2:Function) : void
      {
         var _loc3_:§_-Dj§ = new §_-Dj§(param1,param2);
         this.§_-jo§.push(_loc3_);
         §_-o6§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §_-Pk§() : Vector.<§_-Dj§>
      {
         return this.§_-jo§;
      }
      
      public function §_-M0§(param1:String) : §_-Dj§
      {
         var _loc2_:§_-Dj§ = null;
         for each(_loc2_ in this.§_-jo§)
         {
            if(_loc2_.§_-Zj§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
