package com.rovio.ui.Components
{
   import com.rovio.ui.Components.Helpers.UIComponentRovio;
   import flash.display.MovieClip;
   
   public class UIButtonRovio extends UIComponentRovio
   {
       
      
      public function UIButtonRovio(param1:XML, param2:UIContainerRovio, param3:MovieClip = null)
      {
         mParentContainer = param2;
         super(param1,param3);
         setEventListener(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         setEventListener(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         setEventListener(LISTENER_EVENT_MOUSE_ROLLOVER,param1.@MouseOver);
         setEventListener(LISTENER_EVENT_MOUSE_ROLLOUT,param1.@MouseOut);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
   }
}
