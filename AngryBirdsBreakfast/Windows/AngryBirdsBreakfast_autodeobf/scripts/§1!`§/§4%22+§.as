package §1!`§
{
   import §;K§.§&s§;
   import each.§!!'§;
   
   public class §4"+§
   {
       
      
      private var §"!@§:Vector.<§2!<§>;
      
      public function §4"+§()
      {
         super();
         this.§"!@§ = new Vector.<§2!<§>();
      }
      
      public function §+!0§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            §!!'§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §&s§.§>7§(responseObj.json);
               for(k2 in jsonObj)
               {
                  §!!'§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§2!<§ = this.§-!6§(responseObj.C);
         if(responseObj.E)
         {
            this.§=7§(responseObj);
            return;
         }
         if(sc.§4!E§())
         {
            for each(fnc in sc.§7!+§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            §!!'§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §=7§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§2!<§ = this.§-!6§(param1.C);
         if(_loc2_.§4!E§())
         {
            for each(_loc3_ in _loc2_.§7!+§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            §!!'§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §;!$§(param1:String, param2:Function) : void
      {
         var _loc3_:§2!<§ = new §2!<§(param1,param2);
         this.§"!@§.push(_loc3_);
         §!!'§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §5!r§() : Vector.<§2!<§>
      {
         return this.§"!@§;
      }
      
      public function §-!6§(param1:String) : §2!<§
      {
         var _loc2_:§2!<§ = null;
         for each(_loc2_ in this.§"!@§)
         {
            if(_loc2_.§0" §() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
