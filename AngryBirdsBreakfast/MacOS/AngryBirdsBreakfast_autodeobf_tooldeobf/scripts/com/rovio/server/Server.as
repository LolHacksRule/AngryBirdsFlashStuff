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
      
      public static function init(param1:String = null) : void
      {
         if(smServerConfigurationData == null)
         {
            Log.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = findConnectionForId(param1,smServerConfigurationData);
         }
         if(_loc2_ == null)
         {
            _loc2_ = findConnectionForId(smServerConfigurationData.Default[0].toString(),smServerConfigurationData);
         }
         Log.log("Using connection profile:" + _loc2_.Id[0]);
         smCurrentConnectionData = _loc2_;
         var _loc3_:Class = ConnectionTypes[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = ResponseTypes[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            smServerType = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         smConnection = new _loc3_(_loc6_,_loc5_);
         smResponse = new _loc4_();
         smConnection.setResponseHandlers(smResponse.handleResponse,smResponse.handleErrorResponse);
      }
      
      public static function findConnectionForId(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in smServerConfigurationData.Connection)
            {
               if(_loc3_.Id[0])
               {
                  if(_loc3_.Id[0].toString().indexOf(param1) == 0)
                  {
                     return _loc3_;
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
      
      public static function addCommand(param1:String, param2:Function = null) : void
      {
         smResponse.addCommand(param1,param2);
      }
      
      public static function addCommandCallback(param1:String, param2:Function) : void
      {
         smResponse.getServerCommand(param1).addCallback(param2);
      }
      
      public static function removeCommandCallback(param1:String, param2:Function) : void
      {
         smResponse.getServerCommand(param1).removeCallback(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:ServerCommand = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(smEnabled)
         {
            if(DEBUG_TRACE_REQUEST_URLS)
            {
               _loc4_ = "";
               Log.log("URL sending...");
               if(!smServerType || smServerType == "PHP")
               {
                  _loc4_ = smConnection.getServerAddress() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  Log.log(_loc4_);
               }
               else if(smServerType == "Google")
               {
                  _loc4_ = smConnection.getServerAddress() + param1;
                  _loc6_ = 0;
                  for(_loc7_ in param2)
                  {
                     if(_loc6_ == 0)
                     {
                        _loc4_ += "?";
                     }
                     else
                     {
                        _loc4_ += "&";
                     }
                     _loc4_ += _loc7_ + "=" + param2[_loc7_];
                     _loc6_++;
                  }
                  Log.log(_loc4_);
               }
            }
            _loc3_ = smResponse.getServerCommand(param1);
            if(_loc3_.isActive())
            {
               smConnection.sendRequest(param1,param2);
            }
            else
            {
               Log.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            Log.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
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
      
      public static function enableCommand(param1:String) : void
      {
         smResponse.getServerCommand(param1).setIsActive(true);
      }
      
      public static function disableCommand(param1:String) : void
      {
         smResponse.getServerCommand(param1).setIsActive(false);
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
