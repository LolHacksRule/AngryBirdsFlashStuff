package com.AngryBirds.io
{
   import com.AngryBirds.model.UserInfoModel;
   import com.AngryBirds.states.StateLevelEditorStart;
   import com.AngryBirds.states.StateLevelLoad;
   import com.rovio.externalInterface.ExternalInterfaceHandler;
   import com.rovio.factory.Log;
   import flash.events.MouseEvent;
   
   public class AngryBirdsExternalInterface
   {
       
      
      public function AngryBirdsExternalInterface()
      {
         super();
      }
      
      public static function init() : void
      {
         if(AngryBirdsSocial.RUN_AS_EMBED_PLAYER)
         {
            ExternalInterfaceHandler.EXTERNAL_INTERFACES_ENABLED = false;
         }
         ExternalInterfaceHandler.registerMethod("setAuthToken",setAuthenticationToken);
         ExternalInterfaceHandler.registerMethod("showEditor",requestShowEditor);
         ExternalInterfaceHandler.registerMethod("showLevel",requestShowLevel);
         ExternalInterfaceHandler.registerMethod("showSavedLevel",requestShowSavedLevel);
         ExternalInterfaceHandler.registerMethod("setUserName",requestSetUserName);
         ExternalInterfaceHandler.registerMethod("setFriends",requestSetFriends);
         ExternalInterfaceHandler.registerMethod("setFacebookUserInfo",requestSetFacebookInfo);
         ExternalInterfaceHandler.registerMethod("getCurrentLevel",requestGetCurrentLevel);
         ExternalInterfaceHandler.registerMethod("mouseWheelHandler",mouseWheelHandler);
         ExternalInterfaceHandler.registerMethod("setAsHidden",requestSetAsHidden);
      }
      
      public static function getFacebookFriends() : void
      {
         ExternalInterfaceHandler.performCall("getFacebookFriendsForSwf");
      }
      
      public static function getSessionInfo() : void
      {
         ExternalInterfaceHandler.performCall("getSessionInfo");
      }
      
      public static function getUserFacebookInfo() : void
      {
         ExternalInterfaceHandler.performCall("getUserFacebookInfo");
      }
      
      public static function notifyLevelChange(param1:String) : void
      {
         ExternalInterfaceHandler.performCall("updateLevelPage",param1);
      }
      
      public static function setAuthenticationToken(param1:String) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         AngryBirdsSocial.USER.authenticationToken = param1;
         AngryBirdsSocial.USER.loginInfoChanged = true;
         AngryBirdsServer.getUserSettings(AngryBirdsSocial.handleGetUserSettingsResponse);
         if(AngryBirdsSocial.DEBUG_MODE_ENABLED)
         {
            AngryBirdsSocial.mVersionNumberTextField.text += " Token:" + param1;
         }
         return true;
      }
      
      public static function requestShowEditor(param1:Object) : void
      {
         AngryBirdsSocial.smEditorMode = true;
         AngryBirdsSocial.smReload = true;
         AngryBirdsSocial.smReloadStateName = StateLevelEditorStart.STATE_NAME;
         StateLevelLoad.prepareToLoadLevelEditorDefaultLevel();
      }
      
      public static function requestShowLevel(param1:Object) : void
      {
         AngryBirdsSocial.smEditorMode = false;
         AngryBirdsSocial.smReload = true;
      }
      
      public static function requestShowSavedLevel(param1:String) : void
      {
         AngryBirdsSocial.smEditorMode = false;
         AngryBirdsSocial.smReload = true;
         AngryBirdsSocial.smReloadStateName = StateLevelLoad.STATE_NAME;
         StateLevelLoad.prepareToLoadExternalLevel(param1);
      }
      
      public static function requestSetUserName(param1:String) : void
      {
         AngryBirdsSocial.USER.name = param1;
         AngryBirdsSocial.USER_INFO.userName = param1;
         if(AngryBirdsSocial.DEBUG_MODE_ENABLED)
         {
            AngryBirdsSocial.mVersionNumberTextField.text += " User:" + param1;
         }
      }
      
      public static function requestSetFriends(param1:Object) : void
      {
         var _loc6_:String = null;
         var _loc2_:Array = param1.toString().split(":");
         var _loc3_:UserInfoModel = null;
         AngryBirdsSocial.FRIENDS_LIST = new Array();
         var _loc4_:* = "";
         var _loc5_:Number = 0;
         for(; _loc5_ < _loc2_.length; _loc5_++)
         {
            _loc6_ = unescape(_loc2_[_loc5_]);
            if(_loc5_ % 3 == 0)
            {
               if(_loc6_.length <= 0)
               {
                  break;
               }
               _loc3_ = new UserInfoModel();
               AngryBirdsSocial.FRIENDS_LIST.push(_loc3_);
            }
            switch(_loc5_ % 3)
            {
               case 0:
                  _loc3_.facebookUserId = _loc6_;
                  if(_loc5_ != 0)
                  {
                     _loc4_ += ",";
                  }
                  _loc4_ += _loc6_;
                  continue;
               case 1:
                  _loc3_.facebookName = _loc6_;
                  continue;
               case 2:
                  _loc3_.imageUrl = _loc6_;
                  continue;
               default:
                  continue;
            }
         }
         if(AngryBirdsSocial.FRIENDS_LIST.length > 0)
         {
            AngryBirdsServer.getFacebookUserIdentifiers(_loc4_,facebookIdentifiersReceived);
         }
      }
      
      public static function requestSetFacebookInfo(param1:Object) : void
      {
         var _loc2_:Array = param1.toString().split(":");
         AngryBirdsSocial.USER_INFO.facebookUserId = _loc2_[0];
         AngryBirdsSocial.USER_INFO.facebookName = unescape(_loc2_[1]);
         AngryBirdsSocial.USER_INFO.imageUrl = unescape(_loc2_[2]);
         getFacebookFriends();
      }
      
      public static function requestGetCurrentLevel(... rest) : String
      {
         setCurrentLevel(AngryBirdsSocial.smLevelMain.mLevelData.levelID);
         return AngryBirdsSocial.smLevelMain.mLevelData.levelID;
      }
      
      public static function setCurrentLevel(param1:String) : void
      {
         ExternalInterfaceHandler.performCall("setCurrentLevel",param1);
      }
      
      public static function facebookIdentifiersReceived(param1:Object) : void
      {
         var _loc2_:UserInfoModel = null;
         var _loc3_:String = null;
         for each(_loc2_ in AngryBirdsSocial.FRIENDS_LIST)
         {
            _loc3_ = param1["facebook_" + _loc2_.facebookUserId];
            if(_loc3_ != null)
            {
               _loc2_.userName = _loc3_;
            }
         }
      }
      
      public static function openLogin() : void
      {
         ExternalInterfaceHandler.performCall("showLogin");
      }
      
      public static function openRegister() : void
      {
         ExternalInterfaceHandler.performCall("showRegister");
      }
      
      public static function updateCoins(param1:int) : void
      {
         ExternalInterfaceHandler.performCall("setCoins",param1);
      }
      
      public static function updateGoldenEggs(param1:int) : void
      {
         ExternalInterfaceHandler.performCall("setGoldenEggs",param1);
      }
      
      public static function updateXp(param1:int) : void
      {
         ExternalInterfaceHandler.performCall("setXp",param1);
      }
      
      public static function updateLevel(param1:int) : void
      {
         ExternalInterfaceHandler.performCall("setLevel",param1);
      }
      
      public static function mouseWheelHandler(param1:Object) : void
      {
         var _loc3_:* = null;
         param1 = param1[0];
         var _loc2_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_WHEEL,true,false,param1.x,param1.y,null,param1.ctrlKey,param1.altKey,param1.shiftKey,false,-Number(param1.delta));
         for(_loc3_ in param1)
         {
            Log.log(_loc3_ + ":" + param1[_loc3_]);
         }
         Log.log(param1.delta);
         AngryBirdsSocial.smLevelMain.mouseWheel(_loc2_);
      }
      
      public static function moveToGameView(param1:String) : void
      {
         ExternalInterfaceHandler.performCall("showSavedLevel",param1);
      }
      
      public static function updateLevelInfo(param1:String) : void
      {
         ExternalInterfaceHandler.performCall("getLevelInfo",param1);
      }
      
      public static function requestSetAsHidden(param1:String) : void
      {
         var _loc2_:* = param1 == "true";
         AngryBirdsSocial.setHiddenMode(_loc2_);
      }
   }
}
