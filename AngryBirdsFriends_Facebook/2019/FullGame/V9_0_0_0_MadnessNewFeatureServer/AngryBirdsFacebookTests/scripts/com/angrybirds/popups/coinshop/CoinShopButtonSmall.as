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
   
   public class CoinShopButtonSmall extends AbsCoinShopButton
   {
      
      public static const MULTIPLIER_STRING:String = "x ";
      
      private static const BG_NAME:String = "ButtonBGSmallDefault";
      
      private static const MAX_CHARACTERS_IN_PRICE_FIELD:int = 10;
       
      
      private var mLongTextFormat:TextFormat;
      
      public function CoinShopButtonSmall(index:int, pricePoint:PricePoint, currencyID:String, buttonLinkageName:String, shopItemID:String)
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
         for(var counter:int = 3; counter <= 5; counter++)
         {
            mCoinShopButton["Icon" + counter].visible = counter == mButtonIndex + 1;
         }
      }
      
      override protected function setBCIcon() : void
      {
         for(var counter:int = 3; counter <= 4; counter++)
         {
            mCoinShopButton["BirdCoin" + counter].visible = counter == mTotalAmountDigits;
         }
      }
      
      override protected function setBG() : void
      {
         mCoinShopButton[BG_NAME].gotoAndStop("Active_Up_Default");
      }
      
      override protected function setBCTextField() : void
      {
         var selectedTextField:TextField = null;
         for(var counter:int = 3; counter <= 4; counter++)
         {
            mCoinShopButton["CoinAmount" + counter].visible = false;
         }
         selectedTextField = mCoinShopButton["CoinAmount" + mTotalAmountDigits];
         selectedTextField.visible = true;
         selectedTextField.text = MULTIPLIER_STRING + AddCommasToAmount.addCommasToAmount(mPricePoint.totalQuantity);
      }
      
      override protected function setSpecialTag() : void
      {
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
         mCoinShopButton[BG_NAME].gotoAndStop("Active_Over");
      }
      
      override protected function onMouseDown(e:MouseEvent) : void
      {
         mCoinShopButton[BG_NAME].gotoAndStop("Active_Down");
      }
      
      override protected function onMouseUp(e:MouseEvent) : void
      {
         mCoinShopButton[BG_NAME].gotoAndStop("Active_Over");
      }
      
      override protected function onMouseOut(e:MouseEvent) : void
      {
         mCoinShopButton[BG_NAME].gotoAndStop("Active_Up_Default");
      }
   }
}
