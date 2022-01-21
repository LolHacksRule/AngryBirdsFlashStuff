package §]!A§
{
   import § L§.§>!M§;
   import §`!W§.§2v§;
   
   public class §5!_§
   {
       
      
      private var §@!&§:Vector.<§%L§>;
      
      public function §5!_§()
      {
         super();
         this.§@!&§ = new Vector.<§%L§>();
      }
      
      public function §53§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            §2v§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §>!M§.§7!N§(responseObj.json);
               for(k2 in jsonObj)
               {
                  §2v§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§%L§ = this.§&Z§(responseObj.C);
         if(responseObj.E)
         {
            this.§-s§(responseObj);
            return;
         }
         if(sc.§78§())
         {
            for each(fnc in sc.§&!1§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            §2v§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §-s§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§%L§ = this.§&Z§(param1.C);
         if(_loc2_.§78§())
         {
            for each(_loc3_ in _loc2_.§&!1§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            §2v§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §63§(param1:String, param2:Function) : void
      {
         var _loc3_:§%L§ = new §%L§(param1,param2);
         this.§@!&§.push(_loc3_);
         §2v§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §,!B§() : Vector.<§%L§>
      {
         return this.§@!&§;
      }
      
      public function §&Z§(param1:String) : §%L§
      {
         var _loc2_:§%L§ = null;
         for each(_loc2_ in this.§@!&§)
         {
            if(_loc2_.§`n§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
