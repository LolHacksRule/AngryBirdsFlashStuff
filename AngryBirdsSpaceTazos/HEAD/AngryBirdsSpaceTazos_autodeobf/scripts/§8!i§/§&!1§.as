package §8!i§
{
   import §3!-§.§&!+§;
   import §`!w§.§^!$§;
   
   public class §&!1§
   {
       
      
      private var §4!%§:Vector.<§;k§>;
      
      public function §&!1§()
      {
         super();
         this.§4!%§ = new Vector.<§;k§>();
      }
      
      public function §<T§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            §^!$§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §&!+§.§`!W§(responseObj.json);
               for(k2 in jsonObj)
               {
                  §^!$§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§;k§ = this.§7!l§(responseObj.C);
         if(responseObj.E)
         {
            this.§^!Z§(responseObj);
            return;
         }
         if(sc.§^">§())
         {
            for each(fnc in sc.§0!K§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            §^!$§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §^!Z§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§;k§ = this.§7!l§(param1.C);
         if(_loc2_.§^">§())
         {
            for each(_loc3_ in _loc2_.§0!K§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            §^!$§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §"!W§(param1:String, param2:Function) : void
      {
         var _loc3_:§;k§ = new §;k§(param1,param2);
         this.§4!%§.push(_loc3_);
         §^!$§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function § !8§() : Vector.<§;k§>
      {
         return this.§4!%§;
      }
      
      public function §7!l§(param1:String) : §;k§
      {
         var _loc2_:§;k§ = null;
         for each(_loc2_ in this.§4!%§)
         {
            if(_loc2_.§,!2§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
