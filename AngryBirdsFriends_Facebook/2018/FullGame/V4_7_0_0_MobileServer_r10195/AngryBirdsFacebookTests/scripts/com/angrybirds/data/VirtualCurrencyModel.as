package com.angrybirds.data
{
   import com.angrybirds.wallet.WalletEvent;
   
   public class VirtualCurrencyModel extends CurrencyModel
   {
      
      public static const VIRTUAL_CURRENCY_ITEM_ID:String = "VirtualCurrency";
      
      public static const VIRTUAL_CURRENCY_PRETTY_NAME:String = "Bird Coins";
       
      
      private var mTotalCoinsAmount:int = 0;
      
      public function VirtualCurrencyModel(currencyObject:Object)
      {
         super(currencyObject);
      }
      
      public function get totalCoins() : int
      {
         return this.mTotalCoinsAmount;
      }
      
      public function addCoins(amountToAdd:int) : void
      {
         this.updateCoinsTotal(this.mTotalCoinsAmount + amountToAdd);
      }
      
      public function updateCoinsTotal(total:int, skipEvent:Boolean = false) : int
      {
         var oldAmount:int = this.mTotalCoinsAmount;
         var changed:int = total - oldAmount;
         this.mTotalCoinsAmount = total;
         if(!skipEvent)
         {
            this.currencyAmountChanged(changed);
         }
         return changed;
      }
      
      public function currencyAmountChanged(deltaInCoins:int) : void
      {
         if(deltaInCoins != 0)
         {
            dispatchEvent(new WalletEvent(WalletEvent.AMOUNT_CHANGED,false,false,deltaInCoins,this.mTotalCoinsAmount));
         }
      }
   }
}
