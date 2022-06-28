package §-^§
{
   import §1!B§.§<m§;
   import §@!Z§.§,Z§;
   
   public class §5?§
   {
       
      
      private var §,!L§:Vector.<§=q§>;
      
      public function §5?§()
      {
         super();
         this.§,!L§ = new Vector.<§=q§>();
      }
      
      public function §[!9§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            §<m§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §,Z§.§'o§(responseObj.json);
               for(k2 in jsonObj)
               {
                  §<m§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§=q§ = this.§=O§(responseObj.C);
         if(responseObj.E)
         {
            this.§4!l§(responseObj);
            return;
         }
         if(sc.§[N§())
         {
            for each(fnc in sc.§;!3§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            §<m§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §4!l§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§=q§ = this.§=O§(param1.C);
         if(_loc2_.§[N§())
         {
            for each(_loc3_ in _loc2_.§;!3§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            §<m§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §,!c§(param1:String, param2:Function) : void
      {
         var _loc3_:§=q§ = new §=q§(param1,param2);
         this.§,!L§.push(_loc3_);
         §<m§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §[n§() : Vector.<§=q§>
      {
         return this.§,!L§;
      }
      
      public function §=O§(param1:String) : §=q§
      {
         var _loc2_:§=q§ = null;
         for each(_loc2_ in this.§,!L§)
         {
            if(_loc2_.§`!$§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
