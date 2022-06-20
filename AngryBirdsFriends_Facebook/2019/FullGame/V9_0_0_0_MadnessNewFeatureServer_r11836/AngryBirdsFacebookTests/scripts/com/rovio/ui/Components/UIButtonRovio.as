package com.rovio.ui.Components
{
   import com.rovio.ui.Components.Helpers.UIComponentInteractiveRovio;
   import flash.display.MovieClip;
   
   public class UIButtonRovio extends UIComponentInteractiveRovio
   {
       
      
      public function UIButtonRovio(data:XML, parentContainer:UIContainerRovio, clip:MovieClip = null)
      {
         super(data,parentContainer,clip);
         targetSprite.buttonMode = true;
         targetSprite.mouseChildren = false;
         targetSprite.tabEnabled = false;
         setUIEventListener(LISTENER_EVENT_MOUSE_DOWN,data.@MouseDown);
         setUIEventListener(LISTENER_EVENT_MOUSE_UP,data.@MouseUp);
         setUIEventListener(LISTENER_EVENT_MOUSE_ROLLOVER,data.@MouseOver);
         setUIEventListener(LISTENER_EVENT_MOUSE_ROLLOUT,data.@MouseOut);
      }
      
      override public function setComponentState(newState:String) : void
      {
         if(newState == COMPONENT_STATE_DISABLED)
         {
            targetSprite.useHandCursor = false;
            targetSprite.buttonMode = false;
         }
         else
         {
            targetSprite.useHandCursor = true;
            targetSprite.buttonMode = true;
            targetSprite.mouseChildren = false;
         }
         super.setComponentState(newState);
      }
   }
}
