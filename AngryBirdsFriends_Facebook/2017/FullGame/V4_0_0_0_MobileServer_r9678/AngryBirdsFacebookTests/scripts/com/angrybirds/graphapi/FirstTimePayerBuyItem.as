package com.angrybirds.graphapi
{
   import com.angrybirds.shoppopup.PricePoint;
   import com.angrybirds.shoppopup.ShopItem;
   import com.angrybirds.shoppopup.events.BuyItemEvent;
   import com.angrybirds.shoppopup.serveractions.BuyItem;
   import com.rovio.server.ABFLoader;
   import com.rovio.server.URLRequestFactory;
   import com.rovio.utils.ErrorCode;
   import flash.events.Event;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   
   public class FirstTimePayerBuyItem extends BuyItem
   {
       
      
      public function FirstTimePayerBuyItem(shopItem:ShopItem, pricePoint:PricePoint)
      {
         super(null,null);
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
         var urlReq:URLRequest = URLRequestFactory.getNonCachingURLRequest(AngryBirdsBase.SERVER_ROOT + "/fbpurchase/init");
         mBuyItemLoader.load(urlReq);
      }
      
      override protected function onBuyItemComplete(e:Event) : void
      {
         var rawJSONData:Object = null;
         var changedItems:Array = null;
         mBuyItemLoader.removeEventListener(Event.COMPLETE,this.onBuyItemComplete);
         try
         {
            rawJSONData = mBuyItemLoader.data;
            mOrderId = rawJSONData.toString();
            if(mOrderId)
            {
               changedItems = new Array();
               changedItems.push(mOrderId);
               dispatchEvent(new BuyItemEvent(BuyItemEvent.ITEM_BOUGHT,false,false,changedItems));
            }
            else
            {
               dispatchEvent(new BuyItemEvent(BuyItemEvent.ITEM_BOUGHT_FAILED,false,false,null));
            }
         }
         catch(e:Error)
         {
            throw new Error("Error parsing JSON: " + mBuyItemLoader.data,ErrorCode.JSON_PARSE_ERROR);
         }
      }
   }
}
