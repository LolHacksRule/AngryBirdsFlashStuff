package com.angrybirds.data
{
   import com.rovio.utils.CurrencyMappingUtil;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class CurrencyModel extends EventDispatcher
   {
       
      
      protected var mUserCurrencyID:String;
      
      protected var mCurrencyExchange:Number;
      
      protected var mCurrencyExchangeInverse:Number;
      
      protected var mCurrencyOffset:Number;
      
      protected var mIsloaded:Boolean;
      
      public function CurrencyModel(currencyObject:Object = null)
      {
         super();
         if(currencyObject)
         {
            this.mUserCurrencyID = currencyObject.user_currency;
            this.mCurrencyExchange = currencyObject.currency_exchange;
            this.mCurrencyExchangeInverse = currencyObject.currency_exchange_inverse;
            this.mCurrencyOffset = currencyObject.currency_offset;
         }
         else
         {
            this.setDefaultCurrency();
            this.mIsloaded = true;
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      public function get currencyID() : String
      {
         return this.mUserCurrencyID;
      }
      
      public function get currencyExchange() : Number
      {
         return this.mCurrencyExchange;
      }
      
      public function get isLoaded() : Boolean
      {
         return this.mIsloaded;
      }
      
      protected function setDefaultCurrency() : void
      {
         this.mUserCurrencyID = "USD";
         this.mCurrencyExchange = 10;
         this.mCurrencyExchangeInverse = 0.1;
         this.mCurrencyOffset = 100;
      }
      
      public function convertPrice(price:Number) : Number
      {
         return Number(price * this.mCurrencyExchangeInverse);
      }
      
      public function getPriceTag(price:Number, isSignOnLeft:Boolean = true, spacer:String = "", currencyID:String = "") : String
      {
         var newPrice:String = price.toFixed(2);
         var sign:String = CurrencyMappingUtil.getCurrencySymbolByISOCode(currencyID);
         return !!isSignOnLeft ? sign + spacer + newPrice.toString() : newPrice.toString() + spacer + sign;
      }
      
      protected function getDecimalCount() : int
      {
         var decimalCount:int = this.mCurrencyOffset.toString().length - 1;
         return decimalCount < 0 ? 0 : int(decimalCount);
      }
   }
}
