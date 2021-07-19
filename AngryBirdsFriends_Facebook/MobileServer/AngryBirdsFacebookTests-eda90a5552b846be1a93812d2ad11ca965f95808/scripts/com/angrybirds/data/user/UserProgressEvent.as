package com.angrybirds.data.user
{
   import flash.events.Event;
   
   public class UserProgressEvent extends Event
   {
      
      public static const ON_MIGHTY_EAGLE_TIMER_COMPLETE:String = "OnMightyEagleTimerComplete";
      
      public static const USER_PROGRESS_SAVED:String = "userProgressSaved";
      
      public static const LEVEL_PROGRESS_SAVED:String = "levelProgressSaved";
       
      
      public var data:Object;
      
      public function UserProgressEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false)
      {
         super(type,bubbles,cancelable);
      }
      
      override public function clone() : Event
      {
         return new UserProgressEvent(type,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("UserProgressEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
