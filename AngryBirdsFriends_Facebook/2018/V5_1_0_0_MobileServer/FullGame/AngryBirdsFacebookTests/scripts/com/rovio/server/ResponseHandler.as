package com.rovio.server
{
   import com.rovio.adobe.serialization.json.JSONRovio;
   import com.rovio.factory.Log;
   
   public class ResponseHandler
   {
       
      
      private var mCommandList:Vector.<ServerCommand>;
      
      public function ResponseHandler()
      {
         super();
         this.mCommandList = new Vector.<ServerCommand>();
      }
      
      public function handleResponse(responseObj:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
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
      
      public function handleErrorResponse(responseObj:Object) : void
      {
         var fnc:Function = null;
         responseObj.E = true;
         var sc:ServerCommand = this.getServerCommand(responseObj.C);
         if(sc.isActive())
         {
            for each(fnc in sc.getCallbackFunctions())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            Log.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function addCommand(cmd:String, callBack:Function) : void
      {
         var newCommand:ServerCommand = new ServerCommand(cmd,callBack);
         this.mCommandList.push(newCommand);
         Log.log("[ResponseHandler] Command: " + cmd + " added.");
      }
      
      public function getCommandList() : Vector.<ServerCommand>
      {
         return this.mCommandList;
      }
      
      public function getServerCommand(cmd:String) : ServerCommand
      {
         var sCmd:ServerCommand = null;
         for each(sCmd in this.mCommandList)
         {
            if(sCmd.getCommand() == cmd)
            {
               return sCmd;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + cmd);
      }
   }
}
