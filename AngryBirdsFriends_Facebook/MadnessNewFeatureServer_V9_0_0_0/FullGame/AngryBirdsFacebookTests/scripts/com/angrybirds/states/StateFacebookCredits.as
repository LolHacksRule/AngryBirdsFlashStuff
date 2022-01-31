package com.angrybirds.states
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.data.InitDataLoader;
   import com.angrybirds.data.level.LevelManager;
   import com.angrybirds.data.level.LevelModel;
   import com.angrybirds.engine.FacebookLevelMain;
   import com.angrybirds.friendsbar.FriendsBar;
   import com.rovio.data.localization.LocalizationManager;
   import com.rovio.factory.Log;
   import com.rovio.sound.SoundEngine;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.utils.analytics.INavigable;
   import data.user.FacebookUserProgress;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import starling.core.Starling;
   
   public class StateFacebookCredits extends StateCredits implements INavigable
   {
      
      private static const RESETTING_FOR_THE_CREDITS_UPDATE_LOOPS:int = 8;
       
      
      private var mResettingForTheCreditsUpdateCounter:int;
      
      public function StateFacebookCredits(levelManager:LevelManager, localizationManager:LocalizationManager, initState:Boolean = false, name:String = "CreditsState")
      {
         super(levelManager,localizationManager,initState,name);
      }
      
      override public function activate(previousState:String) : void
      {
         super.activate(previousState);
         (AngryBirdsEngine.smApp as AngryBirdsFacebook).setVisibleButtonFriendsBar(FriendsBar.SIDEBAR_BUTTON_STATE_INFO);
         if(!(AngryBirdsBase.singleton.dataModel.userProgress as FacebookUserProgress).isEggUnlocked("1000-3"))
         {
            mUIView.getItemByName("ButtonEasterEgg3").setVisibility(true);
         }
         else
         {
            mUIView.getItemByName("ButtonEasterEgg3").setVisibility(false);
         }
         mUIView.getItemByName("MovieClip_Loading").setVisibility(true);
      }
      
      override protected function setVersion() : void
      {
         mUIView.setText(Log.sVersionInfo,"TextField_Version_Number");
         mUIView.setText("","TextField_Version_Number_Server");
         mUIView.setText("User id: " + (AngryBirdsBase.singleton.dataModel.userProgress as FacebookUserProgress).userID,"TextField_Facebook_User_Id");
      }
      
      override protected function init() : void
      {
         super.init();
         mUIView.getItemByName("Button_FullScreen").setVisibility(false);
      }
      
      override protected function readyToShowCredits() : void
      {
         mUIView.getItemByName("MovieClip_Loading").setVisibility(this.mResettingForTheCreditsUpdateCounter != 0);
      }
      
      override protected function onUIInteraction(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         super.onUIInteraction(eventIndex,eventName,component);
         switch(eventName)
         {
            case "CREDITS_CLOSE_BUTTON":
               SoundEngine.playSound("Menu_Back",SoundEngine.UI_CHANNEL);
               setNextState(StateFacebookMainMenuSelection.STATE_NAME);
               break;
            case "TERMS_AND_PRIVACY":
               SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
               AngryBirdsBase.singleton.exitFullScreen();
               navigateToURL(new URLRequest(AngryBirdsFacebook.PRIVACY_WEB_URL + "?locale=" + InitDataLoader.USER_LOCALE_SHORT + "&token=" + AngryBirdsFacebook(AngryBirdsFacebook.sSingleton).dataModelFriends.rovioAccessToken.accessToken + "&appId=" + AngryBirdsFacebook.beaconAppId),"_blank");
               break;
            case "EASTER_EGG_3":
               mUIView.getItemByName("ButtonEasterEgg3").setVisibility(false);
               (AngryBirdsBase.singleton.dataModel.userProgress as FacebookUserProgress).setEggUnlocked("1000-3");
               break;
            case "APP_ENGINE_BUTTON":
               navigateToURL(new URLRequest("https://developers.google.com/appengine/"),"_blank");
         }
      }
      
      public function getName() : String
      {
         return STATE_NAME;
      }
      
      override protected function activateLevelEngine() : void
      {
         this.mResettingForTheCreditsUpdateCounter = RESETTING_FOR_THE_CREDITS_UPDATE_LOOPS;
         (AngryBirdsEngine.smLevelMain as FacebookLevelMain).setCurrentTheme(LevelModel.DEFAULT_THEME);
         super.activateLevelEngine();
         mUIView.deactivateView();
         AngryBirdsEngine.smLevelMain.setVisible(false);
      }
      
      override protected function update(deltaTime:Number) : void
      {
         super.update(deltaTime);
         if(this.mResettingForTheCreditsUpdateCounter > 0)
         {
            --this.mResettingForTheCreditsUpdateCounter;
            if(this.mResettingForTheCreditsUpdateCounter == 0)
            {
               mUIView.activateView();
               AngryBirdsEngine.smLevelMain.setVisible(true);
               Starling.current.color = 9752286;
            }
         }
      }
   }
}
