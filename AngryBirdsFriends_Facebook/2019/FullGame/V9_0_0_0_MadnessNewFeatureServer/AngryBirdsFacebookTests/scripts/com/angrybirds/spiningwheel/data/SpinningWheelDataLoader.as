package com.angrybirds.spiningwheel.data
{
   import com.angrybirds.popups.ErrorPopup;
   import com.angrybirds.spiningwheel.events.SpinningWheelEvent;
   import com.rovio.server.ABFLoader;
   import com.rovio.server.URLRequestFactory;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class SpinningWheelDataLoader extends EventDispatcher
   {
      
      private static const REQ_LOAD_DAILY_REWARD_DATA:String = "/v3/dailyreward/checkReward?localTimeZoneOffset";
      
      private static const REQ_GET_REWARD:String = "/v3/dailyreward/getReward?localTimeZoneOffset";
       
      
      private var mDailyRewardLoader:ABFLoader;
      
      private var vo:DailyRewardVO;
      
      public function SpinningWheelDataLoader()
      {
         super();
      }
      
      public function loadRewardData() : void
      {
         var urlRequest:URLRequest = URLRequestFactory.getNonCachingURLRequest(AngryBirdsBase.SERVER_ROOT + REQ_LOAD_DAILY_REWARD_DATA + "=" + (new Date().timezoneOffset / 60).toString());
         urlRequest.method = URLRequestMethod.GET;
         urlRequest.contentType = "application/json";
         this.mDailyRewardLoader = new ABFLoader();
         this.mDailyRewardLoader.addEventListener(Event.COMPLETE,this.onDailyRewardLoaded);
         this.mDailyRewardLoader.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.mDailyRewardLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.mDailyRewardLoader.dataFormat = URLLoaderDataFormat.TEXT;
         this.mDailyRewardLoader.load(urlRequest);
      }
      
      private function onError(e:IOErrorEvent) : void
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.ERROR_GENERAL,"V2--Daily reward error:" + e.text + " id: " + e.errorID));
      }
      
      private function onDailyRewardLoaded(event:Event) : void
      {
         this.mDailyRewardLoader.removeEventListener(Event.COMPLETE,this.onDailyRewardLoaded);
         if(event.currentTarget.data.d)
         {
            this.vo = new DailyRewardVO(event.currentTarget.data);
            dispatchEvent(new SpinningWheelEvent(SpinningWheelEvent.DAILY_REWARDS_DATA_LOADED,this.vo));
         }
      }
      
      public function getReward() : void
      {
         var urlRequest:URLRequest = URLRequestFactory.getNonCachingURLRequest(AngryBirdsBase.SERVER_ROOT + REQ_GET_REWARD + "=" + (new Date().timezoneOffset / 60).toString());
         urlRequest.method = URLRequestMethod.GET;
         urlRequest.contentType = "application/json";
         this.mDailyRewardLoader = new ABFLoader();
         this.mDailyRewardLoader.addEventListener(Event.COMPLETE,this.onDailyRewardConsumed);
         this.mDailyRewardLoader.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.mDailyRewardLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.mDailyRewardLoader.dataFormat = URLLoaderDataFormat.TEXT;
         this.mDailyRewardLoader.load(urlRequest);
      }
      
      private function onDailyRewardConsumed(event:Event) : void
      {
         this.mDailyRewardLoader.removeEventListener(Event.COMPLETE,this.onDailyRewardConsumed);
         if(event.currentTarget.data.items)
         {
            this.vo.setReward(event.currentTarget.data);
            dispatchEvent(new SpinningWheelEvent(SpinningWheelEvent.SPIN_REWARD_RECEIVED,this.vo));
         }
         else
         {
            dispatchEvent(new SpinningWheelEvent(SpinningWheelEvent.EVENT_SPINNING_WHEEL_DATA_ERROR));
         }
      }
   }
}
