package §,u§
{
   import §-p§.§&2§;
   import §;!!§.§3B§;
   
   public class §&D§
   {
       
      
      private var §29§:Vector.<§@t§>;
      
      public function §&D§()
      {
         super();
         this.§29§ = new Vector.<§@t§>();
      }
      
      public function §&!;§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            §&2§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §3B§.decode(responseObj.json);
               for(k2 in jsonObj)
               {
                  §&2§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§@t§ = this.§'!4§(responseObj.C);
         if(responseObj.E)
         {
            this.§%P§(responseObj);
            return;
         }
         if(sc.§4!+§())
         {
            for each(fnc in sc.§!!3§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            §&2§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §%P§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§@t§ = this.§'!4§(param1.C);
         if(_loc2_.§4!+§())
         {
            for each(_loc3_ in _loc2_.§!!3§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            §&2§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §#m§(param1:String, param2:Function) : void
      {
         var _loc3_:§@t§ = new §@t§(param1,param2);
         this.§29§.push(_loc3_);
         §&2§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §&!I§() : Vector.<§@t§>
      {
         return this.§29§;
      }
      
      public function §'!4§(param1:String) : §@t§
      {
         var _loc2_:§@t§ = null;
         for each(_loc2_ in this.§29§)
         {
            if(_loc2_.§=!#§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
