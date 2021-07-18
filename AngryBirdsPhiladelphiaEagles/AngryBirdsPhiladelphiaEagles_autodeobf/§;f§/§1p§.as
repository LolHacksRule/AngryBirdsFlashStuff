package §;f§
{
   import §;!2§.§,>§;
   import §`K§.§ L§;
   
   public class §1p§
   {
       
      
      private var §8!+§:Vector.<§+!@§>;
      
      public function §1p§()
      {
         super();
         this.§8!+§ = new Vector.<§+!@§>();
      }
      
      public function §!T§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            § L§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §,>§.§]t§(responseObj.json);
               for(k2 in jsonObj)
               {
                  § L§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§+!@§ = this.§1!P§(responseObj.C);
         if(responseObj.E)
         {
            this.§>§(responseObj);
            return;
         }
         if(sc.§%-§())
         {
            for each(fnc in sc.§'!"§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            § L§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §>§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§+!@§ = this.§1!P§(param1.C);
         if(_loc2_.§%-§())
         {
            for each(_loc3_ in _loc2_.§'!"§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            § L§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §-e§(param1:String, param2:Function) : void
      {
         var _loc3_:§+!@§ = new §+!@§(param1,param2);
         this.§8!+§.push(_loc3_);
         § L§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §2p§() : Vector.<§+!@§>
      {
         return this.§8!+§;
      }
      
      public function §1!P§(param1:String) : §+!@§
      {
         var _loc2_:§+!@§ = null;
         for each(_loc2_ in this.§8!+§)
         {
            if(_loc2_.§[U§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
