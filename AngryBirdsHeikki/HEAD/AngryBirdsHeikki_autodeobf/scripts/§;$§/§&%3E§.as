package §;$§
{
   import §&!b§.§ c§;
   import §]!N§.§20§;
   
   public class §&>§
   {
       
      
      private var §#!X§:Vector.<§1I§>;
      
      public function §&>§()
      {
         super();
         this.§#!X§ = new Vector.<§1I§>();
      }
      
      public function §@8§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            § c§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §20§.§4!@§(responseObj.json);
               for(k2 in jsonObj)
               {
                  § c§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§1I§ = this.§#@§(responseObj.C);
         if(responseObj.E)
         {
            this.§]!_§(responseObj);
            return;
         }
         if(sc.§<K§())
         {
            for each(fnc in sc.§6!G§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            § c§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §]!_§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§1I§ = this.§#@§(param1.C);
         if(_loc2_.§<K§())
         {
            for each(_loc3_ in _loc2_.§6!G§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            § c§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §=Q§(param1:String, param2:Function) : void
      {
         var _loc3_:§1I§ = new §1I§(param1,param2);
         this.§#!X§.push(_loc3_);
         § c§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §]!K§() : Vector.<§1I§>
      {
         return this.§#!X§;
      }
      
      public function §#@§(param1:String) : §1I§
      {
         var _loc2_:§1I§ = null;
         for each(_loc2_ in this.§#!X§)
         {
            if(_loc2_.§+![§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
