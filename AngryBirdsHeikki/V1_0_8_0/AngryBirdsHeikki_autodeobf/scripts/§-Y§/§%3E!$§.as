package §-Y§
{
   import § !3§.§!X§;
   import §+E§.§ 0§;
   
   public class §>!$§
   {
       
      
      private var §!Y§:Vector.<§8§>;
      
      public function §>!$§()
      {
         super();
         this.§!Y§ = new Vector.<§8§>();
      }
      
      public function §!j§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            §!X§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = § 0§.§?!D§(responseObj.json);
               for(k2 in jsonObj)
               {
                  §!X§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§8§ = this.§,i§(responseObj.C);
         if(responseObj.E)
         {
            this.§!!Q§(responseObj);
            return;
         }
         if(sc.§,-§())
         {
            for each(fnc in sc.§1O§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            §!X§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §!!Q§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§8§ = this.§,i§(param1.C);
         if(_loc2_.§,-§())
         {
            for each(_loc3_ in _loc2_.§1O§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            §!X§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §3@§(param1:String, param2:Function) : void
      {
         var _loc3_:§8§ = new §8§(param1,param2);
         this.§!Y§.push(_loc3_);
         §!X§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §3z§() : Vector.<§8§>
      {
         return this.§!Y§;
      }
      
      public function §,i§(param1:String) : §8§
      {
         var _loc2_:§8§ = null;
         for each(_loc2_ in this.§!Y§)
         {
            if(_loc2_.§['§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
