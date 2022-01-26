package §_-pn§
{
   import §_-Eq§.JSON;
   import §_-ex§.§_-mR§;
   
   public class §_-Pt§
   {
       
      
      private var §_-2F§:Vector.<§_-4a§>;
      
      public function §_-Pt§()
      {
         super();
         this.§_-2F§ = new Vector.<§_-4a§>();
      }
      
      public function §_-4f§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            §_-mR§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §_-Eq§.JSON.§_-SR§(responseObj.json);
               for(k2 in jsonObj)
               {
                  §_-mR§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§_-4a§ = this.§_-KU§(responseObj.C);
         if(responseObj.E)
         {
            this.§ if§(responseObj);
            return;
         }
         if(sc.§_-Bl§())
         {
            for each(fnc in sc.§_-BP§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            §_-mR§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function § if§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§_-4a§ = this.§_-KU§(param1.C);
         if(_loc2_.§_-Bl§())
         {
            for each(_loc3_ in _loc2_.§_-BP§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            §_-mR§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §_-CL§(param1:String, param2:Function) : void
      {
         var _loc3_:§_-4a§ = new §_-4a§(param1,param2);
         this.§_-2F§.push(_loc3_);
         §_-mR§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §_-0m§() : Vector.<§_-4a§>
      {
         return this.§_-2F§;
      }
      
      public function §_-KU§(param1:String) : §_-4a§
      {
         var _loc2_:§_-4a§ = null;
         for each(_loc2_ in this.§_-2F§)
         {
            if(_loc2_.§_-Dr§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
