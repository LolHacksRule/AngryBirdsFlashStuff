package §_-nd§
{
   import §_-ZG§.§_-Ne§;
   import §_-w0§.JSON;
   
   public class §_-qA§
   {
       
      
      private var §_-aJ§:Vector.<§_-YO§>;
      
      public function §_-qA§()
      {
         super();
         this.§_-aJ§ = new Vector.<§_-YO§>();
      }
      
      public function §_-Xl§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            §_-Ne§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §_-w0§.JSON.§_-bW§(responseObj.json);
               for(k2 in jsonObj)
               {
                  §_-Ne§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§_-YO§ = this.§_-MJ§(responseObj.C);
         if(responseObj.E)
         {
            this.§_-oB§(responseObj);
            return;
         }
         if(sc.§_-fS§())
         {
            for each(fnc in sc.§_-8h§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            §_-Ne§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §_-oB§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§_-YO§ = this.§_-MJ§(param1.C);
         if(_loc2_.§_-fS§())
         {
            for each(_loc3_ in _loc2_.§_-8h§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            §_-Ne§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §_-II§(param1:String, param2:Function) : void
      {
         var _loc3_:§_-YO§ = new §_-YO§(param1,param2);
         this.§_-aJ§.push(_loc3_);
         §_-Ne§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §_-Wb§() : Vector.<§_-YO§>
      {
         return this.§_-aJ§;
      }
      
      public function §_-MJ§(param1:String) : §_-YO§
      {
         var _loc2_:§_-YO§ = null;
         for each(_loc2_ in this.§_-aJ§)
         {
            if(_loc2_.§_-VD§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
