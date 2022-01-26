package §#!2§
{
   import §'m§.§^S§;
   import §@!+§.§9§;
   
   public class §6H§
   {
       
      
      private var §<!§:Vector.<§<4§>;
      
      public function §6H§()
      {
         super();
         this.§<!§ = new Vector.<§<4§>();
      }
      
      public function §6O§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            §^S§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §9§.decode(responseObj.json);
               for(k2 in jsonObj)
               {
                  §^S§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§<4§ = this.§<5§(responseObj.C);
         if(responseObj.E)
         {
            this.§>@§(responseObj);
            return;
         }
         if(sc.§'8§())
         {
            for each(fnc in sc.§=!1§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            §^S§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §>@§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§<4§ = this.§<5§(param1.C);
         if(_loc2_.§'8§())
         {
            for each(_loc3_ in _loc2_.§=!1§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            §^S§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function § H§(param1:String, param2:Function) : void
      {
         var _loc3_:§<4§ = new §<4§(param1,param2);
         this.§<!§.push(_loc3_);
         §^S§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §<p§() : Vector.<§<4§>
      {
         return this.§<!§;
      }
      
      public function §<5§(param1:String) : §<4§
      {
         var _loc2_:§<4§ = null;
         for each(_loc2_ in this.§<!§)
         {
            if(_loc2_.§3f§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
