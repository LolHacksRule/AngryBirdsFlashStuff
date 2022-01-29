package com.angrybirds.league.events
{
   import flash.events.Event;
   
   public class ProgressAnimationEvent extends Event
   {
      
      public static var PROGRESSBAR_COMPLETED:String = "ProgressBarCompleted";
       
      
      public function ProgressAnimationEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false)
      {
         super(type,bubbles,cancelable);
      }
   }
}
