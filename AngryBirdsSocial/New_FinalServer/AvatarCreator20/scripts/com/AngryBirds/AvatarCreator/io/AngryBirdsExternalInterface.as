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
      
      public static function getAuthenticationToken() : String
      {
         AvatarCreator.setDebugText("Get token... ");
         Log.log("get token");
         return ExternalInterfaceHandler.performCall("getToken");
      }
      
      public static function setAuthenticationToken(param1:String) : Boolean
      {
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
      
      public static function closeAvatarEditor() : void
      {
         ExternalInterfaceHandler.performCall("showAvatarEditor()");
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
   }
}
