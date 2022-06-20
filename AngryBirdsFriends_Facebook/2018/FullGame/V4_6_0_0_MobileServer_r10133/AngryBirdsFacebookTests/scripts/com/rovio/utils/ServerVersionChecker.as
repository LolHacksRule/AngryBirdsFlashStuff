package com.rovio.utils
{
   import com.angrybirds.popups.PopupLayerIndexFacebook;
   import com.angrybirds.popups.ServerUpdatedPopup;
   import com.rovio.server.ABFLoader;
   import com.rovio.server.URLRequestFactory;
   import com.rovio.ui.popup.IPopup;
   import com.rovio.ui.popup.PopupPriorityType;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.utils.Timer;
   
   public class ServerVersionChecker
   {
      
      public static const DEFAULT_CHECK_INTERVAL:int = 5 * 60;
       
      
      private var mInitialVersion:String = "";
      
      private var mCheckIntervalSeconds:int = 300.0;
      
      private var mTimer:Timer;
      
      private var mURLLoader:ABFLoader;
      
      private var mHoldDialog:Boolean = false;
      
      private var mReloadPending:Boolean = false;
      
      public function ServerVersionChecker(initialVersion:String, checkIntervalSeconds:int = 300.0)
      {
         super();
         this.mInitialVersion = initialVersion;
         this.mCheckIntervalSeconds = checkIntervalSeconds;
      }
      
      public function start() : void
      {
         if(!this.mTimer)
         {
            this.mTimer = new Timer(this.mCheckIntervalSeconds * 1000);
            this.mTimer.addEventListener(TimerEvent.TIMER,this.onTimer);
            this.mTimer.start();
         }
      }
      
      public function stop() : void
      {
         if(this.mTimer)
         {
            this.mTimer.stop();
            this.mTimer.removeEventListener(TimerEvent.TIMER,this.onTimer);
            this.mTimer = null;
         }
      }
      
      public function set holdDialog(value:Boolean) : void
      {
         var popup:IPopup = null;
         this.mHoldDialog = value;
         if(!this.mHoldDialog && this.mReloadPending)
         {
            popup = new ServerUpdatedPopup(PopupLayerIndexFacebook.ERROR,PopupPriorityType.TOP);
            AngryBirdsBase.singleton.popupManager.openPopup(popup);
         }
      }
      
      public function checkServerVersionNow() : void
      {
         if(!this.mURLLoader)
         {
            this.mURLLoader = new ABFLoader();
            this.mURLLoader.addEventListener(Event.COMPLETE,this.onServerVersion);
            this.mURLLoader.dataFormat = URLLoaderDataFormat.TEXT;
            this.mURLLoader.load(URLRequestFactory.getNonCachingURLRequest(AngryBirdsBase.SERVER_ROOT + "/serverversion/false"));
         }
      }
      
      private function onTimer(e:Event) : void
      {
         this.checkServerVersionNow();
      }
      
      private function onServerVersion(e:Event) : void
      {
         var popup:IPopup = null;
         var version:String = this.mURLLoader.data;
         if(this.mInitialVersion == null || this.mInitialVersion.length == 0)
         {
            this.mInitialVersion = version;
         }
         this.mURLLoader.removeEventListener(Event.COMPLETE,this.onServerVersion);
         this.mURLLoader = null;
         if(version != this.mInitialVersion)
         {
            if(this.mHoldDialog)
            {
               this.mReloadPending = true;
            }
            else
            {
               popup = new ServerUpdatedPopup(PopupLayerIndexFacebook.ERROR,PopupPriorityType.TOP);
               AngryBirdsBase.singleton.popupManager.openPopup(popup);
            }
            this.mInitialVersion = version;
            this.stop();
         }
      }
      
      public function getInitialVersion() : String
      {
         return this.mInitialVersion;
      }
   }
}
