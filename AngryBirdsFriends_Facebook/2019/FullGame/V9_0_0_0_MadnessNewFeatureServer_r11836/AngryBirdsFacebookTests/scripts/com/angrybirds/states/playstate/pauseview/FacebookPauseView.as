package com.angrybirds.states.playstate.pauseview
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.data.DataModel;
   import com.angrybirds.data.level.EpisodeModel;
   import com.angrybirds.data.level.LevelManager;
   import com.angrybirds.engine.FacebookLevelMain;
   import com.angrybirds.engine.controllers.FacebookGameLogicController;
   import com.angrybirds.engine.objects.LevelObjectManager;
   import com.angrybirds.friendsbar.FriendsBar;
   import com.angrybirds.friendsbar.events.FriendsBarEvent;
   import com.angrybirds.popups.PopupLayerIndexFacebook;
   import com.angrybirds.popups.SyncingPopup;
   import com.angrybirds.rovionews.RovioNewsManager;
   import com.angrybirds.states.StateFacebookWonderlandLevelSelection;
   import com.angrybirds.states.StateLevelSelection;
   import com.angrybirds.states.playstate.AbstractPlayStateView;
   import com.angrybirds.states.playstate.event.PlayStateEvent;
   import com.rovio.data.localization.LocalizationManager;
   import com.rovio.events.UIInteractionEvent;
   import com.rovio.factory.Log;
   import com.rovio.sound.SoundEngine;
   import com.rovio.tween.ISimpleTween;
   import com.rovio.tween.TweenManager;
   import com.rovio.ui.Components.Helpers.UIComponentInteractiveRovio;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.ui.Components.UIButtonRovio;
   import com.rovio.ui.Components.UIContainerRovio;
   import com.rovio.ui.Components.UIMovieClipRovio;
   import com.rovio.ui.Components.UITextFieldRovio;
   import com.rovio.ui.popup.PopupPriorityType;
   import com.rovio.utils.FacebookAnalyticsCollector;
   import com.rovio.utils.analytics.INavigable;
   import flash.events.Event;
   import flash.text.TextFieldAutoSize;
   
   public class FacebookPauseView extends AbstractPlayStateView implements INavigable
   {
      
      public static const OFFSCREEN_X:Number = -250;
       
      
      private var mRovioNewsManager:RovioNewsManager;
      
      private var mSyncingPopup:SyncingPopup;
      
      private var mPendingEventIndex:int;
      
      private var mPendingEventName:String;
      
      private var mPendingEventComponent:UIEventListenerRovio;
      
      protected var mMenuTween:ISimpleTween = null;
      
      private var mSoundsOffMovieClip:UIMovieClipRovio;
      
      public function FacebookPauseView(viewContainer:UIContainerRovio, levelManager:LevelManager, dataModel:DataModel, localizationManager:LocalizationManager, newsManager:RovioNewsManager)
      {
         this.mRovioNewsManager = newsManager;
         super(viewContainer,levelManager,dataModel,localizationManager);
      }
      
      override protected function init() : void
      {
      }
      
      override protected function refresh() : void
      {
         var chapterTextField:UITextFieldRovio = mViewContainer.getItemByName("TextField_ChapterName") as UITextFieldRovio;
         chapterTextField.mTextField.autoSize = TextFieldAutoSize.CENTER;
      }
      
      override public function dispose() : void
      {
         this.disable(false);
      }
      
      override public function disable(useTransition:Boolean) : void
      {
         this.closePauseMenu(useTransition);
         super.disable(useTransition);
         this.setPauseMenuButtonStates(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
         var friendsBar:FriendsBar = (AngryBirdsEngine.smApp as AngryBirdsFacebook).friendsBar;
         if(friendsBar)
         {
            friendsBar.removeEventListener(FriendsBarEvent.MUTE_TOGGLE_REQUESTED,this.onMuteToggleRequestedFromFriendsBar);
         }
      }
      
      override public function enable(useTransition:Boolean) : void
      {
         super.enable(useTransition);
         mViewContainer.setVisibility(true);
         mViewContainer.addEventListener(UIInteractionEvent.UI_INTERACTION,this.onUIInteraction);
         var friendsBar:FriendsBar = (AngryBirdsEngine.smApp as AngryBirdsFacebook).friendsBar;
         if(friendsBar)
         {
            friendsBar.addEventListener(FriendsBarEvent.MUTE_TOGGLE_REQUESTED,this.onMuteToggleRequestedFromFriendsBar);
         }
         (AngryBirdsEngine.smApp as AngryBirdsFacebook).setVisibleButtonFriendsBar(FriendsBar.SIDEBAR_BUTTON_STATE_PAUSE);
         this.refresh();
         this.openPauseMenu(useTransition);
      }
      
      protected function getLevelNameToDisplay(levelid:String) : String
      {
         return AngryBirdsFacebook.levelManager.getFacebookNameFromLevelId(levelid);
      }
      
      private function stopTweens() : void
      {
         if(this.mMenuTween != null)
         {
            this.mMenuTween.stop();
         }
         this.mMenuTween = null;
      }
      
      protected function openPauseMenu(useTransition:Boolean) : void
      {
         var chapterTextField:UITextFieldRovio = null;
         if(mLevelManager.currentLevel != null)
         {
            chapterTextField = mViewContainer.getItemByName("TextField_ChapterName") as UITextFieldRovio;
            chapterTextField.mTextField.text = mLevelManager.getCurrentEpisodeModel().writtenName;
            (mViewContainer.getItemByName("TextField_LevelName") as UITextFieldRovio).mTextField.text = this.getLevelNameToDisplay(mLevelManager.currentLevel);
            (mViewContainer.getItemByName("TextField_LevelName") as UITextFieldRovio).y = chapterTextField.height + 15;
         }
         (mViewContainer.getItemByName("Container_PauseMenu") as UIContainerRovio).x = OFFSCREEN_X;
         this.setPauseMenuButtonsEnabled(false);
         var uiCR:UIContainerRovio = mViewContainer.getItemByName("Container_PauseMenu") as UIContainerRovio;
         this.mSoundsOffMovieClip = uiCR.getItemByName("MovieClip_SoundsOff") as UIMovieClipRovio;
         this.mSoundsOffMovieClip.mClip.mouseEnabled = false;
         this.setSoundsOffButtonState(!AngryBirdsBase.getSoundsEnabled());
         AngryBirdsEngine.pause();
         var lom:LevelObjectManager = (AngryBirdsEngine.controller as FacebookGameLogicController).levelMain.levelObjects;
         for(var i:int = 0; i < lom.getObjectCount(); i++)
         {
            lom.getObject(i).update(0,null);
         }
         if(this.mMenuTween != null)
         {
            this.mMenuTween.stop();
         }
         this.mRovioNewsManager.reset();
         this.mRovioNewsManager.activateNewsItems(true);
         this.mMenuTween = TweenManager.instance.createParallelTween(TweenManager.instance.createTween(mViewContainer.getItemByName("Container_PauseMenu") as UIContainerRovio,{"x":0},null,0.25),TweenManager.instance.createTween((mViewContainer.getItemByName("MovieClip_DarkBG") as UIMovieClipRovio).mClip,{"alpha":1},{"alpha":0},0.25),TweenManager.instance.createTween((mViewContainer.getItemByName("News_Item_Holder") as UIContainerRovio).mClip,{"alpha":1},{"alpha":0},0.25));
         this.mMenuTween.onComplete = this.onOpenPauseMenuTweenComplete;
         this.mMenuTween.play();
      }
      
      protected function onOpenPauseMenuTweenComplete() : void
      {
         this.setPauseMenuButtonsEnabled(true);
         this.stopTweens();
      }
      
      protected function setSoundsOffButtonState(value:Boolean) : void
      {
         this.mSoundsOffMovieClip.mClip.visible = value;
      }
      
      protected function setPauseMenuButtonsEnabled(enable:Boolean) : void
      {
         (mViewContainer.getItemByName("Button_Resume") as UIButtonRovio).setEnabled(enable);
         (mViewContainer.getItemByName("Button_Replay") as UIButtonRovio).setEnabled(enable);
         (mViewContainer.getItemByName("Button_Menu") as UIButtonRovio).setEnabled(enable);
      }
      
      protected function setPauseMenuButtonStates(state:String) : void
      {
         (mViewContainer.getItemByName("Button_Resume") as UIButtonRovio).setComponentVisualState(state);
         (mViewContainer.getItemByName("Button_Replay") as UIButtonRovio).setComponentVisualState(state);
         (mViewContainer.getItemByName("Button_Menu") as UIButtonRovio).setComponentVisualState(state);
      }
      
      protected function closePauseMenu(useTransition:Boolean) : void
      {
         if(this.mMenuTween != null)
         {
            this.mMenuTween.stop();
         }
         this.mMenuTween = TweenManager.instance.createParallelTween(TweenManager.instance.createTween(mViewContainer.getItemByName("Container_PauseMenu") as UIContainerRovio,{"x":OFFSCREEN_X},null,0.25),TweenManager.instance.createTween((mViewContainer.getItemByName("MovieClip_DarkBG") as UIMovieClipRovio).mClip,{"alpha":0},{"alpha":1},0.25),TweenManager.instance.createTween((mViewContainer.getItemByName("News_Item_Holder") as UIContainerRovio).mClip,{"alpha":0},{"alpha":1},0.25));
         this.mMenuTween.onComplete = this.onClosePauseMenuTweenComplete;
         this.mMenuTween.play();
         if(this.mRovioNewsManager)
         {
            this.mRovioNewsManager.activateNewsItems(false);
         }
      }
      
      protected function onClosePauseMenuTweenComplete() : void
      {
         mViewContainer.setVisibility(false);
         mViewContainer.removeEventListener(UIInteractionEvent.UI_INTERACTION,this.onUIInteraction);
         this.stopTweens();
      }
      
      protected function getLevelSelectionState() : String
      {
         var chapter:EpisodeModel = mLevelManager.getCurrentEpisodeModel();
         if(chapter && chapter.name == StateFacebookWonderlandLevelSelection.EPISODE_WONDERLAND)
         {
            return StateFacebookWonderlandLevelSelection.STATE_NAME;
         }
         return StateLevelSelection.STATE_NAME;
      }
      
      private function onPowerupsHandlerLoadingComplete(e:Event) : void
      {
         (AngryBirdsEngine.smLevelMain as FacebookLevelMain).powerupsHandler.removeEventListener(Event.COMPLETE,this.onPowerupsHandlerLoadingComplete);
         if(this.mSyncingPopup)
         {
            this.mSyncingPopup.close();
            this.mSyncingPopup = null;
         }
         this.onUIInteraction(new UIInteractionEvent(UIInteractionEvent.UI_INTERACTION,this.mPendingEventIndex,this.mPendingEventName,this.mPendingEventComponent));
      }
      
      protected function onUIInteraction(event:UIInteractionEvent) : void
      {
         var friendsBar:FriendsBar = null;
         var particlesEnabled:* = false;
         if(mIsDisabled)
         {
            return;
         }
         if(["MENU","RESTART_LEVEL"].indexOf(event.eventName) != -1 && (AngryBirdsEngine.smLevelMain as FacebookLevelMain).powerupsHandler.isLoading(false))
         {
            this.mPendingEventIndex = event.eventIndex;
            this.mPendingEventName = event.eventName;
            this.mPendingEventComponent = event.component;
            (AngryBirdsEngine.smLevelMain as FacebookLevelMain).powerupsHandler.addEventListener(Event.COMPLETE,this.onPowerupsHandlerLoadingComplete);
            this.mSyncingPopup = new SyncingPopup(PopupLayerIndexFacebook.ALERT,PopupPriorityType.TOP);
            AngryBirdsBase.singleton.popupManager.openPopup(this.mSyncingPopup);
            return;
         }
         if(event.eventName == "RESTART_LEVEL")
         {
         }
         if(this.mRovioNewsManager)
         {
            this.mRovioNewsManager.uiInteractionHandler(event.eventName);
         }
         switch(event.eventName)
         {
            case "HELP":
               SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
               dispatchEvent(new PlayStateEvent(PlayStateEvent.RESUME_LEVEL));
               Log.log(FriendsBarEvent.TUTORIAL_REQUESTED);
               (AngryBirdsEngine.smApp as AngryBirdsFacebook).friendsBar.dispatchEvent(new FriendsBarEvent(FriendsBarEvent.TUTORIAL_REQUESTED));
               break;
            case "RESTART_LEVEL":
               SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
               dispatchEvent(new PlayStateEvent(PlayStateEvent.RESTART_LEVEL));
               break;
            case "RESUME_LEVEL":
               SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
               dispatchEvent(new PlayStateEvent(PlayStateEvent.RESUME_LEVEL));
               break;
            case "END_LEVEL":
               break;
            case "MENU":
               SoundEngine.stopSounds();
               dispatchEvent(new PlayStateEvent(PlayStateEvent.GO_TO_STATE,this.getLevelSelectionState()));
               FacebookAnalyticsCollector.getInstance().trackLevelEndedEvent(false,mLevelManager.currentLevel,this.getTournamentId(),mLevelManager.getCurrentEpisodeModel().name,AngryBirdsEngine.smLevelMain.slingshot.getTotalBirdCount() - AngryBirdsEngine.smLevelMain.slingshot.getBirdCount(),AngryBirdsEngine.smLevelMain.slingshot.getTotalBirdCount(),AngryBirdsBase.singleton.dataModel.userProgress.getStarsForLevel(mLevelManager.currentLevel),(AngryBirdsEngine.smLevelMain as FacebookLevelMain).getUsedPowerups(),AngryBirdsEngine.controller.getScore(),false);
               SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
               break;
            case "TOGGLE_SOUNDS":
               if(!SoundEngine.soundsOn)
               {
                  SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
               }
               friendsBar = (AngryBirdsEngine.smApp as AngryBirdsFacebook).friendsBar;
               if(friendsBar)
               {
                  friendsBar.dispatchEvent(new FriendsBarEvent(FriendsBarEvent.MUTE_TOGGLE_REQUESTED));
               }
               (AngryBirdsEngine.smApp as AngryBirdsFacebook).friendsBar.updateSoundButtonStates();
               break;
            case "TOGGLE_PARTICLES":
               SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
               particlesEnabled = !AngryBirdsEngine.getParticlesEnabled();
               AngryBirdsEngine.setParticlesEnabled(particlesEnabled);
               mViewContainer.getItemByName("MovieClip_ParticlesOff").setVisibility(!particlesEnabled);
               break;
            case "FULLSCREEN_BUTTON":
               SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
               AngryBirdsBase.singleton.toggleFullScreen();
         }
      }
      
      protected function onMuteToggleRequestedFromFriendsBar(e:FriendsBarEvent) : void
      {
         this.setSoundsOffButtonState(!this.mSoundsOffMovieClip.mClip.visible);
      }
      
      public function getName() : String
      {
         return "PauseView";
      }
      
      protected function getTournamentId() : int
      {
         return -1;
      }
   }
}
