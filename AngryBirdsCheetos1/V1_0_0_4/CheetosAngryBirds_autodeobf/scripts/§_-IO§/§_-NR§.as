package §_-IO§
{
   import §_-DH§.§_-KR§;
   import §_-r6§.§_-Oy§;
   
   public class §_-NR§
   {
       
      
      private var §_-3z§:Vector.<§_-S1§>;
      
      public function §_-NR§()
      {
         super();
         this.§_-3z§ = new Vector.<§_-S1§>();
      }
      
      public function §_-ho§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            §_-Oy§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §_-KR§.§_-8B§(responseObj.json);
               for(k2 in jsonObj)
               {
                  §_-Oy§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§_-S1§ = this.§_-z6§(responseObj.C);
         if(responseObj.E)
         {
            this.§_-Sr§(responseObj);
            return;
         }
         if(sc.§for §())
         {
            for each(fnc in sc.§_-0W§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            §_-Oy§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §_-Sr§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§_-S1§ = this.§_-z6§(param1.C);
         if(_loc2_.§for §())
         {
            for each(_loc3_ in _loc2_.§_-0W§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            §_-Oy§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §_-UI§(param1:String, param2:Function) : void
      {
         var _loc3_:§_-S1§ = new §_-S1§(param1,param2);
         this.§_-3z§.push(_loc3_);
         §_-Oy§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §_-TY§() : Vector.<§_-S1§>
      {
         return this.§_-3z§;
      }
      
      public function §_-z6§(param1:String) : §_-S1§
      {
         var _loc2_:§_-S1§ = null;
         for each(_loc2_ in this.§_-3z§)
         {
            if(_loc2_.§_-TO§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
