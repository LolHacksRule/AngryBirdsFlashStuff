package com.AngryBirds.ui
{
   import com.rovio.states.StateBase;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.ui.Views.UIView;
   import com.rovio.ui.Views.ViewXMLLibrary;
   
   public class ViewLoginPage extends UIView
   {
       
      
      public function ViewLoginPage(newStateBase:StateBase)
      {
         super(newStateBase);
      }
      
      override public function init(data:XML) : void
      {
         super.init(ViewXMLLibrary.mLibrary.Views.View_FakeLogin[0]);
      }
      
      override public function listenerEventOccured(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         super.listenerEventOccured(eventIndex,eventName,component);
      }
   }
}
