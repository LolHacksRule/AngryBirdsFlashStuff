package §]8§
{
   import §!6§.§3!5§;
   import §=^§.§;D§;
   
   public class §=!,§
   {
       
      
      private var §=$§:Vector.<§[!P§>;
      
      public function §=!,§()
      {
         super();
         this.§=$§ = new Vector.<§[!P§>();
      }
      
      public function §0y§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            §3!5§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §;D§.§8a§(responseObj.json);
               for(k2 in jsonObj)
               {
                  §3!5§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§[!P§ = this.§#!Q§(responseObj.C);
         if(responseObj.E)
         {
            this.§]g§(responseObj);
            return;
         }
         if(sc.§ K§())
         {
            for each(fnc in sc.§ !7§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            §3!5§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §]g§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§[!P§ = this.§#!Q§(param1.C);
         if(_loc2_.§ K§())
         {
            for each(_loc3_ in _loc2_.§ !7§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            §3!5§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §-J§(param1:String, param2:Function) : void
      {
         var _loc3_:§[!P§ = new §[!P§(param1,param2);
         this.§=$§.push(_loc3_);
         §3!5§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §]&§() : Vector.<§[!P§>
      {
         return this.§=$§;
      }
      
      public function §#!Q§(param1:String) : §[!P§
      {
         var _loc2_:§[!P§ = null;
         for each(_loc2_ in this.§=$§)
         {
            if(_loc2_.§+"§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
