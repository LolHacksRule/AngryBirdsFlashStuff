package com.angrybirds.popups.coinshop
{
   import com.angrybirds.data.DataModelFriends;
   import com.angrybirds.shoppopup.PricePoint;
   import com.rovio.utils.AddCommasToAmount;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class CoinShopButtonLarge extends AbsCoinShopButton
   {
      
      protected static const BG_COLOR_INDEX_DEFAULT:int = 0;
      
      protected static const BG_COLOR_INDEX_SPECIAL_OFFER:int = 1;
      
      protected static const BG_COLOR_NAMES:Array = ["ButtonLargeDefault","ButtonLargeOnetime"];
      
      private static const WIDTH_MARGIN:int = -17;
      
      public static const MULTIPLIER_STRING:String = "x ";
      
      private static const MAX_CHARACTERS_IN_PRICE_FIELD:int = 10;
       
      
      protected var mBGColorIndex:int;
      
      private var mLongTextFormat:TextFormat;
      
      public function CoinShopButtonLarge(index:int, pricePoint:PricePoint, currencyID:String, buttonLinkageName:String, shopItemID:String)
      {
         super(this,index,pricePoint,currencyID,buttonLinkageName,shopItemID);
         this.mLongTextFormat = new TextFormat(null,24,null);
         this.mLongTextFormat.align = "center";
         init();
      }
      
      protected static function get dataModel() : DataModelFriends
      {
         return AngryBirdsBase.singleton.dataModel as DataModelFriends;
      }
      
      override protected function setDiscountTag() : void
      {
         var mc:MovieClip = mCoinShopButton["DiscountTag3"];
         if(mPricePoint.freeQuantityInPercentage() > 0)
         {
            mc.offer.text = "(" + mPricePoint.freeQuantityAsPercentage() + " free)";
            mc.visible = true;
         }
         else
         {
            mc.visible = false;
         }
      }
      
      override protected function setMainIcon() : void
      {
         mCoinShopButton["IconBestValue"].visible = mPricePoint.bestValue;
         mCoinShopButton["IconPopular"].visible = mPricePoint.popular;
         mCoinShopButton["IconOneTimeOffer"].visible = mPricePoint.specialOffer;
      }
      
      override protected function setBCIcon() : void
      {
         for(var counter:int = 3; counter <= 5; counter++)
         {
            mCoinShopButton["BirdCoin" + counter].visible = counter == mTotalAmountDigits;
         }
      }
      
      override protected function setBG() : void
      {
         this.mBGColorIndex = BG_COLOR_INDEX_DEFAULT;
         for(var i:int = 0; i < BG_COLOR_NAMES.length; i++)
         {
            mCoinShopButton[BG_COLOR_NAMES[i]].visible = false;
         }
         if(mPricePoint.specialOffer)
         {
            this.mBGColorIndex = BG_COLOR_INDEX_SPECIAL_OFFER;
         }
         mCoinShopButton[BG_COLOR_NAMES[this.mBGColorIndex]].visible = true;
         mCoinShopButton[BG_COLOR_NAMES[this.mBGColorIndex]].gotoAndStop("Active_Up_Default");
      }
      
      override protected function setBCTextField() : void
      {
         var selectedTextField:TextField = null;
         for(var counter:int = 3; counter <= 5; counter++)
         {
            mCoinShopButton["CoinAmount" + counter].visible = false;
         }
         selectedTextField = mCoinShopButton["CoinAmount" + mTotalAmountDigits];
         selectedTextField.visible = true;
         selectedTextField.text = MULTIPLIER_STRING + AddCommasToAmount.addCommasToAmount(mPricePoint.totalQuantity);
      }
      
      override protected function setSpecialTag() : void
      {
         mCoinShopButton.TagMostPopular.visible = mPricePoint.popular;
         mCoinShopButton.TagBestValue.visible = mPricePoint.bestValue;
         mCoinShopButton.TagOneTimeOffer.visible = mPricePoint.specialOffer;
      }
      
      override protected function setPrice() : void
      {
         var saleTag:Sprite = mCoinShopButton["saleTag"];
         saleTag.visible = false;
         if(mPricePoint.campaignPrice > 0)
         {
            saleTag.visible = true;
            (saleTag.getChildByName("Percentage") as TextField).text = "-" + mPricePoint.campaignSalePercentage + "%";
            mCoinShopButton.addChild(saleTag);
            mCoinShopButton.cost.text = dataModel.currencyModel.getPriceTag(mPricePoint.campaignPrice,true,"",mCurrencyID);
            mCoinShopButton.former_cost.text = dataModel.currencyModel.getPriceTag(mPricePoint.price,true,"",mCurrencyID);
            mCoinShopButton.Crossover_Line.visible = true;
         }
         else
         {
            mCoinShopButton.cost.text = dataModel.currencyModel.getPriceTag(mPricePoint.price,true,"",mCurrencyID);
            mCoinShopButton.former_cost.text = "";
            mCoinShopButton.Crossover_Line.visible = false;
         }
         if(mCoinShopButton.cost.text.length > MAX_CHARACTERS_IN_PRICE_FIELD)
         {
            mCoinShopButton.cost.setTextFormat(this.mLongTextFormat);
         }
      }
      
      override protected function setNewTag() : void
      {
         var newTag:Sprite = mCoinShopButton.newTag;
         newTag.visible = DataModelFriends(AngryBirdsBase.singleton.dataModel).newShopPricePoints.indexOf(mshopItemID + mPricePoint.price) > -1;
      }
      
      override protected function onMouseOver(e:MouseEvent) : void
      {
         mCoinShopButton[BG_COLOR_NAMES[this.mBGColorIndex]].gotoAndStop("Active_Over");
      }
      
      override protected function onMouseDown(e:MouseEvent) : void
      {
         mCoinShopButton[BG_COLOR_NAMES[this.mBGColorIndex]].gotoAndStop("Active_Down");
      }
      
      override protected function onMouseUp(e:MouseEvent) : void
      {
         mCoinShopButton[BG_COLOR_NAMES[this.mBGColorIndex]].gotoAndStop("Active_Over");
      }
      
      override protected function onMouseOut(e:MouseEvent) : void
      {
         mCoinShopButton[BG_COLOR_NAMES[this.mBGColorIndex]].gotoAndStop("Active_Up_Default");
      }
   }
}
