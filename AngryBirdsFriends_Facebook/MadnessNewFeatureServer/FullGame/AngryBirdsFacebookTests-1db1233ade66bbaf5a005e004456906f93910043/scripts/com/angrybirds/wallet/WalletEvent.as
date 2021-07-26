package com.angrybirds.wallet
{
   import flash.events.Event;
   
   public class WalletEvent extends Event
   {
      
      public static const OPEN_COIN_SHOP:String = "openCoinShop";
      
      public static const AMOUNT_CHANGED:String = "amountChanged";
       
      
      public var changedAmount:int;
      
      public var totalAmount:int;
      
      public function WalletEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false, changedCoinsAmount:int = 0, totalCoinsAmount:int = 0)
      {
         super(type,bubbles,cancelable);
         this.changedAmount = changedCoinsAmount;
         this.totalAmount = totalCoinsAmount;
      }
   }
}
