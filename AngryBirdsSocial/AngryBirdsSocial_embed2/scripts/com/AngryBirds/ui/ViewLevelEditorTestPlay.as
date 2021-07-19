package com.AngryBirds.ui
{
   import com.rovio.states.StateBase;
   import com.rovio.ui.Views.UIView;
   import com.rovio.ui.Views.ViewXMLLibrary;
   
   public class ViewLevelEditorTestPlay extends UIView
   {
       
      
      public function ViewLevelEditorTestPlay(newStateBase:StateBase)
      {
         super(newStateBase);
      }
      
      override public function init(data:XML) : void
      {
         super.init(ViewXMLLibrary.mLibrary.Views.View_LevelEditorTest[0]);
      }
   }
}
