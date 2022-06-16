package com.angrybirds.shoppopup
{
   public class ShopItem
   {
       
      
      private var mId:String;
      
      private var mPricePoints:Vector.<PricePoint>;
      
      private var mHidden:Boolean;
      
      private var mCurrencyID:String;
      
      private var mOgo:String;
      
      public function ShopItem(id:String, pricePoints:Array, hidden:Boolean = false, currencyID:String = "", ogo:String = "")
      {
         var jsonPricePoint:Object = null;
         super();
         this.mId = id;
         this.mHidden = hidden;
         this.mCurrencyID = currencyID;
         this.mPricePoints = new Vector.<PricePoint>();
         this.mOgo = ogo;
         for each(jsonPricePoint in pricePoints)
         {
            this.mPricePoints.push(PricePoint.fromJSONObject(jsonPricePoint));
         }
      }
      
      public function get hidden() : Boolean
      {
         return this.mHidden;
      }
      
      public function getPricePointCount() : int
      {
         return this.mPricePoints.length;
      }
      
      public function getPricePoint(index:int) : PricePoint
      {
         if(index < this.mPricePoints.length)
         {
            return this.mPricePoints[index];
         }
         return null;
      }
      
      private function get pricePoints() : Vector.<PricePoint>
      {
         return this.mPricePoints;
      }
      
      public function get id() : String
      {
         return this.mId;
      }
      
      public function get currencyID() : String
      {
         return this.mCurrencyID;
      }
      
      public function get ogo() : String
      {
         return this.mOgo;
      }
      
      public function set ogo(value:String) : void
      {
         this.mOgo = value;
      }
      
      public function get isOnSale() : Boolean
      {
         var pp:PricePoint = null;
         for each(pp in this.mPricePoints)
         {
            if(pp.campaignPrice > 0)
            {
               return true;
            }
         }
         return false;
      }
      
      public function get isOnSpecialOffer() : Boolean
      {
         var pp:PricePoint = null;
         for each(pp in this.mPricePoints)
         {
            if(pp.specialOffer)
            {
               return true;
            }
         }
         return false;
      }
   }
}
