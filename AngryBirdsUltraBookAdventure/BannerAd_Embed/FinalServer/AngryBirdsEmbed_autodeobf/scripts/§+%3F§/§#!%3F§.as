package §+?§
{
   import §+!"§.§5!<§;
   import §60§.§>-§;
   
   public class §#!?§
   {
       
      
      private var §&!$§:Vector.<§8T§>;
      
      public function §#!?§()
      {
         super();
         this.§&!$§ = new Vector.<§8T§>();
      }
      
      public function §'C§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            §5!<§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §>-§.decode(responseObj.json);
               for(k2 in jsonObj)
               {
                  §5!<§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§8T§ = this.§9n§(responseObj.C);
         if(responseObj.E)
         {
            this.§@!3§(responseObj);
            return;
         }
         if(sc.§]v§())
         {
            for each(fnc in sc.§%!A§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            §5!<§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §@!3§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§8T§ = this.§9n§(param1.C);
         if(_loc2_.§]v§())
         {
            for each(_loc3_ in _loc2_.§%!A§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            §5!<§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §7j§(param1:String, param2:Function) : void
      {
         var _loc3_:§8T§ = new §8T§(param1,param2);
         this.§&!$§.push(_loc3_);
         §5!<§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §59§() : Vector.<§8T§>
      {
         return this.§&!$§;
      }
      
      public function §9n§(param1:String) : §8T§
      {
         var _loc2_:§8T§ = null;
         for each(_loc2_ in this.§&!$§)
         {
            if(_loc2_.§2<§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
