package com.rovio.server
{
   import com.rovio.factory.Log;
   
   public class Server
   {
      
      private static var smConnection:ServerConnection;
      
      private static var smResponse:ResponseHandler;
      
      private static var smEnabled:Boolean = true;
      
      public static var smServerType:String = "";
      
      public static var smServerConfigurationData:XML;
      
      public static var smCurrentConnectionData:XML;
      
      public static const DEBUG_TRACE_REQUEST_URLS:Boolean = true;
       
      
      public function Server()
      {
         super();
      }
      
      public static function init(connectionId:String = null) : void
      {
         if(smServerConfigurationData == null)
         {
            Log.log("Server configuration not avaialble");
            return;
         }
         var initXML:XML = null;
         if(connectionId != null)
         {
            initXML = findConnectionForId(connectionId,smServerConfigurationData);
         }
         if(initXML == null)
         {
            initXML = findConnectionForId(smServerConfigurationData.Default[0].toString(),smServerConfigurationData);
         }
         Log.log("Using connection profile:" + initXML.Id[0]);
         smCurrentConnectionData = initXML;
         var connectionClass:Class = ConnectionTypes[initXML.ConnectionType[0].toString()];
         var responseClass:Class = ResponseTypes[initXML.ResponseType[0].toString()];
         var port:Number = Number(initXML.Port[0].toString());
         if(initXML.ServerType[0] != null)
         {
            smServerType = initXML.ServerType[0].toString();
         }
         var address:String = initXML.Address[0].toString();
         smConnection = new connectionClass(address,port);
         smResponse = new responseClass();
         smConnection.setResponseHandlers(smResponse.handleResponse,smResponse.handleErrorResponse);
      }
      
      public static function findConnectionForId(id:String, config:XML) : XML
      {
         var obj:XML = null;
         if(id != null)
         {
            for each(obj in smServerConfigurationData.Connection)
            {
               if(obj.Id[0])
               {
                  if(obj.Id[0].toString().indexOf(id) == 0)
                  {
                     return obj;
                  }
               }
            }
         }
         return null;
      }
      
      public static function getExternalAssetDirectoryPaths() : XML
      {
         if(smCurrentConnectionData == null || !smCurrentConnectionData.Directories)
         {
            return null;
         }
         return smCurrentConnectionData.Directories[0];
      }
      
      public static function addCommand(cmd:String, callBack:Function = null) : void
      {
         smResponse.addCommand(cmd,callBack);
      }
      
      public static function addCommandCallback(cmd:String, callBack:Function) : void
      {
         smResponse.getServerCommand(cmd).addCallback(callBack);
      }
      
      public static function removeCommandCallback(cmd:String, callBack:Function) : void
      {
         smResponse.getServerCommand(cmd).removeCallback(callBack);
      }
      
      public static function sendRequest(cmd:String, paramObj:Object) : void
      {
         var sCmd:ServerCommand = null;
         var requestUrl:* = null;
         var key:* = null;
         var count:Number = NaN;
         var keyGoogle:* = null;
         if(smEnabled)
         {
            if(DEBUG_TRACE_REQUEST_URLS)
            {
               requestUrl = "";
               Log.log("URL sending...");
               if(!smServerType || smServerType == "PHP")
               {
                  requestUrl = smConnection.getServerAddress() + "?C=" + cmd;
                  for(key in paramObj)
                  {
                     requestUrl += "&" + key + "=" + paramObj[key];
                  }
                  Log.log(requestUrl);
               }
               else if(smServerType == "Google")
               {
                  requestUrl = smConnection.getServerAddress() + cmd;
                  count = 0;
                  for(keyGoogle in paramObj)
                  {
                     if(count == 0)
                     {
                        requestUrl += "?";
                     }
                     else
                     {
                        requestUrl += "&";
                     }
                     requestUrl += keyGoogle + "=" + paramObj[keyGoogle];
                     count++;
                  }
                  Log.log(requestUrl);
               }
            }
            sCmd = smResponse.getServerCommand(cmd);
            if(sCmd.isActive())
            {
               smConnection.sendRequest(cmd,paramObj);
            }
            else
            {
               Log.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            Log.log("[Server] WARNING: Currently disabled, not sending request for: " + cmd);
         }
      }
      
      public static function enable() : void
      {
         smEnabled = true;
         smConnection.enableResponseHandlers();
      }
      
      public static function disable() : void
      {
         smEnabled = false;
         smConnection.disableResponseHandlers();
      }
      
      public static function isEnabled() : Boolean
      {
         return smEnabled;
      }
      
      public static function enableCommand(cmd:String) : void
      {
         smResponse.getServerCommand(cmd).setIsActive(true);
      }
      
      public static function disableCommand(cmd:String) : void
      {
         smResponse.getServerCommand(cmd).setIsActive(false);
      }
      
      public static function getServerUrl() : String
      {
         return smConnection.getServerAddress();
      }
      
      public static function getIsAvailable() : Boolean
      {
         return smServerConfigurationData != null;
      }
   }
}
