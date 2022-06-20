package com.angrybirds.salescampaign
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.data.DataModelFriends;
   import com.angrybirds.shoppopup.ShopItem;
   import com.angrybirds.utils.FriendsUtil;
   import com.rovio.loader.LoadManager;
   import com.rovio.loader.PackageLoader;
   import com.rovio.server.Server;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class SalesCampaignManager extends EventDispatcher
   {
      
      public static const NON_SPENDER_AUTO_SALE:String = "NON_SPENDER_AUTO_SALE";
      
      public static const EVENT_UPDATE_WALLET:String = "UpdateWallet";
      
      public static const EVENT_SALE_DATA_SET:String = "SaleDataSet";
      
      private static var sInstance:SalesCampaignManager;
       
      
      private var mSaleCampaignTypes:Array;
      
      private var mSaleCampaignID:String;
      
      private var mSaleStartsTimestamp:Number;
      
      private var mSaleExpiresTimestamp:Number;
      
      private var mLoadManager:LoadManager;
      
      private var mDataSet:Boolean;
      
      public function SalesCampaignManager()
      {
         this.mSaleCampaignTypes = [];
         super();
         this.mDataSet = false;
      }
      
      public static function get instance() : SalesCampaignManager
      {
         if(sInstance == null)
         {
            sInstance = new SalesCampaignManager();
         }
         return sInstance;
      }
      
      protected static function get dataModel() : DataModelFriends
      {
         return AngryBirdsBase.singleton.dataModel as DataModelFriends;
      }
      
      public function setSaleCampaignData(data:Object) : void
      {
         var dmf:DataModelFriends = null;
         var swfURL:* = null;
         var packageLoader:PackageLoader = null;
         if(!data.scet)
         {
            this.stopCampaign();
            return;
         }
         if(data.scst)
         {
            this.mSaleStartsTimestamp = data.scst;
            this.mSaleExpiresTimestamp = 0;
         }
         else
         {
            this.mSaleStartsTimestamp = 0;
            this.mSaleExpiresTimestamp = data.scet;
            this.mSaleCampaignTypes = new Array();
            if(data.scid == NON_SPENDER_AUTO_SALE)
            {
               this.mSaleCampaignTypes.push(NON_SPENDER_AUTO_SALE);
            }
            else
            {
               dmf = DataModelFriends(AngryBirdsBase.singleton.dataModel);
               if(dmf.hasCoinShopItemsOnSale)
               {
                  this.mSaleCampaignTypes.push("Coins");
               }
               if(dmf.hasSlingshotsOnSale)
               {
                  this.mSaleCampaignTypes.push("Slingshots");
               }
               if(dmf.hasPowerupsOnSale)
               {
                  this.mSaleCampaignTypes.push("Powerups");
               }
            }
            if(this.mSaleCampaignTypes.length == 0)
            {
               this.stopCampaign();
               return;
            }
         }
         if(data.scid && this.mSaleCampaignID != data.scid)
         {
            this.mSaleCampaignID = data.scid;
            swfURL = AngryBirdsFacebook.SALE_CAMPAIGNS_SWF_FOLDER + data.scid + ".swf";
            packageLoader = new PackageLoader();
            this.mLoadManager = new LoadManager(true);
            this.mLoadManager.init(Server.getExternalAssetDirectoryPaths(),"",AngryBirdsFacebook.sSingleton.getBuildNumber(),packageLoader,null,(AngryBirdsEngine.smApp as AngryBirdsFacebook).getLevelLoader());
            this.mLoadManager.startQueue();
            this.mLoadManager.addToQueue(<library swf="{swfURL}"/>);
            this.mLoadManager.loadQueue(this.onSaleCampaignAssetsLoaded);
         }
         else
         {
            this.mSaleCampaignID = data.scid;
            this.mDataSet = true;
            dispatchEvent(new Event(EVENT_SALE_DATA_SET));
         }
      }
      
      private function onShopListingComplete(e:Event = null, data:Vector.<ShopItem> = null) : void
      {
         dataModel.shopListing.removeEventListener(Event.COMPLETE,this.onShopListingComplete);
      }
      
      public function stopCampaign() : void
      {
         this.mSaleCampaignID = "";
         this.mDataSet = false;
         this.mSaleStartsTimestamp = 0;
         this.mSaleExpiresTimestamp = 0;
         this.mSaleCampaignTypes = new Array();
         dispatchEvent(new Event(EVENT_SALE_DATA_SET));
         (AngryBirdsEngine.smApp as AngryBirdsFacebook).updateFriendsbarShopButton();
      }
      
      public function getSaleCampaignTypes() : Array
      {
         return this.mSaleCampaignTypes;
      }
      
      private function getSecondsToStart() : Number
      {
         if(this.mSaleStartsTimestamp == 0)
         {
            return 0;
         }
         var now:Number = 0;
         if(dataModel.serverSynchronizedTime)
         {
            now = dataModel.serverSynchronizedTime.synchronizedTimeStamp;
         }
         var seconds:int = (this.mSaleStartsTimestamp - now) / 1000;
         seconds = Math.max(0,seconds);
         if(seconds == 0)
         {
            this.mSaleStartsTimestamp = 0;
         }
         return seconds;
      }
      
      private function getSecondsLeft() : Number
      {
         if(this.mSaleExpiresTimestamp == 0)
         {
            return 0;
         }
         var now:Number = 0;
         if(dataModel.serverSynchronizedTime)
         {
            now = dataModel.serverSynchronizedTime.synchronizedTimeStamp;
         }
         var seconds:int = (this.mSaleExpiresTimestamp - now) / 1000;
         seconds = Math.max(0,seconds);
         if(seconds == 0)
         {
            this.mSaleExpiresTimestamp = 0;
         }
         return seconds;
      }
      
      public function isCampaignActive() : Boolean
      {
         return this.getSecondsToStart() <= 0 && this.getSecondsLeft() > 0;
      }
      
      public function updateSalesCampaignManager() : void
      {
         dispatchEvent(new Event(EVENT_UPDATE_WALLET));
         if(this.mDataSet)
         {
            if(this.getSecondsToStart() == 0)
            {
               if(this.getSecondsLeft() == 0)
               {
                  this.mDataSet = false;
                  dataModel.shopListing.addEventListener(Event.COMPLETE,this.onShopListingComplete);
                  dataModel.shopListing.loadStoreItems(true);
               }
            }
         }
      }
      
      public function getSaleTimeLeftAsPrettyString() : String
      {
         return FriendsUtil.getCountDownTime(this.getSecondsLeft());
      }
      
      public function get saleCampaignID() : String
      {
         if(!this.mSaleCampaignID)
         {
            return "";
         }
         return this.mSaleCampaignID;
      }
      
      public function get saleExpiresTimestamp() : Number
      {
         if(!this.mSaleExpiresTimestamp)
         {
            return 0;
         }
         return this.mSaleExpiresTimestamp;
      }
      
      private function onSaleCampaignAssetsLoaded() : void
      {
         this.mLoadManager.stopLoading();
         this.mLoadManager = null;
         this.mDataSet = true;
         dispatchEvent(new Event(EVENT_SALE_DATA_SET));
      }
   }
}
