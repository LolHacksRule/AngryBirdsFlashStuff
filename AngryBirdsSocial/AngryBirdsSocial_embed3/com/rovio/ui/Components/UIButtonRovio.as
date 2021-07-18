package com.rovio.ui.Components
{
   import com.rovio.ui.Components.Helpers.UIComponentInteractiveRovio;
   import flash.display.MovieClip;
   
   public class UIButtonRovio extends UIComponentInteractiveRovio
   {
       
      
      public function UIButtonRovio(data:XML, parentContainer:UIContainerRovio, clip:MovieClip = null)
      {
         super(data,parentContainer,clip);
         setEventListener(LISTENER_EVENT_MOUSE_DOWN,data.@MouseDown);
         setEventListener(LISTENER_EVENT_MOUSE_UP,data.@MouseUp);
         setEventListener(LISTENER_EVENT_MOUSE_ROLLOVER,data.@MouseOver);
         setEventListener(LISTENER_EVENT_MOUSE_ROLLOUT,data.@MouseOut);
      }
      
      override public function listenerEventOccured(eventIndex:int, eventName:String) : void
      {
         super.listenerEventOccured(eventIndex,eventName);
      }
   }
}
