package §""=§
{
   import §!!s§.§;4§;
   import §6!C§.§6E§;
   
   public class §-h§
   {
       
      
      private var §?!A§:Vector.<§0l§>;
      
      public function §-h§()
      {
         super();
         this.§?!A§ = new Vector.<§0l§>();
      }
      
      public function §2!0§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            §6E§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §;4§.§2!#§(responseObj.json);
               for(k2 in jsonObj)
               {
                  §6E§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§0l§ = this.§9!=§(responseObj.C);
         if(responseObj.E)
         {
            this.§0!H§(responseObj);
            return;
         }
         if(sc.§=Y§())
         {
            for each(fnc in sc.§`n§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            §6E§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §0!H§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§0l§ = this.§9!=§(param1.C);
         if(_loc2_.§=Y§())
         {
            for each(_loc3_ in _loc2_.§`n§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            §6E§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §>3§(param1:String, param2:Function) : void
      {
         var _loc3_:§0l§ = new §0l§(param1,param2);
         this.§?!A§.push(_loc3_);
         §6E§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §`0§() : Vector.<§0l§>
      {
         return this.§?!A§;
      }
      
      public function §9!=§(param1:String) : §0l§
      {
         var _loc2_:§0l§ = null;
         for each(_loc2_ in this.§?!A§)
         {
            if(_loc2_.§;!s§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
