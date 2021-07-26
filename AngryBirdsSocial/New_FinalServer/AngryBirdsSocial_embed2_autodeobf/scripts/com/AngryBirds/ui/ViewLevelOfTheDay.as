package com.AngryBirds.ui
{
   import com.rovio.states.StateBase;
   import com.rovio.ui.Views.UIView;
   import com.rovio.ui.Views.ViewXMLLibrary;
   
   public class ViewLevelOfTheDay extends UIView
   {
       
      
      public function ViewLevelOfTheDay(newStateBase:StateBase)
      {
         super(newStateBase);
      }
      
      override public function init(data:XML) : void
      {
         super.init(ViewXMLLibrary.mLibrary.Views.View_LevelOfTheDay[0]);
      }
   }
}
