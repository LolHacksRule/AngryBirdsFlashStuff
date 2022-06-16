package com.angrybirds.shoppopup.events
{
   import flash.events.Event;
   
   public class QuickPurchaseEvent extends Event
   {
      
      public static var NOT_ENOUGH_COINS_CLOSED:String = "NotEnoughCoinsClosedEvent";
      
      public static var PURCHASE_COMPLETED:String = "PurchaseCompletedEvent";
      
      public static var PURCHASE_FAILED:String = "PurchaseFailedEvent";
       
      
      private var mPurchaseItemId:String = "";
      
      public function QuickPurchaseEvent(type:String, purchaseItemId:String = "", bubbles:Boolean = false, cancelable:Boolean = false)
      {
         super(type,bubbles,cancelable);
         this.mPurchaseItemId = purchaseItemId;
      }
      
      public function get purchasedItemId() : String
      {
         return this.mPurchaseItemId;
      }
   }
}
