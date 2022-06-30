package §^V§
{
   import §!!7§.§"c§;
   import §@R§.§4,§;
   
   public class §@s§
   {
       
      
      private var §"!L§:Vector.<§;a§>;
      
      public function §@s§()
      {
         super();
         this.§"!L§ = new Vector.<§;a§>();
      }
      
      public function §0!<§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            §4,§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §"c§.§%!K§(responseObj.json);
               for(k2 in jsonObj)
               {
                  §4,§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§;a§ = this.§,S§(responseObj.C);
         if(responseObj.E)
         {
            this.§=!U§(responseObj);
            return;
         }
         if(sc.§+f§())
         {
            for each(fnc in sc.§%!Y§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            §4,§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §=!U§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§;a§ = this.§,S§(param1.C);
         if(_loc2_.§+f§())
         {
            for each(_loc3_ in _loc2_.§%!Y§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            §4,§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §-%§(param1:String, param2:Function) : void
      {
         var _loc3_:§;a§ = new §;a§(param1,param2);
         this.§"!L§.push(_loc3_);
         §4,§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §#!U§() : Vector.<§;a§>
      {
         return this.§"!L§;
      }
      
      public function §,S§(param1:String) : §;a§
      {
         var _loc2_:§;a§ = null;
         for each(_loc2_ in this.§"!L§)
         {
            if(_loc2_.§2!!§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
