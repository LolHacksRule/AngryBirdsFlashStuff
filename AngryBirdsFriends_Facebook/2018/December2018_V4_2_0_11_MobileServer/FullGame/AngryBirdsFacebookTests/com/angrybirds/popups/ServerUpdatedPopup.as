package com.angrybirds.popups
{
   import com.angrybirds.AngryBirdsEngine;
   import com.rovio.externalInterface.ExternalInterfaceHandler;
   import com.rovio.ui.Views.ViewXMLLibrary;
   import com.rovio.ui.popup.AbstractPopup;
   import flash.display.MovieClip;
   import flash.display.StageDisplayState;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class ServerUpdatedPopup extends AbstractPopup
   {
      
      public static const ID:String = "ServerUpdatePopup";
       
      
      public function ServerUpdatedPopup(layerIndex:int, priority:int)
      {
         super(layerIndex,priority,ViewXMLLibrary.mLibrary.Views.PopupServerUpdated_Error[0],ID);
      }
      
      override protected function init() : void
      {
         super.init();
         AngryBirdsEngine.pause();
         AngryBirdsBase.singleton.exitFullScreen();
         var view:MovieClip = mContainer.mClip;
         view.btnReload.addEventListener(MouseEvent.CLICK,this.onReload);
      }
      
      override protected function show(useTransition:Boolean = false) : void
      {
         super.show(useTransition);
      }
      
      override protected function hide(useTransition:Boolean = false, waitForAnimationsToStop:Boolean = false) : void
      {
         super.hide(useTransition);
      }
      
      private function onReload(event:Event) : void
      {
         AngryBirdsBase.singleton.stage.displayState = StageDisplayState.NORMAL;
         ExternalInterfaceHandler.performCall("reloadPage");
      }
      
      override public function dispose() : void
      {
         super.dispose();
      }
   }
}
