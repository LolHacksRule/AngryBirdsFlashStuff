package § i§
{
   import §3h§.§'"3§;
   import §9!G§.§]!e§;
   
   public class §^!=§
   {
       
      
      private var §>;§:Vector.<§#u§>;
      
      public function §^!=§()
      {
         super();
         this.§>;§ = new Vector.<§#u§>();
      }
      
      public function §=!2§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            §]!e§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §'"3§.§,j§(responseObj.json);
               for(k2 in jsonObj)
               {
                  §]!e§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§#u§ = this.§#"4§(responseObj.C);
         if(responseObj.E)
         {
            this.§<@§(responseObj);
            return;
         }
         if(sc.§""4§())
         {
            for each(fnc in sc.§#!1§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            §]!e§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §<@§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§#u§ = this.§#"4§(param1.C);
         if(_loc2_.§""4§())
         {
            for each(_loc3_ in _loc2_.§#!1§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            §]!e§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §-X§(param1:String, param2:Function) : void
      {
         var _loc3_:§#u§ = new §#u§(param1,param2);
         this.§>;§.push(_loc3_);
         §]!e§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §1]§() : Vector.<§#u§>
      {
         return this.§>;§;
      }
      
      public function §#"4§(param1:String) : §#u§
      {
         var _loc2_:§#u§ = null;
         for each(_loc2_ in this.§>;§)
         {
            if(_loc2_.§6!]§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
