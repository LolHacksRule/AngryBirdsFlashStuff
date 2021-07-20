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
      
      public function PlayStateEvent(param1:String, param2:String = "", param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.targetStateName = param2;
      }
   }
}
