package §@!%§
{
   import §,!K§.§>!1§;
   import §@V§.§`!5§;
   
   public class §#8§
   {
       
      
      private var §7n§:Vector.<§"!D§>;
      
      public function §#8§()
      {
         super();
         this.§7n§ = new Vector.<§"!D§>();
      }
      
      public function §[C§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            §`!5§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §>!1§.§4!&§(responseObj.json);
               for(k2 in jsonObj)
               {
                  §`!5§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§"!D§ = this.§2!G§(responseObj.C);
         if(responseObj.E)
         {
            this.§+_§(responseObj);
            return;
         }
         if(sc.§=z§())
         {
            for each(fnc in sc.§7!N§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            §`!5§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §+_§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§"!D§ = this.§2!G§(param1.C);
         if(_loc2_.§=z§())
         {
            for each(_loc3_ in _loc2_.§7!N§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            §`!5§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §+!N§(param1:String, param2:Function) : void
      {
         var _loc3_:§"!D§ = new §"!D§(param1,param2);
         this.§7n§.push(_loc3_);
         §`!5§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §,!!§() : Vector.<§"!D§>
      {
         return this.§7n§;
      }
      
      public function §2!G§(param1:String) : §"!D§
      {
         var _loc2_:§"!D§ = null;
         for each(_loc2_ in this.§7n§)
         {
            if(_loc2_.§3N§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
