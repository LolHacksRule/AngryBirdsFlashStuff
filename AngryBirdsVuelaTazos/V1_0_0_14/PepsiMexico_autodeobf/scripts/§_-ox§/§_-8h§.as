package §_-ox§
{
   import §_-2z§.§_-rz§;
   import §_-Eo§.§_-R4§;
   
   public class §_-8h§
   {
       
      
      private var §_-zt§:Vector.<§_-VM§>;
      
      public function §_-8h§()
      {
         super();
         this.§_-zt§ = new Vector.<§_-VM§>();
      }
      
      public function §_-JI§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            §_-R4§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §_-rz§.§_-EM§(responseObj.json);
               for(k2 in jsonObj)
               {
                  §_-R4§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§_-VM§ = this.§_-Mo§(responseObj.C);
         if(responseObj.E)
         {
            this.§_-R2§(responseObj);
            return;
         }
         if(sc.§_-hQ§())
         {
            for each(fnc in sc.§_-dz§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            §_-R4§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §_-R2§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§_-VM§ = this.§_-Mo§(param1.C);
         if(_loc2_.§_-hQ§())
         {
            for each(_loc3_ in _loc2_.§_-dz§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            §_-R4§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §_-Dz§(param1:String, param2:Function) : void
      {
         var _loc3_:§_-VM§ = new §_-VM§(param1,param2);
         this.§_-zt§.push(_loc3_);
         §_-R4§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §_-Cv§() : Vector.<§_-VM§>
      {
         return this.§_-zt§;
      }
      
      public function §_-Mo§(param1:String) : §_-VM§
      {
         var _loc2_:§_-VM§ = null;
         for each(_loc2_ in this.§_-zt§)
         {
            if(_loc2_.§_-kV§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
