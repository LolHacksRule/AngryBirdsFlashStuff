package §^!#§
{
   import §%!$§.§[Z§;
   import §9!&§.§[!`§;
   
   public class §&!D§
   {
       
      
      private var §;!C§:Vector.<§`!]§>;
      
      public function §&!D§()
      {
         super();
         this.§;!C§ = new Vector.<§`!]§>();
      }
      
      public function §;O§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            §[Z§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §[!`§.§'!J§(responseObj.json);
               for(k2 in jsonObj)
               {
                  §[Z§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§`!]§ = this.§<!@§(responseObj.C);
         if(responseObj.E)
         {
            this.§5'§(responseObj);
            return;
         }
         if(sc.§-K§())
         {
            for each(fnc in sc.§7y§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            §[Z§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §5'§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§`!]§ = this.§<!@§(param1.C);
         if(_loc2_.§-K§())
         {
            for each(_loc3_ in _loc2_.§7y§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            §[Z§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §-!S§(param1:String, param2:Function) : void
      {
         var _loc3_:§`!]§ = new §`!]§(param1,param2);
         this.§;!C§.push(_loc3_);
         §[Z§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §+P§() : Vector.<§`!]§>
      {
         return this.§;!C§;
      }
      
      public function §<!@§(param1:String) : §`!]§
      {
         var _loc2_:§`!]§ = null;
         for each(_loc2_ in this.§;!C§)
         {
            if(_loc2_.§-z§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
