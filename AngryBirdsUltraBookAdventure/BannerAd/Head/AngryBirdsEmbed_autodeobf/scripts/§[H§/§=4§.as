package §[H§
{
   import §"w§.§[u§;
   import §2§.§0!<§;
   
   public class §=4§
   {
       
      
      private var §8#§:Vector.<§9]§>;
      
      public function §=4§()
      {
         super();
         this.§8#§ = new Vector.<§9]§>();
      }
      
      public function § !F§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            §0!<§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §[u§.decode(responseObj.json);
               for(k2 in jsonObj)
               {
                  §0!<§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§9]§ = this.§%+§(responseObj.C);
         if(responseObj.E)
         {
            this.§^N§(responseObj);
            return;
         }
         if(sc.§case §())
         {
            for each(fnc in sc.§1G§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            §0!<§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §^N§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§9]§ = this.§%+§(param1.C);
         if(_loc2_.§case §())
         {
            for each(_loc3_ in _loc2_.§1G§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            §0!<§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §?!4§(param1:String, param2:Function) : void
      {
         var _loc3_:§9]§ = new §9]§(param1,param2);
         this.§8#§.push(_loc3_);
         §0!<§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §"!>§() : Vector.<§9]§>
      {
         return this.§8#§;
      }
      
      public function §%+§(param1:String) : §9]§
      {
         var _loc2_:§9]§ = null;
         for each(_loc2_ in this.§8#§)
         {
            if(_loc2_.§;m§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
