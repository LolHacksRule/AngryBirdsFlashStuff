package §#%§
{
   import §#-§.§4!K§;
   import §'!G§.§1C§;
   
   public class §[#§
   {
       
      
      private var §-B§:Vector.<§>p§>;
      
      public function §[#§()
      {
         super();
         this.§-B§ = new Vector.<§>p§>();
      }
      
      public function §%[§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            §1C§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §4!K§.§ !R§(responseObj.json);
               for(k2 in jsonObj)
               {
                  §1C§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§>p§ = this.§,$§(responseObj.C);
         if(responseObj.E)
         {
            this.§&P§(responseObj);
            return;
         }
         if(sc.§4!H§())
         {
            for each(fnc in sc.§8!1§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            §1C§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §&P§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§>p§ = this.§,$§(param1.C);
         if(_loc2_.§4!H§())
         {
            for each(_loc3_ in _loc2_.§8!1§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            §1C§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §`>§(param1:String, param2:Function) : void
      {
         var _loc3_:§>p§ = new §>p§(param1,param2);
         this.§-B§.push(_loc3_);
         §1C§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §<!Z§() : Vector.<§>p§>
      {
         return this.§-B§;
      }
      
      public function §,$§(param1:String) : §>p§
      {
         var _loc2_:§>p§ = null;
         for each(_loc2_ in this.§-B§)
         {
            if(_loc2_.§,I§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
