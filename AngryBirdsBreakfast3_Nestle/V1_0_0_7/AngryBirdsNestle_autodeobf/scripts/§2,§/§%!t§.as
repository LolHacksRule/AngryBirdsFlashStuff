package §2,§
{
   import § !Q§.§"D§;
   import §!! §.§!!M§;
   
   public class §%!t§
   {
       
      
      private var §1"§:Vector.<§#!m§>;
      
      public function §%!t§()
      {
         super();
         this.§1"§ = new Vector.<§#!m§>();
      }
      
      public function §=!i§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            §"D§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §!!M§.§"!#§(responseObj.json);
               for(k2 in jsonObj)
               {
                  §"D§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§#!m§ = this.§;!T§(responseObj.C);
         if(responseObj.E)
         {
            this.§7!i§(responseObj);
            return;
         }
         if(sc.§6!G§())
         {
            for each(fnc in sc.§#!e§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            §"D§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §7!i§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§#!m§ = this.§;!T§(param1.C);
         if(_loc2_.§6!G§())
         {
            for each(_loc3_ in _loc2_.§#!e§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            §"D§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §@!m§(param1:String, param2:Function) : void
      {
         var _loc3_:§#!m§ = new §#!m§(param1,param2);
         this.§1"§.push(_loc3_);
         §"D§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §3Q§() : Vector.<§#!m§>
      {
         return this.§1"§;
      }
      
      public function §;!T§(param1:String) : §#!m§
      {
         var _loc2_:§#!m§ = null;
         for each(_loc2_ in this.§1"§)
         {
            if(_loc2_.§^!@§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
