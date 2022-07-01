package §6!C§
{
   import §,n§.§;!h§;
   import §=!7§.§1!7§;
   
   public class §1"+§
   {
       
      
      private var §;D§:Vector.<§`g§>;
      
      public function §1"+§()
      {
         super();
         this.§;D§ = new Vector.<§`g§>();
      }
      
      public function §5!;§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            §1!7§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §;!h§.§51§(responseObj.json);
               for(k2 in jsonObj)
               {
                  §1!7§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§`g§ = this.§>!A§(responseObj.C);
         if(responseObj.E)
         {
            this.§?!W§(responseObj);
            return;
         }
         if(sc.§@J§())
         {
            for each(fnc in sc.§]'§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            §1!7§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §?!W§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§`g§ = this.§>!A§(param1.C);
         if(_loc2_.§@J§())
         {
            for each(_loc3_ in _loc2_.§]'§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            §1!7§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §"t§(param1:String, param2:Function) : void
      {
         var _loc3_:§`g§ = new §`g§(param1,param2);
         this.§;D§.push(_loc3_);
         §1!7§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §4!z§() : Vector.<§`g§>
      {
         return this.§;D§;
      }
      
      public function §>!A§(param1:String) : §`g§
      {
         var _loc2_:§`g§ = null;
         for each(_loc2_ in this.§;D§)
         {
            if(_loc2_.§`J§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
