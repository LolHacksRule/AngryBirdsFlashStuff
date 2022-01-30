package §5<§
{
   import §?!a§.§=l§;
   import §@!;§.§&F§;
   
   public class §&A§
   {
       
      
      private var §9h§:Vector.<§5"!§>;
      
      public function §&A§()
      {
         super();
         this.§9h§ = new Vector.<§5"!§>();
      }
      
      public function §#c§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            §&F§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §=l§.§8a§(responseObj.json);
               for(k2 in jsonObj)
               {
                  §&F§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§5"!§ = this.§,6§(responseObj.C);
         if(responseObj.E)
         {
            this.§%!D§(responseObj);
            return;
         }
         if(sc.§;m§())
         {
            for each(fnc in sc.§%!K§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            §&F§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §%!D§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§5"!§ = this.§,6§(param1.C);
         if(_loc2_.§;m§())
         {
            for each(_loc3_ in _loc2_.§%!K§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            §&F§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §,q§(param1:String, param2:Function) : void
      {
         var _loc3_:§5"!§ = new §5"!§(param1,param2);
         this.§9h§.push(_loc3_);
         §&F§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §]!"§() : Vector.<§5"!§>
      {
         return this.§9h§;
      }
      
      public function §,6§(param1:String) : §5"!§
      {
         var _loc2_:§5"!§ = null;
         for each(_loc2_ in this.§9h§)
         {
            if(_loc2_.§5!M§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
