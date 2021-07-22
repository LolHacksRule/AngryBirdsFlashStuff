package §1L§
{
   import §1#v§.§;!Y§;
   import §=l§.§##j§;
   
   public class §9#T§
   {
       
      
      private var §,$8§:Vector.<§1#,§>;
      
      public function §9#T§()
      {
         super();
         this.§,$8§ = new Vector.<§1#,§>();
      }
      
      public function §""j§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            §;!Y§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §##j§.§&"V§(responseObj.json);
               for(k2 in jsonObj)
               {
                  §;!Y§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§1#,§ = this.§'2§(responseObj.C);
         if(responseObj.E)
         {
            this.§2"R§(responseObj);
            return;
         }
         if(sc.§?$D§())
         {
            for each(fnc in sc.§`#f§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            §;!Y§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §2"R§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§1#,§ = this.§'2§(param1.C);
         if(_loc2_.§?$D§())
         {
            for each(_loc3_ in _loc2_.§`#f§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            §;!Y§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §2!k§(param1:String, param2:Function) : void
      {
         var _loc3_:§1#,§ = new §1#,§(param1,param2);
         this.§,$8§.push(_loc3_);
         §;!Y§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §-#=§() : Vector.<§1#,§>
      {
         return this.§,$8§;
      }
      
      public function §'2§(param1:String) : §1#,§
      {
         var _loc2_:§1#,§ = null;
         for each(_loc2_ in this.§,$8§)
         {
            if(_loc2_.§3"p§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
