package com.AngryBirds.ui
{
   import com.rovio.states.StateBase;
   import com.rovio.ui.Components.Helpers.UIComponentInteractiveRovio;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.ui.Views.UIView;
   import com.rovio.ui.Views.ViewXMLLibrary;
   
   public class ViewLevelPause extends UIView
   {
       
      
      public function ViewLevelPause(param1:StateBase)
      {
         super(param1);
      }
      
      override public function init(param1:XML) : void
      {
         super.init(ViewXMLLibrary.mLibrary.Views.View_LevelPause[0]);
      }
      
      override public function activateView() : void
      {
         super.activateView();
         this.updateSoundsToggleButtonState();
      }
      
      override public function listenerEventOccured(param1:int, param2:String, param3:UIEventListenerRovio) : void
      {
         super.listenerEventOccured(param1,param2,param3);
      }
      
      public function updateSoundsToggleButtonState() : void
      {
         if(AngryBirdsSocial.smSoundsEnabled)
         {
            setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT,"Button_Sound");
         }
         else
         {
            setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_DEACTIVE,"Button_Sound");
         }
      }
   }
}
