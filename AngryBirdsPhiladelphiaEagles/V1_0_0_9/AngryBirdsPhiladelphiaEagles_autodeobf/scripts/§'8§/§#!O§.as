package §'8§
{
   import §"1§.§3'§;
   
   public class §#!O§
   {
       
      
      private var §^7§:Vector.<§-3§>;
      
      public function §#!O§()
      {
         super();
         this.§^7§ = new Vector.<§-3§>();
      }
      
      public function §-c§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            §3'§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §-K§.§7w§(responseObj.json);
               for(k2 in jsonObj)
               {
                  §3'§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§-3§ = this.§^;§(responseObj.C);
         if(responseObj.E)
         {
            this.§!+§(responseObj);
            return;
         }
         if(sc.§,§())
         {
            for each(fnc in sc.§98§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            §3'§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §!+§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§-3§ = this.§^;§(param1.C);
         if(_loc2_.§,§())
         {
            for each(_loc3_ in _loc2_.§98§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            §3'§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §&I§(param1:String, param2:Function) : void
      {
         var _loc3_:§-3§ = new §-3§(param1,param2);
         this.§^7§.push(_loc3_);
         §3'§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §4-§() : Vector.<§-3§>
      {
         return this.§^7§;
      }
      
      public function §^;§(param1:String) : §-3§
      {
         var _loc2_:§-3§ = null;
         for each(_loc2_ in this.§^7§)
         {
            if(_loc2_.§`+§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
