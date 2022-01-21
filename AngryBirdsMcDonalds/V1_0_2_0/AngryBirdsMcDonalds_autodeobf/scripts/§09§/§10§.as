package §09§
{
   import §8r§.§8!c§;
   import §=<§.§1+§;
   
   public class §10§
   {
       
      
      private var §6!Z§:Vector.<§<!j§>;
      
      public function §10§()
      {
         super();
         this.§6!Z§ = new Vector.<§<!j§>();
      }
      
      public function §3!b§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            §1+§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §8!c§.§`!S§(responseObj.json);
               for(k2 in jsonObj)
               {
                  §1+§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§<!j§ = this.§finally§(responseObj.C);
         if(responseObj.E)
         {
            this.§6!P§(responseObj);
            return;
         }
         if(sc.§`!-§())
         {
            for each(fnc in sc.§>4§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            §1+§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §6!P§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§<!j§ = this.§finally§(param1.C);
         if(_loc2_.§`!-§())
         {
            for each(_loc3_ in _loc2_.§>4§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            §1+§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §@E§(param1:String, param2:Function) : void
      {
         var _loc3_:§<!j§ = new §<!j§(param1,param2);
         this.§6!Z§.push(_loc3_);
         §1+§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §+1§() : Vector.<§<!j§>
      {
         return this.§6!Z§;
      }
      
      public function §finally§(param1:String) : §<!j§
      {
         var _loc2_:§<!j§ = null;
         for each(_loc2_ in this.§6!Z§)
         {
            if(_loc2_.§]!;§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
