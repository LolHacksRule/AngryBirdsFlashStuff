package org.flexunit.async
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.net.Responder;
   import org.flexunit.events.AsyncResponseEvent;
   
   public class AsyncNativeTestResponder extends Responder implements IEventDispatcher
   {
       
      
      private var resultHandler:Function;
      
      private var faultHandler:Function;
      
      private var eventDispatcher:EventDispatcher;
      
      public function AsyncNativeTestResponder(resultHandler:Function, faultHandler:Function)
      {
         this.resultHandler = resultHandler;
         this.faultHandler = faultHandler;
         this.eventDispatcher = new EventDispatcher(this);
         super(this.result,this.fault);
      }
      
      public function fault(info:Object) : void
      {
         var asyncResponseEvent:AsyncResponseEvent = new AsyncResponseEvent(AsyncResponseEvent.RESPONDER_FIRED,false,false,null,"fault",info);
         asyncResponseEvent.methodHandler = this.faultHandler;
         this.dispatchEvent(asyncResponseEvent);
      }
      
      public function result(data:Object) : void
      {
         var asyncResponseEvent:AsyncResponseEvent = new AsyncResponseEvent(AsyncResponseEvent.RESPONDER_FIRED,false,false,null,"result",data);
         asyncResponseEvent.methodHandler = this.resultHandler;
         this.dispatchEvent(asyncResponseEvent);
      }
      
      public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, useWeakReference:Boolean = false) : void
      {
         this.eventDispatcher.addEventListener(type,listener,useCapture,priority,useWeakReference);
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         return this.eventDispatcher.hasEventListener(type);
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return this.eventDispatcher.dispatchEvent(event);
      }
      
      public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         this.eventDispatcher.removeEventListener(type,listener,useCapture);
      }
      
      public function willTrigger(type:String) : Boolean
      {
         return this.eventDispatcher.willTrigger(type);
      }
   }
}
