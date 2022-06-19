package org.flexunit.events
{
   import flash.events.Event;
   
   public class AsyncEvent extends Event
   {
       
      
      public var originalEvent:Event;
      
      public function AsyncEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false, originalEvent:Event = null)
      {
         this.originalEvent = originalEvent;
         super(type,bubbles,cancelable);
      }
      
      override public function clone() : Event
      {
         return new AsyncEvent(type,bubbles,cancelable,this.originalEvent);
      }
   }
}
