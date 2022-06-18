package §%!1§
{
   import §-!6§.§>I§;
   import §5l§.§@!+§;
   
   public class §%^§
   {
       
      
      private var §%!;§:Vector.<§@H§>;
      
      public function §%^§()
      {
         super();
         this.§%!;§ = new Vector.<§@H§>();
      }
      
      public function §4!`§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            §>I§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §@!+§.§'E§(responseObj.json);
               for(k2 in jsonObj)
               {
                  §>I§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§@H§ = this.§&w§(responseObj.C);
         if(responseObj.E)
         {
            this.§8>§(responseObj);
            return;
         }
         if(sc.§=3§())
         {
            for each(fnc in sc.§9y§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            §>I§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §8>§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§@H§ = this.§&w§(param1.C);
         if(_loc2_.§=3§())
         {
            for each(_loc3_ in _loc2_.§9y§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            §>I§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §-,§(param1:String, param2:Function) : void
      {
         var _loc3_:§@H§ = new §@H§(param1,param2);
         this.§%!;§.push(_loc3_);
         §>I§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §-§() : Vector.<§@H§>
      {
         return this.§%!;§;
      }
      
      public function §&w§(param1:String) : §@H§
      {
         var _loc2_:§@H§ = null;
         for each(_loc2_ in this.§%!;§)
         {
            if(_loc2_.§!!G§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
