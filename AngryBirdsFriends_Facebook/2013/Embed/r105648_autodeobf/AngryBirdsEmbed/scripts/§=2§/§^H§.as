package §=2§
{
   import §?!8§.§2>§;
   import §?H§.§3!=§;
   
   public class §^H§
   {
       
      
      private var §'!N§:Vector.<§9!E§>;
      
      public function §^H§()
      {
         super();
         this.§'!N§ = new Vector.<§9!E§>();
      }
      
      public function §0l§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            §2>§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §3!=§.decode(responseObj.json);
               for(k2 in jsonObj)
               {
                  §2>§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§9!E§ = this.§?L§(responseObj.C);
         if(responseObj.E)
         {
            this.§=!J§(responseObj);
            return;
         }
         if(sc.§8$§())
         {
            for each(fnc in sc.§`!,§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            §2>§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §=!J§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§9!E§ = this.§?L§(param1.C);
         if(_loc2_.§8$§())
         {
            for each(_loc3_ in _loc2_.§`!,§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            §2>§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §2d§(param1:String, param2:Function) : void
      {
         var _loc3_:§9!E§ = new §9!E§(param1,param2);
         this.§'!N§.push(_loc3_);
         §2>§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §^!8§() : Vector.<§9!E§>
      {
         return this.§'!N§;
      }
      
      public function §?L§(param1:String) : §9!E§
      {
         var _loc2_:§9!E§ = null;
         for each(_loc2_ in this.§'!N§)
         {
            if(_loc2_.§7s§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
