package com.angrybirds.states
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.data.level.LevelManager;
   import com.angrybirds.friendsbar.FriendsBar;
   import com.angrybirds.states.tournament.branded.StateTournamentLevelSelectionBranded;
   import com.rovio.data.localization.LocalizationManager;
   import com.rovio.graphics.cutscenes.CutScene;
   import com.rovio.graphics.cutscenes.CutSceneAction;
   import com.rovio.graphics.cutscenes.CutSceneManager;
   import com.rovio.sound.SoundEngine;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.ui.Components.UIButtonRovio;
   import com.rovio.utils.FacebookGoogleAnalyticsTracker;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   import starling.core.Starling;
   
   public class StateFacebookCutScene extends StateCutScene
   {
      
      public static const DEFAULT_CUTSCENE_DURATION:int = 16;
       
      
      private var mSwfCutscene:Loader;
      
      public function StateFacebookCutScene(levelManager:LevelManager, localizationManager:LocalizationManager, initState:Boolean = true, name:String = "StateCutScene")
      {
         super(levelManager,localizationManager,initState,name);
      }
      
      override public function activate(previousState:String) : void
      {
         super.activate(previousState);
         (AngryBirdsEngine.smApp as AngryBirdsFacebook).setVisibleButtonFriendsBar(FriendsBar.SIDEBAR_BUTTON_STATE_NONE);
         this.hideButton("Button_Skip");
         this.hideButton("Button_Prev1");
         this.hideButton("Button_Next1");
         this.hideButton("Button_Close");
      }
      
      protected function hideButton(name:String) : void
      {
         if(mUIView.getItemByName(name))
         {
            mUIView.getItemByName(name).setVisibility(false);
         }
      }
      
      override protected function init() : void
      {
         super.init();
         mUIView.getItemByName("Button_Fullscreen").setVisibility(false);
      }
      
      override protected function onCutSceneNotAvailable(e:Event) : void
      {
         super.onCutSceneNotAvailable(e);
         var cutSceneName:String = getCutSceneName();
         FacebookGoogleAnalyticsTracker.trackDownloadFailed("cutscene-" + cutSceneName);
      }
      
      override protected function onUIInteraction(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         super.onUIInteraction(eventIndex,eventName,component);
         switch(eventName)
         {
            case "SHOWCREDITS":
               setNextState(StateCredits.STATE_NAME);
               break;
            case "CLOSE_BUTTON":
               setNextState(StateTournamentLevelSelectionBranded.STATE_NAME);
               break;
            case "SKIP":
               SoundEngine.playSound("Menu_Confirm","ChannelBird",0,1);
         }
      }
      
      override protected function startCutScene() : void
      {
         mUIView.getItemByName("MovieClip_Loading").setVisibility(false);
         var cutsceneName:String = getCutSceneName();
         var swfData:ByteArray = CutSceneManager.getSwfCutscene("cutscene_" + cutsceneName);
         if(mLevelManager.previousLevel == "4001-15")
         {
            (mUIView.getItemByName("Button_Skip") as UIButtonRovio).setUIEventListener(UIEventListenerRovio.LISTENER_EVENT_MOUSE_UP,"SHOWCREDITS");
         }
         else
         {
            (mUIView.getItemByName("Button_Skip") as UIButtonRovio).setUIEventListener(UIEventListenerRovio.LISTENER_EVENT_MOUSE_UP,"SKIP");
         }
         if(swfData)
         {
            Starling.current.color = 0;
            AngryBirdsEngine.smLevelMain.setVisible(false);
            AngryBirdsEngine.smLevelMain.setGameVisible(false);
            this.mSwfCutscene = new Loader();
            this.mSwfCutscene.loadBytes(swfData,new LoaderContext(false,new ApplicationDomain()));
            mUIView.getItemByName("MovieClip_Cutscene2").setVisibility(true);
            mUIView.getItemByName("MovieClip_Cutscene2").mClip.addChild(this.mSwfCutscene);
            mUIView.getItemByName("Button_Prev1").setVisibility(false);
            mUIView.getItemByName("Button_Next1").setVisibility(false);
            if(cutsceneName.toLocaleLowerCase().indexOf("intro") != -1)
            {
               this.playIntroSound();
            }
            else if(cutsceneName.toLocaleLowerCase().indexOf("outro") != -1 || cutsceneName.toLocaleLowerCase().indexOf("complete") != -1)
            {
               this.playOutroSound();
            }
            mCutScene = new CutScene([{
               "action":CutSceneAction.END,
               "time":DEFAULT_CUTSCENE_DURATION
            }],cutsceneName);
            if(CutSceneManager.isOnFinalOutroList(cutsceneName))
            {
               mCutScene.cutSceneType = CutScene.TYPE_FINAL_OUTRO;
            }
         }
         else
         {
            mUIView.getItemByName("MovieClip_Cutscene2").setVisibility(false);
            mUIView.getItemByName("Button_Prev1").setVisibility(false);
            mUIView.getItemByName("Button_Next1").setVisibility(false);
            super.startCutScene();
         }
      }
      
      protected function playIntroSound() : void
      {
         SoundEngine.playSound("birds_intro",SoundEngine.DEFAULT_CHANNEL_NAME,0,1);
      }
      
      protected function playOutroSound() : void
      {
         SoundEngine.playSound("birds_outro",SoundEngine.DEFAULT_CHANNEL_NAME,0,1);
      }
      
      override public function deActivate() : void
      {
         SoundEngine.stopChannel();
         if(this.mSwfCutscene)
         {
            mUIView.getItemByName("MovieClip_Cutscene2").mClip.removeChild(this.mSwfCutscene);
            this.mSwfCutscene.unloadAndStop();
            this.mSwfCutscene = null;
         }
         super.deActivate();
      }
      
      override public function setViewSize(width:Number, height:Number) : void
      {
         super.setViewSize(width,height);
         if(cutScene)
         {
            cutScene.update(0);
         }
      }
   }
}
