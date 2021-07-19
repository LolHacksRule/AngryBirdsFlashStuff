package com.rovio.events
{
   import flash.events.Event;
   
   public class FrameUpdateEvent extends Event
   {
      
      public static const UPDATE:String = "update_Frame";
       
      
      public var deltaTimeMilliSeconds:int;
      
      public function FrameUpdateEvent(type:String, deltaTime:int, bubbles:Boolean = false, cancelable:Boolean = false)
      {
         super(type,bubbles,cancelable);
         this.deltaTimeMilliSeconds = deltaTime;
      }
      
      override public function clone() : Event
      {
         return new FrameUpdateEvent(type,this.deltaTimeMilliSeconds,bubbles,cancelable);
      }
   }
}
