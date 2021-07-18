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
      
      public static function notifyLevelChange(levelKey:String) : void
      {
         ExternalInterfaceHandler.performCall("updateLevelPage",levelKey);
      }
      
      public static function setAuthenticationToken(token:String) : Boolean
      {
         if(token == null)
         {
            return false;
         }
         AngryBirdsSocial.USER.authenticationToken = token;
         AngryBirdsSocial.USER.loginInfoChanged = true;
         if(AngryBirdsSocial.DEBUG_MODE_ENABLED)
         {
            AngryBirdsSocial.mVersionNumberTextField.text += " Token:" + token;
         }
         return true;
      }
      
      public static function requestShowEditor(response:Object) : void
      {
         AngryBirdsSocial.smEditorMode = true;
         AngryBirdsSocial.smReload = true;
         AngryBirdsSocial.smReloadStateName = StateLevelEditorStart.STATE_NAME;
         StateLevelLoad.prepareToLoadLevelEditorDefaultLevel();
      }
      
      public static function requestShowLevel(response:Object) : void
      {
         AngryBirdsSocial.smEditorMode = false;
         AngryBirdsSocial.smReload = true;
      }
      
      public static function requestShowSavedLevel(levelID:String) : void
      {
         AngryBirdsSocial.smEditorMode = false;
         AngryBirdsSocial.smReload = true;
         AngryBirdsSocial.smReloadStateName = StateLevelLoad.STATE_NAME;
         StateLevelLoad.prepareToLoadExternalLevel(levelID);
      }
      
      public static function requestSetUserName(username:String) : void
      {
         AngryBirdsSocial.USER.name = username;
         AngryBirdsSocial.USER_INFO.userName = username;
         if(AngryBirdsSocial.DEBUG_MODE_ENABLED)
         {
            AngryBirdsSocial.mVersionNumberTextField.text += " User:" + username;
         }
      }
      
      public static function requestSetFriends(input:Object) : void
      {
         var fieldValue:String = null;
         var data:Array = input.toString().split(":");
         var fdata:UserInfoModel = null;
         AngryBirdsSocial.FRIENDS_LIST = new Array();
         var facebookIdList:String = "";
         for(var i:Number = 0; i < data.length; i++)
         {
            fieldValue = unescape(data[i]);
            if(i % 3 == 0)
            {
               if(fieldValue.length <= 0)
               {
                  break;
               }
               fdata = new UserInfoModel();
               AngryBirdsSocial.FRIENDS_LIST.push(fdata);
            }
            switch(i % 3)
            {
               case 0:
                  fdata.facebookUserId = fieldValue;
                  if(i != 0)
                  {
                     facebookIdList += ",";
                  }
                  facebookIdList += fieldValue;
                  continue;
               case 1:
                  fdata.facebookName = fieldValue;
                  continue;
               case 2:
                  fdata.imageUrl = fieldValue;
                  continue;
               default:
                  continue;
            }
         }
         if(AngryBirdsSocial.FRIENDS_LIST.length > 0)
         {
            AngryBirdsServer.getFacebookUserIdentifiers(facebookIdList,facebookIdentifiersReceived);
         }
      }
      
      public static function requestSetFacebookInfo(response:Object) : void
      {
         var data:Array = response.toString().split(":");
         AngryBirdsSocial.USER_INFO.facebookUserId = data[0];
         AngryBirdsSocial.USER_INFO.facebookName = unescape(data[1]);
         AngryBirdsSocial.USER_INFO.imageUrl = unescape(data[2]);
         getFacebookFriends();
      }
      
      public static function requestGetCurrentLevel(... params) : String
      {
         setCurrentLevel(AngryBirdsSocial.smLevelMain.mLevelData.levelID);
         return AngryBirdsSocial.smLevelMain.mLevelData.levelID;
      }
      
      public static function setCurrentLevel(levelKey:String) : void
      {
         ExternalInterfaceHandler.performCall("setCurrentLevel",levelKey);
      }
      
      public static function facebookIdentifiersReceived(response:Object) : void
      {
         var fdata:UserInfoModel = null;
         var value:String = null;
         for each(fdata in AngryBirdsSocial.FRIENDS_LIST)
         {
            value = response["facebook_" + fdata.facebookUserId];
            if(value != null)
            {
               fdata.userName = value;
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
      
      public static function updateCoins(newValue:int) : void
      {
         ExternalInterfaceHandler.performCall("setCoins",newValue);
      }
      
      public static function updateGoldenEggs(newValue:int) : void
      {
         ExternalInterfaceHandler.performCall("setGoldenEggs",newValue);
      }
      
      public static function updateXp(newValue:int) : void
      {
         ExternalInterfaceHandler.performCall("setXp",newValue);
      }
      
      public static function updateLevel(newValue:int) : void
      {
         ExternalInterfaceHandler.performCall("setLevel",newValue);
      }
      
      public static function mouseWheelHandler(event:Object) : void
      {
         var str:* = null;
         event = event[0];
         var mEvent:MouseEvent = new MouseEvent(MouseEvent.MOUSE_WHEEL,true,false,event.x,event.y,null,event.ctrlKey,event.altKey,event.shiftKey,false,-Number(event.delta));
         for(str in event)
         {
            Log.log(str + ":" + event[str]);
         }
         Log.log(event.delta);
         AngryBirdsSocial.smLevelMain.mouseWheel(mEvent);
      }
      
      public static function moveToGameView(levelKey:String) : void
      {
         ExternalInterfaceHandler.performCall("showSavedLevel",levelKey);
      }
      
      public static function updateLevelInfo(levelKey:String) : *
      {
         ExternalInterfaceHandler.performCall("getLevelInfo",levelKey);
      }
   }
}
