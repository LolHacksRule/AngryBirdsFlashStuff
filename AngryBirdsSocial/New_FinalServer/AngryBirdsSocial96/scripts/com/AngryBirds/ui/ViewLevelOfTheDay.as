package com.AngryBirds.ui
{
   import com.rovio.states.StateBase;
   import com.rovio.ui.Views.UIView;
   import com.rovio.ui.Views.ViewXMLLibrary;
   
   public class ViewLevelOfTheDay extends UIView
   {
       
      
      public function ViewLevelOfTheDay(param1:StateBase)
      {
         super(param1);
      }
      
      override public function init(param1:XML) : void
      {
         super.init(ViewXMLLibrary.mLibrary.Views.View_LevelOfTheDay[0]);
      }
   }
}
