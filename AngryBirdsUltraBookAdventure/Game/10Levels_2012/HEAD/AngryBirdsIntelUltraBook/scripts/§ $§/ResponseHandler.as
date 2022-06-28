package § $§
{
   import §'N§.Log;
   import §?!f§.§]!f§;
   
   public class ResponseHandler
   {
       
      
      private var §=!R§:Vector.<ServerCommand>;
      
      public function ResponseHandler()
      {
         super();
         this.§=!R§ = new Vector.<ServerCommand>();
      }
      
      public function each(param1:Object) : void
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
               jsonObj = §]!f§.§ !5§(responseObj.json);
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
         var sc:ServerCommand = this.§5>§(responseObj.C);
         if(responseObj.E)
         {
            this.§]-§(responseObj);
            return;
         }
         if(sc.§!K§())
         {
            for each(fnc in sc.§ !#§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            Log.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §]-§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:ServerCommand = this.§5>§(param1.C);
         if(_loc2_.§!K§())
         {
            for each(_loc3_ in _loc2_.§ !#§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            Log.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §8>§(param1:String, param2:Function) : void
      {
         var _loc3_:ServerCommand = new ServerCommand(param1,param2);
         this.§=!R§.push(_loc3_);
         Log.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §&! §() : Vector.<ServerCommand>
      {
         return this.§=!R§;
      }
      
      public function §5>§(param1:String) : ServerCommand
      {
         var _loc2_:ServerCommand = null;
         for each(_loc2_ in this.§=!R§)
         {
            if(_loc2_.§<[§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
