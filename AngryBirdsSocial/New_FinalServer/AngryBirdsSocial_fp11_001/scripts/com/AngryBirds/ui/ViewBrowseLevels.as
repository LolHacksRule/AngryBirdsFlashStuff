package com.AngryBirds.ui
{
   import com.rovio.states.StateBase;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.ui.Views.UIView;
   import com.rovio.ui.Views.ViewXMLLibrary;
   
   public class ViewBrowseLevels extends UIView
   {
       
      
      public function ViewBrowseLevels(param1:StateBase)
      {
         super(param1);
      }
      
      override public function init(param1:XML) : void
      {
         super.init(ViewXMLLibrary.mLibrary.Views.View_BrowseLevels[0]);
      }
      
      override public function listenerEventOccured(param1:int, param2:String, param3:UIEventListenerRovio) : void
      {
         super.listenerEventOccured(param1,param2,param3);
      }
   }
}
