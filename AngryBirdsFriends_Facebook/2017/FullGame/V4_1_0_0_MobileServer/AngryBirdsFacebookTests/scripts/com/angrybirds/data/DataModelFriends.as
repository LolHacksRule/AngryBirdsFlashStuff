package com.angrybirds.data
{
   import com.angrybirds.shoppopup.serveractions.AvatarCreatorItemListing;
   import com.angrybirds.shoppopup.serveractions.ClientStorage;
   import com.angrybirds.shoppopup.serveractions.MobilePricePoints;
   import com.angrybirds.shoppopup.serveractions.ShopListing;
   import com.angrybirds.utils.ServerSynchronizedTime;
   import com.rovio.skynest.FriendsRovioAccessToken;
   
   public class DataModelFriends extends DataModel
   {
       
      
      public var rovioAccessToken:FriendsRovioAccessToken;
      
      public var currencyModel:CurrencyModel;
      
      public var virtualCurrencyModel:VirtualCurrencyModel;
      
      public var piggyCurrencyModel:PiggyCurrencyModel;
      
      public var shopListing:ShopListing;
      
      public var avatarCreatorItemListing:AvatarCreatorItemListing;
      
      public var mobilePricePoints:MobilePricePoints;
      
      public var serverSynchronizedTime:ServerSynchronizedTime;
      
      public var userModel:UserModel;
      
      public var useTrialPay:Boolean;
      
      public var newShopItems:Array;
      
      public var newShopPricePoints:Array;
      
      public var hasShopSpecialOfferItems:Boolean = false;
      
      public var hasSlingshotsOnSale:Boolean = false;
      
      public var hasPowerupsOnSale:Boolean = false;
      
      public var hasCoinShopItemsOnSale:Boolean = false;
      
      public var hasAvatarShopNewItems:Boolean = false;
      
      public var hasAvatarShopItemsOnSale:Boolean = false;
      
      public var clientStorage:ClientStorage;
      
      public function DataModelFriends()
      {
         this.shopListing = new ShopListing();
         this.avatarCreatorItemListing = new AvatarCreatorItemListing();
         this.mobilePricePoints = new MobilePricePoints();
         this.userModel = new UserModel();
         this.newShopItems = new Array();
         this.newShopPricePoints = new Array();
         this.clientStorage = new ClientStorage();
         super();
      }
   }
}
