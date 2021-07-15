package com.rovio.ui.Components
{
   import com.rovio.ui.Components.Helpers.UIComponentInteractiveRovio;
   import flash.display.MovieClip;
   
   public class UIButtonRovio extends UIComponentInteractiveRovio
   {
       
      
      public function UIButtonRovio(param1:XML, param2:UIContainerRovio, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         targetSprite.buttonMode = true;
         targetSprite.mouseChildren = false;
         targetSprite.tabEnabled = false;
         ON_FADE_TO_ALPHA_COMPLETE(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         ON_FADE_TO_ALPHA_COMPLETE(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         ON_FADE_TO_ALPHA_COMPLETE(LISTENER_EVENT_MOUSE_ROLLOVER,param1.@MouseOver);
         ON_FADE_TO_ALPHA_COMPLETE(LISTENER_EVENT_MOUSE_ROLLOUT,param1.@MouseOut);
      }
      
      override public function setComponentState(param1:String) : void
      {
         if(param1 == COMPONENT_STATE_DISABLED)
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
         super.setComponentState(param1);
      }
   }
}
