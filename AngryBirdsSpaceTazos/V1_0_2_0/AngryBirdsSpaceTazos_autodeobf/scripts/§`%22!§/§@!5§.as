package §`"!§
{
   import §""<§.§#N§;
   import §6!J§.§ try§;
   
   public class §@!5§
   {
       
      
      private var §@N§:Vector.<§3w§>;
      
      public function §@!5§()
      {
         super();
         this.§@N§ = new Vector.<§3w§>();
      }
      
      public function §;X§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            §#N§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = § try§.§^!K§(responseObj.json);
               for(k2 in jsonObj)
               {
                  §#N§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§3w§ = this.§7!e§(responseObj.C);
         if(responseObj.E)
         {
            this.§^"D§(responseObj);
            return;
         }
         if(sc.§18§())
         {
            for each(fnc in sc.§`U§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            §#N§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §^"D§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§3w§ = this.§7!e§(param1.C);
         if(_loc2_.§18§())
         {
            for each(_loc3_ in _loc2_.§`U§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            §#N§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §&!"§(param1:String, param2:Function) : void
      {
         var _loc3_:§3w§ = new §3w§(param1,param2);
         this.§@N§.push(_loc3_);
         §#N§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §&y§() : Vector.<§3w§>
      {
         return this.§@N§;
      }
      
      public function §7!e§(param1:String) : §3w§
      {
         var _loc2_:§3w§ = null;
         for each(_loc2_ in this.§@N§)
         {
            if(_loc2_.§%!o§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
