package §%!k§
{
   import §""1§.§;!`§;
   import §4u§.§<!L§;
   
   public class §;!g§
   {
       
      
      private var §6a§:Vector.<§#^§>;
      
      public function §;!g§()
      {
         super();
         this.§6a§ = new Vector.<§#^§>();
      }
      
      public function §>Y§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            §<!L§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §;!`§.§,g§(responseObj.json);
               for(k2 in jsonObj)
               {
                  §<!L§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§#^§ = this.§!!<§(responseObj.C);
         if(responseObj.E)
         {
            this.§%!K§(responseObj);
            return;
         }
         if(sc.§7@§())
         {
            for each(fnc in sc.§+n§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            §<!L§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §%!K§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§#^§ = this.§!!<§(param1.C);
         if(_loc2_.§7@§())
         {
            for each(_loc3_ in _loc2_.§+n§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            §<!L§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §!3§(param1:String, param2:Function) : void
      {
         var _loc3_:§#^§ = new §#^§(param1,param2);
         this.§6a§.push(_loc3_);
         §<!L§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §,!K§() : Vector.<§#^§>
      {
         return this.§6a§;
      }
      
      public function §!!<§(param1:String) : §#^§
      {
         var _loc2_:§#^§ = null;
         for each(_loc2_ in this.§6a§)
         {
            if(_loc2_.§#h§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
