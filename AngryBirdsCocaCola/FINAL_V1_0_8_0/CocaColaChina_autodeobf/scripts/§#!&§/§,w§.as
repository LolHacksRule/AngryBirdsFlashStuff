package §#!&§
{
   import §4^§.§=!D§;
   import §^=§.§8!6§;
   
   public class §,w§
   {
       
      
      private var §+!2§:Vector.<§?2§>;
      
      public function §,w§()
      {
         super();
         this.§+!2§ = new Vector.<§?2§>();
      }
      
      public function §^R§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            §8!6§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §=!D§.§,n§(responseObj.json);
               for(k2 in jsonObj)
               {
                  §8!6§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§?2§ = this.§9!§(responseObj.C);
         if(responseObj.E)
         {
            this.§-,§(responseObj);
            return;
         }
         if(sc.§!a§())
         {
            for each(fnc in sc.§ each§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            §8!6§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §-,§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§?2§ = this.§9!§(param1.C);
         if(_loc2_.§!a§())
         {
            for each(_loc3_ in _loc2_.§ each§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            §8!6§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §%!I§(param1:String, param2:Function) : void
      {
         var _loc3_:§?2§ = new §?2§(param1,param2);
         this.§+!2§.push(_loc3_);
         §8!6§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §=P§() : Vector.<§?2§>
      {
         return this.§+!2§;
      }
      
      public function §9!§(param1:String) : §?2§
      {
         var _loc2_:§?2§ = null;
         for each(_loc2_ in this.§+!2§)
         {
            if(_loc2_.§&!$§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
