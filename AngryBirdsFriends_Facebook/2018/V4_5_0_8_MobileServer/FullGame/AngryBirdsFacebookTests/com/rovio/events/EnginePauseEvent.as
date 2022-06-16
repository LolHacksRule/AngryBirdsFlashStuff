package com.rovio.events
{
   import flash.events.Event;
   
   public class EnginePauseEvent extends Event
   {
      
      public static const ENGINE_PAUSE:String = "engine_pause";
      
      public static const ENGINE_RESUME:String = "engine_resume";
       
      
      public function EnginePauseEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false)
      {
         super(type,bubbles,cancelable);
      }
   }
}
