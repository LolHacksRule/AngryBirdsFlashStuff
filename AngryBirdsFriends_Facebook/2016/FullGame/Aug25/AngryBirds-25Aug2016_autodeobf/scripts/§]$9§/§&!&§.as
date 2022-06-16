package §]$9§
{
   import §!x§.§4"d§;
   import §?o§.§8§;
   
   public class §&!&§
   {
       
      
      private var §%"S§:Vector.<§<"+§>;
      
      public function §&!&§()
      {
         super();
         this.§%"S§ = new Vector.<§<"+§>();
      }
      
      public function §3<§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            §4"d§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §8§.§+#§(responseObj.json);
               for(k2 in jsonObj)
               {
                  §4"d§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§<"+§ = this.§ $+§(responseObj.C);
         if(responseObj.E)
         {
            this.§;`§(responseObj);
            return;
         }
         if(sc.§#B§())
         {
            for each(fnc in sc.§>i§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            §4"d§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §;`§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§<"+§ = this.§ $+§(param1.C);
         if(_loc2_.§#B§())
         {
            for each(_loc3_ in _loc2_.§>i§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            §4"d§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §+"Z§(param1:String, param2:Function) : void
      {
         var _loc3_:§<"+§ = new §<"+§(param1,param2);
         this.§%"S§.push(_loc3_);
         §4"d§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §>"x§() : Vector.<§<"+§>
      {
         return this.§%"S§;
      }
      
      public function § $+§(param1:String) : §<"+§
      {
         var _loc2_:§<"+§ = null;
         for each(_loc2_ in this.§%"S§)
         {
            if(_loc2_.§#!7§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
