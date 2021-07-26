package com.angrybirds.popups
{
   import com.angrybirds.avatarcreator.AvatarCreatorModel;
   import com.angrybirds.avatarcreator.components.Avatar;
   import com.angrybirds.avatarcreator.components.AvatarContainer;
   import com.angrybirds.avatarcreator.components.AvatarEditorTabRepeaterButton;
   import com.angrybirds.avatarcreator.data.Category;
   import com.angrybirds.avatarcreator.data.Item;
   import com.angrybirds.avatarcreator.utils.ServerIdParser;
   import com.angrybirds.data.DataModelFriends;
   import com.angrybirds.friendsbar.data.AvatarVO;
   import com.angrybirds.friendsbar.data.CustomAvatarCache;
   import com.angrybirds.friendsbar.ui.profile.AvatarRenderer;
   import com.angrybirds.friendsbar.ui.profile.FacebookProfilePicture;
   import com.angrybirds.friendsbar.ui.profile.ProfilePicture;
   import com.angrybirds.graphapi.GraphAPICaller;
   import com.angrybirds.popups.coinshop.CoinShopPopup;
   import com.angrybirds.shoppopup.PricePoint;
   import com.angrybirds.shoppopup.ShopItem;
   import com.angrybirds.shoppopup.events.BuyItemEvent;
   import com.angrybirds.shoppopup.serveractions.BuyItemWithVC;
   import com.angrybirds.shoppopup.serveractions.ClientStorage;
   import com.angrybirds.states.tournament.StateTournamentResults;
   import com.angrybirds.ui.PopupsUIView;
   import com.angrybirds.wallet.IWalletContainer;
   import com.angrybirds.wallet.Wallet;
   import com.rovio.assets.AssetCache;
   import com.rovio.externalInterface.ExternalInterfaceHandler;
   import com.rovio.factory.FacebookImageUploaderFriends;
   import com.rovio.factory.Log;
   import com.rovio.factory.XMLFactory;
   import com.rovio.server.ABFLoader;
   import com.rovio.server.URLRequestFactory;
   import com.rovio.sound.SoundEngine;
   import com.rovio.states.StateBase;
   import com.rovio.ui.Components.Helpers.UIComponentInteractiveRovio;
   import com.rovio.ui.Components.Helpers.UIComponentRovio;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.ui.Components.UIButtonRovio;
   import com.rovio.ui.Components.UIMovieClipRovio;
   import com.rovio.ui.Components.UIRepeaterButtonRovio;
   import com.rovio.ui.Components.UIRepeaterRovio;
   import com.rovio.ui.Components.UIRepeaterTabRovio;
   import com.rovio.ui.Components.UITextFieldRovio;
   import com.rovio.ui.popup.AbstractPopup;
   import com.rovio.ui.popup.IPopup;
   import com.rovio.ui.popup.PopupPriorityType;
   import com.rovio.ui.popup.event.PopupEvent;
   import com.rovio.utils.FacebookGoogleAnalyticsTracker;
   import com.rovio.utils.IVirtualPageView;
   import com.rovio.utils.analytics.INavigable;
   import data.user.FacebookUserProgress;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.geom.Matrix;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.text.TextField;
   
   public class AvatarCreatorPopup extends AbstractPopup implements IWalletContainer, IVirtualPageView, INavigable
   {
      
      public static const ID:String = "AvatarCreatorPopup";
      
      private static const SHOP_NAME:String = "In-app Shop Avatars";
      
      private static const SHARE_MAX_CHAR_INPUT:int = 75;
      
      private static var sAvatorCreatorPopupBin:Class = AvatarCreatorPopup_sAvatorCreatorPopupBin;
      
      public static var sServerRoot:String;
      
      public static const STATE_NAME:String = "CreatorState";
      
      private static var sPreviousState:String;
      
      public static var sItemsAvailable:Array;
      
      private static var sAvatarContainer:AvatarContainer;
      
      private static var sFirstTimeInit:Boolean = true;
      
      private static const WHATS_ON_YOUR_MIND:String = "What\'s on your mind?";
       
      
      private var selectedItem:Item = null;
      
      private var mActivated:Boolean = false;
      
      private var mSavedAvatarString:String;
      
      private var mItemsToBuy:Array;
      
      private var mItemsBought:Array;
      
      private var mProfilePictureState:Boolean = false;
      
      private var mButtonAvatarRender:AvatarRenderer;
      
      private var mTabToShow:String;
      
      private var mBeforeSavingAvatarString:String;
      
      private var mWallet:Wallet;
      
      private var mUseFade:Boolean;
      
      private var mActiveTabName:String;
      
      private var sHasAddedEventListeners:Boolean;
      
      private var mItemsWithNewTag:Array;
      
      private var mItemsWithSaleTag:Array;
      
      private var mLoadPreviousCharacter:Boolean = true;
      
      private var mAvatarTitles:Array;
      
      private var mChanged:Boolean = false;
      
      private var mShareCaptionInputTF:TextField;
      
      public function AvatarCreatorPopup(layerIndex:int, priority:int, activeTabName:String = null)
      {
         this.mItemsToBuy = [];
         this.mItemsBought = [];
         this.mAvatarTitles = ["Cool Avatar!","Sweet Avatar!","Nice Avatar!","Awesome Avatar!"];
         super(layerIndex,priority,XMLFactory.fromOctetStreamClass(sAvatorCreatorPopupBin),ID);
         this.mActiveTabName = activeTabName;
      }
      
      public static function getItemInServerlist(itemId:String) : Boolean
      {
         var itemObject:Object = null;
         for each(itemObject in sItemsAvailable)
         {
            if(itemObject.itemId == itemId)
            {
               return true;
            }
         }
         return false;
      }
      
      public static function getItemPrice(itemId:String) : int
      {
         var itemObject:Object = null;
         for each(itemObject in sItemsAvailable)
         {
            if(itemObject.itemId == itemId && !itemObject.available)
            {
               return itemObject.price;
            }
         }
         return 0;
      }
      
      public static function getItemOnSale(itemId:String) : Boolean
      {
         var itemObject:Object = null;
         for each(itemObject in sItemsAvailable)
         {
            if(itemObject.itemId == itemId && !itemObject.available)
            {
               return itemObject.sale;
            }
         }
         return false;
      }
      
      public static function getItemLimited(itemId:String) : Boolean
      {
         var itemObject:Object = null;
         for each(itemObject in sItemsAvailable)
         {
            if(itemObject.itemId == itemId && !itemObject.available)
            {
               return itemObject.limited;
            }
         }
         return false;
      }
      
      public static function getItemStarPrice(itemId:String) : int
      {
         var itemObject:Object = null;
         for each(itemObject in sItemsAvailable)
         {
            if(itemObject.itemId == itemId)
            {
               return itemObject.starPrice;
            }
         }
         return 0;
      }
      
      public static function getItemIsNew(itemId:String) : Boolean
      {
         var itemObject:Object = null;
         for each(itemObject in sItemsAvailable)
         {
            if(itemObject.itemId == itemId && itemObject.isNew == true && !itemObject.available)
            {
               return true;
            }
         }
         return false;
      }
      
      protected static function get userProgress() : FacebookUserProgress
      {
         return AngryBirdsBase.singleton.dataModel.userProgress as FacebookUserProgress;
      }
      
      protected static function get dataModel() : DataModelFriends
      {
         return AngryBirdsBase.singleton.dataModel as DataModelFriends;
      }
      
      override protected function init() : void
      {
         super.init();
         if(this.mActiveTabName)
         {
            this.mTabToShow = this.mActiveTabName;
         }
         if(userProgress.isEggUnlocked("1000-2"))
         {
            mContainer.getItemByName("ButtonEasterEgg2").setVisibility(false);
         }
         else
         {
            mContainer.getItemByName("ButtonEasterEgg2").setVisibility(true);
         }
         sServerRoot = AngryBirdsBase.SERVER_ROOT;
         if(sAvatarContainer == null)
         {
            sAvatarContainer = new AvatarContainer();
         }
         if(DataModelFriends(AngryBirdsBase.singleton.dataModel).avatarCreatorItemListing.isLoading)
         {
            this.setWaitingForReplyLayer(true);
            DataModelFriends(AngryBirdsBase.singleton.dataModel).avatarCreatorItemListing.addEventListener(Event.COMPLETE,this.finalizeItemLoading);
         }
         this.mActivated = false;
      }
      
      protected function onTournamentReloaded(event:Event) : void
      {
         AngryBirdsBase.singleton.popupManager.closePopupById(id);
      }
      
      public function addWallet(wallet:Wallet) : void
      {
         this.mWallet = wallet;
      }
      
      public function removeWallet(wallet:Wallet) : void
      {
         wallet.dispose();
         wallet = null;
      }
      
      public function get walletContainer() : Sprite
      {
         return mContainer.mClip.AvatarCreatorContainer.walletContainerClip;
      }
      
      public function get wallet() : Wallet
      {
         return this.mWallet;
      }
      
      private function requestAvatarParts() : void
      {
         this.setWaitingForReplyLayer(true);
         DataModelFriends(AngryBirdsBase.singleton.dataModel).avatarCreatorItemListing.loadItems();
         DataModelFriends(AngryBirdsBase.singleton.dataModel).avatarCreatorItemListing.addEventListener(Event.COMPLETE,this.finalizeItemLoading);
      }
      
      private function finalizeItemLoading(e:Event) : void
      {
         DataModelFriends(AngryBirdsBase.singleton.dataModel).avatarCreatorItemListing.removeEventListener(Event.COMPLETE,this.finalizeItemLoading);
         this.mLoadPreviousCharacter = false;
         this.activateAvatarCreator();
      }
      
      private function avatarCreatorInitializeRepeaters() : void
      {
         var tab:UIRepeaterTabRovio = null;
         var j:int = 0;
         var component:UIComponentRovio = null;
         var categoryItems:Array = null;
         var newTagAdded:Boolean = false;
         var saleTagAdded:Boolean = false;
         var k:int = 0;
         var mcNewTag:MovieClip = null;
         var mcSaleTag:MovieClip = null;
         var categoryName:String = null;
         var items:UIRepeaterRovio = mContainer.getItemByName("Repeater_Items") as UIRepeaterRovio;
         var tabs:UIRepeaterRovio = mContainer.getItemByName("Repeater_Tabs") as UIRepeaterRovio;
         var newTag:Class = AssetCache.getAssetFromCache("Tag_New");
         var saleTag:Class = AssetCache.getAssetFromCache("Tag_Sale");
         this.mItemsWithNewTag = new Array();
         this.mItemsWithSaleTag = new Array();
         if(AvatarCreatorModel.instance.items.categories.length > 0)
         {
            tabs.getButtonGroupByName("Repeater_Tabs_Tab_0").buttonSelected(AvatarCreatorModel.instance.items.categories[0].name as String);
            for each(tab in tabs.mItems)
            {
               j = 0;
               for each(component in tab.mItems)
               {
                  if(AvatarCreatorModel.instance.items.categories[j].name == component.name)
                  {
                     categoryItems = AvatarCreatorModel.instance.items.getItemsInCategory(AvatarCreatorModel.instance.items.categories[j].name);
                     newTagAdded = false;
                     saleTagAdded = false;
                     for(k = 0; k < categoryItems.length; k++)
                     {
                        if(AvatarCreatorPopup.getItemIsNew(categoryItems[k].mId))
                        {
                           this.mItemsWithNewTag.push(categoryItems[k].mId);
                           if(!newTagAdded)
                           {
                              mcNewTag = new newTag();
                              mcNewTag.x += 7;
                              mcNewTag.y += 10;
                              component.mClip.addChild(mcNewTag);
                              newTagAdded = true;
                           }
                        }
                        if(AvatarCreatorPopup.getItemOnSale(categoryItems[k].mId))
                        {
                           this.mItemsWithSaleTag.push(categoryItems[k].mId);
                           if(!saleTagAdded)
                           {
                              mcSaleTag = new saleTag();
                              component.mClip.addChild(mcSaleTag);
                              saleTagAdded = true;
                           }
                        }
                     }
                  }
                  j++;
               }
            }
         }
         for(var i:int = 0; i < AvatarCreatorModel.instance.items.categories.length; i++)
         {
            categoryName = AvatarCreatorModel.instance.items.categories[i].name;
            items.getButtonGroupByName("Repeater_Items_Tab_" + i).buttonSelected(categoryName);
         }
         items.setVisibleTab("Repeater_Items_Tab_0");
         tabs.setVisibleTab("Repeater_Tabs_Tab_0");
      }
      
      private function moveAvatarContainerTo(displayObjectContainer:DisplayObjectContainer, scale:Number = 1, containerX:int = 0, containerY:int = 0) : void
      {
         if(sAvatarContainer)
         {
            if(sAvatarContainer.parent)
            {
               if(sAvatarContainer.parent.contains(sAvatarContainer))
               {
                  sAvatarContainer.parent.removeChild(sAvatarContainer);
               }
            }
         }
         displayObjectContainer.addChild(sAvatarContainer);
         sAvatarContainer.scaleX = sAvatarContainer.scaleY = scale;
         sAvatarContainer.x = containerX;
         sAvatarContainer.y = containerY;
      }
      
      private function activateAvatarCreator() : void
      {
         var avatarHolder:UIMovieClipRovio = null;
         var oldAvatarsItems:Array = null;
         var addedAvatar:Avatar = null;
         var avatarHolder2:UIMovieClipRovio = null;
         this.mActivated = true;
         var items:UIRepeaterRovio = mContainer.getItemByName("Repeater_Items") as UIRepeaterRovio;
         items.loadTabs(PopupsUIView.getRepeaterItemsDataXML(),AvatarEditorTabRepeaterButton);
         var tabs:UIRepeaterRovio = mContainer.getItemByName("Repeater_Tabs") as UIRepeaterRovio;
         tabs.loadTabs(PopupsUIView.getRepeaterTabDataXML(),AvatarEditorTabRepeaterButton);
         this.setWaitingForReplyLayer(false);
         if(sItemsAvailable == null)
         {
            return;
         }
         var userId:String = userProgress.userID;
         var avatarString:String = userProgress.avatarString;
         if(avatarString == null || avatarString == "")
         {
            this.mProfilePictureState = true;
         }
         var profile:FacebookProfilePicture = new FacebookProfilePicture(userId,false,FacebookProfilePicture.SQUARE);
         profile.x = 13;
         profile.y = 9;
         mContainer.getItemByName("SetFacebookProfileButton").mClip.addChild(profile);
         if(sFirstTimeInit)
         {
            avatarHolder = mContainer.getItemByName("AvatarHolderClip") as UIMovieClipRovio;
            this.moveAvatarContainerTo(avatarHolder.mClip);
            if(avatarString != "" && avatarString != null)
            {
               oldAvatarsItems = ServerIdParser.parseShortHandAvatarToArray(avatarString);
               addedAvatar = sAvatarContainer.createAvatarFromArray(oldAvatarsItems);
               AvatarCreatorModel.instance.avatar = addedAvatar;
            }
            else
            {
               this.itemSelected(AvatarCreatorModel.STARTUP_CHARACTER);
               sAvatarContainer.setBackgroundImage("backgrounds1");
            }
            this.avatarCreatorInitializeRepeaters();
            sFirstTimeInit = false;
         }
         else
         {
            avatarHolder2 = mContainer.getItemByName("AvatarHolderClip") as UIMovieClipRovio;
            this.moveAvatarContainerTo(avatarHolder2.mClip);
            sAvatarContainer.reselectCurrentAvatar();
            sAvatarContainer.mCurrentAvatar.applyAllCurrentItems();
            this.avatarCreatorInitializeRepeaters();
         }
         this.openLastTab(tabs);
         this.updateMenuToMatchEquippedItems();
      }
      
      private function openLastTab(tabs:UIRepeaterRovio) : void
      {
         var tabIndex:int = 0;
         var categoryName:String = null;
         if(this.mTabToShow)
         {
            tabIndex = PopupsUIView.matchTabNameWithCategoryName(this.mTabToShow);
            if(tabIndex != -1)
            {
               categoryName = this.mTabToShow.substr("CATEGORY".length);
               mContainer.setText(categoryName,"Textfield_CategoryTitle");
               tabs.setVisibleTab("Repeater_Items_Tab_" + tabIndex);
               if(AvatarCreatorModel.instance.items.categories.length > 0)
               {
                  tabs.getButtonGroupByName("Repeater_Tabs_Tab_0").buttonSelected(AvatarCreatorModel.instance.items.categories[tabIndex].name as String);
               }
            }
            this.mTabToShow = null;
         }
      }
      
      override protected function onUIInteraction(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         var component2:UIComponentRovio = null;
         var tabIndex:int = 0;
         var categoryName:String = null;
         var itemsRepeater:UIRepeaterRovio = null;
         var repeaterButton:UIRepeaterButtonRovio = null;
         var index:Number = NaN;
         var overString:String = null;
         var overTabIndex:int = 0;
         var repeaterIndex:int = 0;
         var overRepeaterButton:AvatarEditorTabRepeaterButton = null;
         var outString:String = null;
         var outTabIndex:int = 0;
         var outRepeaterButton:AvatarEditorTabRepeaterButton = null;
         var buyString:String = null;
         var totalPrice:int = 0;
         var items:Array = null;
         var shopItem:ShopItem = null;
         var buyItem:BuyItemWithVC = null;
         var avatarData:String = null;
         var itemi:Item = null;
         var popup:CoinShopPopup = null;
         var item:String = null;
         var itemName:String = null;
         if(component is UIComponentRovio)
         {
            component2 = component as UIComponentRovio;
            if(eventName.length > 1)
            {
               if(component2.mParentContainer is UIRepeaterTabRovio)
               {
                  if(((component2.mParentContainer as UIRepeaterTabRovio).mParentContainer as UIRepeaterRovio).upperCaseName == "REPEATER_TABS")
                  {
                     tabIndex = PopupsUIView.matchTabNameWithCategoryName(eventName);
                     if(tabIndex != -1)
                     {
                        SoundEngine.playSound("Shop_Selection",SoundEngine.UI_CHANNEL,0,0.7);
                        categoryName = eventName.substr("CATEGORY".length);
                        itemsRepeater = mContainer.getItemByName("Repeater_Items") as UIRepeaterRovio;
                        itemsRepeater.setVisibleTab("Repeater_Items_Tab_" + tabIndex);
                        for each(repeaterButton in (component2.mParentContainer as UIRepeaterTabRovio).mItems)
                        {
                           (repeaterButton as AvatarEditorTabRepeaterButton).iconOut();
                        }
                        (component as AvatarEditorTabRepeaterButton).iconOver();
                        this.updateEditorState();
                     }
                  }
                  else if(((component2.mParentContainer as UIRepeaterTabRovio).mParentContainer as UIRepeaterRovio).upperCaseName == "REPEATER_ITEMS")
                  {
                     SoundEngine.playSound("Menu_Select",SoundEngine.UI_CHANNEL);
                     index = eventName.indexOf("REMOVE_");
                     if(index == -1)
                     {
                        this.itemSelected(eventName);
                     }
                     else if(index == 0)
                     {
                        this.removeItem(eventName.substring("REMOVE_".length));
                     }
                     this.updateMenuToMatchEquippedItems();
                  }
               }
            }
         }
         if(eventName.toUpperCase().indexOf("OVER") > -1)
         {
            overString = eventName.toUpperCase().substr(4);
            overTabIndex = PopupsUIView.matchTabNameWithCategoryName(overString);
            repeaterIndex = 0;
            for each(overRepeaterButton in ((component as UIComponentRovio).mParentContainer as UIRepeaterTabRovio).mItems)
            {
               if(repeaterIndex != overTabIndex)
               {
                  (overRepeaterButton as AvatarEditorTabRepeaterButton).iconOut();
               }
               else
               {
                  (overRepeaterButton as AvatarEditorTabRepeaterButton).iconOver();
               }
               repeaterIndex++;
            }
         }
         if(eventName.toUpperCase().indexOf("OUT") > -1)
         {
            outString = eventName.toUpperCase().substr(3);
            outTabIndex = PopupsUIView.matchTabNameWithCategoryName(outString);
            repeaterIndex = 0;
            for each(outRepeaterButton in ((component as UIComponentRovio).mParentContainer as UIRepeaterTabRovio).mItems)
            {
               if(repeaterIndex == outTabIndex)
               {
                  (outRepeaterButton as AvatarEditorTabRepeaterButton).iconOut();
               }
               repeaterIndex++;
            }
         }
         switch(eventName)
         {
            case "UNEQUIP_ALL":
               SoundEngine.playSound("Shop_Selection",SoundEngine.UI_CHANNEL,0,0.7);
               AvatarCreatorModel.instance.avatar.revertToDefault();
               this.updateMenuToMatchEquippedItems();
               this.updateEditorState();
               break;
            case "RANDOMIZE_AVATAR":
               SoundEngine.playSound("Shop_Selection",SoundEngine.UI_CHANNEL,0,0.7);
               AvatarCreatorModel.instance.avatar.randomize();
               this.updateMenuToMatchEquippedItems();
               break;
            case "SHARE_WALL_AVATAR":
               this.uploadAvatarToWall();
               break;
            case "CANCEL_SHARE":
               mContainer.getItemByName("AvatarSharing").setVisibility(false);
               break;
            case "SHARE_AVATAR":
               SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
               this.setWaitingForReplyLayer(true);
               this.askUploadPermission();
               break;
            case "BUY_THESE":
               SoundEngine.playSound("Shop_Buy",SoundEngine.UI_CHANNEL);
               buyString = ServerIdParser.parseToServerIdFormat(this.mItemsToBuy);
               totalPrice = 0;
               for each(itemi in this.mItemsToBuy)
               {
                  totalPrice += getItemPrice(itemi.mId);
               }
               if(totalPrice > dataModel.virtualCurrencyModel.totalCoins)
               {
                  this.mActivated = false;
                  popup = new CoinShopPopup(PopupLayerIndexFacebook.NORMAL,PopupPriorityType.TOP,CoinShopPopup.NOT_ENOUGH_COINS);
                  popup.addEventListener(PopupEvent.CLOSE,this.onCoinShopClosed);
                  AngryBirdsBase.singleton.popupManager.openPopup(popup);
                  return;
               }
               this.setWaitingForReplyLayer(true);
               this.mItemsBought = [];
               items = buyString.split("-");
               for each(item in items)
               {
                  itemName = this.getAvatarEquippedItemName(item);
                  FacebookGoogleAnalyticsTracker.trackAvatarProductBuySelected(itemName);
                  this.mItemsBought.push(item);
               }
               shopItem = new ShopItem(buyString,[]);
               buyItem = new BuyItemWithVC(shopItem,new PricePoint(1,0,totalPrice),ID);
               buyItem.addEventListener(BuyItemEvent.ITEM_BOUGHT,this.purchasedAvatarItems);
               break;
            case "SET_AVATAR":
               SoundEngine.playSound("Shop_Selection",SoundEngine.UI_CHANNEL,0,0.7);
               this.mProfilePictureState = false;
               this.setWaitingForReplyLayer(true);
               avatarData = AvatarCreatorModel.instance.avatar.getAvatarData();
               this.saveAvatarCall(avatarData);
               this.updateEditorState();
               this.setWaitingForReplyLayer(true);
               this.askUploadPermission();
               break;
            case "SET_PROFILE":
               SoundEngine.playSound("Shop_Selection",SoundEngine.UI_CHANNEL,0,0.7);
               this.mProfilePictureState = true;
               this.setWaitingForReplyLayer(true);
               this.saveAvatarCall("");
               this.updateEditorState();
               break;
            case "CLOSE_AVATAR":
               close();
               break;
            case "BRANDED_SHOP":
               this.hide();
               break;
            case "EASTER_EGG_2":
               mContainer.getItemByName("ButtonEasterEgg2").setVisibility(false);
               userProgress.setEggUnlocked("1000-2");
               break;
            case "SCROLL_RIGHT":
               SoundEngine.playSound("Shop_Selection",SoundEngine.UI_CHANNEL,0,0.7);
               this.updateEditorState();
               break;
            case "SCROLL_LEFT":
               SoundEngine.playSound("Shop_Selection",SoundEngine.UI_CHANNEL,0,0.7);
               this.updateEditorState();
         }
      }
      
      protected function onCoinShopClosed(event:Event) : void
      {
      }
      
      private function getAvatarEquippedItemName(item:String) : String
      {
         var avtarItem:Object = null;
         for each(avtarItem in AvatarCreatorModel.instance.avatar.getEquippedItemsInObjects())
         {
            if(avtarItem.categorySID + avtarItem.sId == item)
            {
               return avtarItem.name as String;
            }
         }
         return "";
      }
      
      private function askUploadPermission() : void
      {
         FacebookGoogleAnalyticsTracker.trackAvatarShareClicked();
         AngryBirdsBase.singleton.exitFullScreen();
         ExternalInterfaceHandler.addCallback("permissionRequestComplete",this.permissionRequestComplete);
         ExternalInterfaceHandler.performCall("askForPublishStreamPermission");
      }
      
      private function permissionRequestComplete(success:String) : void
      {
         var titleNo:int = 0;
         var bigAvatar:AvatarRenderer = null;
         var imageSize:int = 0;
         var bmd:BitmapData = null;
         var mat:Matrix = null;
         var scale:Number = NaN;
         var window:UIComponentRovio = null;
         var i:int = 0;
         var postBitmap:Bitmap = null;
         var displayObject:DisplayObject = null;
         FacebookGoogleAnalyticsTracker.trackAvatarShareCompleted();
         ExternalInterfaceHandler.removeCallback("permissionRequestComplete",this.permissionRequestComplete);
         this.setWaitingForReplyLayer(false);
         if(success == "true")
         {
            mContainer.getItemByName("AvatarSharing").setVisibility(true);
            mContainer.getItemByName("ShareAvatarWindow").setVisibility(true);
            this.mShareCaptionInputTF = TextField(mContainer.getItemByName("ShareAvatarWindow").mClip.getChildByName("captionTextField"));
            this.mShareCaptionInputTF.maxChars = SHARE_MAX_CHAR_INPUT;
            this.mShareCaptionInputTF.text = WHATS_ON_YOUR_MIND;
            this.mShareCaptionInputTF.textColor = 6710886;
            if(!this.mShareCaptionInputTF.hasEventListener(MouseEvent.CLICK))
            {
               this.mShareCaptionInputTF.addEventListener(MouseEvent.CLICK,this.onTextClick);
            }
            titleNo = Math.random() * this.mAvatarTitles.length;
            (mContainer.getItemByName("ShareAvatarWindow_Title") as UITextFieldRovio).setText(this.mAvatarTitles[titleNo]);
            bigAvatar = new AvatarRenderer();
            bigAvatar.toggleReady();
            imageSize = 173;
            bmd = bigAvatar.render(AvatarCreatorModel.instance.avatar.getAvatarData(),null,imageSize);
            mat = new Matrix();
            scale = imageSize / 100 / 2;
            mat.scale(scale,scale);
            window = mContainer.getItemByName("ShareAvatarWindow");
            for(i = window.mClip.numChildren - 1; i > 0; i--)
            {
               displayObject = window.mClip.getChildAt(i);
               if(displayObject is Bitmap)
               {
                  displayObject.parent.removeChild(displayObject);
               }
            }
            postBitmap = new Bitmap(bmd,"auto",true);
            postBitmap.x = -5;
            postBitmap.y = 52;
            window.mClip.addChildAt(postBitmap,1);
         }
      }
      
      private function onTextClick(event:MouseEvent) : void
      {
         if(this.mShareCaptionInputTF.text == WHATS_ON_YOUR_MIND)
         {
            this.mShareCaptionInputTF.text = "";
            this.mShareCaptionInputTF.textColor = 16777215;
         }
      }
      
      private function uploadAvatarToWall() : void
      {
         mContainer.getItemByName("AvatarSharing").setVisibility(false);
         mContainer.getItemByName("ShareAvatarWindow").setVisibility(false);
         this.setWaitingForReplyLayer(true);
         var bigAvatar:AvatarRenderer = new AvatarRenderer();
         bigAvatar.toggleReady();
         var imageSize:int = 750;
         var bmd:BitmapData = bigAvatar.render(AvatarCreatorModel.instance.avatar.getAvatarData(),null,imageSize,false,null,null,0,false,0.1);
         var watermarkCls:Class = AssetCache.getAssetFromCache("WatermarkPlayOnFacebook");
         var watermark:MovieClip = new watermarkCls();
         var mat:Matrix = new Matrix();
         var scale:Number = imageSize / 100 / 2;
         mat.scale(scale,scale);
         var waterMarkXMargin:* = bmd.width - imageSize >> 1;
         var waterMarkYMargin:* = bmd.height - imageSize >> 1;
         mat.translate(waterMarkXMargin,bmd.height - waterMarkYMargin);
         bmd.draw(watermark,mat,null,null,null,true);
         var userId:String = userProgress.userID;
         var parameter:Object = new Object();
         parameter.name = this.mShareCaptionInputTF.text != WHATS_ON_YOUR_MIND ? this.mShareCaptionInputTF.text : "";
         FacebookImageUploaderFriends.uploadAsPNG(bmd,GraphAPICaller.sAccessToken,userId,this.wallUploadSuccess,this.wallUploadFail,parameter);
      }
      
      override protected function hide(useTransition:Boolean = false, waitForAnimationsToStop:Boolean = false) : void
      {
         this.removeWallet(this.mWallet);
         mContainer.getItemByName("ShareAvatarWindow").mClip.btnClose.removeEventListener(MouseEvent.CLICK,this.onCloseClick);
         super.hide(useTransition,waitForAnimationsToStop);
      }
      
      private function wallUploadSuccess(data:*) : void
      {
         this.setWaitingForReplyLayer(false);
      }
      
      private function wallUploadFail() : void
      {
         this.setWaitingForReplyLayer(false);
      }
      
      override protected function show(useFadeEffect:Boolean = true) : void
      {
         super.show(useFadeEffect);
         FacebookGoogleAnalyticsTracker.trackAvatarOpened();
         FacebookGoogleAnalyticsTracker.trackPageView(this);
         var savedAnim:UIMovieClipRovio = mContainer.getItemByName("AvatarSavedAnimation") as UIMovieClipRovio;
         savedAnim.setVisibility(false);
         this.addWallet(new Wallet(this,true,true,true));
         this.mWallet.walletClip.coinsAddButton.addEventListener(MouseEvent.CLICK,this.onAddCoinsClicked);
         mContainer.getItemByName("ShareAvatarWindow").mClip.btnClose.addEventListener(MouseEvent.CLICK,this.onCloseClick);
         AvatarCreatorModel.instance.hideAllStaticAvatars();
         if(sAvatarContainer.mCurrentAvatar == null)
         {
            sAvatarContainer.selectAvatar(AvatarCreatorModel.instance.createNewStartupAvatar());
         }
         if(!this.mActivated)
         {
            this.activateAvatarCreator();
         }
      }
      
      private function onCloseClick(e:MouseEvent) : void
      {
         mContainer.getItemByName("AvatarSharing").setVisibility(false);
      }
      
      private function onAddCoinsClicked(e:MouseEvent) : void
      {
         this.mActivated = false;
      }
      
      private function changeVisibilityOfItemCategoryTabButtons(isVisible:Boolean) : void
      {
         var category:Category = null;
         var activeCategoryForItem:AvatarEditorTabRepeaterButton = null;
         for each(category in AvatarCreatorModel.instance.items.categories)
         {
            if(category.name.toUpperCase() != "CATEGORYBIRDS" && category.name.toUpperCase() != "CATEGORYBACKGROUNDS")
            {
               activeCategoryForItem = mContainer.getItemByName(category.name.toUpperCase()) as AvatarEditorTabRepeaterButton;
               activeCategoryForItem.setVisibility(isVisible);
            }
         }
      }
      
      private function changeVisibilityOfNoneAndRandomButtons(isVisible:Boolean) : void
      {
         mContainer.getItemByName("Button_Unequip").setVisibility(isVisible);
         mContainer.getItemByName("Button_Random").setVisibility(isVisible);
      }
      
      public function updateMenuToMatchEquippedItems() : void
      {
         var categoryName:String = null;
         var item:Item = null;
         var items:UIRepeaterRovio = mContainer.getItemByName("Repeater_Items") as UIRepeaterRovio;
         for(var i:Number = 0; i < AvatarCreatorModel.instance.items.categories.length; i++)
         {
            categoryName = AvatarCreatorModel.instance.items.categories[i].name;
            item = AvatarCreatorModel.instance.avatar.getEquippedItem(categoryName);
            if(item == null)
            {
               items.getButtonGroupByName("Repeater_Items_Tab_" + i).buttonSelected(categoryName);
            }
            else
            {
               items.getButtonGroupByName("Repeater_Items_Tab_" + i).buttonSelected(item.mId);
               if(categoryName.toUpperCase() == "CATEGORYBIRDS")
               {
                  if(item.mId.indexOf("GreenDay") > -1)
                  {
                     this.changeVisibilityOfItemCategoryTabButtons(false);
                     this.changeVisibilityOfNoneAndRandomButtons(false);
                  }
                  else
                  {
                     this.changeVisibilityOfItemCategoryTabButtons(true);
                     this.changeVisibilityOfNoneAndRandomButtons(true);
                  }
               }
            }
         }
         this.updateEditorState();
      }
      
      public function purchasedAvatarItems(e:Event = null) : void
      {
         var mBuyItem:BuyItemWithVC = null;
         var item:String = null;
         var itemName:String = null;
         var obj:Object = null;
         this.setWaitingForReplyLayer(false);
         if(e && e.currentTarget is BuyItemWithVC)
         {
            mBuyItem = e.currentTarget as BuyItemWithVC;
         }
         FacebookGoogleAnalyticsTracker.trackPageView(this,FacebookGoogleAnalyticsTracker.VIRTUAL_PAGE_VIEW_ID_THANK_YOU);
         var items:Array = new Array();
         for each(item in this.mItemsBought)
         {
            itemName = this.getAvatarEquippedItemName(item);
            FacebookGoogleAnalyticsTracker.trackAvatarProductBuyCompleted(itemName);
            obj = new Object();
            obj.sku = item;
            obj.name = itemName;
            obj.price = 0;
            obj.quantity = 1;
            items.push(obj);
         }
         FacebookGoogleAnalyticsTracker.trackTransactionItems(mBuyItem.orderId,SHOP_NAME,"1 x ",items);
         this.mItemsBought = [];
         if(e && e.currentTarget is BuyItemWithVC)
         {
            (e.currentTarget as BuyItemWithVC).removeEventListener(Event.COMPLETE,this.purchasedAvatarItems);
         }
         this.requestAvatarParts();
      }
      
      private function saveAvatarCall(avatarData:String) : void
      {
         this.mBeforeSavingAvatarString = this.mSavedAvatarString;
         this.mSavedAvatarString = avatarData;
         var urlReq:URLRequest = URLRequestFactory.getNonCachingURLRequest(sServerRoot + "/saveavatar/" + avatarData);
         urlReq.method = URLRequestMethod.POST;
         var urlLoader:URLLoader = new ABFLoader();
         urlLoader.addEventListener(Event.COMPLETE,this.onSaveComplete);
         urlLoader.addEventListener(IOErrorEvent.IO_ERROR,this.onSaveIOError);
         urlLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onSaveSecurityError);
         urlLoader.load(urlReq);
      }
      
      protected function onSaveSecurityError(event:SecurityErrorEvent) : void
      {
         var popup:IPopup = new WarningPopup(PopupLayerIndexFacebook.ALERT,PopupPriorityType.DEFAULT);
         AngryBirdsBase.singleton.popupManager.openPopup(popup);
      }
      
      private function onSaveComplete(e:Event) : void
      {
         var currentState:StateBase = null;
         var items:Array = null;
         var item:String = null;
         var savedAnim:UIMovieClipRovio = null;
         if(this.mSavedAvatarString != null)
         {
            userProgress.avatarString = this.mSavedAvatarString;
            CustomAvatarCache.addIntoCache(new AvatarVO(this.mSavedAvatarString,userProgress.userID),true,true);
            ProfilePicture.updateCurrentUser(this.mSavedAvatarString);
            currentState = AngryBirdsBase.singleton.getCurrentStateObject();
            if(currentState is StateTournamentResults)
            {
               (currentState as StateTournamentResults).refreshTournamentAvatar();
            }
            items = this.mSavedAvatarString.split("-");
            for each(item in items)
            {
               if(this.mBeforeSavingAvatarString)
               {
                  if(this.mBeforeSavingAvatarString.indexOf(item) == -1)
                  {
                     FacebookGoogleAnalyticsTracker.trackAvatarProductSet(item);
                  }
               }
               else
               {
                  FacebookGoogleAnalyticsTracker.trackAvatarProductSet(item);
               }
            }
         }
         if(this.mActivated)
         {
            this.setWaitingForReplyLayer(false);
            savedAnim = mContainer.getItemByName("AvatarSavedAnimation") as UIMovieClipRovio;
            savedAnim.setVisibility(true);
            savedAnim.mClip.gotoAndPlay(1);
            this.updateEditorState();
         }
      }
      
      private function onSaveIOError(e:IOErrorEvent) : void
      {
         var savedAnim:UIMovieClipRovio = null;
         if(this.mActivated)
         {
            this.setWaitingForReplyLayer(false);
            savedAnim = mContainer.getItemByName("AvatarSavedAnimation") as UIMovieClipRovio;
            savedAnim.setVisibility(true);
            savedAnim.mClip.gotoAndPlay(1);
         }
      }
      
      public function removeItem(itemCategory:String) : void
      {
         AvatarCreatorModel.instance.avatar.removeItem(itemCategory);
         this.updateEditorState();
      }
      
      public function itemSelected(itemId:String) : void
      {
         var nextBird:Avatar = null;
         var currentBG:Object = null;
         var oldItem:Item = null;
         var item:Item = AvatarCreatorModel.instance.items.getItem(itemId);
         var currentAvatar:Avatar = AvatarCreatorModel.instance.avatar;
         if(item)
         {
            if(item.mCategory.toUpperCase() == "CATEGORYBIRDS" && currentAvatar.getCharacter().mId != item.mId)
            {
               nextBird = AvatarCreatorModel.instance.createNewAvatar(item.mId);
               sAvatarContainer.selectAvatar(nextBird,110,174);
               nextBird.revertToDefault();
               nextBird.applyItemToAvatar(item);
               if(currentAvatar)
               {
                  for each(oldItem in currentAvatar.mItemsEquipped)
                  {
                     if(oldItem.category.toUpperCase() != "CATEGORYBIRDS")
                     {
                        if(oldItem.category.toUpperCase() == "CATEGORYBACKGROUNDS")
                        {
                           sAvatarContainer.setBackgroundImage(oldItem.mId);
                        }
                        nextBird.applyItemToAvatar(oldItem);
                     }
                  }
               }
               currentBG = nextBird.getEquippedItem("CATEGORYBACKGROUNDS");
               if(currentBG == null)
               {
                  nextBird.applyItemToAvatar(AvatarCreatorModel.instance.items.getItem("Backgrounds1"));
               }
            }
            else if(item.mCategory.toUpperCase() == "CATEGORYBACKGROUNDS")
            {
               sAvatarContainer.setBackgroundImage(item.mId);
               AvatarCreatorModel.instance.avatar.applyItemToAvatar(item);
            }
            else
            {
               AvatarCreatorModel.instance.avatar.applyItemToAvatar(item);
            }
         }
         else
         {
            Log.log("[Warning!] Trying to select item that dosen\'t exit. Item id:" + itemId);
         }
         this.updateEditorState();
      }
      
      private function updateEditorState() : void
      {
         var category:Category = null;
         var item:Item = null;
         var avatarStringArray:Array = null;
         var currentString:String = null;
         var currentStringAsArray:Array = null;
         var string:String = null;
         var categoryButton:AvatarEditorTabRepeaterButton = null;
         var activeCategoryItem:AvatarEditorTabRepeaterButton = null;
         var itemPrice:int = 0;
         var seenItems:Array = null;
         var clientStorage:ClientStorage = null;
         var repeaterButton:AvatarEditorTabRepeaterButton = null;
         var newItemFound:Boolean = false;
         var itemObject:Object = null;
         var leftArrow:UIButtonRovio = null;
         var rightArrow:UIButtonRovio = null;
         var leftArrowNewTag:UIMovieClipRovio = null;
         var rightArrowNewTag:UIMovieClipRovio = null;
         var leftArrowSaleTag:UIMovieClipRovio = null;
         var rightArrowSaleTag:UIMovieClipRovio = null;
         var showNewIconOnPreviousArrow:Boolean = false;
         var showNewIconOnNextArrow:Boolean = false;
         var showSaleIconOnPreviousArrow:Boolean = false;
         var showSaleIconOnNextArrow:Boolean = false;
         var i:int = 0;
         var avatarEditorButton:AvatarEditorTabRepeaterButton = null;
         var ia:Object = null;
         var totalPrice:int = 0;
         this.mChanged = false;
         var avatarString:String = userProgress.avatarString;
         if(avatarString != null && avatarString != "")
         {
            avatarStringArray = avatarString.split("-");
            currentString = AvatarCreatorModel.instance.avatar.getAvatarData();
            currentStringAsArray = currentString.split("-");
            if(avatarStringArray.length != currentStringAsArray.length)
            {
               this.mChanged = true;
            }
            for each(string in currentStringAsArray)
            {
               if(avatarString.indexOf(string) == -1)
               {
                  this.mChanged = true;
               }
            }
         }
         for each(category in AvatarCreatorModel.instance.items.categories)
         {
            categoryButton = mContainer.getItemByName(category.name.toUpperCase()) as AvatarEditorTabRepeaterButton;
            categoryButton.revertIcon();
         }
         this.mItemsToBuy = [];
         for each(item in AvatarCreatorModel.instance.avatar.mItemsEquipped)
         {
            activeCategoryItem = mContainer.getItemByName(item.category.toUpperCase()) as AvatarEditorTabRepeaterButton;
            itemPrice = getItemPrice(item.mId);
            activeCategoryItem.setItemAsIcon(item.mId,itemPrice);
            if(itemPrice > 0)
            {
               this.mItemsToBuy.push(item);
            }
            totalPrice += itemPrice;
         }
         mContainer.getItemByName("Button_Share").setVisibility(false);
         if(totalPrice > 0)
         {
            mContainer.getItemByName("BuyTheseButton").setVisibility(true);
            mContainer.getItemByName("Textfield_Price").setVisibility(true);
            mContainer.getItemByName("SetAvatarProfileButton").setVisibility(false);
         }
         else
         {
            mContainer.getItemByName("BuyTheseButton").setVisibility(false);
            mContainer.getItemByName("Textfield_Price").setVisibility(false);
            mContainer.getItemByName("SetAvatarProfileButton").setVisibility(true);
         }
         if(this.mProfilePictureState)
         {
            (mContainer.getItemByName("SetAvatarProfileButton") as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
            (mContainer.getItemByName("SetFacebookProfileButton") as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_DISABLED);
         }
         else if(totalPrice > 0)
         {
            (mContainer.getItemByName("SetAvatarProfileButton") as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
            (mContainer.getItemByName("SetFacebookProfileButton") as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            (mContainer.getItemByName("SetFacebookProfileButton") as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
            if(this.mChanged)
            {
               (mContainer.getItemByName("SetAvatarProfileButton") as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (mContainer.getItemByName("SetAvatarProfileButton") as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_DISABLED);
               mContainer.getItemByName("Button_Share").setVisibility(true);
            }
         }
         mContainer.setText(totalPrice + "","Textfield_Price");
         if(this.mButtonAvatarRender == null)
         {
            this.mButtonAvatarRender = new AvatarRenderer();
            this.mButtonAvatarRender.toggleReady();
         }
         var setAvatarProfileButton:UIButtonRovio = mContainer.getItemByName("SetAvatarProfileButton") as UIButtonRovio;
         while(setAvatarProfileButton.mClip.SetAvatarHolder.numChildren > 0)
         {
            setAvatarProfileButton.mClip.SetAvatarHolder.removeChildAt(0);
         }
         var currentAvatarString:String = AvatarCreatorModel.instance.avatar.getAvatarData();
         var avBmp:Bitmap = new Bitmap(this.mButtonAvatarRender.render(currentAvatarString,null));
         avBmp.x = -8;
         avBmp.y = -12;
         setAvatarProfileButton.mClip.SetAvatarHolder.addChild(avBmp);
         var itemsRepeater:UIRepeaterRovio = mContainer.getItemByName("Repeater_Items") as UIRepeaterRovio;
         var tab:UIRepeaterTabRovio = mContainer.getItemByName(itemsRepeater.mVisibleTabName) as UIRepeaterTabRovio;
         if(tab)
         {
            mContainer.setText("Page " + (tab.mCurrentPage + 1).toString() + "/" + tab.mTotalPageCount,"Textfield_PageNumber");
            if(tab.mTotalPageCount == 1)
            {
               mContainer.getItemByName("Textfield_PageNumber").setVisibility(false);
               mContainer.getItemByName("Button_Scroll1").setVisibility(false);
               mContainer.getItemByName("Button_Scroll2").setVisibility(false);
            }
            else
            {
               mContainer.getItemByName("Textfield_PageNumber").setVisibility(true);
               leftArrow = mContainer.getItemByName("Button_Scroll1") as UIButtonRovio;
               rightArrow = mContainer.getItemByName("Button_Scroll2") as UIButtonRovio;
               leftArrowNewTag = mContainer.getItemByName("NewTag_left") as UIMovieClipRovio;
               rightArrowNewTag = mContainer.getItemByName("NewTag_right") as UIMovieClipRovio;
               leftArrowSaleTag = mContainer.getItemByName("SaleTag_left") as UIMovieClipRovio;
               rightArrowSaleTag = mContainer.getItemByName("SaleTag_right") as UIMovieClipRovio;
               leftArrow.setVisibility(true);
               rightArrow.setVisibility(true);
               showNewIconOnPreviousArrow = false;
               showNewIconOnNextArrow = false;
               showSaleIconOnPreviousArrow = false;
               showSaleIconOnNextArrow = false;
               for(i = 0; i < tab.mItems.length; i++)
               {
                  if(this.doesItemHaveNewTag(tab.mItems[i].name))
                  {
                     if(i < tab.mCurrentPage * tab.mItemPerPage)
                     {
                        showNewIconOnPreviousArrow = true;
                     }
                     else if(i > tab.mCurrentPage * tab.mItemPerPage + tab.mItemPerPage - 1)
                     {
                        showNewIconOnNextArrow = true;
                     }
                  }
                  if(this.doesItemHaveSaleTag(tab.mItems[i].name))
                  {
                     if(i < tab.mCurrentPage * tab.mItemPerPage)
                     {
                        showSaleIconOnPreviousArrow = true;
                     }
                     else if(i > tab.mCurrentPage * tab.mItemPerPage + tab.mItemPerPage - 1)
                     {
                        showSaleIconOnNextArrow = true;
                     }
                  }
               }
               leftArrowNewTag.visible = showNewIconOnPreviousArrow;
               rightArrowNewTag.visible = showNewIconOnNextArrow;
               leftArrowSaleTag.visible = showSaleIconOnPreviousArrow;
               rightArrowSaleTag.visible = showSaleIconOnNextArrow;
            }
            seenItems = new Array();
            clientStorage = DataModelFriends(AngryBirdsBase.singleton.dataModel).clientStorage;
            for each(repeaterButton in tab.mItems)
            {
               avatarEditorButton = repeaterButton as AvatarEditorTabRepeaterButton;
               if(avatarEditorButton.visible)
               {
                  for each(ia in sItemsAvailable)
                  {
                     if(ia.isNew && ia.itemId == avatarEditorButton.name)
                     {
                        ia.isNew = false;
                        if(clientStorage.hasItemBeenSeen(ia.itemId))
                        {
                           seenItems.push(ia.itemId);
                        }
                     }
                  }
               }
            }
            clientStorage.storeData(ClientStorage.SEEN_ITEMS_STORAGE_NAME,seenItems);
            newItemFound = false;
            for each(itemObject in sItemsAvailable)
            {
               if(itemObject.isNew == true && !itemObject.available)
               {
                  newItemFound = true;
                  break;
               }
            }
            DataModelFriends(AngryBirdsBase.singleton.dataModel).hasAvatarShopNewItems = newItemFound;
         }
      }
      
      private function doesItemHaveNewTag(itemId:String) : Boolean
      {
         for(var i:int = 0; i < this.mItemsWithNewTag.length; i++)
         {
            if(this.mItemsWithNewTag[i] == itemId)
            {
               return true;
            }
         }
         return false;
      }
      
      private function doesItemHaveSaleTag(itemId:String) : Boolean
      {
         for(var i:int = 0; i < this.mItemsWithSaleTag.length; i++)
         {
            if(this.mItemsWithSaleTag[i] == itemId)
            {
               return true;
            }
         }
         return false;
      }
      
      public function getCategoryName() : String
      {
         return FacebookGoogleAnalyticsTracker.VIRTUAL_PAGE_VIEW_CATEGORY_SHOP;
      }
      
      public function getIdentifier() : String
      {
         return FacebookGoogleAnalyticsTracker.VIRTUAL_PAGE_VIEW_ID_AVATAR;
      }
      
      public function getName() : String
      {
         return this.getCategoryName() + "-" + this.getIdentifier();
      }
      
      private function setWaitingForReplyLayer(value:Boolean) : void
      {
         if(mContainer)
         {
            mContainer.getItemByName("WaitingForReply").setVisibility(value);
         }
         if(this.mWallet)
         {
            this.mWallet.enableCoinsButton(!value);
         }
      }
      
      override public function dispose() : void
      {
         this.mActivated = false;
         if(this.mShareCaptionInputTF)
         {
            this.mShareCaptionInputTF.removeEventListener(MouseEvent.CLICK,this.onTextClick);
         }
         super.dispose();
      }
   }
}
