package §9"%§
{
   import §0!?§.§'!$§;
   import §`"3§.§8"4§;
   
   public class §]">§
   {
       
      
      private var §-"+§:Vector.<§8R§>;
      
      public function §]">§()
      {
         super();
         this.§-"+§ = new Vector.<§8R§>();
      }
      
      public function §8!T§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            §'!$§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §8"4§.§,!M§(responseObj.json);
               for(k2 in jsonObj)
               {
                  §'!$§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§8R§ = this.§0R§(responseObj.C);
         if(responseObj.E)
         {
            this.§^p§(responseObj);
            return;
         }
         if(sc.§3!`§())
         {
            for each(fnc in sc.§"K§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            §'!$§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §^p§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§8R§ = this.§0R§(param1.C);
         if(_loc2_.§3!`§())
         {
            for each(_loc3_ in _loc2_.§"K§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            §'!$§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §@!c§(param1:String, param2:Function) : void
      {
         var _loc3_:§8R§ = new §8R§(param1,param2);
         this.§-"+§.push(_loc3_);
         §'!$§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §-!_§() : Vector.<§8R§>
      {
         return this.§-"+§;
      }
      
      public function §0R§(param1:String) : §8R§
      {
         var _loc2_:§8R§ = null;
         for each(_loc2_ in this.§-"+§)
         {
            if(_loc2_.§]q§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
