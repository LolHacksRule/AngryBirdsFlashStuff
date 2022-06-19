package com.rovio.events
{
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import flash.events.Event;
   
   public class UIInteractionEvent extends Event
   {
      
      public static const UI_INTERACTION:String = "ui_interaction";
       
      
      public var eventIndex:int;
      
      public var eventName:String;
      
      public var component:UIEventListenerRovio;
      
      public function UIInteractionEvent(type:String, eventIndex:int, eventName:String, component:UIEventListenerRovio, bubbles:Boolean = false, cancelable:Boolean = false)
      {
         super(type,bubbles,cancelable);
         this.eventIndex = eventIndex;
         this.eventName = eventName;
         this.component = component;
      }
      
      override public function clone() : Event
      {
         return new UIInteractionEvent(type,this.eventIndex,this.eventName,this.component,bubbles,cancelable);
      }
   }
}
