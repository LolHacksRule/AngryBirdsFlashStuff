package com.AngryBirds.ui
{
   import com.rovio.sound.SoundEngine;
   import com.rovio.states.StateBase;
   import com.rovio.ui.Components.Helpers.UIComponentInteractiveRovio;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.ui.Views.UIView;
   import com.rovio.ui.Views.ViewXMLLibrary;
   
   public class ViewLevelPlay extends UIView
   {
       
      
      public function ViewLevelPlay(newStateBase:StateBase)
      {
         super(newStateBase);
      }
      
      override public function init(data:XML) : void
      {
         super.init(ViewXMLLibrary.mLibrary.Views.View_LevelPlay[0]);
      }
      
      override public function activateView() : void
      {
         super.activateView();
         this.updateSoundsToggleButtonState();
      }
      
      override public function listenerEventOccured(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         super.listenerEventOccured(eventIndex,eventName,component);
      }
      
      public function updateSoundsToggleButtonState() : void
      {
         if(SoundEngine.isEnabled())
         {
            setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT,"SoundsToggle");
         }
         else
         {
            setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_DEACTIVE,"SoundsToggle");
         }
      }
   }
}
