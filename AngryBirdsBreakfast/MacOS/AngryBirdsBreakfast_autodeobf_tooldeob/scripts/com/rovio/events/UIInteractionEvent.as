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
      
      public function UIInteractionEvent(param1:String, param2:int, param3:String, param4:UIEventListenerRovio, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         this.eventIndex = param2;
         this.eventName = param3;
         this.component = param4;
      }
      
      override public function clone() : Event
      {
         return new UIInteractionEvent(type,this.eventIndex,this.eventName,this.component,bubbles,cancelable);
      }
   }
}
