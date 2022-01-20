package §=u§
{
   import §%!H§.§<!_§;
   import §'+§.§1u§;
   
   public class §8!W§
   {
       
      
      private var §5$§:Vector.<§>!,§>;
      
      public function §8!W§()
      {
         super();
         this.§5$§ = new Vector.<§>!,§>();
      }
      
      public function §-4§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            §1u§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §<!_§.§8!R§(responseObj.json);
               for(k2 in jsonObj)
               {
                  §1u§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§>!,§ = this.§@"§(responseObj.C);
         if(responseObj.E)
         {
            this.§!V§(responseObj);
            return;
         }
         if(sc.§?!=§())
         {
            for each(fnc in sc.§+!&§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            §1u§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §!V§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§>!,§ = this.§@"§(param1.C);
         if(_loc2_.§?!=§())
         {
            for each(_loc3_ in _loc2_.§+!&§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            §1u§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §<!]§(param1:String, param2:Function) : void
      {
         var _loc3_:§>!,§ = new §>!,§(param1,param2);
         this.§5$§.push(_loc3_);
         §1u§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §]x§() : Vector.<§>!,§>
      {
         return this.§5$§;
      }
      
      public function §@"§(param1:String) : §>!,§
      {
         var _loc2_:§>!,§ = null;
         for each(_loc2_ in this.§5$§)
         {
            if(_loc2_.§,-§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
