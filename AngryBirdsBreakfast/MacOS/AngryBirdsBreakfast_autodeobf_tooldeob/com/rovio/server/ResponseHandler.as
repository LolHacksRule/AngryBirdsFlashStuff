package com.rovio.server
{
   import com.rovio.adobe.serialization.json.JSONRovio;
   import each.Log;
   
   public class ResponseHandler
   {
       
      
      private var mCommandList:Vector.<ServerCommand>;
      
      public function ResponseHandler()
      {
         super();
         this.mCommandList = new Vector.<ServerCommand>();
      }
      
      public function handleResponse(param1:Object) : void
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
               jsonObj = JSONRovio.decode(responseObj.json);
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
         var sc:ServerCommand = this.getServerCommand(responseObj.C);
         if(responseObj.E)
         {
            this.handleErrorResponse(responseObj);
            return;
         }
         if(sc.isActive())
         {
            for each(fnc in sc.getCallbackFunctions())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            Log.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function handleErrorResponse(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:ServerCommand = this.getServerCommand(param1.C);
         if(_loc2_.isActive())
         {
            for each(_loc3_ in _loc2_.getCallbackFunctions())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            Log.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function addCommand(param1:String, param2:Function) : void
      {
         var _loc3_:ServerCommand = new ServerCommand(param1,param2);
         this.mCommandList.push(_loc3_);
         Log.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function getCommandList() : Vector.<ServerCommand>
      {
         return this.mCommandList;
      }
      
      public function getServerCommand(param1:String) : ServerCommand
      {
         var _loc2_:ServerCommand = null;
         for each(_loc2_ in this.mCommandList)
         {
            if(_loc2_.getCommand() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
