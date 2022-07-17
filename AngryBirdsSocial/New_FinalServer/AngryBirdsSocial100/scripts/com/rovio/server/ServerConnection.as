package com.rovio.server
{
   public class ServerConnection
   {
       
      
      private var mPort:Number;
      
      private var mServerAddress:String;
      
      private var mResponseHandler:Function;
      
      private var mErrorHandler:Function;
      
      private var mHandlersEnabled:Boolean = true;
      
      public function ServerConnection(param1:String, param2:Number)
      {
         super();
         this.mServerAddress = param1;
         this.mPort = param2;
      }
      
      public function sendRequest(param1:String, param2:Object) : void
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
      
      public function responseReceived(param1:Object) : void
      {
         if(this.mHandlersEnabled)
         {
            this.mResponseHandler.call(null,param1);
         }
      }
      
      public function errorResponseReceived(param1:Object) : void
      {
         if(this.mHandlersEnabled)
         {
            this.mErrorHandler.call(null,param1);
         }
      }
      
      public function setResponseHandlers(param1:Function, param2:Function = null) : void
      {
         this.mResponseHandler = param1;
         this.mErrorHandler = param2;
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
