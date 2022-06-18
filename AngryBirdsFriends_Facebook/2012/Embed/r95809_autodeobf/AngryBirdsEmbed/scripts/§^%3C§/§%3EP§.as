package §^<§
{
   import §1!6§.§const§;
   import §2x§.§'!@§;
   
   public class §>P§
   {
       
      
      private var §9!G§:Vector.<§!9§>;
      
      public function §>P§()
      {
         super();
         this.§9!G§ = new Vector.<§!9§>();
      }
      
      public function §>_§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            §'!@§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §const§.decode(responseObj.json);
               for(k2 in jsonObj)
               {
                  §'!@§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§!9§ = this.§`^§(responseObj.C);
         if(responseObj.E)
         {
            this.§!+§(responseObj);
            return;
         }
         if(sc.§=8§())
         {
            for each(fnc in sc.§%!$§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            §'!@§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §!+§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§!9§ = this.§`^§(param1.C);
         if(_loc2_.§=8§())
         {
            for each(_loc3_ in _loc2_.§%!$§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            §'!@§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §6e§(param1:String, param2:Function) : void
      {
         var _loc3_:§!9§ = new §!9§(param1,param2);
         this.§9!G§.push(_loc3_);
         §'!@§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §0&§() : Vector.<§!9§>
      {
         return this.§9!G§;
      }
      
      public function §`^§(param1:String) : §!9§
      {
         var _loc2_:§!9§ = null;
         for each(_loc2_ in this.§9!G§)
         {
            if(_loc2_.§ !9§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
