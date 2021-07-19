package com.angrybirds.popups.events
{
   import flash.events.Event;
   
   public class QuestionPopupEvent extends Event
   {
      
      public static const EVENT_OK:String = "EventOK";
      
      public static const EVENT_CANCEL:String = "EventCancel";
       
      
      public var data:Object;
      
      public function QuestionPopupEvent(type:String, data:Object = null, bubbles:Boolean = false, cancelable:Boolean = false)
      {
         super(type,bubbles,cancelable);
         this.data = data;
      }
   }
}
