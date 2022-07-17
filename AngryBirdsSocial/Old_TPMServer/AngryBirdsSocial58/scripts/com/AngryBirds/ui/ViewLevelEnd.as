package com.AngryBirds.ui
{
   import com.rovio.states.StateBase;
   import com.rovio.ui.Components.Helpers.UIButtonGroupRovio;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.ui.Components.UIButtonRovio;
   import com.rovio.ui.Views.UIView;
   import com.rovio.ui.Views.ViewXMLLibrary;
   
   public class ViewLevelEnd extends UIView
   {
       
      
      public var mButtonGroupLikeDislike:UIButtonGroupRovio = null;
      
      public function ViewLevelEnd(param1:StateBase)
      {
         super(param1);
      }
      
      override public function init(param1:XML) : void
      {
         super.init(ViewXMLLibrary.mLibrary.Views.View_LevelEnd[0]);
         this.mButtonGroupLikeDislike = new UIButtonGroupRovio(UIButtonGroupRovio.TYPE_EXCLUSIVE_BUTTONS,"LevelEnd_LikeDislike");
         this.mButtonGroupLikeDislike.addButton(getItemByName("Button_Like") as UIButtonRovio);
         this.mButtonGroupLikeDislike.addButton(getItemByName("Button_ThumbDown") as UIButtonRovio);
      }
      
      override public function listenerEventOccured(param1:int, param2:String, param3:UIEventListenerRovio) : void
      {
         super.listenerEventOccured(param1,param2,param3);
      }
   }
}
