package §%!B§
{
   import §+P§.§;!%§;
   import §5K§.§[C§;
   
   public class §%4§
   {
       
      
      private var §@!E§:Vector.<§5!U§>;
      
      public function §%4§()
      {
         super();
         this.§@!E§ = new Vector.<§5!U§>();
      }
      
      public function §'R§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            §[C§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §;!%§.§8[§(responseObj.json);
               for(k2 in jsonObj)
               {
                  §[C§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§5!U§ = this.§#v§(responseObj.C);
         if(responseObj.E)
         {
            this.§2!h§(responseObj);
            return;
         }
         if(sc.§>3§())
         {
            for each(fnc in sc.§[!k§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            §[C§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §2!h§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§5!U§ = this.§#v§(param1.C);
         if(_loc2_.§>3§())
         {
            for each(_loc3_ in _loc2_.§[!k§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            §[C§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §3G§(param1:String, param2:Function) : void
      {
         var _loc3_:§5!U§ = new §5!U§(param1,param2);
         this.§@!E§.push(_loc3_);
         §[C§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function § !k§() : Vector.<§5!U§>
      {
         return this.§@!E§;
      }
      
      public function §#v§(param1:String) : §5!U§
      {
         var _loc2_:§5!U§ = null;
         for each(_loc2_ in this.§@!E§)
         {
            if(_loc2_.§,8§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
