package com.rovio.server
{
   import com.rovio.factory.Log;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class HTTPConnection extends ServerConnection
   {
       
      
      private var mRequestPool:Vector.<URLLoader>;
      
      public function HTTPConnection(serverAddress:String, port:Number)
      {
         this.mRequestPool = new Vector.<URLLoader>();
         super(serverAddress,port);
      }
      
      override public function sendRequest(cmd:String, paramObj:Object) : void
      {
         var loader:URLLoader = null;
         super.sendRequest(cmd,paramObj);
         var request:URLRequest = null;
         if(Server.smServerType == "Google")
         {
            request = new URLRequest(getServerAddress() + cmd);
            request.method = URLRequestMethod.POST;
            request.data = this.createVariables(paramObj);
            loader = new URLLoader();
            loader.dataFormat = URLLoaderDataFormat.TEXT;
            loader.addEventListener(Event.COMPLETE,this.onRequestComplete);
            loader.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
            loader.load(request);
            this.mRequestPool.push(loader);
         }
         else
         {
            request = new URLRequest(getServerAddress());
            request.method = URLRequestMethod.POST;
            request.data = this.createVariables(paramObj);
            request.data.C = cmd;
            loader = new URLLoader();
            loader.dataFormat = URLLoaderDataFormat.TEXT;
            loader.addEventListener(Event.COMPLETE,this.onRequestComplete);
            loader.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
            loader.load(request);
            this.mRequestPool.push(loader);
         }
      }
      
      override public function closeConnection() : void
      {
         disableResponseHandlers();
         this.clearRequestPool();
      }
      
      private function clearRequestPool() : void
      {
         var loader:URLLoader = null;
         for each(loader in this.mRequestPool)
         {
            this.deactivateLoaderListeners(loader);
            this.removeFromLoadStack(loader);
         }
         this.mRequestPool = new Vector.<URLLoader>();
      }
      
      private function createVariables(paramObj:Object) : URLVariables
      {
         var key:* = null;
         var retObj:URLVariables = new URLVariables();
         for(key in paramObj)
         {
            retObj[key] = paramObj[key];
         }
         return retObj;
      }
      
      private function onRequestComplete(evt:Event) : void
      {
         var k:* = null;
         this.deactivateLoaderListeners(evt.target as URLLoader);
         this.removeFromLoadStack(evt.target as URLLoader);
         for(k in (evt.target as URLLoader).data)
         {
            Log.log(k + ": " + (evt.target as URLLoader).data[k]);
         }
         responseReceived(MessageFactory.fromHTTPResponse((evt.target as URLLoader).data));
      }
      
      private function onIOError(evt:IOErrorEvent) : void
      {
         this.deactivateLoaderListeners(evt.target as URLLoader);
         var object:Object = new Object();
         object.E = evt.text;
         object.C = "serverConnectionError";
         this.removeFromLoadStack(evt.target as URLLoader);
         Log.log((evt.target as URLLoader).data);
         Log.log("[HTTPConnection] ioError: " + evt.text);
         errorResponseReceived(MessageFactory.fromHTTPResponse(object));
      }
      
      private function deactivateLoaderListeners(ldr:URLLoader) : void
      {
         ldr.removeEventListener(Event.COMPLETE,this.onRequestComplete);
         ldr.removeEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
      }
      
      private function removeFromLoadStack(ldr:URLLoader) : void
      {
         if(this.mRequestPool.indexOf(ldr) > -1)
         {
            this.mRequestPool.splice(this.mRequestPool.indexOf(ldr),1);
         }
      }
   }
}
