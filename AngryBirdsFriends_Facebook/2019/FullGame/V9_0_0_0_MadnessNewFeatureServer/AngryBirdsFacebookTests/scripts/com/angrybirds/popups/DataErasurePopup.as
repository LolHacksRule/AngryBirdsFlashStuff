package com.angrybirds.popups
{
   import com.angrybirds.data.DataModelFriends;
   import com.angrybirds.data.InitDataLoader;
   import com.angrybirds.utils.FriendsUtil;
   import com.rovio.externalInterface.ExternalInterfaceHandler;
   import com.rovio.server.RetryingURLLoaderErrorEvent;
   import com.rovio.ui.Views.ViewXMLLibrary;
   import com.rovio.ui.popup.AbstractPopup;
   import com.rovio.ui.popup.IPopup;
   import com.rovio.ui.popup.PopupPriorityType;
   import flash.display.MovieClip;
   import flash.display.StageDisplayState;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class DataErasurePopup extends AbstractPopup
   {
      
      public static const ID:String = "DataErasurePopup";
       
      
      private var mErasureData:Object;
      
      public function DataErasurePopup(layerIndex:int, priority:int)
      {
         super(layerIndex,priority,ViewXMLLibrary.mLibrary.Views.PopupDataErasure[0],ID);
      }
      
      private static function get dataModel() : DataModelFriends
      {
         return AngryBirdsBase.singleton.dataModel as DataModelFriends;
      }
      
      override protected function init() : void
      {
         super.init();
         var view:MovieClip = mContainer.mClip;
         view.btnCancelErasure.addEventListener(MouseEvent.CLICK,this.onErasureCancelled);
         view.btnReload.addEventListener(MouseEvent.CLICK,this.OnGameReload);
         view.btnReload.visible = false;
      }
      
      public function injectData(erasureData:Object) : void
      {
         var view:MovieClip = mContainer.mClip;
         this.mErasureData = erasureData;
         view.txtBody.text = "The data erasure is being processed.";
      }
      
      override protected function show(useTransition:Boolean = false) : void
      {
         super.show(useTransition);
         mContainer.mClip.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      override protected function hide(useTransition:Boolean = false, waitForAnimationsToStop:Boolean = false) : void
      {
         mContainer.mClip.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         super.hide(useTransition,waitForAnimationsToStop);
      }
      
      private function onEnterFrame(event:Event) : void
      {
         var secondsLeft:int = 0;
         var timeLeftPretty:Array = null;
         if(this.mErasureData && this.mErasureData.scheduledErasure)
         {
            secondsLeft = this.getSecondsLeft();
            if(secondsLeft > 0)
            {
               timeLeftPretty = FriendsUtil.getTimeLeftAsPrettyString(secondsLeft);
               mContainer.mClip.txtBody.text = "Your data will be erased in: " + timeLeftPretty[0];
            }
            else
            {
               this.showReloadPage("Please refresh the page.");
            }
         }
      }
      
      private function onErasureCancelled(e:MouseEvent) : void
      {
         AngryBirdsBase.singleton.exitFullScreen();
         navigateToURL(new URLRequest(AngryBirdsFacebook.PRIVACY_WEB_URL + "?locale=" + InitDataLoader.USER_LOCALE_SHORT + "&token=" + AngryBirdsFacebook(AngryBirdsFacebook.sSingleton).dataModelFriends.rovioAccessToken.accessToken + "&appId=" + AngryBirdsFacebook.beaconAppId),"_blank");
         this.showReloadPage("Please refresh the page for it to reflect any changes.");
      }
      
      private function onErasureCancelLoaded(e:Event) : void
      {
         var loader:URLLoader = e.currentTarget as URLLoader;
         loader.removeEventListener(Event.COMPLETE,this.onErasureCancelLoaded);
         loader.removeEventListener(IOErrorEvent.IO_ERROR,this.onLoaderError);
         loader.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onLoaderError);
         close();
      }
      
      private function onLoaderError(event:Event) : void
      {
         var popup:IPopup = null;
         if(event.type == RetryingURLLoaderErrorEvent.THIRD_PARTY_COOKIES_DISABLED)
         {
            popup = new ErrorPopup(ErrorPopup.ERROR_THIRD_PARTY_COOKIES_DISABLED);
         }
         else
         {
            popup = new WarningPopup(PopupLayerIndexFacebook.ALERT,PopupPriorityType.TOP);
         }
         AngryBirdsBase.singleton.popupManager.openPopup(popup);
      }
      
      private function showReloadPage(bodyText:String) : void
      {
         mContainer.mClip.btnReload.visible = true;
         mContainer.mClip.btnCancelErasure.visible = false;
         mContainer.mClip.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         mContainer.mClip.txtBody.text = bodyText;
      }
      
      public function getSecondsLeft() : int
      {
         var now:Number = 0;
         if(dataModel.serverSynchronizedTime)
         {
            now = dataModel.serverSynchronizedTime.synchronizedTimeStamp;
         }
         var seconds:int = (this.mErasureData.scheduledErasure - now) / 1000;
         return int(Math.max(0,seconds));
      }
      
      private function OnGameReload(e:MouseEvent) : void
      {
         AngryBirdsBase.singleton.stage.displayState = StageDisplayState.NORMAL;
         ExternalInterfaceHandler.performCall("reloadPage");
      }
   }
}
