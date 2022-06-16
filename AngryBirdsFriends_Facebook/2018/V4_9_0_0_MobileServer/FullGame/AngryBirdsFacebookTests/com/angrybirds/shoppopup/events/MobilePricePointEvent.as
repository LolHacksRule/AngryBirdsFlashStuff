package com.angrybirds.shoppopup.events
{
   import com.angrybirds.popups.requests.Country;
   import flash.events.Event;
   
   public class MobilePricePointEvent extends Event
   {
       
      
      private var mMobileCountry:Country;
      
      private var mPredictedMobileCountry:Country;
      
      public function MobilePricePointEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false)
      {
         super(type,bubbles,cancelable);
      }
      
      public function get predictedMobileCountry() : Country
      {
         return this.mPredictedMobileCountry;
      }
      
      public function set predictedMobileCountry(value:Country) : void
      {
         this.mPredictedMobileCountry = value;
      }
      
      public function get mobileCountry() : Country
      {
         return this.mMobileCountry;
      }
      
      public function set mobileCountry(value:Country) : void
      {
         this.mMobileCountry = value;
      }
   }
}
