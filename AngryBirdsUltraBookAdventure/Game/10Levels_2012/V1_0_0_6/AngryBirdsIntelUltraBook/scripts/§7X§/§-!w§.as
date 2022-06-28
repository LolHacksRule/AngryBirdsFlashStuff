package §7X§
{
   import §!e§.§function§;
   import §"x§.§-8§;
   
   public class §-!w§
   {
       
      
      private var §0B§:Vector.<§1!u§>;
      
      public function §-!w§()
      {
         super();
         this.§0B§ = new Vector.<§1!u§>();
      }
      
      public function §%z§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            §-8§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §function§.§8!^§(responseObj.json);
               for(k2 in jsonObj)
               {
                  §-8§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§1!u§ = this.§9w§(responseObj.C);
         if(responseObj.E)
         {
            this.§&!§(responseObj);
            return;
         }
         if(sc.§ g§())
         {
            for each(fnc in sc.§^!^§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            §-8§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §&!§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§1!u§ = this.§9w§(param1.C);
         if(_loc2_.§ g§())
         {
            for each(_loc3_ in _loc2_.§^!^§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            §-8§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §^!J§(param1:String, param2:Function) : void
      {
         var _loc3_:§1!u§ = new §1!u§(param1,param2);
         this.§0B§.push(_loc3_);
         §-8§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §]!V§() : Vector.<§1!u§>
      {
         return this.§0B§;
      }
      
      public function §9w§(param1:String) : §1!u§
      {
         var _loc2_:§1!u§ = null;
         for each(_loc2_ in this.§0B§)
         {
            if(_loc2_.§@t§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
