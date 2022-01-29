package com.angrybirds.states.playstate.event
{
   import flash.events.Event;
   
   public class PlayStateEvent extends Event
   {
      
      public static const RESTART_LEVEL:String = "restart_level";
      
      public static const PAUSE_LEVEL:String = "pause_level";
      
      public static const RESUME_LEVEL:String = "resume_level";
      
      public static const GO_TO_STATE:String = "go_to_state";
      
      public static const DISABLE_COMPLETE:String = "disable_complete";
       
      
      public var targetStateName:String;
      
      public function PlayStateEvent(type:String, targetStateName:String = "", bubbles:Boolean = false, cancelable:Boolean = false)
      {
         super(type,bubbles,cancelable);
         this.targetStateName = targetStateName;
      }
   }
}
