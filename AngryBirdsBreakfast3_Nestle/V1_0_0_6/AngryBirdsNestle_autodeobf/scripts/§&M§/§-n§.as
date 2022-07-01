package §&M§
{
   import §&!k§.§]!q§;
   import §0!$§.§#!-§;
   
   public class §-n§
   {
       
      
      private var §79§:Vector.<§9!h§>;
      
      public function §-n§()
      {
         super();
         this.§79§ = new Vector.<§9!h§>();
      }
      
      public function §6B§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            §#!-§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §]!q§.§"""§(responseObj.json);
               for(k2 in jsonObj)
               {
                  §#!-§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§9!h§ = this.§ !i§(responseObj.C);
         if(responseObj.E)
         {
            this.§4!8§(responseObj);
            return;
         }
         if(sc.§%x§())
         {
            for each(fnc in sc.§^!Y§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            §#!-§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §4!8§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§9!h§ = this.§ !i§(param1.C);
         if(_loc2_.§%x§())
         {
            for each(_loc3_ in _loc2_.§^!Y§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            §#!-§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §0!@§(param1:String, param2:Function) : void
      {
         var _loc3_:§9!h§ = new §9!h§(param1,param2);
         this.§79§.push(_loc3_);
         §#!-§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §,!-§() : Vector.<§9!h§>
      {
         return this.§79§;
      }
      
      public function § !i§(param1:String) : §9!h§
      {
         var _loc2_:§9!h§ = null;
         for each(_loc2_ in this.§79§)
         {
            if(_loc2_.§ ^§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
