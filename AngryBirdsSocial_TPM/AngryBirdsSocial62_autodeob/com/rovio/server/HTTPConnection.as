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
      
      public function HTTPConnection(param1:String, param2:Number)
      {
         this.mRequestPool = new Vector.<URLLoader>();
         super(param1,param2);
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc4_:URLLoader = null;
         super.sendRequest(param1,param2);
         var _loc3_:URLRequest = null;
         if(Server.smServerType == "Google")
         {
            _loc3_ = new URLRequest(getServerAddress() + param1);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.createVariables(param2);
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.onRequestComplete);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
            _loc4_.load(_loc3_);
            this.mRequestPool.push(_loc4_);
         }
         else
         {
            _loc3_ = new URLRequest(getServerAddress());
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.createVariables(param2);
            _loc3_.data.C = param1;
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.onRequestComplete);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
            _loc4_.load(_loc3_);
            this.mRequestPool.push(_loc4_);
         }
      }
      
      override public function closeConnection() : void
      {
         disableResponseHandlers();
         this.clearRequestPool();
      }
      
      private function clearRequestPool() : void
      {
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.mRequestPool)
         {
            this.deactivateLoaderListeners(_loc1_);
            this.removeFromLoadStack(_loc1_);
         }
         this.mRequestPool = new Vector.<URLLoader>();
      }
      
      private function createVariables(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      private function onRequestComplete(param1:Event) : void
      {
         var _loc2_:* = null;
         this.deactivateLoaderListeners(param1.target as URLLoader);
         this.removeFromLoadStack(param1.target as URLLoader);
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            Log.log(_loc2_ + ": " + (param1.target as URLLoader).data[_loc2_]);
         }
         responseReceived(MessageFactory.fromHTTPResponse((param1.target as URLLoader).data));
      }
      
      private function onIOError(param1:IOErrorEvent) : void
      {
         this.deactivateLoaderListeners(param1.target as URLLoader);
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         _loc2_.C = "serverConnectionError";
         this.removeFromLoadStack(param1.target as URLLoader);
         Log.log("[HTTPConnection] ioError: " + param1.text);
         errorResponseReceived(MessageFactory.fromHTTPResponse(_loc2_));
      }
      
      private function deactivateLoaderListeners(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.onRequestComplete);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
      }
      
      private function removeFromLoadStack(param1:URLLoader) : void
      {
         if(this.mRequestPool.indexOf(param1) > -1)
         {
            this.mRequestPool.splice(this.mRequestPool.indexOf(param1),1);
         }
      }
   }
}
