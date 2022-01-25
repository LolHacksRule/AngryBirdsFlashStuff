package §2!&§
{
   import §,j§.§'u§;
   import §24§.;
   
   public class §+!V§
   {
       
      
      private var §!w§:Vector.<§?M§>;
      
      public function §+!V§()
      {
         super();
         this.§!w§ = new Vector.<§?M§>();
      }
      
      public function §2=§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            §#7§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §'u§.§&!Z§(responseObj.json);
               for(k2 in jsonObj)
               {
                  §#7§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§?M§ = this.§;C§(responseObj.C);
         if(responseObj.E)
         {
            this.§#8§(responseObj);
            return;
         }
         if(sc.§5"5§())
         {
            for each(fnc in sc.§@!,§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            §#7§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §#8§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§?M§ = this.§;C§(param1.C);
         if(_loc2_.§5"5§())
         {
            for each(_loc3_ in _loc2_.§@!,§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            §#7§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §2!W§(param1:String, param2:Function) : void
      {
         var _loc3_:§?M§ = new §?M§(param1,param2);
         this.§!w§.push(_loc3_);
         §#7§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §%!v§() : Vector.<§?M§>
      {
         return this.§!w§;
      }
      
      public function §;C§(param1:String) : §?M§
      {
         var _loc2_:§?M§ = null;
         for each(_loc2_ in this.§!w§)
         {
            if(_loc2_.§0Y§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
