package com.angrybirds.shoppopup
{
   public class PricePoint
   {
       
      
      private var mTotalQuantity:int;
      
      private var mFreeQuantity:int;
      
      private var mPrice:Number;
      
      private var mConvertedPrice:Number;
      
      private var mCampaignPrice:Number;
      
      private var mCampaignSalePercentage:int;
      
      private var mSubscriptionTime:Number;
      
      private var mSpecialOffer:Boolean;
      
      private var mPopular:Boolean;
      
      private var mBestValue:Boolean;
      
      private var mNeedsReloadAfterPurchase:Boolean;
      
      private var mIsNew:Boolean;
      
      public function PricePoint(totalQuantity:int, freeQuantity:int, price:Number, campaignPrice:Number = 0, subscriptionTime:Number = 0, needsReloadAfterPurchase:Boolean = false, specialOffer:Boolean = false, popular:Boolean = false, bestValue:Boolean = false)
      {
         super();
         this.mTotalQuantity = totalQuantity;
         this.mFreeQuantity = freeQuantity;
         this.mPrice = price;
         this.mConvertedPrice = price;
         this.mCampaignPrice = campaignPrice;
         if(this.mCampaignPrice > 0)
         {
            this.mCampaignSalePercentage = 100 - this.mCampaignPrice / this.mPrice * 100;
         }
         else
         {
            this.mCampaignSalePercentage = 0;
         }
         this.mSubscriptionTime = subscriptionTime;
         this.mSpecialOffer = specialOffer;
         this.mNeedsReloadAfterPurchase = needsReloadAfterPurchase;
         this.mPopular = popular;
         this.mBestValue = bestValue;
         this.mIsNew = false;
      }
      
      public static function fromJSONObject(jsonObject:Object) : PricePoint
      {
         return new PricePoint(jsonObject.tq,jsonObject.fa,Number(jsonObject.p),Number(jsonObject.cp),Number(jsonObject.st),jsonObject.r,jsonObject.so,jsonObject.po,jsonObject.bv);
      }
      
      public function get totalQuantity() : int
      {
         return this.mTotalQuantity;
      }
      
      public function get freeQuantity() : int
      {
         return this.mFreeQuantity;
      }
      
      public function freeQuantityAsPercentage() : String
      {
         return Math.round(this.mFreeQuantity / this.mTotalQuantity * 100).toString() + "%";
      }
      
      public function freeQuantityInPercentage() : Number
      {
         return Math.round(this.mFreeQuantity / this.mTotalQuantity * 100);
      }
      
      public function get price() : Number
      {
         return this.mPrice;
      }
      
      public function set price(value:Number) : void
      {
         this.mPrice = value;
      }
      
      public function get convertedPrice() : Number
      {
         return this.mConvertedPrice;
      }
      
      public function set convertedPrice(value:Number) : void
      {
         this.mConvertedPrice = value;
      }
      
      public function get campaignPrice() : Number
      {
         return Math.round(this.mCampaignPrice * 100) / 100;
      }
      
      public function get campaignSalePercentage() : int
      {
         return this.mCampaignSalePercentage;
      }
      
      public function resetPriceConvertion() : void
      {
         this.mConvertedPrice = this.mPrice;
      }
      
      public function get subscriptionTime() : Number
      {
         return this.mSubscriptionTime;
      }
      
      public function get needsReloadAfterPurchase() : Boolean
      {
         return this.mNeedsReloadAfterPurchase;
      }
      
      public function get specialOffer() : Boolean
      {
         return this.mSpecialOffer;
      }
      
      public function get popular() : Boolean
      {
         return this.mPopular;
      }
      
      public function get bestValue() : Boolean
      {
         return this.mBestValue;
      }
      
      public function get isNew() : Boolean
      {
         return this.mIsNew;
      }
   }
}
