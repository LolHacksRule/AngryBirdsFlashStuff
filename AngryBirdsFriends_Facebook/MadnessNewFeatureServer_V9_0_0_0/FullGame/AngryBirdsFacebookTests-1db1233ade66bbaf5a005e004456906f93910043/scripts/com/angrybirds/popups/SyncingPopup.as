package com.angrybirds.popups
{
   import com.rovio.ui.Views.ViewXMLLibrary;
   import com.rovio.ui.popup.AbstractPopup;
   
   public class SyncingPopup extends AbstractPopup
   {
      
      public static const ID:String = "SyncingPopup";
       
      
      public function SyncingPopup(layerIndex:int, priority:int)
      {
         super(layerIndex,priority,ViewXMLLibrary.mLibrary.Views.PopupView_Syncing[0],ID);
      }
   }
}
