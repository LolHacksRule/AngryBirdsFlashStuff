package §[8§
{
   import §"p§.§@8§;
   import §=K§.§=2§;
   
   public class §!"?§
   {
       
      
      private var §?u§:Vector.<§2" §>;
      
      public function §!"?§()
      {
         super();
         this.§?u§ = new Vector.<§2" §>();
      }
      
      public function §-%§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            §@8§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §=2§.§!r§(responseObj.json);
               for(k2 in jsonObj)
               {
                  §@8§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§2" § = this.§9r§(responseObj.C);
         if(responseObj.E)
         {
            this.§^;§(responseObj);
            return;
         }
         if(sc.§!! §())
         {
            for each(fnc in sc.§3S§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            §@8§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §^;§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§2" § = this.§9r§(param1.C);
         if(_loc2_.§!! §())
         {
            for each(_loc3_ in _loc2_.§3S§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            §@8§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §+!a§(param1:String, param2:Function) : void
      {
         var _loc3_:§2" § = new §2" §(param1,param2);
         this.§?u§.push(_loc3_);
         §@8§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §?!=§() : Vector.<§2" §>
      {
         return this.§?u§;
      }
      
      public function §9r§(param1:String) : §2" §
      {
         var _loc2_:§2" § = null;
         for each(_loc2_ in this.§?u§)
         {
            if(_loc2_.§<!k§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
