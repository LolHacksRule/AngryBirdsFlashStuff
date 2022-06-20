package com.angrybirds.shoppopup
{
   import com.angrybirds.data.DataModelFriends;
   import com.angrybirds.data.ItemsInventory;
   import com.angrybirds.powerups.PowerupType;
   import com.angrybirds.shoppopup.events.ShopTabEvent;
   import com.rovio.assets.AssetCache;
   import com.rovio.utils.AddCommasToAmount;
   import com.rovio.utils.AmountToFourCharacterString;
   import data.user.FacebookUserProgress;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   
   public class ShopTab extends EventDispatcher
   {
      
      public static var MULTIPLIER_STRING:String = "x ";
      
      private static const SALE_TAG_OFFSET_X:int = -144;
      
      private static const SALE_TAG_OFFSET_Y:int = -99;
       
      
      protected var mIconAssetName:String;
      
      protected var mShopItem:ShopItem;
      
      protected var mShopContentAssetName:String;
      
      protected var mShopContentMovieClip:MovieClip;
      
      protected var mTabMovieClip:MovieClip;
      
      protected var mShopButtons:Array;
      
      protected var mCopyText:String;
      
      protected var mButtonsAmount:int;
      
      public function ShopTab(shopItem:ShopItem, iconAssetName:String, shopContentAssetName:String, tabMovieClip:MovieClip, copyText:String, buttonsAmount:int = 5)
      {
         super();
         this.mShopItem = shopItem;
         this.mIconAssetName = iconAssetName;
         this.mShopContentAssetName = shopContentAssetName;
         this.mTabMovieClip = tabMovieClip;
         this.mCopyText = copyText;
         this.mButtonsAmount = buttonsAmount;
         if(this.mTabMovieClip.active)
         {
            this.mTabMovieClip.active.visible = false;
         }
         this.initializeContent();
         if(shopItem.id == PowerupType.sPowerupBundle.identifier)
         {
            this.mTabMovieClip.tagForNumberOfPowerups.visible = shopItem.id != PowerupType.sPowerupBundle.identifier;
         }
      }
      
      protected static function get dataModel() : DataModelFriends
      {
         return AngryBirdsBase.singleton.dataModel as DataModelFriends;
      }
      
      private function onGoldenEggClick(e:MouseEvent) : void
      {
         this.shopContent.easterEgg1Button.visible = false;
         (dataModel.userProgress as FacebookUserProgress).setEggUnlocked("1000-1");
      }
      
      private function checkGoldenEgg() : void
      {
         if(!(dataModel.userProgress as FacebookUserProgress).isEggUnlocked("1000-1"))
         {
            this.shopContent.easterEgg1Button.visible = true;
            this.shopContent.easterEgg1Button.addEventListener(MouseEvent.CLICK,this.onGoldenEggClick);
         }
         else
         {
            this.shopContent.easterEgg1Button.visible = false;
         }
      }
      
      protected function initializeContent() : void
      {
         if(this.shopItem.id == PowerupType.POWERUP_BUNDLE_ID)
         {
            this.checkGoldenEgg();
         }
         this.addMouseListeners();
         this.onOut();
         this.addIcon();
         this.refreshItemCount();
         this.createButtons();
      }
      
      protected function addIcon() : void
      {
         this.mTabMovieClip.iconContainer.addChild(this.icon);
         this.mTabMovieClip.buttonMode = true;
         this.mTabMovieClip.mouseChildren = false;
         if(this.mTabMovieClip.infinity)
         {
            this.mTabMovieClip.infinity.visible = false;
         }
      }
      
      protected function createButtons() : void
      {
         var buttonNumber:int = 0;
         var priceText:TextField = null;
         var amountText:TextField = null;
         var iconMC:MovieClip = null;
         var buyButton:SimpleButton = null;
         var saleTagAsset:Class = null;
         var saleTagMovieClip:MovieClip = null;
         var oldPriceTagAsset:Class = null;
         var oldPriceTagMovieClip:MovieClip = null;
         var tagPowerupFreeQuantity:Class = null;
         var mTagPowerupFreeQuantity:MovieClip = null;
         this.mShopButtons = [];
         for(var i:int = 0; i < this.mButtonsAmount; i++)
         {
            buttonNumber = i + 1;
            priceText = this.shopContent["price" + buttonNumber];
            amountText = this.shopContent["amount" + buttonNumber];
            iconMC = this.shopContent["icon" + buttonNumber];
            priceText.text = AddCommasToAmount.addCommasToAmount(this.mShopItem.getPricePoint(i).price);
            amountText.text = MULTIPLIER_STRING + AddCommasToAmount.addCommasToAmount(this.mShopItem.getPricePoint(i).totalQuantity);
            priceText.mouseEnabled = amountText.mouseEnabled = iconMC.mouseEnabled = false;
            iconMC.mouseChildren = false;
            buyButton = this.shopContent["buy" + buttonNumber];
            buyButton.addEventListener(MouseEvent.CLICK,this.onContentClick);
            this.mShopButtons.push(buyButton);
            if(this.mShopItem.getPricePoint(i).campaignPrice > 0)
            {
               saleTagAsset = AssetCache.getAssetFromCache("Tag_Sale_percent");
               saleTagMovieClip = new saleTagAsset();
               saleTagMovieClip.x = buyButton.x + SALE_TAG_OFFSET_X;
               saleTagMovieClip.y = buyButton.y + SALE_TAG_OFFSET_Y;
               (saleTagMovieClip.getChildByName("Sale_Percentage") as TextField).text = "-" + this.mShopItem.getPricePoint(i).campaignSalePercentage + "%";
               this.shopContent.addChild(saleTagMovieClip);
               priceText.text = AddCommasToAmount.addCommasToAmount(this.mShopItem.getPricePoint(i).campaignPrice);
               oldPriceTagAsset = AssetCache.getAssetFromCache("Tag_Sale_OldPrice");
               oldPriceTagMovieClip = new oldPriceTagAsset();
               oldPriceTagMovieClip.x = buyButton.x + buyButton.width * 0.5 - oldPriceTagMovieClip.width - 25;
               oldPriceTagMovieClip.y = buyButton.y + buyButton.height * 0.5 - oldPriceTagMovieClip.height - 45;
               (oldPriceTagMovieClip.getChildByName("former_cost") as TextField).text = AddCommasToAmount.addCommasToAmount(this.mShopItem.getPricePoint(i).price);
               this.shopContent.addChild(oldPriceTagMovieClip);
            }
            else if(this.mShopItem.getPricePoint(i).freeQuantity > 0)
            {
               tagPowerupFreeQuantity = AssetCache.getAssetFromCache("Tag_Powerup_Free_Quantity");
               mTagPowerupFreeQuantity = new tagPowerupFreeQuantity();
               mTagPowerupFreeQuantity.amount.text = this.mShopItem.getPricePoint(i).freeQuantity;
               mTagPowerupFreeQuantity.x = buyButton.x + buyButton.width * 0.5 - mTagPowerupFreeQuantity.width * 0.8;
               mTagPowerupFreeQuantity.y = buyButton.y - buyButton.height * 0.5 - mTagPowerupFreeQuantity.height * 0.25;
               mTagPowerupFreeQuantity.mouseEnabled = false;
               mTagPowerupFreeQuantity.mouseChildren = false;
               this.shopContent.addChild(mTagPowerupFreeQuantity);
            }
         }
      }
      
      protected function onContentClick(e:MouseEvent) : void
      {
         var buttonIndex:int = 0;
         var compareBuyButton:SimpleButton = null;
         var realX:Number = NaN;
         var realY:Number = NaN;
         var shopType:String = null;
         var i:int = 0;
         for each(compareBuyButton in this.mShopButtons)
         {
            if(compareBuyButton == e.currentTarget)
            {
               buttonIndex = i;
               break;
            }
            i++;
         }
         realX = compareBuyButton.x + compareBuyButton.width * 0.5;
         realY = compareBuyButton.y - compareBuyButton.height * 0.5;
         shopType = TabbedShopPopup.SHOP_ID_GENERAL;
         if(this is BrandedShopTab)
         {
            shopType = TabbedShopPopup.SHOP_ID_SPECIAL;
         }
         else if(this is SlingshotShopTab)
         {
            shopType = TabbedShopPopup.SHOP_ID_SLINGSHOT;
         }
         dispatchEvent(new ShopTabEvent(ShopTabEvent.ITEM_BUY,shopType,false,false,this.mShopItem,this.mShopItem.getPricePoint(buttonIndex),new Point(realX,realY)));
      }
      
      public function refreshItemCount() : void
      {
         var powerupCount:int = ItemsInventory.instance.getCountForPowerup(this.shopItem.id,false);
         this.mTabMovieClip.tagForNumberOfPowerups.visible = this.shopItem.id != PowerupType.sPowerupBundle.identifier;
         this.mTabMovieClip.tagForNumberOfPowerups.numberOfPowerups.text = AmountToFourCharacterString.amountToString(powerupCount);
      }
      
      protected function addMouseListeners() : void
      {
         this.mTabMovieClip.addEventListener(MouseEvent.CLICK,this.onClick);
         this.mTabMovieClip.addEventListener(MouseEvent.ROLL_OVER,this.onOver);
         this.mTabMovieClip.addEventListener(MouseEvent.ROLL_OUT,this.onOut);
      }
      
      protected function removeMouseListeners() : void
      {
         this.mTabMovieClip.removeEventListener(MouseEvent.CLICK,this.onClick);
         this.mTabMovieClip.removeEventListener(MouseEvent.ROLL_OVER,this.onOver);
         this.mTabMovieClip.removeEventListener(MouseEvent.ROLL_OUT,this.onOut);
      }
      
      protected function onClick(e:MouseEvent) : void
      {
         dispatchEvent(new ShopTabEvent(ShopTabEvent.TAB_CLICKED,TabbedShopPopup.SHOP_ID_GENERAL));
      }
      
      protected function onOver(e:MouseEvent) : void
      {
         this.mTabMovieClip.gotoAndStop("MouseOver");
      }
      
      protected function onOut(e:MouseEvent = null) : void
      {
         this.mTabMovieClip.gotoAndStop("Normal");
      }
      
      public function unselect() : void
      {
         this.mTabMovieClip.gotoAndStop("Normal");
         this.addMouseListeners();
      }
      
      public function select() : void
      {
         this.mTabMovieClip.gotoAndStop("Selected");
         this.removeMouseListeners();
      }
      
      public function get shopItem() : ShopItem
      {
         return this.mShopItem;
      }
      
      public function get shopContent() : MovieClip
      {
         if(this.mShopContentMovieClip)
         {
            return this.mShopContentMovieClip;
         }
         var cls:Class = AssetCache.getAssetFromCache(this.mShopContentAssetName);
         this.mShopContentMovieClip = new cls();
         return this.mShopContentMovieClip;
      }
      
      private function get icon() : MovieClip
      {
         var cls:Class = AssetCache.getAssetFromCache(this.mIconAssetName);
         return new cls();
      }
      
      public function dispose() : void
      {
      }
   }
}
