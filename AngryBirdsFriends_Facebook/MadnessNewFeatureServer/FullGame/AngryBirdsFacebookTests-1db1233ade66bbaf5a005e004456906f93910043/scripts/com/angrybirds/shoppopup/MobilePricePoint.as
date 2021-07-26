package com.angrybirds.shoppopup
{
   public class MobilePricePoint extends PricePoint
   {
       
      
      private var mId:String;
      
      private var mCountryID:String;
      
      public function MobilePricePoint(quantity:int, freeQuantity:int, price:Number, campaignPrice:Number, id:String)
      {
         super(quantity,freeQuantity,price,campaignPrice);
         this.mId = id;
      }
      
      public static function fromJSONObject(jsonObject:Object) : MobilePricePoint
      {
         return new MobilePricePoint(jsonObject.q,jsonObject.fa,Number(jsonObject.p),Number(jsonObject.cp),jsonObject.id);
      }
      
      public function get id() : String
      {
         return this.mId;
      }
      
      public function get countryID() : String
      {
         return this.mCountryID;
      }
      
      public function set countryID(value:String) : void
      {
         this.mCountryID = value;
      }
   }
}
