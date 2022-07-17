package com.AngryBirds.AvatarCreator.io
{
   import com.rovio.externalInterface.ExternalInterfaceHandler;
   import com.rovio.factory.Log;
   
   public class AngryBirdsExternalInterface
   {
       
      
      public function AngryBirdsExternalInterface()
      {
         super();
      }
      
      public static function init() : void
      {
         ExternalInterfaceHandler.registerMethod("setAuthToken",setAuthenticationToken);
      }
      
      public static function getAuthenticationToken() : void
      {
         AvatarCreator.setDebugText("Get token... ");
         Log.log("get token");
         setAuthenticationToken(ExternalInterfaceHandler.performCall("getToken"));
      }
      
      public static function setAuthenticationToken(param1:String) : Boolean
      {
         Log.log("Token received: " + param1);
         if(param1 == null)
         {
            AvatarCreator.setDebugText("Not logged in");
            return false;
         }
         AvatarCreator.USER.authenticationToken = param1;
         AvatarCreator.USER.loginInfoChanged = true;
         AvatarCreator.setDebugText("Token: " + param1);
         return true;
      }
   }
}
