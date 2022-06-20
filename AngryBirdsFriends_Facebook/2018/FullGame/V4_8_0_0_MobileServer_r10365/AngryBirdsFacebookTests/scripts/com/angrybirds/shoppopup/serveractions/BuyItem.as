package com.angrybirds.shoppopup.serveractions
{
   import com.angrybirds.popups.PopupLayerIndexFacebook;
   import com.angrybirds.popups.WarningPopup;
   import com.angrybirds.shoppopup.PricePoint;
   import com.angrybirds.shoppopup.ShopItem;
   import com.rovio.server.RetryingURLLoader;
   import com.rovio.ui.popup.PopupPriorityType;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class BuyItem extends EventDispatcher
   {
       
      
      protected var mBuyItemLoader:RetryingURLLoader;
      
      protected var mShopItem:ShopItem;
      
      protected var mPricePoint:PricePoint;
      
      protected var mOrderId:String;
      
      protected var mErrorCode:int;
      
      protected var mErrorMessage:String;
      
      protected var mScreen:String;
      
      protected var mLevel:String;
      
      public function BuyItem(shopItem:ShopItem, pricePoint:PricePoint, screen:String = "", level:String = "")
      {
         super();
         this.mShopItem = shopItem;
         this.mPricePoint = pricePoint;
         this.mScreen = screen;
         this.mLevel = level;
         this.loadBuyItems();
      }
      
      protected function loadBuyItems() : void
      {
         throw new Error("Don\'t call this method directly. Should be overridden");
      }
      
      protected function onBuyItemComplete(e:Event) : void
      {
         throw new Error("Don\'t call this method directly. Should be overridden");
      }
      
      protected function showWarningPopup() : void
      {
         var popup:WarningPopup = new WarningPopup(PopupLayerIndexFacebook.ALERT,PopupPriorityType.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(popup);
      }
      
      public function get shopItem() : ShopItem
      {
         return this.mShopItem;
      }
      
      public function get pricePoint() : PricePoint
      {
         return this.mPricePoint;
      }
      
      public function get orderId() : String
      {
         return this.mOrderId;
      }
      
      public function get errorCode() : int
      {
         return this.mErrorCode;
      }
      
      public function get errorMessage() : String
      {
         return this.errorMessage;
      }
   }
}
