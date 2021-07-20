package com.angrybirds.utils
{
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   
   public interface IHTTPResponseListener
   {
       
      
      function onComplete(param1:Event) : void;
      
      function onHttpStatus(param1:HTTPStatusEvent) : void;
      
      function onIOError(param1:IOErrorEvent) : void;
   }
}
