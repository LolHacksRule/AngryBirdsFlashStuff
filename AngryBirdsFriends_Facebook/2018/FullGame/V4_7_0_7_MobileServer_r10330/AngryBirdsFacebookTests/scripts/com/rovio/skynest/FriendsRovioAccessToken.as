package com.rovio.skynest
{
   import com.angrybirds.AngryBirdsEngine;
   import flash.events.Event;
   import flash.net.URLVariables;
   
   public class FriendsRovioAccessToken extends RovioAccessToken
   {
       
      
      protected var mFacebookAccessToken:String;
      
      public function FriendsRovioAccessToken(facebookUserId:String, facebookAccessToken:String, environment:String = "cloud")
      {
         this.mFacebookAccessToken = facebookAccessToken;
         super(AngryBirdsFacebook.beaconAppId,facebookUserId,environment);
      }
      
      override protected function getRequestData() : URLVariables
      {
         var requestData:URLVariables = super.getRequestData();
         requestData.facebookAccessToken = this.mFacebookAccessToken;
         if(this.isFacebookGameroom())
         {
            requestData.distributionChannel = "gameroom";
         }
         return requestData;
      }
      
      override protected function createJSONRequestData() : Object
      {
         var object:Object = super.createJSONRequestData();
         object.externalAttributes = {
            "userId":mPersistentGuid,
            "accessToken":this.mFacebookAccessToken
         };
         if(this.isFacebookGameroom())
         {
            object.distributionChannel = "gameroom";
         }
         return object;
      }
      
      override protected function getClientSecret() : String
      {
         return "LK89BGor97GgrEt89gsTyeYegpo0oPaM";
      }
      
      override protected function onLoadComplete(e:Event) : void
      {
         super.onLoadComplete(e);
         (AngryBirdsEngine.smApp as AngryBirdsFacebook).startAccessTokenRefreshTimer();
      }
      
      public function isFacebookGameroom() : Boolean
      {
         return mUserAgent && mUserAgent.indexOf("FacebookCanvasDesktop") > -1;
      }
      
      public function get environment() : String
      {
         return mEnvironment;
      }
   }
}
