package com.angrybirds.shoppopup.events
{
   import flash.events.Event;
   
   public class RedeemItemEvent extends Event
   {
      
      public static const ITEM_REDEEM_COMPLETED:String = "item_redeem_completed";
      
      public static const ITEM_REDEEM_FAILED:String = "item_redeem_failed";
      
      public static const ITEM_REDEEM_USER_CANCELLED:String = "item_redeem_user_cancelled";
       
      
      private var mQuantity:Number = 0;
      
      public function RedeemItemEvent(type:String, quantity:Number = 0, bubbles:Boolean = false, cancelable:Boolean = false)
      {
         super(type,bubbles,cancelable);
         this.mQuantity = quantity;
      }
      
      public function get quantity() : Number
      {
         return this.mQuantity;
      }
   }
}
