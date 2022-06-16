package com.angrybirds.popups
{
   import com.rovio.ui.Components.UIMovieClipRovio;
   import com.rovio.ui.Components.UITextFieldRovio;
   import com.rovio.ui.Views.ViewXMLLibrary;
   import com.rovio.ui.popup.AbstractPopup;
   import flash.events.MouseEvent;
   
   public class CodeRedeemInfoPopup extends AbstractPopup
   {
       
      
      private var mCodeRedeemInfo:String = "";
      
      private var mImageRef:String = "";
      
      public function CodeRedeemInfoPopup(layerIndex:int, priority:int, codeRedeemInfo:String = "", imageRef:String = "redeem_gift")
      {
         this.mCodeRedeemInfo = codeRedeemInfo;
         this.mImageRef = imageRef;
         super(layerIndex,priority,ViewXMLLibrary.mLibrary.Views.PopupView_RedeemCodeInfo[0],"CodeRedeemInfoPopup");
      }
      
      override protected function init() : void
      {
         super.init();
         mContainer.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.onCloseClick);
         (mContainer.getItemByName("TextField_Text") as UITextFieldRovio).setText(this.mCodeRedeemInfo);
         (mContainer.getItemByName("ImageRef") as UIMovieClipRovio).mClip.gotoAndStop(this.mImageRef);
      }
      
      private function onCloseClick(e:MouseEvent) : void
      {
         close();
      }
   }
}
