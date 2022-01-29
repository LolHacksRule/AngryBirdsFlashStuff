package com.angrybirds.popups.coinshop
{
   import com.angrybirds.data.DataModelFriends;
   import com.angrybirds.shoppopup.PricePoint;
   import com.rovio.utils.AddCommasToAmount;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class CoinShopButtonMedium extends AbsCoinShopButton
   {
      
      protected static const BG_COLOR_INDEX_YELLOW_DARK:int = 0;
      
      protected static const BG_COLOR_INDEX_YELLOW_MID:int = 1;
      
      protected static const BG_COLOR_INDEX_YELLOW_LIGHT:int = 2;
      
      protected static const BG_COLOR_INDEX_DEFAULT:int = 3;
      
      protected static const BG_COLOR_INDEX_SPECIAL_OFFER:int = 4;
      
      protected static const BG_COLOR_NAMES:Array = ["ButtonBGYellowDark","ButtonBGYellowMid","ButtonBGYellowLight","ButtonBGBlue","ButtonBGSpecialOffer"];
      
      private static const WIDTH_MARGIN:int = -17;
      
      public static const MULTIPLIER_STRING:String = "x ";
      
      private static const MAX_CHARACTERS_IN_PRICE_FIELD:int = 10;
       
      
      protected var mBGColorIndex:int;
      
      private var mLongTextFormat:TextFormat;
      
      public function CoinShopButtonMedium(buttonIndex:int, pricePoint:PricePoint, currencyID:String, buttonLinkageName:String, shopItemID:String)
      {
         super(this,buttonIndex,pricePoint,currencyID,buttonLinkageName,shopItemID,WIDTH_MARGIN);
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
         for(var counter:int = 3; counter <= 5; counter++)
         {
            mCoinShopButton["DiscountTag" + counter].visible = false;
         }
         if(mPricePoint.freeQuantityInPercentage() > 0)
         {
            mCoinShopButton["DiscountTag" + mTotalAmountDigits].offer.text = "(" + mPricePoint.freeQuantityAsPercentage() + " free)";
            mCoinShopButton["DiscountTag" + mTotalAmountDigits].visible = true;
         }
      }
      
      override protected function setMainIcon() : void
      {
         for(var counter:int = 1; counter <= 6; counter++)
         {
            mCoinShopButton["Icon" + counter].visible = counter == mButtonIndex + 1;
            if(mCoinShopButton["Icon" + counter + "Special"])
            {
               if(mPricePoint.specialOffer)
               {
                  if(counter == mButtonIndex + 1)
                  {
                     mCoinShopButton["Icon" + counter + "Special"].visible = true;
                     mCoinShopButton["Icon" + counter].visible = false;
                  }
                  else
                  {
                     mCoinShopButton["Icon" + counter + "Special"].visible = false;
                  }
               }
               else
               {
                  mCoinShopButton["Icon" + counter + "Special"].visible = false;
               }
            }
         }
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
         this.mBGColorIndex = 0;
         for(var i:int = 0; i < BG_COLOR_NAMES.length; i++)
         {
            mCoinShopButton[BG_COLOR_NAMES[i]].visible = false;
         }
         if(mPricePoint.specialOffer)
         {
            this.mBGColorIndex = BG_COLOR_INDEX_SPECIAL_OFFER;
         }
         else if(mButtonIndex == BG_COLOR_INDEX_YELLOW_DARK)
         {
            this.mBGColorIndex = BG_COLOR_INDEX_YELLOW_DARK;
         }
         else if(mButtonIndex == BG_COLOR_INDEX_YELLOW_MID)
         {
            this.mBGColorIndex = BG_COLOR_INDEX_YELLOW_MID;
         }
         else if(mButtonIndex == BG_COLOR_INDEX_YELLOW_LIGHT)
         {
            this.mBGColorIndex = BG_COLOR_INDEX_YELLOW_LIGHT;
         }
         else
         {
            this.mBGColorIndex = BG_COLOR_INDEX_DEFAULT;
         }
         mCoinShopButton[BG_COLOR_NAMES[this.mBGColorIndex]].visible = true;
         mCoinShopButton[BG_COLOR_NAMES[this.mBGColorIndex]].gotoAndStop("Active_Up_Default");
      }
      
      override protected function setBCTextField() : void
      {
         var selectedTextField:TextField = null;
         for(var counter:int = 3; counter <= 5; counter++)
         {
            mCoinShopButton["CoinAmount" + counter + "Blue"].visible = false;
            mCoinShopButton["CoinAmount" + counter + "Yellow"].visible = false;
            mCoinShopButton["CoinAmount" + counter + "Green"].visible = false;
         }
         if(mPricePoint.specialOffer)
         {
            selectedTextField = mCoinShopButton["CoinAmount" + mTotalAmountDigits + "Green"];
         }
         else if(mButtonIndex == BG_COLOR_INDEX_YELLOW_DARK || mButtonIndex == BG_COLOR_INDEX_YELLOW_MID || mButtonIndex == BG_COLOR_INDEX_YELLOW_LIGHT)
         {
            selectedTextField = mCoinShopButton["CoinAmount" + mTotalAmountDigits + "Yellow"];
         }
         else
         {
            selectedTextField = mCoinShopButton["CoinAmount" + mTotalAmountDigits + "Blue"];
         }
         selectedTextField.visible = true;
         selectedTextField.text = MULTIPLIER_STRING + AddCommasToAmount.addCommasToAmount(mPricePoint.totalQuantity);
      }
      
      override protected function setSpecialTag() : void
      {
         mCoinShopButton.MovieClip_Popular.visible = mPricePoint.popular;
         mCoinShopButton.MovieClip_BestValue.visible = mPricePoint.bestValue;
         mCoinShopButton.OneTimeOfferLarge.visible = mPricePoint.specialOffer;
         mCoinShopButton.OneTimeOfferSmall.visible = false;
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
         newTag.visible = newTag.visible = DataModelFriends(AngryBirdsBase.singleton.dataModel).newShopPricePoints.indexOf(mshopItemID + mPricePoint.price) > -1;
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
