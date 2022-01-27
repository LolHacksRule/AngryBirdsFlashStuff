package §%!G§
{
   import §'" §.§6!K§;
   import §9"`§.§-"H§;
   
   public class §^"b§
   {
       
      
      private var §&"n§:Vector.<§4!!§>;
      
      public function §^"b§()
      {
         super();
         this.§&"n§ = new Vector.<§4!!§>();
      }
      
      public function §`!S§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            §-"H§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §6!K§.§%"E§(responseObj.json);
               for(k2 in jsonObj)
               {
                  §-"H§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§4!!§ = this.§ "m§(responseObj.C);
         if(responseObj.E)
         {
            this.§>e§(responseObj);
            return;
         }
         if(sc.§'#&§())
         {
            for each(fnc in sc.§@!m§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            §-"H§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §>e§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§4!!§ = this.§ "m§(param1.C);
         if(_loc2_.§'#&§())
         {
            for each(_loc3_ in _loc2_.§@!m§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            §-"H§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §#d§(param1:String, param2:Function) : void
      {
         var _loc3_:§4!!§ = new §4!!§(param1,param2);
         this.§&"n§.push(_loc3_);
         §-"H§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §%]§() : Vector.<§4!!§>
      {
         return this.§&"n§;
      }
      
      public function § "m§(param1:String) : §4!!§
      {
         var _loc2_:§4!!§ = null;
         for each(_loc2_ in this.§&"n§)
         {
            if(_loc2_.§-!l§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
