package §,!0§
{
   import §#-§.§4!K§;
   import §?@§.§"]§;
   
   public class §-F§
   {
       
      
      private var §#K§:Vector.<§[#§>;
      
      public function §-F§()
      {
         super();
         this.§#K§ = new Vector.<§[#§>();
      }
      
      public function §#!`§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            §"]§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §4!K§.§ !7§(responseObj.json);
               for(k2 in jsonObj)
               {
                  §"]§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§[#§ = this.§+!M§(responseObj.C);
         if(responseObj.E)
         {
            this.§6!A§(responseObj);
            return;
         }
         if(sc.§,!,§())
         {
            for each(fnc in sc.§>p§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            §"]§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §6!A§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§[#§ = this.§+!M§(param1.C);
         if(_loc2_.§,!,§())
         {
            for each(_loc3_ in _loc2_.§>p§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            §"]§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §&[§(param1:String, param2:Function) : void
      {
         var _loc3_:§[#§ = new §[#§(param1,param2);
         this.§#K§.push(_loc3_);
         §"]§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §4W§() : Vector.<§[#§>
      {
         return this.§#K§;
      }
      
      public function §+!M§(param1:String) : §[#§
      {
         var _loc2_:§[#§ = null;
         for each(_loc2_ in this.§#K§)
         {
            if(_loc2_.§<!Z§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
