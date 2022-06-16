package com.angrybirds.giftinbox.events
{
   import flash.events.Event;
   
   public class GiftInboxEvent extends Event
   {
      
      public static const CLAIM_GIFT:String = "claimGiftAndSend";
      
      public static const CLAIM_GIFT_ONLY:String = "claimGiftOnly";
      
      public static const SERVER_GIFT:String = "serverGift";
      
      public static const SEND_BACK_GIFT:String = "sendBackGift";
      
      public static const REMOVE_REQUEST:String = "removeRequest";
      
      public static const PLAY_BRAGGED_LEVEL:String = "playBraggedLevel";
      
      public static const CLAIM_ALL_GIFT:String = "claimAllGiftAndSend";
      
      public static const CLAIM_ALL_GIFT_ONLY:String = "claimAllGiftOnly";
      
      public static const INBOX_CONTENT_AMOUNT_CHECKED:String = "InboxContentAmountChecked";
       
      
      public var data:Object;
      
      public function GiftInboxEvent(type:String, data:Object, bubbles:Boolean = false, cancelable:Boolean = false)
      {
         this.data = data;
         super(type,bubbles,cancelable);
      }
      
      override public function clone() : Event
      {
         return new GiftInboxEvent(type,this.data,bubbles,cancelable);
      }
   }
}
