package com.angrybirds.shoppopup
{
   import com.angrybirds.data.ItemsInventory;
   import com.rovio.assets.AssetCache;
   import com.rovio.utils.AddCommasToAmount;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class SlingshotShopTab extends ShopTab
   {
      
      private static const SALE_TAG_OFFSET_X:int = -90;
      
      private static const SALE_TAG_OFFSET_Y:int = 175;
       
      
      private var mOwned:Boolean = false;
      
      private var mTitle:String = "";
      
      public function SlingshotShopTab(shopItem:ShopItem, iconAssetName:String, shopContentAssetName:String, tabMovieClip:MovieClip, copyText:String, title:String, buttonsAmount:int = 5, owned:Boolean = false)
      {
         this.mOwned = owned;
         this.mTitle = title;
         super(shopItem,iconAssetName,shopContentAssetName,tabMovieClip,copyText,buttonsAmount);
         mTabMovieClip.owned.visible = this.mOwned;
      }
      
      override public function refreshItemCount() : void
      {
         var powerupCount:int = ItemsInventory.instance.getCountForPowerup(shopItem.id);
         if(powerupCount >= 1)
         {
            if(!this.mOwned)
            {
               this.mOwned = true;
            }
            mTabMovieClip.owned.visible = this.mOwned;
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
         var description:TextField = null;
         var title:TextField = null;
         var owned:MovieClip = null;
         var payButton:MovieClip = null;
         var oldPriceMC:MovieClip = null;
         var currentPrice:Number = NaN;
         var ivcIcon:MovieClip = null;
         var buyButton:SimpleButton = null;
         var saleTagAsset:Class = null;
         var saleTagMovieClip:MovieClip = null;
         var campaignPercentage:int = 0;
         mShopButtons = [];
         for(var i:int = 0; i < mButtonsAmount; i++)
         {
            buttonNumber = i + 1;
            priceText = shopContent["price" + buttonNumber];
            amountText = shopContent["amount" + buttonNumber];
            freeText = shopContent["free" + buttonNumber];
            iconMC = shopContent["icon" + buttonNumber];
            description = shopContent["description"];
            title = shopContent["title"];
            owned = shopContent["owned"];
            payButton = shopContent["payButton"];
            oldPriceMC = shopContent["oldPrice"];
            payButton.gotoAndStop(1);
            owned.visible = this.mOwned;
            title.text = this.mTitle;
            description.text = mCopyText;
            if(mShopItem.isOnSale)
            {
               currentPrice = mShopItem.getPricePoint(i).campaignPrice;
               oldPriceMC.former_cost.text = "" + mShopItem.getPricePoint(i).price;
               oldPriceMC.visible = true;
            }
            else
            {
               currentPrice = mShopItem.getPricePoint(i).price;
               oldPriceMC.visible = false;
            }
            priceText.text = ShopTab.MULTIPLIER_STRING + AddCommasToAmount.addCommasToAmount(currentPrice);
            ivcIcon = shopContent["MovieClip_Icon_VirtualCurrency"];
            if(ivcIcon && mShopItem.currencyID != "IVC")
            {
               ivcIcon.visible = false;
               priceText.text = dataModel.currencyModel.getPriceTag(currentPrice,true,"",mShopItem.currencyID);
            }
            else
            {
               ivcIcon.visible = !this.mOwned;
            }
            priceText.visible = payButton.visible = !this.mOwned;
            priceText.mouseEnabled = iconMC.mouseEnabled = ivcIcon.mouseEnabled = description.mouseEnabled = this.mOwned;
            iconMC.mouseChildren = false;
            buyButton = shopContent["buy" + buttonNumber];
            buyButton.mouseEnabled = false;
            if(!this.mOwned)
            {
               payButton.addEventListener(MouseEvent.CLICK,onContentClick,false,0,true);
               payButton.addEventListener(MouseEvent.MOUSE_OVER,this.onPayButtonMouseOver,false,0,true);
               payButton.addEventListener(MouseEvent.MOUSE_DOWN,this.onPayButtonMouseDown,false,0,true);
               payButton.addEventListener(MouseEvent.MOUSE_UP,this.onPayButtonMouseUp,false,0,true);
               payButton.addEventListener(MouseEvent.MOUSE_OUT,this.onPayButtonMouseOut,false,0,true);
            }
            else
            {
               oldPriceMC.visible = false;
            }
            mShopButtons.push(buyButton);
            if(!this.mOwned && mShopItem.isOnSale)
            {
               saleTagAsset = AssetCache.getAssetFromCache("Tag_Sale_30percent");
               saleTagMovieClip = new saleTagAsset();
               campaignPercentage = mShopItem.getPricePoint(i).campaignSalePercentage;
               (saleTagMovieClip.getChildByName("Percentage") as TextField).text = "-" + campaignPercentage + "%";
               saleTagMovieClip.name = "Tag_Sale_30percent";
               saleTagMovieClip.x = SALE_TAG_OFFSET_X;
               saleTagMovieClip.y = SALE_TAG_OFFSET_Y;
               shopContent.addChild(saleTagMovieClip);
            }
            else
            {
               saleTagMovieClip = shopContent.getChildByName("Tag_Sale_30percent") as MovieClip;
               if(saleTagMovieClip && saleTagMovieClip.parent)
               {
                  saleTagMovieClip.parent.removeChild(saleTagMovieClip);
               }
            }
         }
      }
      
      public function isOwned() : Boolean
      {
         return this.mOwned;
      }
      
      private function onPayButtonMouseOver(e:MouseEvent) : void
      {
         (e.target as MovieClip).gotoAndStop(2);
      }
      
      private function onPayButtonMouseDown(e:MouseEvent) : void
      {
         (e.target as MovieClip).gotoAndStop(3);
      }
      
      private function onPayButtonMouseUp(e:MouseEvent) : void
      {
         (e.target as MovieClip).gotoAndStop(2);
      }
      
      private function onPayButtonMouseOut(e:MouseEvent) : void
      {
         (e.target as MovieClip).gotoAndStop(1);
      }
   }
}
