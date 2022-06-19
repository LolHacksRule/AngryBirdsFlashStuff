package com.angrybirds.data
{
   import com.rovio.utils.CurrencyMappingUtil;
   import com.rovio.utils.FacebookGraphRequestFriends;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   
   public class CurrencyModel extends EventDispatcher
   {
      
      private static const CURRENCY_LOADING_RETRY_AMOUNT:int = 5;
       
      
      private var mCurrencyLoadingRetryCounter:int;
      
      protected var mUserCurrencyID:String;
      
      protected var mCurrencyExchange:Number;
      
      protected var mCurrencyExchangeInverse:Number;
      
      protected var mCurrencyOffset:Number;
      
      protected var mLoader:FacebookGraphRequestFriends;
      
      protected var mIsloaded:Boolean;
      
      public function CurrencyModel(currencyObject:Object = null)
      {
         super();
         this.mCurrencyLoadingRetryCounter = 0;
         if(currencyObject)
         {
            this.mUserCurrencyID = currencyObject.user_currency;
            this.mCurrencyExchange = currencyObject.currency_exchange;
            this.mCurrencyExchangeInverse = currencyObject.currency_exchange_inverse;
            this.mCurrencyOffset = currencyObject.currency_offset;
         }
         else
         {
            this.loadCurrency();
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
      
      private function loadCurrency() : void
      {
         if(this.mLoader)
         {
            this.mLoader.removeEventListener(Event.COMPLETE,this.onCurrencyUpdate);
            this.mLoader.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.mLoader.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            this.mLoader = null;
         }
         this.mLoader = new FacebookGraphRequestFriends("me",{"fields":"currency"});
         this.mLoader.addEventListener(Event.COMPLETE,this.onCurrencyUpdate);
         this.mLoader.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.mLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.mLoader.load();
      }
      
      protected function setDefaultCurrency() : void
      {
         this.mUserCurrencyID = "USD";
         this.mCurrencyExchange = 10;
         this.mCurrencyExchangeInverse = 0.1;
         this.mCurrencyOffset = 100;
         if(this.mLoader)
         {
            this.mLoader.removeEventListener(Event.COMPLETE,this.onCurrencyUpdate);
            this.mLoader.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.mLoader.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            this.mLoader = null;
         }
      }
      
      private function onError(e:ErrorEvent) : void
      {
         if(this.mCurrencyLoadingRetryCounter < CURRENCY_LOADING_RETRY_AMOUNT)
         {
            ++this.mCurrencyLoadingRetryCounter;
            this.loadCurrency();
         }
         else
         {
            this.setDefaultCurrency();
            this.mIsloaded = true;
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function onCurrencyUpdate(event:Event) : void
      {
         var data:Object = null;
         try
         {
            data = this.mLoader.results;
            this.mUserCurrencyID = data.currency.user_currency;
            this.mCurrencyExchange = data.currency.currency_exchange;
            this.mCurrencyExchangeInverse = data.currency.currency_exchange_inverse;
            this.mCurrencyOffset = data.currency.currency_offset;
         }
         catch(e:Error)
         {
            if(mCurrencyLoadingRetryCounter < CURRENCY_LOADING_RETRY_AMOUNT)
            {
               ++mCurrencyLoadingRetryCounter;
               loadCurrency();
               return;
            }
            setDefaultCurrency();
         }
         if(this.mLoader)
         {
            this.mLoader.removeEventListener(Event.COMPLETE,this.onCurrencyUpdate);
            this.mLoader.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.mLoader.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            this.mLoader = null;
         }
         this.mIsloaded = true;
         dispatchEvent(new Event(Event.COMPLETE));
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
