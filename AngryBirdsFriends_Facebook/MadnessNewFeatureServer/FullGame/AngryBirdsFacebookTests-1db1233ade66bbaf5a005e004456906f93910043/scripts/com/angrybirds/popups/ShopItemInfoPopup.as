package com.angrybirds.popups
{
   import com.rovio.ui.Components.UITextFieldRovio;
   import com.rovio.ui.Views.ViewXMLLibrary;
   import com.rovio.ui.popup.AbstractPopup;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class ShopItemInfoPopup extends AbstractPopup
   {
       
      
      private var mHeader:String = "";
      
      private var mText:String = "";
      
      public function ShopItemInfoPopup(viewContainer:MovieClip, header:String, text:String, layerIndex:int, priority:int)
      {
         super(layerIndex,priority,ViewXMLLibrary.mLibrary.Views.PopupView_ShopItemInfoPopup[0]);
         this.mHeader = header;
         this.mText = text;
      }
      
      override protected function show(useTransition:Boolean = false) : void
      {
         super.show(useTransition);
         mContainer.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.onCloseClick);
         mContainer.mClip.btnOk.addEventListener(MouseEvent.CLICK,this.onCloseClick);
         (mContainer.getItemByName("TextField_Header") as UITextFieldRovio).setText(this.mHeader);
         (mContainer.getItemByName("TextField_Content") as UITextFieldRovio).setText(this.mText);
      }
      
      private function onCloseClick(e:MouseEvent) : void
      {
         dispatchEvent(e);
         this.close();
      }
   }
}
