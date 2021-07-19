package org.flexunit.events
{
   import flash.events.Event;
   
   public class AsyncResponseEvent extends Event
   {
      
      public static var RESPONDER_FIRED:String = "responderFired";
       
      
      public var originalResponder;
      
      public var methodHandler:Function;
      
      public var status:String;
      
      public var data:Object;
      
      public function AsyncResponseEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false, originalResponder:* = null, status:String = null, data:Object = null)
      {
         this.originalResponder = originalResponder;
         this.status = status;
         this.data = data;
         super(type,bubbles,cancelable);
      }
      
      override public function clone() : Event
      {
         return new AsyncResponseEvent(type,bubbles,cancelable,this.originalResponder,this.status,this.data);
      }
   }
}
