package com.angrybirds.shoppopup
{
   public class MobilePricePointItem
   {
       
      
      private var mCountryCode:String;
      
      private var mPricePoints:Vector.<MobilePricePoint>;
      
      private var mCurrencyID:String;
      
      public function MobilePricePointItem(countryCode:String, pricePoints:Array, currencyID:String = "")
      {
         var jsonPricePoint:Object = null;
         var mobilePricePoint:MobilePricePoint = null;
         super();
         this.mCountryCode = countryCode;
         this.mCurrencyID = currencyID;
         this.mPricePoints = new Vector.<MobilePricePoint>();
         for each(jsonPricePoint in pricePoints)
         {
            mobilePricePoint = MobilePricePoint.fromJSONObject(jsonPricePoint);
            mobilePricePoint.countryID = this.mCountryCode;
            this.mPricePoints.push(mobilePricePoint);
         }
      }
      
      public function get pricePoints() : Vector.<MobilePricePoint>
      {
         return this.mPricePoints;
      }
      
      public function get countryCode() : String
      {
         return this.mCountryCode;
      }
      
      public function getPricePointByIndex(index:int) : MobilePricePoint
      {
         if(index < this.mPricePoints.length)
         {
            return this.mPricePoints[index];
         }
         return null;
      }
      
      public function get currencyID() : String
      {
         return this.mCurrencyID;
      }
   }
}
