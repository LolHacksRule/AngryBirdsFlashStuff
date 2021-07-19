package §2<§
{
   import § "W§.§5!@§;
   import §+!c§.§;!=§;
   
   public class §;!x§
   {
       
      
      private var §=M§:Vector.<§@`§>;
      
      public function §;!x§()
      {
         super();
         this.§=M§ = new Vector.<§@`§>();
      }
      
      public function §!"&§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            §;!=§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §5!@§.§#[§(responseObj.json);
               for(k2 in jsonObj)
               {
                  §;!=§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§@`§ = this.§'!A§(responseObj.C);
         if(responseObj.E)
         {
            this.§'Y§(responseObj);
            return;
         }
         if(sc.§@"I§())
         {
            for each(fnc in sc.§"!=§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            §;!=§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §'Y§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§@`§ = this.§'!A§(param1.C);
         if(_loc2_.§@"I§())
         {
            for each(_loc3_ in _loc2_.§"!=§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            §;!=§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §#H§(param1:String, param2:Function) : void
      {
         var _loc3_:§@`§ = new §@`§(param1,param2);
         this.§=M§.push(_loc3_);
         §;!=§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §1!p§() : Vector.<§@`§>
      {
         return this.§=M§;
      }
      
      public function §'!A§(param1:String) : §@`§
      {
         var _loc2_:§@`§ = null;
         for each(_loc2_ in this.§=M§)
         {
            if(_loc2_.§^K§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
