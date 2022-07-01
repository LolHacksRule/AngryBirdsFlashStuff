package §5!8§
{
   import §&W§.§7L§;
   import §?s§.§2!+§;
   
   public class §?"4§
   {
       
      
      private var §"n§:Vector.<§"!-§>;
      
      public function §?"4§()
      {
         super();
         this.§"n§ = new Vector.<§"!-§>();
      }
      
      public function §;e§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            §7L§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §2!+§.§2!i§(responseObj.json);
               for(k2 in jsonObj)
               {
                  §7L§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§"!-§ = this.§^!A§(responseObj.C);
         if(responseObj.E)
         {
            this.§^!=§(responseObj);
            return;
         }
         if(sc.§%!E§())
         {
            for each(fnc in sc.§?O§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            §7L§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §^!=§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§"!-§ = this.§^!A§(param1.C);
         if(_loc2_.§%!E§())
         {
            for each(_loc3_ in _loc2_.§?O§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            §7L§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §3v§(param1:String, param2:Function) : void
      {
         var _loc3_:§"!-§ = new §"!-§(param1,param2);
         this.§"n§.push(_loc3_);
         §7L§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §^!_§() : Vector.<§"!-§>
      {
         return this.§"n§;
      }
      
      public function §^!A§(param1:String) : §"!-§
      {
         var _loc2_:§"!-§ = null;
         for each(_loc2_ in this.§"n§)
         {
            if(_loc2_.§,J§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
