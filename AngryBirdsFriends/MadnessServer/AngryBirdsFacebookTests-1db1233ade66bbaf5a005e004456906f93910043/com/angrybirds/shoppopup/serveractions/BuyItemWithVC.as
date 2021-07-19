package com.angrybirds.shoppopup.serveractions
{
   import com.angrybirds.analytics.collector.AnalyticsObject;
   import com.angrybirds.data.ItemsInventory;
   import com.angrybirds.data.VirtualCurrencyModel;
   import com.angrybirds.popups.ErrorPopup;
   import com.angrybirds.shoppopup.PricePoint;
   import com.angrybirds.shoppopup.ShopItem;
   import com.angrybirds.shoppopup.events.BuyItemEvent;
   import com.rovio.externalInterface.ExternalInterfaceHandler;
   import com.rovio.server.ABFLoader;
   import com.rovio.server.URLRequestFactory;
   import com.rovio.utils.ErrorCode;
   import com.rovio.utils.FacebookAnalyticsCollector;
   import flash.events.Event;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   
   public class BuyItemWithVC extends BuyItem
   {
       
      
      public function BuyItemWithVC(shopItem:ShopItem, pricePoint:PricePoint, screen:String = "", level:String = "")
      {
         super(shopItem,pricePoint,screen,level);
      }
      
      override protected function loadBuyItems() : void
      {
         if(mBuyItemLoader)
         {
            return;
         }
         mBuyItemLoader = new ABFLoader();
         mBuyItemLoader.addEventListener(Event.COMPLETE,this.onBuyItemComplete);
         mBuyItemLoader.dataFormat = URLLoaderDataFormat.TEXT;
         var urlReq:URLRequest = URLRequestFactory.getNonCachingURLRequest(AngryBirdsBase.SERVER_ROOT + "/buywithvc/" + mShopItem.id + "/" + mPricePoint.totalQuantity);
         mBuyItemLoader.load(urlReq);
      }
      
      override protected function onBuyItemComplete(e:Event) : void
      {
         var rawJSONData:Object = null;
         var changedItems:Array = null;
         var aoArray:Array = null;
         var ao:AnalyticsObject = null;
         mBuyItemLoader.removeEventListener(Event.COMPLETE,this.onBuyItemComplete);
         try
         {
            rawJSONData = mBuyItemLoader.data;
            if(rawJSONData.purchaseId)
            {
               mOrderId = rawJSONData.purchaseId;
            }
         }
         catch(e:Error)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.ERROR_GENERAL,"Error parsing JSON: " + mBuyItemLoader.data + "\nError code: " + ErrorCode.JSON_PARSE_ERROR));
         }
         if(rawJSONData.errorMessage && rawJSONData.errorMessage is String)
         {
            mErrorCode = rawJSONData.errorCode;
            mErrorMessage = rawJSONData.errorMessage;
            dispatchEvent(new BuyItemEvent(BuyItemEvent.ITEM_BOUGHT_FAILED));
         }
         else
         {
            if(pricePoint && shopItem)
            {
               ao = new AnalyticsObject();
               ao.amount = pricePoint.totalQuantity;
               ao.itemType = mShopItem.id;
               ao.paidAmount = pricePoint.price;
               ao.currency = VirtualCurrencyModel.VIRTUAL_CURRENCY_ITEM_ID;
               ao.receiptId = mOrderId;
               ao.screen = mScreen;
               ao.level = mLevel;
               ao.gainType = FacebookAnalyticsCollector.INVENTORY_GAINED_PURCHASE;
               aoArray = [ao];
               FacebookAnalyticsCollector.getInstance().trackInventoryUsed(VirtualCurrencyModel.VIRTUAL_CURRENCY_ITEM_ID,pricePoint.campaignPrice > 0 ? int(pricePoint.campaignPrice) : int(pricePoint.price),"Purchase",ao.itemType,pricePoint.totalQuantity,aoArray[0].screen,aoArray[0].level);
               ExternalInterfaceHandler.performCall("trackFBPixelEvent","vc_use");
            }
            changedItems = ItemsInventory.instance.injectInventoryUpdate(rawJSONData.items,false,aoArray);
            dispatchEvent(new BuyItemEvent(BuyItemEvent.ITEM_BOUGHT,false,false,changedItems));
         }
      }
   }
}
