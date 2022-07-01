package §]!5§
{
   import §2J§.§7!-§;
   import §;4§.§]!%§;
   
   public class § !§
   {
       
      
      private var §,B§:Vector.<§"!N§>;
      
      public function § !§()
      {
         super();
         this.§,B§ = new Vector.<§"!N§>();
      }
      
      public function §[![§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            §]!%§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §7!-§.§'!w§(responseObj.json);
               for(k2 in jsonObj)
               {
                  §]!%§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§"!N§ = this.§6!7§(responseObj.C);
         if(responseObj.E)
         {
            this.§?G§(responseObj);
            return;
         }
         if(sc.§44§())
         {
            for each(fnc in sc.§true §())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            §]!%§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §?G§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§"!N§ = this.§6!7§(param1.C);
         if(_loc2_.§44§())
         {
            for each(_loc3_ in _loc2_.§true §())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            §]!%§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §function§(param1:String, param2:Function) : void
      {
         var _loc3_:§"!N§ = new §"!N§(param1,param2);
         this.§,B§.push(_loc3_);
         §]!%§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §7-§() : Vector.<§"!N§>
      {
         return this.§,B§;
      }
      
      public function §6!7§(param1:String) : §"!N§
      {
         var _loc2_:§"!N§ = null;
         for each(_loc2_ in this.§,B§)
         {
            if(_loc2_.§8v§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
