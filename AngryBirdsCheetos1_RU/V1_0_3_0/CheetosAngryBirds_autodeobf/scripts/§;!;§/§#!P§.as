package §;!;§
{
   import §7!P§.§-3§;
   
   public class §#!P§
   {
       
      
      private var §!!"§:Vector.<§-]§>;
      
      public function §#!P§()
      {
         super();
         this.§!!"§ = new Vector.<§-]§>();
      }
      
      public function §'v§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            §-3§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §2-§.§?!R§(responseObj.json);
               for(k2 in jsonObj)
               {
                  §-3§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§-]§ = this.§+!H§(responseObj.C);
         if(responseObj.E)
         {
            this.§=E§(responseObj);
            return;
         }
         if(sc.§^x§())
         {
            for each(fnc in sc.§4I§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            §-3§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §=E§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§-]§ = this.§+!H§(param1.C);
         if(_loc2_.§^x§())
         {
            for each(_loc3_ in _loc2_.§4I§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            §-3§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §]y§(param1:String, param2:Function) : void
      {
         var _loc3_:§-]§ = new §-]§(param1,param2);
         this.§!!"§.push(_loc3_);
         §-3§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function § !A§() : Vector.<§-]§>
      {
         return this.§!!"§;
      }
      
      public function §+!H§(param1:String) : §-]§
      {
         var _loc2_:§-]§ = null;
         for each(_loc2_ in this.§!!"§)
         {
            if(_loc2_.§?C§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
