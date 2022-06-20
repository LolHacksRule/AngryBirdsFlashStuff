package com.angrybirds.shoppopup.quickbuy
{
   import com.angrybirds.data.VirtualCurrencyModel;
   import com.angrybirds.popups.NotEnoughCoinsPopup;
   import com.angrybirds.popups.QuickPurchasePowerupPopup;
   import com.angrybirds.popups.QuickPurchaseSlingshotPopup;
   import com.angrybirds.powerups.PowerupDefinition;
   import com.angrybirds.powerups.PowerupType;
   import com.angrybirds.shoppopup.ShopItem;
   import com.angrybirds.shoppopup.events.QuickPurchaseEvent;
   import com.angrybirds.slingshots.SlingShotDefinition;
   import com.angrybirds.slingshots.SlingShotType;
   import com.rovio.ui.popup.IPopup;
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   
   public class QuickPurchaseHandler extends EventDispatcher
   {
       
      
      private var mParent:MovieClip;
      
      private var mShopItem:ShopItem;
      
      private var mShopItemText:String;
      
      public function QuickPurchaseHandler(parentMovieClip:MovieClip, shopItem:ShopItem, shopItemText:String = "")
      {
         super();
         this.mParent = parentMovieClip;
         this.mShopItem = shopItem;
         this.mShopItemText = shopItemText;
      }
      
      public function purchase() : void
      {
         var popup:IPopup = null;
         var slingshotDef:SlingShotDefinition = null;
         if(!this.mShopItem)
         {
            dispatchEvent(new QuickPurchaseEvent(QuickPurchaseEvent.PURCHASE_FAILED,""));
            return;
         }
         var isVC:Boolean = this.mShopItem.currencyID == "IVC" || this.mShopItem.currencyID == VirtualCurrencyModel.VIRTUAL_CURRENCY_ITEM_ID;
         if(AngryBirdsBase.singleton.popupManager.isPopupOpenById(NotEnoughCoinsPopup.ID))
         {
            AngryBirdsBase.singleton.popupManager.closePopupById(NotEnoughCoinsPopup.ID);
         }
         var powerupDef:PowerupDefinition = PowerupType.getPowerupByID(this.mShopItem.id);
         if(powerupDef)
         {
            popup = new QuickPurchasePowerupPopup(this.mParent,this.mShopItem,powerupDef);
         }
         else
         {
            slingshotDef = SlingShotType.getSlingShotByID(this.mShopItem.id);
            if(slingshotDef)
            {
               popup = new QuickPurchaseSlingshotPopup(this.mParent,this.mShopItem,slingshotDef);
            }
         }
         if(!popup)
         {
            return;
         }
         if(AngryBirdsBase.singleton.popupManager.isPopupOpenById(popup.id))
         {
            AngryBirdsBase.singleton.popupManager.closePopupById(popup.id);
         }
         popup.addEventListener(QuickPurchaseEvent.PURCHASE_COMPLETED,this.onPurchaseCompleted);
         AngryBirdsBase.singleton.popupManager.openPopup(popup);
      }
      
      private function onPurchaseCompleted(e:QuickPurchaseEvent) : void
      {
         dispatchEvent(new QuickPurchaseEvent(QuickPurchaseEvent.PURCHASE_COMPLETED,e.purchasedItemId));
      }
   }
}
