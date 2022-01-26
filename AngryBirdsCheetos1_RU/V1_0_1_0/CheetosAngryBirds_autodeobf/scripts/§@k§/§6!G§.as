package §@k§
{
   import §%t§.§@!%§;
   import §&d§.§!!O§;
   
   public class §6!G§
   {
       
      
      private var §'!]§:Vector.<§4p§>;
      
      public function §6!G§()
      {
         super();
         this.§'!]§ = new Vector.<§4p§>();
      }
      
      public function §+8§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            §@!%§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §!!O§.§3Q§(responseObj.json);
               for(k2 in jsonObj)
               {
                  §@!%§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§4p§ = this.§]D§(responseObj.C);
         if(responseObj.E)
         {
            this.§%H§(responseObj);
            return;
         }
         if(sc.§3!R§())
         {
            for each(fnc in sc.§0!P§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            §@!%§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §%H§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§4p§ = this.§]D§(param1.C);
         if(_loc2_.§3!R§())
         {
            for each(_loc3_ in _loc2_.§0!P§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            §@!%§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §3!;§(param1:String, param2:Function) : void
      {
         var _loc3_:§4p§ = new §4p§(param1,param2);
         this.§'!]§.push(_loc3_);
         §@!%§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §[5§() : Vector.<§4p§>
      {
         return this.§'!]§;
      }
      
      public function §]D§(param1:String) : §4p§
      {
         var _loc2_:§4p§ = null;
         for each(_loc2_ in this.§'!]§)
         {
            if(_loc2_.§^!2§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
