package com.angrybirds.wallet
{
   import flash.events.Event;
   
   public class PiggyCurrencyEvent extends Event
   {
      
      public static const AMOUNT_CHANGED:String = "piggyCurrencyAmountChanged";
       
      
      private var mChangedAmount:int;
      
      private var mTotalAmount:int;
      
      public function PiggyCurrencyEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false, changedCoinsAmount:int = 0, totalCoinsAmount:int = 0)
      {
         super(type,bubbles,cancelable);
         this.mChangedAmount = changedCoinsAmount;
         this.mTotalAmount = totalCoinsAmount;
      }
      
      public function get changedAmount() : int
      {
         return this.mChangedAmount;
      }
      
      public function get totalAmount() : int
      {
         return this.mTotalAmount;
      }
   }
}
