package §break§
{
   import §%^§.§-r§;
   import §-!5§.§5s§;
   
   public class §@!=§
   {
       
      
      private var §%s§:Vector.<§9D§>;
      
      public function §@!=§()
      {
         super();
         this.§%s§ = new Vector.<§9D§>();
      }
      
      public function §[T§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            §5s§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §-r§.§]<§(responseObj.json);
               for(k2 in jsonObj)
               {
                  §5s§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§9D§ = this.§throw§(responseObj.C);
         if(responseObj.E)
         {
            this.§,c§(responseObj);
            return;
         }
         if(sc.§^!4§())
         {
            for each(fnc in sc.§;r§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            §5s§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §,c§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§9D§ = this.§throw§(param1.C);
         if(_loc2_.§^!4§())
         {
            for each(_loc3_ in _loc2_.§;r§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            §5s§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §2<§(param1:String, param2:Function) : void
      {
         var _loc3_:§9D§ = new §9D§(param1,param2);
         this.§%s§.push(_loc3_);
         §5s§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §<7§() : Vector.<§9D§>
      {
         return this.§%s§;
      }
      
      public function §throw§(param1:String) : §9D§
      {
         var _loc2_:§9D§ = null;
         for each(_loc2_ in this.§%s§)
         {
            if(_loc2_.§,!8§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
