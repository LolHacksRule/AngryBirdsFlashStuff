package §4S§
{
   import §#!s§.§4#-§;
   import §6"p§.§^"t§;
   
   public class §0!]§
   {
       
      
      private var § true§:Vector.<§34§>;
      
      public function §0!]§()
      {
         super();
         this.§ true§ = new Vector.<§34§>();
      }
      
      public function §5!!§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            §^"t§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §4#-§.§];§(responseObj.json);
               for(k2 in jsonObj)
               {
                  §^"t§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§34§ = this.§3o§(responseObj.C);
         if(responseObj.E)
         {
            this.§^"i§(responseObj);
            return;
         }
         if(sc.§97§())
         {
            for each(fnc in sc.§4d§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            §^"t§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §^"i§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§34§ = this.§3o§(param1.C);
         if(_loc2_.§97§())
         {
            for each(_loc3_ in _loc2_.§4d§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            §^"t§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §`"A§(param1:String, param2:Function) : void
      {
         var _loc3_:§34§ = new §34§(param1,param2);
         this.§ true§.push(_loc3_);
         §^"t§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §"F§() : Vector.<§34§>
      {
         return this.§ true§;
      }
      
      public function §3o§(param1:String) : §34§
      {
         var _loc2_:§34§ = null;
         for each(_loc2_ in this.§ true§)
         {
            if(_loc2_.§5>§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
