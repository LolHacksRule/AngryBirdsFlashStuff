package § !Z§
{
   import §8<§.§<!7§;
   import §<!b§.§2!c§;
   
   public class §>]§
   {
       
      
      private var §^!$§:Vector.<§`r§>;
      
      public function §>]§()
      {
         super();
         this.§^!$§ = new Vector.<§`r§>();
      }
      
      public function §%U§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            §<!7§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §2!c§.§!"§(responseObj.json);
               for(k2 in jsonObj)
               {
                  §<!7§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§`r§ = this.§8T§(responseObj.C);
         if(responseObj.E)
         {
            this.§9]§(responseObj);
            return;
         }
         if(sc.§1!^§())
         {
            for each(fnc in sc.§;K§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            §<!7§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §9]§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§`r§ = this.§8T§(param1.C);
         if(_loc2_.§1!^§())
         {
            for each(_loc3_ in _loc2_.§;K§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            §<!7§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §71§(param1:String, param2:Function) : void
      {
         var _loc3_:§`r§ = new §`r§(param1,param2);
         this.§^!$§.push(_loc3_);
         §<!7§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §+,§() : Vector.<§`r§>
      {
         return this.§^!$§;
      }
      
      public function §8T§(param1:String) : §`r§
      {
         var _loc2_:§`r§ = null;
         for each(_loc2_ in this.§^!$§)
         {
            if(_loc2_.§?!H§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
