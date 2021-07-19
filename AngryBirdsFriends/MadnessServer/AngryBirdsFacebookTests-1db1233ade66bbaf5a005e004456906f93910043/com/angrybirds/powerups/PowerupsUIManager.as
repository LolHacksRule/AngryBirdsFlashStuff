package com.angrybirds.powerups
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.data.DataModelFriends;
   import com.angrybirds.data.ItemsInventory;
   import com.angrybirds.data.events.InventoryUpdatedEvent;
   import com.angrybirds.data.level.FacebookLevelManager;
   import com.angrybirds.data.level.LevelManager;
   import com.angrybirds.data.level.LevelModel;
   import com.angrybirds.data.level.LevelModelFriends;
   import com.angrybirds.engine.FacebookLevelMain;
   import com.angrybirds.engine.FacebookLevelSlingshot;
   import com.angrybirds.engine.LevelSlingshot;
   import com.angrybirds.engine.TunerFriends;
   import com.angrybirds.engine.controllers.FacebookGameLogicController;
   import com.angrybirds.popups.ErrorPopup;
   import com.angrybirds.popups.PopupLayerIndexFacebook;
   import com.angrybirds.popups.powerup.PowerupSuggestionPopup;
   import com.angrybirds.popups.tutorial.TutorialPopupManagerFacebook;
   import com.angrybirds.shoppopup.ShopItem;
   import com.angrybirds.shoppopup.events.QuickPurchaseEvent;
   import com.angrybirds.shoppopup.quickbuy.QuickPurchaseHandler;
   import com.angrybirds.slingshots.SlingShotUIManager;
   import com.angrybirds.tournament.TournamentModel;
   import com.angrybirds.tournamentEvents.TournamentEventManager;
   import com.rovio.assets.AssetCache;
   import com.rovio.ui.Components.Helpers.UIComponentRovio;
   import com.rovio.ui.Components.UIContainerRovio;
   import com.rovio.ui.popup.IPopup;
   import com.rovio.ui.popup.PopupPriorityType;
   import com.rovio.ui.popup.event.PopupEvent;
   import com.rovio.utils.AmountToFourCharacterString;
   import com.rovio.utils.FacebookGoogleAnalyticsTracker;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.text.TextField;
   
   public class PowerupsUIManager extends EventDispatcher
   {
      
      private static const MILLISECONDS_IN_HOUR:Number = 3600000;
      
      private static const FRENZY_ALERT_OFFSET_X:Number = -130;
      
      private static const REPLAYS_BEFORE_POWERUP_SUGGESTION:int = 5;
      
      private static const HOURS_UNTIL_NEXT_POWERUP_SUGGESTION:Number = 1 / 6;
      
      private static const POWERUP_SUGGESTION_STAY_TIME_MS:Number = 6000;
      
      protected static const DEFAULT_POWERUP_STORY_LEVEL:PowerupDefinition = PowerupType.sBirdFood;
      
      protected static const DEFAULT_POWERUP_TOURNAMENT:PowerupDefinition = PowerupType.sExtraBird;
      
      protected static const SHOW_INTERVAL_IN_MS:int = 2000;
      
      private static var sLastPlayedLevel:String;
      
      private static var sLastTimePowerupAlertWasShown:Number = 0;
      
      private static var sLevelReplays:int = 0;
      
      private static var sPowerupsHaveBeenUsed:Boolean = false;
       
      
      protected var mPowerupSuggestionPopup:PowerupSuggestionPopup;
      
      protected var mUsePowerupSuggestion:Boolean = true;
      
      private var mPowerupSuggestionRestarts:int = 0;
      
      protected var mUIView:UIContainerRovio;
      
      protected var mPowerupsButtonsContainer:UIContainerRovio;
      
      private var mPowerUpMenuPosX:Number = 0;
      
      private var mGameLogicController:FacebookGameLogicController;
      
      private var mLevelManager:LevelManager;
      
      private var mPowerupsDisabledDuringSlingShotAnimation:Boolean;
      
      private var mQuickPurchaseHandler:QuickPurchaseHandler;
      
      private var mPowerupIntroAnimation:MovieClip;
      
      public function PowerupsUIManager(uiView:UIContainerRovio, levelManager:LevelManager)
      {
         super();
         this.mUIView = uiView;
         this.mLevelManager = levelManager;
         this.init();
      }
      
      protected function init() : void
      {
         this.mPowerupsButtonsContainer = this.mUIView.getItemByName("Container_Buttons") as UIContainerRovio;
         if(sLastPlayedLevel != this.mLevelManager.currentLevel)
         {
            sLevelReplays = 0;
            sPowerupsHaveBeenUsed = false;
         }
         else
         {
            ++sLevelReplays;
         }
         sLastPlayedLevel = this.mLevelManager.currentLevel;
         this.mPowerupsDisabledDuringSlingShotAnimation = true;
      }
      
      public function checkForPowerupSuggestion() : void
      {
         var currentMS:Number = NaN;
         var hours:Number = NaN;
         if(sLevelReplays >= REPLAYS_BEFORE_POWERUP_SUGGESTION)
         {
            sLevelReplays = 0;
            currentMS = (AngryBirdsBase.singleton.dataModel as DataModelFriends).serverSynchronizedTime.synchronizedTimeStamp;
            hours = (currentMS - sLastTimePowerupAlertWasShown) / MILLISECONDS_IN_HOUR;
            if(hours >= HOURS_UNTIL_NEXT_POWERUP_SUGGESTION)
            {
               sLastTimePowerupAlertWasShown = currentMS;
               this.showPowerupSuggestion();
            }
         }
      }
      
      protected function showPowerupSuggestion() : void
      {
         var levelModel:LevelModel = null;
         var levelModelFriends:LevelModelFriends = null;
         var optimalPowerup:PowerupDefinition = null;
         if(!this.mPowerupSuggestionPopup)
         {
            levelModel = this.mLevelManager.getLevelForId(this.mLevelManager.currentLevel);
            levelModelFriends = LevelModelFriends(levelModel);
            if(!levelModelFriends.optimalPowerup || levelModelFriends.optimalPowerup == "")
            {
               optimalPowerup = !!this.mLevelManager.getCurrentEpisodeModel().isTournament ? DEFAULT_POWERUP_TOURNAMENT : DEFAULT_POWERUP_STORY_LEVEL;
            }
            else
            {
               optimalPowerup = PowerupType.getPowerupByID(levelModelFriends.optimalPowerup);
            }
            this.mPowerupSuggestionPopup = new PowerupSuggestionPopup(PopupLayerIndexFacebook.NORMAL,PopupPriorityType.DEFAULT,optimalPowerup,this.mLevelManager.currentLevel);
            this.mPowerupSuggestionPopup.addEventListener(PowerupEvent.POWERUP_USE,this.onPowerupUsed);
            this.mPowerupSuggestionPopup.addEventListener(PopupEvent.CLOSE_COMPLETE,this.onPowerupSuggestionClosed);
            this.mPowerupSuggestionPopup.addEventListener(PopupEvent.OPEN_COMPLETE,this.onPowerupSuggestionOpened);
            AngryBirdsBase.singleton.popupManager.openPopup(this.mPowerupSuggestionPopup);
         }
         FacebookGoogleAnalyticsTracker.trackPowerupSuggestionShown(this.mLevelManager.currentLevel);
      }
      
      public function activate(gameLogicController:FacebookGameLogicController, clearUsedPowerups:Boolean = true, enablePowerupButtons:Boolean = true) : void
      {
         var currentButton:UIComponentRovio = null;
         var powerupDefiniton:PowerupDefinition = null;
         this.mGameLogicController = gameLogicController;
         this.mGameLogicController.levelMain.powerupsHandler.addEventListener(PowerupEvent.START_ANIMATION,this.startPowerUpIntroAnimation);
         if(clearUsedPowerups)
         {
            (AngryBirdsEngine.smLevelMain as FacebookLevelMain).powerupsHandler.clearUsedPowerups();
         }
         this.updatePowerupButtons();
         if(enablePowerupButtons)
         {
            for each(powerupDefiniton in PowerupType.allPowerups)
            {
               currentButton = this.mUIView.getItemByName(powerupDefiniton.buttonName);
               if(currentButton)
               {
                  currentButton.setEnabled(true);
               }
            }
         }
         ItemsInventory.instance.addEventListener(Event.CHANGE,this.onInventoryCountUpdated);
      }
      
      public function deActivate() : void
      {
         ItemsInventory.instance.removeEventListener(Event.CHANGE,this.onInventoryCountUpdated);
         this.mGameLogicController.levelMain.powerupsHandler.removeEventListener(PowerupEvent.START_ANIMATION,this.startPowerUpIntroAnimation);
         if(this.mPowerupSuggestionPopup)
         {
            this.mPowerupSuggestionPopup.removeEventListener(PowerupEvent.POWERUP_USE,this.onPowerupUsed);
            this.mPowerupSuggestionPopup.removeEventListener(PopupEvent.CLOSE_COMPLETE,this.onPowerupSuggestionClosed);
            this.mPowerupSuggestionPopup.removeEventListener(PopupEvent.OPEN_COMPLETE,this.onPowerupSuggestionOpened);
            this.mPowerupSuggestionPopup.close();
            this.mPowerupSuggestionPopup = null;
         }
         this.stopPowerUpIntroAnimation();
      }
      
      public function run(deltaTime:Number) : void
      {
         if(SlingShotUIManager.SLINGSHOT_INTRO_ANIMATION_RUNNING)
         {
            if(!this.mPowerupsDisabledDuringSlingShotAnimation)
            {
               this.disableAllPowerups();
               this.mPowerupsDisabledDuringSlingShotAnimation = true;
            }
         }
         else if(this.mPowerupsDisabledDuringSlingShotAnimation)
         {
            this.updatePowerupButtons();
            this.mPowerupsDisabledDuringSlingShotAnimation = false;
         }
      }
      
      protected function onPowerupUsed(event:PowerupEvent) : void
      {
         this.mPowerupSuggestionPopup.removeEventListener(PowerupEvent.POWERUP_USE,this.onPowerupUsed);
         this.usePowerup(event.powerupType);
         dispatchEvent(new PowerupEvent(PowerupEvent.POWERUP_USE,event.powerupType));
      }
      
      protected function onPowerupSuggestionClosed(event:PopupEvent) : void
      {
         this.mPowerupSuggestionPopup.removeEventListener(PowerupEvent.POWERUP_USE,this.onPowerupUsed);
         this.mPowerupSuggestionPopup.removeEventListener(PopupEvent.CLOSE_COMPLETE,this.onPowerupSuggestionClosed);
         sLevelReplays = 0;
         dispatchEvent(new PopupEvent(PopupEvent.CLOSE,null));
      }
      
      protected function onPowerupSuggestionOpened(event:PopupEvent) : void
      {
         if(this.mPowerupSuggestionPopup)
         {
            if(!this.mPowerupSuggestionPopup.hasEventListener(PowerupEvent.POWERUP_USE))
            {
               this.mPowerupSuggestionPopup.addEventListener(PowerupEvent.POWERUP_USE,this.onPowerupUsed);
            }
            if(!this.mPowerupSuggestionPopup.hasEventListener(PopupEvent.CLOSE_COMPLETE))
            {
               this.mPowerupSuggestionPopup.addEventListener(PopupEvent.CLOSE_COMPLETE,this.onPowerupSuggestionClosed);
            }
         }
      }
      
      public function usePowerup(eventName:String) : void
      {
         var shopItem:ShopItem = null;
         if(SlingShotUIManager.SLINGSHOT_INTRO_ANIMATION_RUNNING)
         {
            return;
         }
         var powerup:PowerupDefinition = PowerupType.getPowerupByEventName(eventName);
         if(powerup == null)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.ERROR_GENERAL,"Unknown powerup event: " + eventName));
         }
         var powerUpUsesLeft:int = ItemsInventory.instance.getCountForPowerup(powerup.identifier);
         if(powerUpUsesLeft <= 0)
         {
            shopItem = (AngryBirdsBase.singleton.dataModel as DataModelFriends).shopListing.getPowerUpItemById(powerup.identifier);
            this.mQuickPurchaseHandler = new QuickPurchaseHandler(this.mUIView.mClip,shopItem,powerup.prettyName);
            this.mQuickPurchaseHandler.addEventListener(QuickPurchaseEvent.PURCHASE_COMPLETED,this.onQuickPurchaseCompleted);
            this.mQuickPurchaseHandler.purchase();
            this.setPowerupActive(eventName,true);
            return;
         }
         if(powerup.identifier != PowerupType.sExtraBird.identifier)
         {
            TutorialPopupManagerFacebook.showPowerUpTutorials(powerup.eventName);
         }
         sPowerupsHaveBeenUsed = true;
         this.setPowerupActive(eventName,false);
         this.mGameLogicController.levelMain.powerupsHandler.usePowerup(powerup.identifier);
      }
      
      protected function onQuickPurchaseCompleted(event:QuickPurchaseEvent) : void
      {
         var particleCount:int = 40;
         var powerup:PowerupDefinition = PowerupType.getPowerupByID(event.purchasedItemId);
         var uiComponent:UIComponentRovio = this.mUIView.getItemByName(powerup.buttonName);
         var position:Point = uiComponent.mClip.localToGlobal(new Point(0,0));
         for(var i:int = 0; i < particleCount; i++)
         {
            this.mUIView.mClip.addChild(new GlitterParticle(position.x + 10 + Math.random() * 20,position.y + 10 + Math.random() * 20));
         }
      }
      
      protected function startPowerUpIntroAnimation(event:PowerupEvent) : void
      {
         var powerupType:String = event.powerupType;
         this.stopPowerUpIntroAnimation();
         var animationName:String = "";
         switch(powerupType)
         {
            case PowerupType.sBirdFood.identifier:
               animationName = "MovieClip_PowerUpUse_SuperSeeds";
               break;
            case PowerupType.sExtraSpeed.identifier:
               animationName = "MovieClip_PowerUpUse_KingSling";
               break;
            case PowerupType.sLaserSight.identifier:
               animationName = "MovieClip_PowerUpUse_Sling Scope";
               break;
            case PowerupType.sBoombox.identifier:
               animationName = "MovieClip_PowerUpUse_Boombox";
               break;
            case PowerupType.sEarthquake.identifier:
               animationName = "MovieClip_PowerUpUse_Birdquake";
               break;
            case PowerupType.sTntDrop.identifier:
               animationName = "MovieClip_PowerUpUse_TNTDrop";
               break;
            case PowerupType.sExtraBird.identifier:
               animationName = "MovieClip_PowerUp_Wingman";
               AngryBirdsEngine.pause();
               break;
            case PowerupType.sMushroom.identifier:
               animationName = "MovieClip_PowerUpUse_Mushroom";
               break;
            default:
               return;
         }
         var brandedIntroAssetName:String = animationName + "_" + TournamentModel.instance.brandedTournamentAssetId;
         if(AssetCache.assetInCache(brandedIntroAssetName))
         {
            animationName = brandedIntroAssetName;
         }
         var cls:Class = AssetCache.getAssetFromCache(animationName);
         this.mPowerupIntroAnimation = new cls();
         this.mPowerupIntroAnimation.name = animationName;
         this.mPowerupIntroAnimation.addEventListener(Event.ENTER_FRAME,this.onPowerUpIntroAnimationEnterFrame);
         this.mUIView.mClip.addChild(this.mPowerupIntroAnimation);
         this.mPowerupIntroAnimation.gotoAndPlay(1);
      }
      
      private function onPowerUpIntroAnimationEnterFrame(event:Event) : void
      {
         var popupOpen:Boolean = false;
         if(!this.mPowerupIntroAnimation)
         {
            this.mPowerupIntroAnimation.removeEventListener(Event.ENTER_FRAME,this.onPowerUpIntroAnimationEnterFrame);
            return;
         }
         if(AngryBirdsEngine.isPaused)
         {
            popupOpen = AngryBirdsBase.singleton.popupManager.isPopupOpen();
            if(popupOpen)
            {
               if(this.mPowerupIntroAnimation.isPlaying)
               {
                  this.mPowerupIntroAnimation.prevFrame();
                  this.mPowerupIntroAnimation.stop();
                  this.triggerChildClips(this.mPowerupIntroAnimation,true);
                  return;
               }
            }
         }
         else if(!this.mPowerupIntroAnimation.isPlaying)
         {
            this.mPowerupIntroAnimation.play();
            this.triggerChildClips(this.mPowerupIntroAnimation,false);
         }
         if((AngryBirdsEngine.smApp as AngryBirdsFacebook).isFullScreenMode())
         {
            if(this.mPowerupIntroAnimation.name == "MovieClip_PowerUp_Wingman")
            {
               this.mPowerupIntroAnimation.scaleX = this.mPowerupIntroAnimation.scaleY = 2;
            }
            else
            {
               this.mPowerupIntroAnimation.scaleX = this.mPowerupIntroAnimation.scaleY = 1.5;
               this.mPowerupIntroAnimation.x = AngryBirdsBase.screenWidth >> 2;
               this.mPowerupIntroAnimation.y = AngryBirdsBase.screenHeight >> 4;
            }
         }
         else if(this.mPowerupIntroAnimation.name == "MovieClip_PowerUp_Wingman")
         {
            this.mPowerupIntroAnimation.scaleX = this.mPowerupIntroAnimation.scaleY = 1;
         }
         else
         {
            this.mPowerupIntroAnimation.scaleX = this.mPowerupIntroAnimation.scaleY = 0.8;
            this.mPowerupIntroAnimation.x = AngryBirdsBase.screenWidth >> 4;
            this.mPowerupIntroAnimation.y = AngryBirdsBase.screenHeight >> 5;
         }
         if(this.mPowerupIntroAnimation.currentFrame == this.mPowerupIntroAnimation.totalFrames)
         {
            if(this.mPowerupIntroAnimation.name == "MovieClip_PowerUp_Wingman")
            {
               if(!TutorialPopupManagerFacebook.showPowerUpTutorials(PowerupType.sExtraBird.eventName))
               {
                  AngryBirdsEngine.resume();
               }
            }
            this.stopPowerUpIntroAnimation();
         }
      }
      
      private function triggerChildClips(movieClip:MovieClip, stop:Boolean = false) : void
      {
         var clip:MovieClip = null;
         for(var i:int = 0; i < movieClip.numChildren; i++)
         {
            if(movieClip.getChildAt(i) is MovieClip)
            {
               clip = MovieClip(movieClip.getChildAt(i));
               if(clip)
               {
                  if(stop)
                  {
                     clip.stop();
                  }
                  else
                  {
                     clip.play();
                  }
                  if(clip.numChildren > 0)
                  {
                     this.triggerChildClips(clip,stop);
                  }
               }
            }
         }
      }
      
      private function stopPowerUpIntroAnimation() : void
      {
         if(this.mPowerupIntroAnimation)
         {
            this.mPowerupIntroAnimation.removeEventListener(Event.ENTER_FRAME,this.onPowerUpIntroAnimationEnterFrame);
            this.mPowerupIntroAnimation.stop();
            if(this.mPowerupIntroAnimation.parent)
            {
               this.mPowerupIntroAnimation.parent.removeChild(this.mPowerupIntroAnimation);
            }
            this.mPowerupIntroAnimation = null;
         }
      }
      
      protected function updatePowerupButtons(recentlyActivatedPowerup:String = null) : void
      {
         var pd:PowerupDefinition = null;
         for each(pd in PowerupType.sAllPowerups)
         {
            this.powerupButtonStatusUpdate(pd,recentlyActivatedPowerup);
         }
      }
      
      protected function powerupButtonStatusUpdate(powerupDefiniton:PowerupDefinition, recentlyActivatedPowerup:String) : void
      {
         var button:UIComponentRovio = this.mPowerupsButtonsContainer.getItemByName(powerupDefiniton.buttonName);
         var amount:int = ItemsInventory.instance.getCountForPowerup(powerupDefiniton.identifier);
         var infiniteSymbol:MovieClip = button.mClip.getChildByName("Infinite_PowerUpCount") as MovieClip;
         var textField:TextField = button.mClip.getChildByName("TextField_PowerUpCount") as TextField;
         var getMore:MovieClip = button.mClip.getChildByName("MovieClip_GetMore") as MovieClip;
         textField.mouseEnabled = false;
         textField.text = AmountToFourCharacterString.amountToString(amount);
         getMore.visible = false;
         var subscriptionExpiration:Number = ItemsInventory.instance.getSubscriptionExpirationForPowerup(powerupDefiniton.identifier);
         textField.visible = subscriptionExpiration <= 0;
         infiniteSymbol.visible = subscriptionExpiration > 0;
         if(amount == 0)
         {
            this.setPowerupActive(powerupDefiniton.eventName,true);
            return;
         }
         var buttonActive:Boolean = true;
         if(this.mGameLogicController.levelMain.getUsedPowerupCount() >= this.getMaxPowerupsToUse() && PowerupType.sExemptedFromLevelPowerupLimit.indexOf(powerupDefiniton.identifier) == -1)
         {
            buttonActive = false;
         }
         else if(this.mGameLogicController.levelMain.isPowerupUsed(powerupDefiniton.identifier) && amount > 0)
         {
            buttonActive = false;
         }
         else if(this.mGameLogicController.levelMain.mMEInUse && (powerupDefiniton.identifier == PowerupType.sBirdFood.identifier || powerupDefiniton.identifier == PowerupType.sExtraBird.identifier || powerupDefiniton.identifier == PowerupType.sBoombox.identifier || powerupDefiniton.identifier == PowerupType.sMightyEagle.identifier))
         {
            buttonActive = false;
         }
         else if(AngryBirdsEngine.smLevelMain.objects.getPigCount() == 0 && powerupDefiniton.identifier == PowerupType.sMushroom.identifier)
         {
            buttonActive = false;
         }
         else if(!AngryBirdsEngine.smLevelMain.slingshot.birdsAvailable && AngryBirdsEngine.smLevelMain.slingshot.mSlingShotState != FacebookLevelSlingshot.STATE_WAITING_FOR_WINGMAN && recentlyActivatedPowerup != PowerupType.sBoombox.identifier && (powerupDefiniton.identifier == PowerupType.sBirdFood.identifier || powerupDefiniton.identifier == PowerupType.sExtraSpeed.identifier || powerupDefiniton.identifier == PowerupType.sLaserSight.identifier))
         {
            buttonActive = false;
         }
         else if(AngryBirdsEngine.smLevelMain.slingshot.mSlingShotState == LevelSlingshot.STATE_CELEBRATE)
         {
            buttonActive = false;
         }
         this.setPowerupActive(powerupDefiniton.eventName,buttonActive);
      }
      
      public function getMaxPowerupsToUse() : int
      {
         var powerupCount:int = TunerFriends.maxPowerUpsPerLevel;
         if((this.mLevelManager as FacebookLevelManager).isCurrentEpisodeWonderland())
         {
            powerupCount += 1;
         }
         if(TournamentEventManager.instance.canUsePumpkinPowerup())
         {
            powerupCount += 1;
         }
         return powerupCount;
      }
      
      private function onInventoryCountUpdated(e:InventoryUpdatedEvent) : void
      {
         var activatedPowerup:String = null;
         if(!SlingShotUIManager.SLINGSHOT_INTRO_ANIMATION_RUNNING)
         {
            activatedPowerup = e && e.updatedItems && e.updatedItems.length > 0 ? e.updatedItems[0].i : null;
            this.updatePowerupButtons(activatedPowerup);
         }
      }
      
      public function setPowerupActive(powerupEventName:String, enable:Boolean = true) : void
      {
         var powerup:PowerupDefinition = PowerupType.getPowerupByEventName(powerupEventName);
         var currentAlpha:Number = !!enable ? Number(1) : Number(0.4);
         var uiComponent:UIComponentRovio = this.mUIView.getItemByName(powerup.buttonName);
         if(uiComponent)
         {
            uiComponent.setEnabled(enable);
            uiComponent.mClip.alpha = currentAlpha;
         }
      }
      
      public function resetPowerupSuggestionRestart() : void
      {
         sLevelReplays = 0;
      }
      
      public function powerupSuggestionPopup() : IPopup
      {
         return this.mPowerupSuggestionPopup;
      }
      
      public function disableAllPowerups() : void
      {
         var powerupDefiniton:PowerupDefinition = null;
         for each(powerupDefiniton in PowerupType.allPowerups)
         {
            this.setPowerupActive(powerupDefiniton.eventName,false);
         }
      }
   }
}
