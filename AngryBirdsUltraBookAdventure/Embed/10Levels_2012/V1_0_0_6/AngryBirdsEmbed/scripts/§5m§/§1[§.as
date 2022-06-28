package §5m§
{
   import §>K§.§9X§;
   import §?2§.§?!&§;
   
   public class §1[§
   {
       
      
      private var §[M§:Vector.<§=!G§>;
      
      public function §1[§()
      {
         super();
         this.§[M§ = new Vector.<§=!G§>();
      }
      
      public function §1X§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            §9X§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §?!&§.decode(responseObj.json);
               for(k2 in jsonObj)
               {
                  §9X§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§=!G§ = this.§`k§(responseObj.C);
         if(responseObj.E)
         {
            this.§ do§(responseObj);
            return;
         }
         if(sc.§"M§())
         {
            for each(fnc in sc.§]a§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            §9X§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function § do§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§=!G§ = this.§`k§(param1.C);
         if(_loc2_.§"M§())
         {
            for each(_loc3_ in _loc2_.§]a§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            §9X§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §]K§(param1:String, param2:Function) : void
      {
         var _loc3_:§=!G§ = new §=!G§(param1,param2);
         this.§[M§.push(_loc3_);
         §9X§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §>=§() : Vector.<§=!G§>
      {
         return this.§[M§;
      }
      
      public function §`k§(param1:String) : §=!G§
      {
         var _loc2_:§=!G§ = null;
         for each(_loc2_ in this.§[M§)
         {
            if(_loc2_.§[]§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
