package com.angrybirds.popups.coinshop
{
   import com.angrybirds.data.ItemsInventory;
   import com.angrybirds.shoppopup.ShopItem;
   import com.rovio.factory.XMLFactory;
   import com.rovio.server.ABFLoader;
   import com.rovio.server.URLRequestFactory;
   import com.rovio.utils.AddCommasToAmount;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.geom.ColorTransform;
   import flash.net.URLLoaderDataFormat;
   import flash.utils.setTimeout;
   
   public class CoinShopTutorialPopup extends CoinShopPopup
   {
      
      public static const FREE_COINS_BUNDLE:String = "VCIntro";
      
      private static const NUMBER_OF_COIN_BUTTONS:int = 6;
      
      private static const BUTTON_NAME:String = "Button_Buy";
      
      private static var sCoinsPopupTutorialBin:Class = CoinShopTutorialPopup_sCoinsPopupTutorialBin;
       
      
      private var mLoadingStarted:Boolean = false;
      
      private var mLoader:ABFLoader;
      
      public function CoinShopTutorialPopup(layerIndex:int, priority:int)
      {
         super(layerIndex,priority,"",XMLFactory.fromOctetStreamClass(sCoinsPopupTutorialBin));
      }
      
      override protected function init() : void
      {
         super.init();
         mContainer.mClip.Container_CoinShopPopup.Arrow_GetItNow.visible = false;
      }
      
      override public function injectData(coinsItem:ShopItem) : void
      {
         var coinButton:Object = null;
         var freeQuantity:String = null;
         var totalQuantity:String = null;
         mContainer.mClip.Container_CoinShopPopup.AngryBirdLoader.visible = false;
         mContainer.mClip.Container_CoinShopPopup.Arrow_GetItNow.visible = true;
         for(var i:int = 0; i < NUMBER_OF_COIN_BUTTONS; i++)
         {
            coinButton = mContainer.mClip.Container_CoinShopPopup[BUTTON_NAME + i];
            freeQuantity = coinsItem.getPricePoint(i).freeQuantityAsPercentage();
            totalQuantity = AddCommasToAmount.addCommasToAmount(coinsItem.getPricePoint(i).totalQuantity);
            coinButton.title.text = CoinShopButtonMedium.MULTIPLIER_STRING + totalQuantity;
            if(coinsItem.getPricePoint(i).freeQuantityInPercentage() > 0)
            {
               coinButton.offer.text = "(" + freeQuantity + " free)";
            }
            else
            {
               coinButton.offer.text = "";
            }
            coinButton.cost.text = dataModel.currencyModel.getPriceTag(coinsItem.getPricePoint(i).price,true,"",coinsItem.currencyID);
            if(i == NUMBER_OF_COIN_BUTTONS - 1)
            {
               coinButton.addEventListener(MouseEvent.CLICK,onBuyClick);
            }
            else
            {
               coinButton.mouseEnabled = false;
               coinButton.transform.colorTransform = new ColorTransform(0.4,0.4,0.4,1,30,30,30);
            }
            coinButton.visible = true;
         }
      }
      
      override protected function buyItem() : void
      {
         if(!this.mLoadingStarted)
         {
            this.mLoadingStarted = true;
            this.mLoader = new ABFLoader();
            this.mLoader.addEventListener(Event.COMPLETE,this.onDataLoaded);
            this.mLoader.addEventListener(IOErrorEvent.IO_ERROR,this.onDataLoadError);
            this.mLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onDataLoadError);
            this.mLoader.dataFormat = URLLoaderDataFormat.TEXT;
            this.mLoader.load(URLRequestFactory.getNonCachingURLRequest(AngryBirdsBase.SERVER_ROOT + "/claimfreebundle/" + FREE_COINS_BUNDLE));
         }
      }
      
      private function onDataLoadError(e:Event) : void
      {
      }
      
      private function onDataLoaded(e:Event = null) : void
      {
         onPurchaseCompleted(FREE_COINS_BUNDLE,1,false);
         if(e.currentTarget.data != null && e.currentTarget.data != "")
         {
            ItemsInventory.instance.injectInventoryUpdate(e.currentTarget.data);
            ItemsInventory.instance.loadInventory();
         }
         var coinButton:Object = mContainer.mClip.Container_CoinShopPopup[BUTTON_NAME + (NUMBER_OF_COIN_BUTTONS - 1)];
         coinButton.mouseEnabled = false;
         coinButton.transform.colorTransform = new ColorTransform(0.4,0.4,0.4,1,30,30,30);
         setTimeout(close,2000);
      }
   }
}
