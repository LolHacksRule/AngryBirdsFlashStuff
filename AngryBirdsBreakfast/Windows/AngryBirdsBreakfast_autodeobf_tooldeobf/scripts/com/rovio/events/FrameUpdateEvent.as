package com.rovio.events
{
   import flash.events.Event;
   
   public class FrameUpdateEvent extends Event
   {
      
      public static const UPDATE:String = "update_Frame";
       
      
      public var deltaTimeMilliSeconds:int;
      
      public function FrameUpdateEvent(param1:String, param2:int, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.deltaTimeMilliSeconds = param2;
      }
      
      override public function clone() : Event
      {
         return new FrameUpdateEvent(type,this.deltaTimeMilliSeconds,bubbles,cancelable);
      }
   }
}
