package §6!a§
{
   import §6b§.Log;
   import §?!G§.§8!-§;
   
   public class ResponseHandler
   {
       
      
      private var §%!%§:Vector.<ServerCommand>;
      
      public function ResponseHandler()
      {
         super();
         this.§%!%§ = new Vector.<ServerCommand>();
      }
      
      public function §>8§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            Log.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §8!-§.§9N§(responseObj.json);
               for(k2 in jsonObj)
               {
                  Log.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:ServerCommand = this.§-!T§(responseObj.C);
         if(responseObj.E)
         {
            this.§0W§(responseObj);
            return;
         }
         if(sc.§4Y§())
         {
            for each(fnc in sc.§"!-§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            Log.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §0W§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:ServerCommand = this.§-!T§(param1.C);
         if(_loc2_.§4Y§())
         {
            for each(_loc3_ in _loc2_.§"!-§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            Log.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §&H§(param1:String, param2:Function) : void
      {
         var _loc3_:ServerCommand = new ServerCommand(param1,param2);
         this.§%!%§.push(_loc3_);
         Log.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §7G§() : Vector.<ServerCommand>
      {
         return this.§%!%§;
      }
      
      public function §-!T§(param1:String) : ServerCommand
      {
         var _loc2_:ServerCommand = null;
         for each(_loc2_ in this.§%!%§)
         {
            if(_loc2_.§-!`§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
