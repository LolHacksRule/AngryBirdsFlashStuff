package §_-Bi§
{
   import §_-aA§.§_-I0§;
   import §_-rt§.§_-nm§;
   
   public class §_-Cj§
   {
       
      
      private var §_-OK§:Vector.<§_-xr§>;
      
      public function §_-Cj§()
      {
         super();
         this.§_-OK§ = new Vector.<§_-xr§>();
      }
      
      public function §_-iL§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            §_-I0§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §_-nm§.§_-UM§(responseObj.json);
               for(k2 in jsonObj)
               {
                  §_-I0§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§_-xr§ = this.§_-Wq§(responseObj.C);
         if(responseObj.E)
         {
            this.§_-Le§(responseObj);
            return;
         }
         if(sc.§_-jR§())
         {
            for each(fnc in sc.§_-40§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            §_-I0§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §_-Le§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§_-xr§ = this.§_-Wq§(param1.C);
         if(_loc2_.§_-jR§())
         {
            for each(_loc3_ in _loc2_.§_-40§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            §_-I0§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §_-SY§(param1:String, param2:Function) : void
      {
         var _loc3_:§_-xr§ = new §_-xr§(param1,param2);
         this.§_-OK§.push(_loc3_);
         §_-I0§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §_-cH§() : Vector.<§_-xr§>
      {
         return this.§_-OK§;
      }
      
      public function §_-Wq§(param1:String) : §_-xr§
      {
         var _loc2_:§_-xr§ = null;
         for each(_loc2_ in this.§_-OK§)
         {
            if(_loc2_.§_-gq§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
