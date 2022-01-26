package §&N§
{
   import §"!"§.§&z§;
   import §;8§.§3f§;
   
   public class §=§
   {
       
      
      private var §?p§:Vector.<§"!7§>;
      
      public function §=§()
      {
         super();
         this.§?p§ = new Vector.<§"!7§>();
      }
      
      public function §7Q§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            §3f§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §&z§.decode(responseObj.json);
               for(k2 in jsonObj)
               {
                  §3f§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§"!7§ = this.§4G§(responseObj.C);
         if(responseObj.E)
         {
            this.§6f§(responseObj);
            return;
         }
         if(sc.§9N§())
         {
            for each(fnc in sc.§ !"§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            §3f§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §6f§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§"!7§ = this.§4G§(param1.C);
         if(_loc2_.§9N§())
         {
            for each(_loc3_ in _loc2_.§ !"§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            §3f§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §2w§(param1:String, param2:Function) : void
      {
         var _loc3_:§"!7§ = new §"!7§(param1,param2);
         this.§?p§.push(_loc3_);
         §3f§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §>v§() : Vector.<§"!7§>
      {
         return this.§?p§;
      }
      
      public function §4G§(param1:String) : §"!7§
      {
         var _loc2_:§"!7§ = null;
         for each(_loc2_ in this.§?p§)
         {
            if(_loc2_.§2m§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
