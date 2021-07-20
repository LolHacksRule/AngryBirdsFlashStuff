package com.angrybirds.user
{
   import com.rovio.utils.GoogleAnalyticsTrackerCustom;
   import com.angrybirds.data.ServerCall;
   import com.angrybirds.ui.ErrorPane;
   import com.angrybirds.states.StateLevelSelection;
   import com.angrybirds.utils.ValidateResponse;
   import com.angrybirds.utils.IHTTPResponseListener;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class LoginHandlerResponseRegister implements IHTTPResponseListener
   {
       
      
      private var mLoginManager:LoginHandler;
      
      public function LoginHandlerResponseRegister(param1:LoginHandler)
      {
         super();
         this.mLoginManager = param1;
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc3_:String = null;
         var _loc4_:LoginHandlerEvent = null;
         var _loc5_:String = null;
         var _loc2_:Object = ValidateResponse.parseJSON((param1.currentTarget as URLLoader).data);
         this.mLoginManager.popupWaiting.close();
         if(_loc2_.security)
         {
            UserManager.user = new UserModelCustom();
            UserManager.user.name = _loc2_.nickName;
            UserManager.user.id = _loc2_.id;
            UserManager.user.authenticationToken = _loc2_.security;
            UserManager.levelProfile = _loc2_.levelProfile;
            if(_loc2_.levelProfileSecurity != undefined)
            {
               UserManager.levelProfileSecurity = _loc2_.levelProfileSecurity;
            }
            _loc3_ = ServerCall.getSecurityHashForLevelProfile(UserManager.levelProfile);
            if(_loc3_ != UserManager.levelProfileSecurity)
            {
               UserManager.user = new UserModelCustom();
               (_loc4_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).errorName = "SECURITY_ERROR";
               this.mLoginManager.dispatchEvent(_loc4_);
               return;
            }
            UserManager.updateLocalUserData();
            (AngryBirdsBase.singleton as AngryBirdsCustom).userProgressCustom.isLoggedIn = true;
            GoogleAnalyticsTrackerCustom.trackFlashEvent(GoogleAnalyticsTrackerCustom.ACTION_REGISTRATION_SUCCESSFUL);
            _loc4_ = new LoginHandlerEvent(LoginHandlerEvent.REGISTER_COMPLETE);
            this.mLoginManager.dispatchEvent(_loc4_);
            (AngryBirdsBase.singleton as AngryBirdsCustom).setState(StateLevelSelection.STATE_NAME);
         }
         else if(_loc2_.error)
         {
            _loc5_ = _loc2_.error;
            (_loc4_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).errorName = _loc5_;
            this.mLoginManager.dispatchEvent(_loc4_);
            GoogleAnalyticsTrackerCustom.trackFlashEvent(GoogleAnalyticsTrackerCustom.ACTION_REGISTRATION_FAILURE);
         }
      }
      
      public function onHttpStatus(param1:HTTPStatusEvent) : void
      {
      }
      
      public function onIOError(param1:IOErrorEvent) : void
      {
         var _loc2_:LoginHandlerEvent = new LoginHandlerEvent(LoginHandlerEvent.ERROR);
         _loc2_.errorName = ErrorPane.CONNECTION_ERROR_RETRY;
         this.mLoginManager.dispatchEvent(_loc2_);
      }
   }
}
