package com.angrybirds.popups
{
   import com.rovio.ui.Views.ViewXMLLibrary;
   import com.rovio.ui.popup.AbstractPopup;
   
   public class MaintenanceModePopup extends AbstractPopup
   {
      
      public static const ID:String = "ErrorPopup";
       
      
      private var mMessage:String;
      
      public function MaintenanceModePopup(layerIndex:int, priority:int, message:String)
      {
         this.mMessage = message;
         super(layerIndex,priority,ViewXMLLibrary.mLibrary.Views.PopupView_Maintenance[0],ID);
      }
      
      override protected function init() : void
      {
         super.init();
         mContainer.mClip.txtMessage.text = this.mMessage;
      }
   }
}
