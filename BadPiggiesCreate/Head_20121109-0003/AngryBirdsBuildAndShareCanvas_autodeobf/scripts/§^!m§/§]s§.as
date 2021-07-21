package §^!m§
{
   import §6]§.§,"0§;
   import §>'§.§[!a§;
   
   public class §]s§
   {
       
      
      private var §-!v§:Vector.<§!b§>;
      
      public function §]s§()
      {
         super();
         this.§-!v§ = new Vector.<§!b§>();
      }
      
      public function § _§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            §,"0§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §[!a§.§#!;§(responseObj.json);
               for(k2 in jsonObj)
               {
                  §,"0§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§!b§ = this.§;B§(responseObj.C);
         if(responseObj.E)
         {
            this.§;!t§(responseObj);
            return;
         }
         if(sc.§!9§())
         {
            for each(fnc in sc.§+!+§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            §,"0§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §;!t§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§!b§ = this.§;B§(param1.C);
         if(_loc2_.§!9§())
         {
            for each(_loc3_ in _loc2_.§+!+§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            §,"0§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §#q§(param1:String, param2:Function) : void
      {
         var _loc3_:§!b§ = new §!b§(param1,param2);
         this.§-!v§.push(_loc3_);
         §,"0§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §+p§() : Vector.<§!b§>
      {
         return this.§-!v§;
      }
      
      public function §;B§(param1:String) : §!b§
      {
         var _loc2_:§!b§ = null;
         for each(_loc2_ in this.§-!v§)
         {
            if(_loc2_.§>!z§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
