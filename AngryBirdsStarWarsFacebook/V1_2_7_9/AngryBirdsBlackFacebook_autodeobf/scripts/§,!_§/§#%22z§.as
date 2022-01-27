package §,!_§
{
   import §0"I§.§5!s§;
   import §5!8§.§8"1§;
   
   public class §#"z§
   {
       
      
      private var §&"#§:Vector.<§0#!§>;
      
      public function §#"z§()
      {
         super();
         this.§&"#§ = new Vector.<§0#!§>();
      }
      
      public function §88§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            §5!s§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §8"1§.§9"x§(responseObj.json);
               for(k2 in jsonObj)
               {
                  §5!s§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§0#!§ = this.§]![§(responseObj.C);
         if(responseObj.E)
         {
            this.§7"V§(responseObj);
            return;
         }
         if(sc.§;!C§())
         {
            for each(fnc in sc.§;"A§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            §5!s§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §7"V§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§0#!§ = this.§]![§(param1.C);
         if(_loc2_.§;!C§())
         {
            for each(_loc3_ in _loc2_.§;"A§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            §5!s§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §30§(param1:String, param2:Function) : void
      {
         var _loc3_:§0#!§ = new §0#!§(param1,param2);
         this.§&"#§.push(_loc3_);
         §5!s§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §[K§() : Vector.<§0#!§>
      {
         return this.§&"#§;
      }
      
      public function §]![§(param1:String) : §0#!§
      {
         var _loc2_:§0#!§ = null;
         for each(_loc2_ in this.§&"#§)
         {
            if(_loc2_.§-S§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
