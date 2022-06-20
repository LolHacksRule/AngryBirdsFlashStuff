package com.angrybirds.shoppopup.serveractions
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.abtesting.ABTestingModel;
   import com.angrybirds.data.DataModelFriends;
   import com.angrybirds.data.ItemsInventory;
   import com.angrybirds.engine.TunerFriends;
   import com.angrybirds.popups.ErrorPopup;
   import com.angrybirds.popups.PopupLayerIndexFacebook;
   import com.angrybirds.popups.WarningPopup;
   import com.angrybirds.powerups.PowerupType;
   import com.angrybirds.salescampaign.SalesCampaignManager;
   import com.angrybirds.shoppopup.ShopItem;
   import com.angrybirds.slingshots.SlingShotDefinition;
   import com.angrybirds.slingshots.SlingShotType;
   import com.rovio.server.ABFLoader;
   import com.rovio.server.RetryingURLLoaderErrorEvent;
   import com.rovio.server.URLRequestFactory;
   import com.rovio.ui.popup.PopupPriorityType;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   
   public class ShopListing extends EventDispatcher
   {
      
      public static const SHOP_NAME_POWERUP:String = "POWER_UP";
      
      public static const SHOP_NAME_AVATAR:String = "AVATAR";
      
      public static const SHOP_NAME_SPECIAL:String = "SPECIAL";
      
      public static const SHOP_NAME_SLINGSHOT:String = "SLINGSHOT";
      
      public static const SHOP_NAME_VC:String = "VC";
      
      public static const SHOP_NAME_LEVEL:String = "LEVEL";
      
      public static const SHOP_NAME_PERSONALIZED_OFFER:String = "OFFER";
       
      
      private var mShopLoader:ABFLoader;
      
      private var mPowerupItems:Vector.<ShopItem>;
      
      private var mCoinItems:Vector.<ShopItem>;
      
      private var mAvatarItems:Vector.<ShopItem>;
      
      private var mSpecialItems:Vector.<ShopItem>;
      
      private var mSlingshots:Vector.<ShopItem>;
      
      private var mTournamentLevelUnlock:Vector.<ShopItem>;
      
      private var mTargetedSaleBundle:Vector.<ShopItem>;
      
      private var mRawJSONData:Object;
      
      private var mShops:Array;
      
      private var mIsLoading:Boolean = false;
      
      public function ShopListing()
      {
         super();
      }
      
      public function get isLoading() : Boolean
      {
         return this.mIsLoading;
      }
      
      public function get powerupItems() : Vector.<ShopItem>
      {
         if(!this.mPowerupItems)
         {
            this.loadStoreItems();
            return null;
         }
         return this.mPowerupItems;
      }
      
      public function get coinItems() : Vector.<ShopItem>
      {
         if(!this.mCoinItems)
         {
            this.loadStoreItems();
            return null;
         }
         return this.mCoinItems;
      }
      
      public function get avatarItems() : Vector.<ShopItem>
      {
         if(!this.mAvatarItems)
         {
            this.loadStoreItems();
            return null;
         }
         return this.mAvatarItems;
      }
      
      public function get specialItems() : Vector.<ShopItem>
      {
         if(!this.mSpecialItems)
         {
            this.loadStoreItems();
            return null;
         }
         return this.mSpecialItems;
      }
      
      public function get slingshots() : Vector.<ShopItem>
      {
         if(!this.mSlingshots)
         {
            this.loadStoreItems();
            return null;
         }
         return this.mSlingshots;
      }
      
      public function get tournamentLevelUnlock() : Vector.<ShopItem>
      {
         if(!this.mTournamentLevelUnlock)
         {
            this.loadStoreItems();
            return null;
         }
         return this.mTournamentLevelUnlock;
      }
      
      public function get targetedSaleBundle() : Vector.<ShopItem>
      {
         if(!this.mTargetedSaleBundle)
         {
            this.loadStoreItems();
            return null;
         }
         return this.mTargetedSaleBundle;
      }
      
      public function loadStoreItems(forceLoad:Boolean = false) : void
      {
         if(!forceLoad)
         {
            if(this.mIsLoading || this.mPowerupItems || this.mCoinItems || this.mAvatarItems || this.mSpecialItems || this.mSlingshots || this.mTargetedSaleBundle)
            {
               return;
            }
         }
         this.mIsLoading = true;
         this.mShopLoader = new ABFLoader();
         this.mShopLoader.addEventListener(Event.COMPLETE,this.onShopListingLoaded);
         this.mShopLoader.addEventListener(IOErrorEvent.IO_ERROR,this.onShopListingLoadError);
         this.mShopLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onShopListingLoadError);
         this.mShopLoader.addEventListener(RetryingURLLoaderErrorEvent.THIRD_PARTY_COOKIES_DISABLED,this.onShopListingLoadError);
         this.mShopLoader.dataFormat = URLLoaderDataFormat.TEXT;
         this.mShopLoader.load(URLRequestFactory.getNonCachingURLRequest(AngryBirdsBase.SERVER_ROOT + "/shoplisting"));
      }
      
      private function onShopListingLoaded(e:Event) : void
      {
         if(this.mShopLoader)
         {
            this.mShopLoader.removeEventListener(Event.COMPLETE,this.onShopListingLoaded);
            this.mShopLoader.removeEventListener(IOErrorEvent.IO_ERROR,this.onShopListingLoadError);
            this.mShopLoader.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onShopListingLoadError);
            this.mShopLoader.removeEventListener(RetryingURLLoaderErrorEvent.THIRD_PARTY_COOKIES_DISABLED,this.onShopListingLoadError);
            if(this.mShopLoader.data)
            {
               this.parseJSONDataToShopItems(this.mShopLoader.data);
               SalesCampaignManager.instance.setSaleCampaignData(this.mShopLoader.data);
            }
         }
         this.mShopLoader = null;
         this.mIsLoading = false;
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      private function parseJSONDataToShopItems(jsonObject:Object) : void
      {
         var shop:Object = null;
         var obj:Object = null;
         var virtualCoinItem:Object = null;
         var shopCoinItem:ShopItem = null;
         var powerupJsonItem:Object = null;
         var powerupItem:ShopItem = null;
         var avatarJsonItem:Object = null;
         var avatarItem:ShopItem = null;
         var specialJsonItem:Object = null;
         var specialItem:ShopItem = null;
         var slingshotJsonItem:Object = null;
         var slingshotItem:ShopItem = null;
         var slingShotDefinition:SlingShotDefinition = null;
         var levelJsonItem:Object = null;
         var levelItem:ShopItem = null;
         this.mCoinItems = new Vector.<ShopItem>();
         this.mPowerupItems = new Vector.<ShopItem>();
         this.mAvatarItems = new Vector.<ShopItem>();
         this.mSpecialItems = new Vector.<ShopItem>();
         this.mSlingshots = new Vector.<ShopItem>();
         this.mTournamentLevelUnlock = new Vector.<ShopItem>();
         this.mTargetedSaleBundle = new Vector.<ShopItem>();
         this.mShops = new Array();
         var dmf:DataModelFriends = DataModelFriends(AngryBirdsBase.singleton.dataModel);
         dmf.hasShopSpecialOfferItems = false;
         dmf.hasCoinShopItemsOnSale = false;
         dmf.hasSlingshotsOnSale = false;
         dmf.hasPowerupsOnSale = false;
         for each(shop in jsonObject.shops)
         {
            obj = {
               "id":shop.id,
               "name":shop.sn
            };
            this.mShops.push(obj);
            switch(shop.id)
            {
               case SHOP_NAME_VC:
                  for each(virtualCoinItem in shop.items)
                  {
                     this.checkForSale(virtualCoinItem.id,virtualCoinItem.prices,true,false);
                     shopCoinItem = new ShopItem(virtualCoinItem.id,virtualCoinItem.prices,false,virtualCoinItem.c,virtualCoinItem.ogo);
                     this.checkForSpecialOffers(virtualCoinItem.prices);
                     this.checkForNewTag(virtualCoinItem);
                     this.mCoinItems.push(shopCoinItem);
                  }
                  break;
               case SHOP_NAME_POWERUP:
                  for each(powerupJsonItem in shop.items)
                  {
                     if(ABTestingModel.getGroup(ABTestingModel.AB_TEST_CASE_WEB_STORY_MODE) == ABTestingModel.AB_TEST_GROUP_WEB_STORY_MODE_OFF)
                     {
                        if(powerupJsonItem.id == PowerupType.sMightyEagle.identifier || powerupJsonItem.id == PowerupType.sMushroom.identifier)
                        {
                           continue;
                        }
                     }
                     this.checkForSale(powerupJsonItem.id,powerupJsonItem.prices,false,false);
                     powerupItem = new ShopItem(powerupJsonItem.id,powerupJsonItem.prices,false,powerupJsonItem.c,"");
                     this.checkForNewTag(powerupJsonItem);
                     this.mPowerupItems.push(powerupItem);
                  }
                  break;
               case SHOP_NAME_AVATAR:
                  for each(avatarJsonItem in shop.items)
                  {
                     this.checkForSale(avatarJsonItem.id,avatarJsonItem.prices,false,false);
                     avatarItem = new ShopItem(avatarJsonItem.id,avatarJsonItem.prices,false,avatarJsonItem.c,"");
                     this.checkForNewTag(avatarJsonItem);
                     this.mAvatarItems.push(avatarItem);
                  }
                  break;
               case SHOP_NAME_SPECIAL:
                  for each(specialJsonItem in shop.items)
                  {
                     this.checkForSale(specialJsonItem.id,specialJsonItem.prices,false,false);
                     specialItem = new ShopItem(specialJsonItem.id,specialJsonItem.prices,false,specialJsonItem.c,specialJsonItem.ogo);
                     this.checkForNewTag(specialJsonItem);
                     this.mSpecialItems.push(specialItem);
                  }
                  break;
               case SHOP_NAME_SLINGSHOT:
                  for each(slingshotJsonItem in shop.items)
                  {
                     this.checkForSale(slingshotJsonItem.id,slingshotJsonItem.prices,false,true);
                     slingshotItem = new ShopItem(slingshotJsonItem.id,slingshotJsonItem.prices,false,slingshotJsonItem.c,slingshotJsonItem.ogo);
                     this.checkForNewTag(slingshotJsonItem);
                     this.mSlingshots.push(slingshotItem);
                     slingShotDefinition = SlingShotType.getSlingShotByID(slingshotItem.id);
                     if(slingShotDefinition)
                     {
                        slingShotDefinition.available = true;
                     }
                  }
                  break;
               case SHOP_NAME_LEVEL:
                  for each(levelJsonItem in shop.items)
                  {
                     this.checkForSale(levelJsonItem.id,levelJsonItem.prices,false,true);
                     levelItem = new ShopItem(levelJsonItem.id,levelJsonItem.prices,false,levelJsonItem.c,levelJsonItem.ogo);
                     this.checkForNewTag(levelJsonItem);
                     this.mTournamentLevelUnlock.push(levelItem);
                  }
                  break;
               case SHOP_NAME_PERSONALIZED_OFFER:
                  if(shop.items && shop.items[0])
                  {
                     this.mTargetedSaleBundle.push(new ShopItem(shop.items[0].id,shop.items[0].prices,false,shop.items[0].c,shop.items[0].ogo));
                  }
                  break;
            }
         }
         if((AngryBirdsEngine.smApp as AngryBirdsFacebook).friendsBar)
         {
            (AngryBirdsEngine.smApp as AngryBirdsFacebook).friendsBar.updateShopButton();
         }
      }
      
      private function checkForNewTag(itemObject:Object) : Boolean
      {
         var pricePointData:Object = null;
         var pricePointID:String = null;
         var shopItemID:String = null;
         var itemCount:int = ItemsInventory.instance.getCountForPowerup(itemObject.id);
         if(itemObject["as"] && itemCount <= 0)
         {
            if(DataModelFriends(AngryBirdsBase.singleton.dataModel).clientStorage.hasItemBeenSeen(itemObject["id"]))
            {
               return false;
            }
            DataModelFriends(AngryBirdsBase.singleton.dataModel).newShopItems.push(itemObject["id"]);
            return true;
         }
         for each(pricePointData in itemObject.prices)
         {
            if(pricePointData["as"])
            {
               if(!DataModelFriends(AngryBirdsBase.singleton.dataModel).clientStorage.hasItemBeenSeen(itemObject["id"] + pricePointData["p"]))
               {
                  pricePointID = itemObject["id"] + pricePointData["p"];
                  shopItemID = itemObject["id"];
                  if(DataModelFriends(AngryBirdsBase.singleton.dataModel).newShopPricePoints.indexOf(pricePointID) == -1)
                  {
                     DataModelFriends(AngryBirdsBase.singleton.dataModel).newShopPricePoints.push(pricePointID);
                  }
               }
               continue;
               if(DataModelFriends(AngryBirdsBase.singleton.dataModel).newShopItems.indexOf(shopItemID) == -1)
               {
                  DataModelFriends(AngryBirdsBase.singleton.dataModel).newShopItems.push(shopItemID);
               }
               return true;
            }
         }
         return false;
      }
      
      private function checkForSale(itemID:String, pricePointsObjects:Array, isCoinObject:Boolean, canOnlyHaveOne:Boolean) : void
      {
         var jsonPricePoint:Object = null;
         if(canOnlyHaveOne && ItemsInventory.instance.getCountForPowerup(itemID) > 0 && !TunerFriends.SHOW_SALE_TAG_ON_OWNED_ITEMS)
         {
            return;
         }
         for each(jsonPricePoint in pricePointsObjects)
         {
            if(jsonPricePoint.cp && Number(jsonPricePoint.cp) > 0)
            {
               if(isCoinObject)
               {
                  DataModelFriends(AngryBirdsBase.singleton.dataModel).hasCoinShopItemsOnSale = true;
               }
               else if(SlingShotType.getSlingShotByID(itemID))
               {
                  DataModelFriends(AngryBirdsBase.singleton.dataModel).hasSlingshotsOnSale = true;
               }
               else
               {
                  DataModelFriends(AngryBirdsBase.singleton.dataModel).hasPowerupsOnSale = true;
               }
            }
         }
      }
      
      private function checkForSpecialOffers(pricePointsObjects:Object) : void
      {
         var jsonPricePoint:Object = null;
         for each(jsonPricePoint in pricePointsObjects)
         {
            if(jsonPricePoint.so)
            {
               DataModelFriends(AngryBirdsBase.singleton.dataModel).hasShopSpecialOfferItems = true;
            }
         }
      }
      
      private function onShopListingLoadError(e:Event) : void
      {
         this.mShopLoader.removeEventListener(Event.COMPLETE,this.onShopListingLoaded);
         this.mShopLoader.removeEventListener(IOErrorEvent.IO_ERROR,this.onShopListingLoadError);
         this.mShopLoader.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onShopListingLoadError);
         this.mShopLoader.removeEventListener(RetryingURLLoaderErrorEvent.THIRD_PARTY_COOKIES_DISABLED,this.onShopListingLoadError);
         this.mIsLoading = false;
         if(e.type == RetryingURLLoaderErrorEvent.THIRD_PARTY_COOKIES_DISABLED)
         {
            this.showErrorPopup(ErrorPopup.ERROR_THIRD_PARTY_COOKIES_DISABLED);
         }
         else
         {
            this.showWarningPopup();
         }
         this.mShopLoader = null;
      }
      
      protected function showErrorPopup(type:String) : void
      {
         var popup:ErrorPopup = new ErrorPopup(PopupLayerIndexFacebook.ALERT,PopupPriorityType.TOP,type);
         AngryBirdsBase.singleton.popupManager.openPopup(popup);
      }
      
      protected function showWarningPopup() : void
      {
         var popup:WarningPopup = new WarningPopup(PopupLayerIndexFacebook.ALERT,PopupPriorityType.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(popup);
      }
      
      public function getPowerUpItemById(id:String) : ShopItem
      {
         var shopItem:ShopItem = null;
         for each(shopItem in this.powerupItems)
         {
            if(shopItem.id == id)
            {
               return shopItem;
            }
         }
         return null;
      }
      
      public function getSlingshotById(id:String) : ShopItem
      {
         var shopItem:ShopItem = null;
         for each(shopItem in this.slingshots)
         {
            if(shopItem.id == id)
            {
               return shopItem;
            }
         }
         return null;
      }
      
      public function get shops() : Array
      {
         return this.mShops;
      }
      
      public function emptyData() : void
      {
         this.mCoinItems = null;
         this.mPowerupItems = null;
         this.mAvatarItems = null;
         this.mSpecialItems = null;
         this.mSlingshots = null;
         this.mTournamentLevelUnlock = null;
         this.mTargetedSaleBundle = null;
         this.mShops = null;
         this.mShopLoader = null;
      }
   }
}
