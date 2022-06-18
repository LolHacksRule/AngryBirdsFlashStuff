package com.angrybirds.popups
{
   import com.angrybirds.popups.coinshop.CoinShopPopup;
   import com.rovio.sound.SoundEngine;
   import com.rovio.ui.Components.UITextFieldRovio;
   import com.rovio.ui.Views.ViewXMLLibrary;
   import com.rovio.ui.popup.AbstractPopup;
   import com.rovio.ui.popup.IPopup;
   import com.rovio.ui.popup.PopupPriorityType;
   import com.rovio.utils.FacebookGoogleAnalyticsTracker;
   import com.rovio.utils.IVirtualPageView;
   import com.rovio.utils.analytics.INavigable;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class NotEnoughCoinsPopup extends AbstractPopup implements INavigable, IVirtualPageView
   {
      
      public static const ID:String = "NotEnoughCoinsPopup";
       
      
      private var mHeader:String = "";
      
      private var mText:String = "";
      
      private var mCoinShopPopup:IPopup;
      
      public function NotEnoughCoinsPopup(viewContainer:MovieClip, header:String, text:String, layerIndex:int, priority:int)
      {
         super(layerIndex,priority,ViewXMLLibrary.mLibrary.Views.PopupView_NotEnoughCoinsPopup[0],ID);
         this.mHeader = header;
         this.mText = text;
      }
      
      override protected function show(useTransition:Boolean = false) : void
      {
         super.show(useTransition);
         mContainer.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.onCloseClick);
         mContainer.mClip.btnOk.addEventListener(MouseEvent.CLICK,this.onOkClick);
         (mContainer.getItemByName("TextField_Header") as UITextFieldRovio).setText(this.mHeader);
         (mContainer.getItemByName("TextField_Content") as UITextFieldRovio).setText(this.mText);
      }
      
      private function onCloseClick(e:MouseEvent) : void
      {
         dispatchEvent(e);
         this.close();
      }
      
      private function onOkClick(e:MouseEvent) : void
      {
         dispatchEvent(e);
         this.close(false,false);
         SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
         this.mCoinShopPopup = new CoinShopPopup(PopupLayerIndexFacebook.NORMAL,PopupPriorityType.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(this.mCoinShopPopup);
      }
      
      public function getName() : String
      {
         return ID;
      }
      
      public function getCategoryName() : String
      {
         return FacebookGoogleAnalyticsTracker.VIRTUAL_PAGE_VIEW_CATEGORY_SHOP;
      }
      
      public function getIdentifier() : String
      {
         return FacebookGoogleAnalyticsTracker.VIRTUAL_PAGE_VIEW_ID_QUICKBUY_SHOP;
      }
   }
}
