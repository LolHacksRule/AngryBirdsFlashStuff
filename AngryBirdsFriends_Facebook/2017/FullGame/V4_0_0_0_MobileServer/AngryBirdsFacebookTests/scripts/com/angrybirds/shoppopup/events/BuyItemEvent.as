package com.angrybirds.shoppopup.events
{
   import com.angrybirds.popups.WarningPopup;
   import flash.events.Event;
   
   public class BuyItemEvent extends Event
   {
      
      public static const ITEM_BOUGHT:String = "itemBought";
      
      public static const ITEM_BOUGHT_PREMIUM_CURRENCY:String = "itemBoughtPremiumCurrency";
      
      public static const ITEM_BOUGHT_FAILED:String = "itemBoughtFailed";
       
      
      public var changedItems:Array;
      
      private var mErrorCode:Number = 0;
      
      private var mErrorTitle:String;
      
      public function BuyItemEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false, changedItemsArray:Array = null, errorCode:Number = 0)
      {
         super(type,bubbles,cancelable);
         this.changedItems = changedItemsArray;
         this.mErrorCode = errorCode;
      }
      
      public function get errorCode() : Number
      {
         return this.mErrorCode;
      }
      
      public function get errorMessage() : String
      {
         switch(this.mErrorCode)
         {
            case 3001:
               return "Payment has failed. Transaction cannot be completed.";
            case 3002:
               return "Payment has been initiated but not completed. Transaction will be processed when payment is complete.";
            default:
               return WarningPopup.DEFAULT_WARNING_TEXT;
         }
      }
      
      public function get errorTitle() : String
      {
         switch(this.mErrorCode)
         {
            case 3001:
               return "Payment Failed";
            case 3002:
               return "Payment Initiated";
            default:
               return WarningPopup.DEFAULT_TITLE_TEXT;
         }
      }
   }
}
