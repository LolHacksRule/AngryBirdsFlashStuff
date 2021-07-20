package com.angrybirds.user
{
   import com.rovio.utils.DynamicLanguage;
   import com.angrybirds.data.ServerCall;
   import com.angrybirds.ui.ErrorPane;
   import com.angrybirds.popups.PopupWaiting;
   import com.angrybirds.utils.StringCrypto;
   import com.angrybirds.utils.SharedObjectHandler;
   import flash.events.EventDispatcher;
   
   public class LoginHandler extends EventDispatcher
   {
       
      
      private var mResponseLogin:PopupLayerData;
      
      private var mResponseRegister:LoginHandlerResponseRegister;
      
      private var mSharedObject:SharedObjectHandler;
      
      private var mName:String;
      
      private var mPassword:String;
      
      private var mRememberMeToggled:Boolean;
      
      private var mPopupWaiting:PopupWaiting;
      
      public function LoginHandler()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         try
         {
            this.mSharedObject = SharedObjectHandler.getLocal(AngryBirdsCustom.LOCAL_STORAGE_NAME + "_LOGIN_DATA");
         }
         catch(e:*)
         {
         }
         this.mResponseLogin = new PopupLayerData(this);
         this.mResponseRegister = new LoginHandlerResponseRegister(this);
         this.mPopupWaiting = new PopupWaiting();
      }
      
      public function loadLocalData() : Boolean
      {
         if(this.mSharedObject && this.mSharedObject.data && this.mSharedObject.data.id && this.mSharedObject.data.password)
         {
            if(this.mSharedObject.data.rememberMe)
            {
               try
               {
                  this.mName = StringCrypto.decryptString(this.mSharedObject.data.id);
                  this.mPassword = StringCrypto.decryptString(this.mSharedObject.data.password);
               }
               catch(e:Error)
               {
               }
               if(this.mSharedObject && this.mSharedObject.data && this.mSharedObject.data.rememberMe)
               {
                  this.mRememberMeToggled = true;
               }
               return true;
            }
         }
         return false;
      }
      
      public function clearLocalData() : void
      {
         this.saveLocalLoginInfo("","",false);
         try
         {
            this.mSharedObject.clear();
         }
         catch(e:Error)
         {
         }
      }
      
      public function submitLogin(param1:String, param2:String, param3:Boolean) : void
      {
         var _loc9_:LoginHandlerEvent = null;
         if(param1.length == 0)
         {
            (_loc9_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).errorName = ErrorPane.NICKNAME_MISSING;
            dispatchEvent(_loc9_);
            return;
         }
         if(param2.length == 0)
         {
            (_loc9_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).errorName = ErrorPane.PASSWORD_MISSING;
            dispatchEvent(_loc9_);
            return;
         }
         var _loc5_:String = DynamicLanguage.instance.getLanguage();
         var _loc6_:String = DynamicLanguage.instance.getCountry();
         var _loc7_:Object = {
            "type":"login",
            "nickName":param1,
            "password":param2,
            "locale":_loc6_,
            "language":_loc5_
         };
         var _loc8_:ServerCall = new ServerCall(_loc7_,AngryBirdsCustom.SERVICE_URL + "login",this.mResponseLogin,ServerCall.SERIALIZATION_JSON);
         (AngryBirdsBase.singleton as AngryBirdsCustom).popupManager.openPopup(this.mPopupWaiting);
         this.saveLocalLoginInfo(param1,param2,param3);
         dispatchEvent(new LoginHandlerEvent(LoginHandlerEvent.LOGIN_START));
      }
      
      public function submitRegister(param1:Object) : void
      {
         var _loc3_:ServerCall = new ServerCall(param1,AngryBirdsCustom.SERVICE_URL + "registerPlayer",this.mResponseRegister,ServerCall.SERIALIZATION_JSON);
         (AngryBirdsBase.singleton as AngryBirdsCustom).popupManager.openPopup(this.mPopupWaiting);
         dispatchEvent(new LoginHandlerEvent(LoginHandlerEvent.REGISTER_START));
      }
      
      public function saveLocalLoginInfo(param1:String, param2:String, param3:Boolean) : void
      {
         var newName:String = param1;
         var newPassword:String = param2;
         var rememberMeToggled:Boolean = param3;
         newName = StringCrypto.encryptString(newName);
         newPassword = StringCrypto.encryptString(newPassword);
         this.mSharedObject.data.id = newName;
         this.mSharedObject.data.password = newPassword;
         this.mSharedObject.data.rememberMe = rememberMeToggled;
         try
         {
            this.mSharedObject.flush();
         }
         catch(e:*)
         {
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get password() : String
      {
         return this.mPassword;
      }
      
      public function get rememberMeToggled() : Boolean
      {
         return this.mRememberMeToggled;
      }
      
      public function get popupWaiting() : PopupWaiting
      {
         return this.mPopupWaiting;
      }
   }
}
