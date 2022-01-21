package §=!m§
{
   import §#!8§.§]K§;
   import §0i§.§4!%§;
   
   public class §;Z§
   {
       
      
      private var §7"§:Vector.<§9-§>;
      
      public function §;Z§()
      {
         super();
         this.§7"§ = new Vector.<§9-§>();
      }
      
      public function §>!p§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            §4!%§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §]K§.§3!c§(responseObj.json);
               for(k2 in jsonObj)
               {
                  §4!%§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§9-§ = this.§"C§(responseObj.C);
         if(responseObj.E)
         {
            this.§<!7§(responseObj);
            return;
         }
         if(sc.§=M§())
         {
            for each(fnc in sc.§^!f§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            §4!%§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §<!7§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§9-§ = this.§"C§(param1.C);
         if(_loc2_.§=M§())
         {
            for each(_loc3_ in _loc2_.§^!f§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            §4!%§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §[!+§(param1:String, param2:Function) : void
      {
         var _loc3_:§9-§ = new §9-§(param1,param2);
         this.§7"§.push(_loc3_);
         §4!%§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §<!l§() : Vector.<§9-§>
      {
         return this.§7"§;
      }
      
      public function §"C§(param1:String) : §9-§
      {
         var _loc2_:§9-§ = null;
         for each(_loc2_ in this.§7"§)
         {
            if(_loc2_.§1i§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
