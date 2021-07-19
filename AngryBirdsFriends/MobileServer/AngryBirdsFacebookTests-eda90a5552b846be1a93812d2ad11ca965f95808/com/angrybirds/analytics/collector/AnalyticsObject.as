package com.angrybirds.analytics.collector
{
   public class AnalyticsObject
   {
       
      
      private var mFirstTimePurchased:Boolean = false;
      
      private var mItemType:String = "";
      
      private var mAmount:Number = 0;
      
      private var mGainType:String = "";
      
      private var mScreen:String = "";
      
      private var mLevel:String = "";
      
      private var mItemName:String = "";
      
      private var mIapType:String = "";
      
      private var mPaidAmount:Number = 0;
      
      private var mCurrency:String = "";
      
      private var mReceiptId:String = "";
      
      public function AnalyticsObject()
      {
         super();
      }
      
      public function get firstTimePurchased() : Boolean
      {
         return this.mFirstTimePurchased;
      }
      
      public function set firstTimePurchased(value:Boolean) : void
      {
         this.mFirstTimePurchased = value;
      }
      
      public function get itemType() : String
      {
         return this.mItemType;
      }
      
      public function set itemType(value:String) : void
      {
         this.mItemType = value;
      }
      
      public function get amount() : Number
      {
         return this.mAmount;
      }
      
      public function set amount(value:Number) : void
      {
         this.mAmount = value;
      }
      
      public function get gainType() : String
      {
         return this.mGainType;
      }
      
      public function set gainType(value:String) : void
      {
         this.mGainType = value;
      }
      
      public function get screen() : String
      {
         return this.mScreen;
      }
      
      public function set screen(value:String) : void
      {
         this.mScreen = value;
      }
      
      public function get itemName() : String
      {
         return this.mItemName;
      }
      
      public function set itemName(value:String) : void
      {
         this.mItemName = value;
      }
      
      public function get iapType() : String
      {
         return this.mIapType;
      }
      
      public function set iapType(value:String) : void
      {
         this.mIapType = value;
      }
      
      public function get paidAmount() : Number
      {
         return this.mPaidAmount;
      }
      
      public function set paidAmount(value:Number) : void
      {
         this.mPaidAmount = value;
      }
      
      public function get currency() : String
      {
         return this.mCurrency;
      }
      
      public function set currency(value:String) : void
      {
         this.mCurrency = value;
      }
      
      public function get receiptId() : String
      {
         return this.mReceiptId;
      }
      
      public function set receiptId(value:String) : void
      {
         this.mReceiptId = value;
      }
      
      public function get level() : String
      {
         return this.mLevel;
      }
      
      public function set level(value:String) : void
      {
         this.mLevel = value;
      }
   }
}
