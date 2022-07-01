package §@!v§
{
   import §6"&§.§8R§;
   import §=!M§.§9!P§;
   
   public class §9!2§
   {
       
      
      private var §#F§:Vector.<§3y§>;
      
      public function §9!2§()
      {
         super();
         this.§#F§ = new Vector.<§3y§>();
      }
      
      public function §"p§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            §9!P§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §8R§.§0!L§(responseObj.json);
               for(k2 in jsonObj)
               {
                  §9!P§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§3y§ = this.§&m§(responseObj.C);
         if(responseObj.E)
         {
            this.§0d§(responseObj);
            return;
         }
         if(sc.§%!0§())
         {
            for each(fnc in sc.§`'§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            §9!P§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §0d§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§3y§ = this.§&m§(param1.C);
         if(_loc2_.§%!0§())
         {
            for each(_loc3_ in _loc2_.§`'§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            §9!P§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §>c§(param1:String, param2:Function) : void
      {
         var _loc3_:§3y§ = new §3y§(param1,param2);
         this.§#F§.push(_loc3_);
         §9!P§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §`!x§() : Vector.<§3y§>
      {
         return this.§#F§;
      }
      
      public function §&m§(param1:String) : §3y§
      {
         var _loc2_:§3y§ = null;
         for each(_loc2_ in this.§#F§)
         {
            if(_loc2_.§]]§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
