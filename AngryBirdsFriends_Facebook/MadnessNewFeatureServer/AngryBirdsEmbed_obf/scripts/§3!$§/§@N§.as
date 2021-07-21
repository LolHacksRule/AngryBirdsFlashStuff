package §3!$§
{
   import §'6§.§?!L§;
   import §]a§.§`r§;
   
   public class §@N§
   {
       
      
      private var §<!C§:Vector.<§<>§>;
      
      public function §@N§()
      {
         super();
         this.§<!C§ = new Vector.<§<>§>();
      }
      
      public function §2!I§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            §?!L§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §`r§.decode(responseObj.json);
               for(k2 in jsonObj)
               {
                  §?!L§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§<>§ = this.§=!6§(responseObj.C);
         if(responseObj.E)
         {
            this.§=c§(responseObj);
            return;
         }
         if(sc.§ S§())
         {
            for each(fnc in sc.§ !§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            §?!L§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §=c§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§<>§ = this.§=!6§(param1.C);
         if(_loc2_.§ S§())
         {
            for each(_loc3_ in _loc2_.§ !§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            §?!L§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §;!I§(param1:String, param2:Function) : void
      {
         var _loc3_:§<>§ = new §<>§(param1,param2);
         this.§<!C§.push(_loc3_);
         §?!L§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §<-§() : Vector.<§<>§>
      {
         return this.§<!C§;
      }
      
      public function §=!6§(param1:String) : §<>§
      {
         var _loc2_:§<>§ = null;
         for each(_loc2_ in this.§<!C§)
         {
            if(_loc2_.§!1§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
