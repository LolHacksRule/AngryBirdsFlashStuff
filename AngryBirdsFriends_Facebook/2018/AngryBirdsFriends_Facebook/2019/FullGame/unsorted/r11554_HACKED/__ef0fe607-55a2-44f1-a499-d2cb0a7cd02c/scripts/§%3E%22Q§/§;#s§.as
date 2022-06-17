package §>"Q§
{
   import §3"5§.§7"]§;
   import §9#K§.§=#f§;
   
   public class §;#s§
   {
       
      
      private var §>"r§:Vector.<§1,§>;
      
      public function §;#s§()
      {
         super();
         this.§>"r§ = new Vector.<§1,§>();
      }
      
      public function §%S§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            §=#f§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §7"]§.§#"]§(responseObj.json);
               for(k2 in jsonObj)
               {
                  §=#f§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§1,§ = this.§1!b§(responseObj.C);
         if(responseObj.E)
         {
            this.§,!d§(responseObj);
            return;
         }
         if(sc.§6$%§())
         {
            for each(fnc in sc.§&"5§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            §=#f§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §,!d§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§1,§ = this.§1!b§(param1.C);
         if(_loc2_.§6$%§())
         {
            for each(_loc3_ in _loc2_.§&"5§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            §=#f§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §>!X§(param1:String, param2:Function) : void
      {
         var _loc3_:§1,§ = new §1,§(param1,param2);
         this.§>"r§.push(_loc3_);
         §=#f§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §@"V§() : Vector.<§1,§>
      {
         return this.§>"r§;
      }
      
      public function §1!b§(param1:String) : §1,§
      {
         var _loc2_:§1,§ = null;
         for each(_loc2_ in this.§>"r§)
         {
            if(_loc2_.§86§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
