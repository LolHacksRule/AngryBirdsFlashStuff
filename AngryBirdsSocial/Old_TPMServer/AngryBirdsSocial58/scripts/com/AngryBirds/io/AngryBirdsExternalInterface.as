package com.AngryBirds.io
{
   import com.AngryBirds.model.UserInfoModel;
   import com.AngryBirds.states.StateLevelLoad;
   import com.rovio.externalInterface.ExternalInterfaceHandler;
   
   public class AngryBirdsExternalInterface
   {
       
      
      public function AngryBirdsExternalInterface()
      {
         super();
      }
      
      public static function init() : void
      {
         ExternalInterfaceHandler.registerMethod("setAuthToken",setAuthenticationToken);
         ExternalInterfaceHandler.registerMethod("showEditor",requestShowEditor);
         ExternalInterfaceHandler.registerMethod("showLevel",requestShowLevel);
         ExternalInterfaceHandler.registerMethod("showSavedLevel",requestShowSavedLevel);
         ExternalInterfaceHandler.registerMethod("setUserName",requestSetUserName);
         ExternalInterfaceHandler.registerMethod("setFriends",requestSetFriends);
         ExternalInterfaceHandler.registerMethod("setFacebookUserInfo",requestSetFacebookInfo);
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
      
      public static function setAuthenticationToken(param1:String) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         AngryBirdsSocial.USER.authenticationToken = param1;
         AngryBirdsSocial.USER.loginInfoChanged = true;
         AngryBirdsSocial.mVersionNumberTextField.text += " Token:" + param1;
         return true;
      }
      
      public static function requestShowEditor(param1:Object) : void
      {
         AngryBirdsSocial.smEditorMode = true;
         AngryBirdsSocial.smReload = true;
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
         StateLevelLoad.prepareToLoadExternalLevel(param1);
      }
      
      public static function requestSetUserName(param1:String) : void
      {
         AngryBirdsSocial.USER.name = param1;
         AngryBirdsSocial.USER_INFO.userName = param1;
         AngryBirdsSocial.mVersionNumberTextField.text += " User:" + param1;
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
   }
}
