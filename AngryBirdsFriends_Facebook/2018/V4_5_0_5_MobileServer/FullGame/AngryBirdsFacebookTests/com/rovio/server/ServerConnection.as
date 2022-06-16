package com.rovio.server
{
   public class ServerConnection
   {
       
      
      private var mPort:Number;
      
      private var mServerAddress:String;
      
      private var mResponseHandler:Function;
      
      private var mErrorHandler:Function;
      
      private var mHandlersEnabled:Boolean = true;
      
      public function ServerConnection(serverAddress:String, port:Number)
      {
         super();
         this.mServerAddress = serverAddress;
         this.mPort = port;
      }
      
      public function sendRequest(cmd:String, paramObj:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function getServerAddress() : String
      {
         return this.mServerAddress;
      }
      
      public function getResponseHandler() : Function
      {
         return this.mResponseHandler;
      }
      
      public function getErrorHandler() : Function
      {
         return this.mErrorHandler;
      }
      
      public function responseReceived(obj:Object) : void
      {
         if(this.mHandlersEnabled)
         {
            this.mResponseHandler.call(null,obj);
         }
      }
      
      public function errorResponseReceived(obj:Object) : void
      {
         if(this.mHandlersEnabled)
         {
            this.mErrorHandler.call(null,obj);
         }
      }
      
      public function setResponseHandlers(responseHandler:Function, errorHandler:Function = null) : void
      {
         this.mResponseHandler = responseHandler;
         this.mErrorHandler = errorHandler;
      }
      
      public function disableResponseHandlers() : void
      {
         this.mHandlersEnabled = false;
      }
      
      public function enableResponseHandlers() : void
      {
         this.mHandlersEnabled = true;
      }
   }
}
