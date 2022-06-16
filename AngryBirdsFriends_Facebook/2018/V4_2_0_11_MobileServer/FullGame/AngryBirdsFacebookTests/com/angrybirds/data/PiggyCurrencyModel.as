package com.angrybirds.data
{
   import com.angrybirds.wallet.PiggyCurrencyEvent;
   import com.rovio.server.ABFLoader;
   import com.rovio.server.URLRequestFactory;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.utils.Timer;
   
   public class PiggyCurrencyModel extends CurrencyModel
   {
      
      public static const PIGGY_CURRENCY_ITEM_ID:String = "PiggyCurrency";
      
      public static const PIGGY_CURRENCY_PRETTY_NAME:String = "Bird Coins";
      
      private static const REQ_GET_PIGGY_BANK_REWARD:String = "/v2/dailyreward/getPiggyBankReward?quantity";
      
      private static const WAITING_TIME_FOR_SERVER_RECALL:int = 500;
      
      private static const WAITING_TIME_FOR_GROUP_CALL:int = 300;
       
      
      private var mTotalCoinsAmount:int = 0;
      
      private var mPiggyCoinsWaitingToBeConverted:int = 0;
      
      private var mPiggyRewardLoader:ABFLoader;
      
      private var mWaitTimerServerRecall:Timer;
      
      private var mWaitTimerGroupGathering:Timer;
      
      public function PiggyCurrencyModel(currencyObject:Object = null)
      {
         super(currencyObject);
      }
      
      public function get totalCoins() : int
      {
         return this.mTotalCoinsAmount;
      }
      
      public function updateCoinsTotal(total:int, skipEvent:Boolean = false) : int
      {
         var oldAmount:int = this.mTotalCoinsAmount;
         var changed:int = total - oldAmount;
         this.mTotalCoinsAmount = total;
         if(!skipEvent)
         {
            dispatchEvent(new PiggyCurrencyEvent(PiggyCurrencyEvent.AMOUNT_CHANGED,false,false,changed,this.mTotalCoinsAmount));
         }
         return changed;
      }
      
      public function convertToVirtualCurrency(amount:int, waitForGroupCall:Boolean) : void
      {
         if(amount > this.totalCoins || amount == 0)
         {
            return;
         }
         this.mPiggyCoinsWaitingToBeConverted += amount;
         if(waitForGroupCall)
         {
            if(!this.mWaitTimerGroupGathering)
            {
               this.mWaitTimerGroupGathering = new Timer(WAITING_TIME_FOR_GROUP_CALL,1);
               this.mWaitTimerGroupGathering.addEventListener(TimerEvent.TIMER_COMPLETE,this.onWaitForGroupCallTimerComplete);
               this.mWaitTimerGroupGathering.start();
            }
         }
         else
         {
            this.makeServerCallForRewards();
         }
      }
      
      private function onWaitForGroupCallTimerComplete(e:TimerEvent) : void
      {
         this.mWaitTimerGroupGathering.removeEventListener(TimerEvent.TIMER_COMPLETE,this.onWaitForGroupCallTimerComplete);
         this.mWaitTimerGroupGathering.stop();
         this.mWaitTimerGroupGathering = null;
         this.makeServerCallForRewards();
      }
      
      private function makeServerCallForRewards() : void
      {
         if(this.mPiggyCoinsWaitingToBeConverted <= 0)
         {
            return;
         }
         if(!this.mPiggyRewardLoader)
         {
            this.mPiggyRewardLoader = new ABFLoader();
            this.mPiggyRewardLoader.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.mPiggyRewardLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            this.mPiggyRewardLoader.dataFormat = URLLoaderDataFormat.TEXT;
         }
         if(this.mPiggyRewardLoader.willTrigger(Event.COMPLETE))
         {
            if(this.mWaitTimerServerRecall)
            {
               this.mWaitTimerServerRecall.stop();
            }
            this.mWaitTimerServerRecall = new Timer(WAITING_TIME_FOR_SERVER_RECALL,1);
            this.mWaitTimerServerRecall.addEventListener(TimerEvent.TIMER_COMPLETE,this.onWaitForServerTimerComplete);
            this.mWaitTimerServerRecall.start();
            return;
         }
         var convertAmount:int = this.mPiggyCoinsWaitingToBeConverted;
         this.mPiggyCoinsWaitingToBeConverted = 0;
         var urlRequest:URLRequest = URLRequestFactory.getNonCachingURLRequest(AngryBirdsBase.SERVER_ROOT + REQ_GET_PIGGY_BANK_REWARD + "=" + convertAmount);
         urlRequest.method = URLRequestMethod.GET;
         urlRequest.contentType = "application/json";
         this.mPiggyRewardLoader.addEventListener(Event.COMPLETE,this.onPiggyRewardLoaded);
         this.mPiggyRewardLoader.load(urlRequest);
      }
      
      private function onPiggyRewardLoaded(event:Event) : void
      {
         var responseObject:Object = null;
         var responseData:Object = this.mPiggyRewardLoader.data;
         this.mPiggyRewardLoader.removeEventListener(Event.COMPLETE,this.onPiggyRewardLoaded);
         for each(responseObject in responseData.items)
         {
            if(responseObject.i == VirtualCurrencyModel.VIRTUAL_CURRENCY_ITEM_ID)
            {
               DataModelFriends(AngryBirdsFacebook.sSingleton.dataModel).virtualCurrencyModel.updateCoinsTotal(responseObject.q);
            }
            else if(responseObject.i == PiggyCurrencyModel.PIGGY_CURRENCY_ITEM_ID)
            {
               this.updateCoinsTotal(responseObject.q,false);
            }
         }
      }
      
      private function onError(e:IOErrorEvent) : void
      {
         throw new Error("V2--Get piggy bank reward error:" + e.text + " id: " + e.errorID);
      }
      
      private function onWaitForServerTimerComplete(e:TimerEvent) : void
      {
         this.mWaitTimerServerRecall.removeEventListener(TimerEvent.TIMER_COMPLETE,this.onWaitForServerTimerComplete);
         this.mWaitTimerServerRecall.stop();
         this.mWaitTimerServerRecall = null;
         this.makeServerCallForRewards();
      }
   }
}
