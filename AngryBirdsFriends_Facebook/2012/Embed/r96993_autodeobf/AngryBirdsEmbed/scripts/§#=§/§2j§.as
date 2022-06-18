package §#=§
{
   import §3v§.§1a§;
   import §;!%§.§`R§;
   
   public class §2j§
   {
       
      
      private var §&!=§:Vector.<§^l§>;
      
      public function §2j§()
      {
         super();
         this.§&!=§ = new Vector.<§^l§>();
      }
      
      public function §+!'§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            §1a§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §`R§.decode(responseObj.json);
               for(k2 in jsonObj)
               {
                  §1a§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§^l§ = this.§8H§(responseObj.C);
         if(responseObj.E)
         {
            this.§;!'§(responseObj);
            return;
         }
         if(sc.§&]§())
         {
            for each(fnc in sc.§&H§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            §1a§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §;!'§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§^l§ = this.§8H§(param1.C);
         if(_loc2_.§&]§())
         {
            for each(_loc3_ in _loc2_.§&H§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            §1a§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §+%§(param1:String, param2:Function) : void
      {
         var _loc3_:§^l§ = new §^l§(param1,param2);
         this.§&!=§.push(_loc3_);
         §1a§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §+=§() : Vector.<§^l§>
      {
         return this.§&!=§;
      }
      
      public function §8H§(param1:String) : §^l§
      {
         var _loc2_:§^l§ = null;
         for each(_loc2_ in this.§&!=§)
         {
            if(_loc2_.§5L§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
