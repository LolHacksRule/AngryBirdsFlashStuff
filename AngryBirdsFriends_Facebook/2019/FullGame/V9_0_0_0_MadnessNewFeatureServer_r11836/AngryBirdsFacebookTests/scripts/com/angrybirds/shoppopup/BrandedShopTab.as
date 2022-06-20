package com.angrybirds.shoppopup
{
   import com.angrybirds.data.ItemsInventory;
   import com.angrybirds.powerups.PowerupDefinition;
   import com.angrybirds.powerups.PowerupType;
   import com.angrybirds.tournament.TournamentModel;
   import com.rovio.utils.AddCommasToAmount;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class BrandedShopTab extends ShopTab
   {
      
      private static const FONT_SIZE:int = 12;
       
      
      private var mOwned:Boolean = false;
      
      private var mDate:Date = null;
      
      private var mLongTextFormat:TextFormat;
      
      private var mTitle:String = "";
      
      public function BrandedShopTab(shopItem:ShopItem, iconAssetName:String, shopContentAssetName:String, tabMovieClip:MovieClip, copyText:String, title:String, buttonsAmount:int = 5, owned:Boolean = false, validUntil:Date = null)
      {
         this.mOwned = owned;
         this.mTitle = title;
         super(shopItem,iconAssetName,shopContentAssetName,tabMovieClip,copyText,buttonsAmount);
         this.mDate = validUntil;
         mTabMovieClip.active.visible = this.mOwned;
         mTabMovieClip.infinity.visible = false;
         mTabMovieClip.tagForNumberOfPowerups.visible = false;
         this.mLongTextFormat = new TextFormat(null,FONT_SIZE,null);
         this.mLongTextFormat.align = "center";
         mTabMovieClip.tagForNumberOfPowerups.numberOfPowerups.y += 4;
         shopContent.addEventListener(Event.ENTER_FRAME,this.onUpdate);
      }
      
      protected function onUpdate(event:Event) : void
      {
         var now:Number = dataModel.serverSynchronizedTime.synchronizedTimeStamp;
         var secondsLeft:int = Math.round((this.mDate.time - now) / 1000);
         if(secondsLeft <= 0)
         {
            shopContent["activetime"].text = "Expired";
            if(this.mOwned)
            {
               this.mOwned = false;
               shopContent["active"].visible = true;
            }
         }
         else
         {
            shopContent["activetime"].text = TournamentModel.instance.getTimeLeftInShopAsPrettyString(secondsLeft)[0];
         }
         shopContent["activetime"].setTextFormat(this.mLongTextFormat);
      }
      
      override public function refreshItemCount() : void
      {
         var powerupCount:int = ItemsInventory.instance.getCountForPowerup(shopItem.id);
         var powerupDef:PowerupDefinition = PowerupType.getPowerupBySubscriptionName(shopItem.id);
         if(powerupCount >= 1 || ItemsInventory.instance.isSubscriptionIDActive(shopItem.id) || ItemsInventory.instance.bundleHandler.isBundleOwned(shopItem.id) || powerupDef && ItemsInventory.instance.getSubscriptionExpirationForPowerup(powerupDef.identifier))
         {
            this.mOwned = true;
            mTabMovieClip.active.visible = this.mOwned;
            this.createButtons();
         }
      }
      
      override protected function createButtons() : void
      {
         var buttonNumber:int = 0;
         var priceText:TextField = null;
         var amountText:TextField = null;
         var freeText:TextField = null;
         var iconMC:MovieClip = null;
         var owned:MovieClip = null;
         var description:TextField = null;
         var activetime:TextField = null;
         var payButton:MovieClip = null;
         var title:TextField = null;
         var ivcIcon:MovieClip = null;
         var buyButton:SimpleButton = null;
         mShopButtons = [];
         for(var i:int = 0; i < mButtonsAmount; i++)
         {
            buttonNumber = i + 1;
            priceText = shopContent["price" + buttonNumber];
            amountText = shopContent["amount" + buttonNumber];
            freeText = shopContent["free" + buttonNumber];
            iconMC = shopContent["icon" + buttonNumber];
            owned = shopContent["active"];
            description = shopContent["description"];
            activetime = shopContent["activetime"];
            payButton = shopContent["payButton"];
            payButton.gotoAndStop(1);
            title = shopContent["title"];
            owned.visible = this.mOwned;
            priceText.text = ShopTab.MULTIPLIER_STRING + AddCommasToAmount.addCommasToAmount(mShopItem.getPricePoint(i).price);
            activetime.visible = true;
            title.text = this.mTitle;
            description.text = mCopyText;
            ivcIcon = shopContent["MovieClip_Icon_VirtualCurrency"];
            if(ivcIcon && (mShopItem.currencyID != "IVC" && mShopItem.currencyID != ""))
            {
               ivcIcon.visible = false;
               priceText.text = dataModel.currencyModel.getPriceTag(mShopItem.getPricePoint(i).price,true,"",mShopItem.currencyID);
            }
            else if(ivcIcon)
            {
               ivcIcon.visible = !this.mOwned;
            }
            priceText.visible = payButton.visible = !this.mOwned;
            priceText.mouseEnabled = iconMC.mouseEnabled = ivcIcon.mouseEnabled = description.mouseEnabled = payButton.mouseEnabled = this.mOwned;
            iconMC.mouseChildren = false;
            buyButton = shopContent["buy" + buttonNumber];
            if(!this.mOwned)
            {
               buyButton.addEventListener(MouseEvent.CLICK,onContentClick);
            }
            buyButton.mouseEnabled = !this.mOwned;
            mShopButtons.push(buyButton);
         }
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(shopContent)
         {
            shopContent.removeEventListener(Event.ENTER_FRAME,this.onUpdate);
         }
      }
   }
}
