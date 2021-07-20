package §3@§
{
   import §;!]§.§`!V§;
   import §>^§.§!6§;
   
   public class §[X§
   {
       
      
      private var §]&§:Vector.<§^!Q§>;
      
      public function §[X§()
      {
         super();
         this.§]&§ = new Vector.<§^!Q§>();
      }
      
      public function §"m§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            §!6§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §`!V§.§>X§(responseObj.json);
               for(k2 in jsonObj)
               {
                  §!6§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§^!Q§ = this.§#!>§(responseObj.C);
         if(responseObj.E)
         {
            this.§1O§(responseObj);
            return;
         }
         if(sc.§@!?§())
         {
            for each(fnc in sc.§6O§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            §!6§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §1O§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§^!Q§ = this.§#!>§(param1.C);
         if(_loc2_.§@!?§())
         {
            for each(_loc3_ in _loc2_.§6O§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            §!6§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §2!g§(param1:String, param2:Function) : void
      {
         var _loc3_:§^!Q§ = new §^!Q§(param1,param2);
         this.§]&§.push(_loc3_);
         §!6§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §'O§() : Vector.<§^!Q§>
      {
         return this.§]&§;
      }
      
      public function §#!>§(param1:String) : §^!Q§
      {
         var _loc2_:§^!Q§ = null;
         for each(_loc2_ in this.§]&§)
         {
            if(_loc2_.§@!I§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
