package com.angrybirds.popups
{
   import com.rovio.ui.Views.ViewXMLLibrary;
   import com.rovio.ui.popup.AbstractPopup;
   
   public class ProcessingPopup extends AbstractPopup
   {
      
      public static const ID:String = "ProcessingPopup";
       
      
      public function ProcessingPopup(layerIndex:int, priority:int)
      {
         super(layerIndex,priority,ViewXMLLibrary.mLibrary.Views.PopupView_Processing[0],ID);
      }
   }
}
