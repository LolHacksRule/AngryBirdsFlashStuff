package §3"%§
{
   import §"I§.§=!U§;
   import §4!V§.§8!?§;
   
   public class §&1§
   {
       
      
      private var §!W§:Vector.<§["§>;
      
      public function §&1§()
      {
         super();
         this.§!W§ = new Vector.<§["§>();
      }
      
      public function §7!J§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            §=!U§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §8!?§.§@!=§(responseObj.json);
               for(k2 in jsonObj)
               {
                  §=!U§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§["§ = this.§!R§(responseObj.C);
         if(responseObj.E)
         {
            this.§<!s§(responseObj);
            return;
         }
         if(sc.§;!B§())
         {
            for each(fnc in sc.§^>§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            §=!U§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §<!s§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§["§ = this.§!R§(param1.C);
         if(_loc2_.§;!B§())
         {
            for each(_loc3_ in _loc2_.§^>§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            §=!U§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §%!V§(param1:String, param2:Function) : void
      {
         var _loc3_:§["§ = new §["§(param1,param2);
         this.§!W§.push(_loc3_);
         §=!U§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §9!D§() : Vector.<§["§>
      {
         return this.§!W§;
      }
      
      public function §!R§(param1:String) : §["§
      {
         var _loc2_:§["§ = null;
         for each(_loc2_ in this.§!W§)
         {
            if(_loc2_.§-8§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
