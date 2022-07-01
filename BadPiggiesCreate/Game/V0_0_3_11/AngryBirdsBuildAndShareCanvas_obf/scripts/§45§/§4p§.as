package §45§
{
   import §;X§.§ do§;
   import §]d§.§-K§;
   
   public class §4p§
   {
       
      
      private var §"!c§:Vector.<§[!'§>;
      
      public function §4p§()
      {
         super();
         this.§"!c§ = new Vector.<§[!'§>();
      }
      
      public function §0n§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            § do§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §-K§.§#m§(responseObj.json);
               for(k2 in jsonObj)
               {
                  § do§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§[!'§ = this.§0!-§(responseObj.C);
         if(responseObj.E)
         {
            this.§+!0§(responseObj);
            return;
         }
         if(sc.§2!t§())
         {
            for each(fnc in sc.§?!H§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            § do§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §+!0§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§[!'§ = this.§0!-§(param1.C);
         if(_loc2_.§2!t§())
         {
            for each(_loc3_ in _loc2_.§?!H§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            § do§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §1!N§(param1:String, param2:Function) : void
      {
         var _loc3_:§[!'§ = new §[!'§(param1,param2);
         this.§"!c§.push(_loc3_);
         § do§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §"l§() : Vector.<§[!'§>
      {
         return this.§"!c§;
      }
      
      public function §0!-§(param1:String) : §[!'§
      {
         var _loc2_:§[!'§ = null;
         for each(_loc2_ in this.§"!c§)
         {
            if(_loc2_.§,'§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
