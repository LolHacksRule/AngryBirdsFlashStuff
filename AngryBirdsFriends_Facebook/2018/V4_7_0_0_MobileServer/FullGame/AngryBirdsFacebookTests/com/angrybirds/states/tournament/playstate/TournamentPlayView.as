package com.angrybirds.states.tournament.playstate
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.data.DataModel;
   import com.angrybirds.data.level.LevelManager;
   import com.angrybirds.data.level.item.LevelItem;
   import com.angrybirds.engine.FacebookLevelMain;
   import com.angrybirds.engine.controllers.GameLogicController;
   import com.angrybirds.engine.objects.LevelObjectManager;
   import com.angrybirds.friendsbar.FriendsBar;
   import com.angrybirds.popups.tutorial.TutorialPopupManagerFacebook;
   import com.angrybirds.states.playstate.playview.FacebookPlayView;
   import com.angrybirds.states.tournament.StateTournamentLevelEndFail;
   import com.angrybirds.states.tournament.StateTournamentLevelLoad;
   import com.angrybirds.tournament.TournamentModel;
   import com.angrybirds.tournamentEvents.ItemsCollection.FacebookLevelObjectCollectibleItem;
   import com.angrybirds.tournamentEvents.ItemsCollection.ItemsCollectionManager;
   import com.angrybirds.tournamentEvents.TournamentEventManager;
   import com.angrybirds.tournamentEvents.scoreMultiplier.ScoreMultiplierManager;
   import com.rovio.data.localization.LocalizationManager;
   import com.rovio.events.UIInteractionEvent;
   import com.rovio.graphics.FacebookAnimationManager;
   import com.rovio.tween.ISimpleTween;
   import com.rovio.tween.TweenManager;
   import com.rovio.ui.Components.UIContainerRovio;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class TournamentPlayView extends FacebookPlayView
   {
      
      private static const SCORE_MULTIPLIER_ICON_MAX_ALPHA:Number = 0.8;
       
      
      private var mScoreMultiplierBlinkIconLayer:MovieClip;
      
      private var mScoreMultiplierIconBlinkingUp:Boolean;
      
      private var mScoreMultiplierButtonTween:ISimpleTween;
      
      private var mScoreMultiplierManager:ScoreMultiplierManager;
      
      public function TournamentPlayView(viewContainer:UIContainerRovio, levelManager:LevelManager, levelController:GameLogicController, dataModel:DataModel, localizationManager:LocalizationManager)
      {
         super(viewContainer,levelManager,levelController,dataModel,localizationManager);
      }
      
      override protected function init() : void
      {
         super.init();
      }
      
      override public function enable(useTransition:Boolean) : void
      {
         super.enable(useTransition);
         this.mScoreMultiplierManager = TournamentEventManager.instance.getActivatedEventManager() as ScoreMultiplierManager;
         if(this.mScoreMultiplierManager)
         {
            this.mScoreMultiplierManager.addEventListener(ScoreMultiplierManager.SCORE_MULTIPLIER_UPDATE_EVENT,this.onScoreMultiplierUpdated);
         }
      }
      
      override public function disable(useTransition:Boolean) : void
      {
         super.disable(useTransition);
         if(this.mScoreMultiplierManager)
         {
            this.mScoreMultiplierManager.removeEventListener(ScoreMultiplierManager.SCORE_MULTIPLIER_UPDATE_EVENT,this.onScoreMultiplierUpdated);
         }
         this.stopScoreMultiplierButtonTween();
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         this.stopScoreMultiplierButtonTween();
      }
      
      override protected function onUIInteraction(event:UIInteractionEvent) : void
      {
         switch(event.eventName)
         {
            case "PAUSE":
               (AngryBirdsEngine.smLevelMain as FacebookLevelMain).powerupsHandler.cleanUpJumpTween();
         }
         super.onUIInteraction(event);
      }
      
      override protected function showScoresForLevel() : void
      {
         (AngryBirdsEngine.smApp as AngryBirdsFacebook).setFriendsBarData(FriendsBar.SCORE_LIST_EMPTY);
         (AngryBirdsEngine.smApp as AngryBirdsFacebook).friendsBar.loadLevelStandings();
         (AngryBirdsEngine.smApp as AngryBirdsFacebook).friendsBar.loadLeagueLevelStandings();
      }
      
      override protected function getLevelLoadState() : String
      {
         return StateTournamentLevelLoad.STATE_NAME;
      }
      
      override public function getLoserState() : String
      {
         return StateTournamentLevelEndFail.STATE_NAME;
      }
      
      override protected function showTutorials() : void
      {
         TutorialPopupManagerFacebook.showPowerUpTutorials("ALL_TOURNAMENT",true);
         TutorialPopupManagerFacebook.showTutorials(true,true);
      }
      
      override public function dispose() : void
      {
         super.dispose();
      }
      
      private function onScoreMultiplierUpdated(e:Event) : void
      {
         if(this.mScoreMultiplierManager)
         {
            if(this.mScoreMultiplierManager.scoreMultiplierActivated)
            {
               if(!mViewContainer.getItemByName("ScoreMultiplierIcon").visible)
               {
                  mViewContainer.getItemByName("ScoreMultiplierIcon").mClip.scaleX = 0;
                  mViewContainer.getItemByName("ScoreMultiplierIcon").mClip.scaleY = 0;
                  this.mScoreMultiplierButtonTween = TweenManager.instance.createTween(mViewContainer.getItemByName("ScoreMultiplierIcon").mClip,{
                     "scaleX":1,
                     "scaleY":1
                  },{
                     "scaleX":0,
                     "scaleY":0
                  },0.2);
                  this.mScoreMultiplierButtonTween.play();
                  mViewContainer.getItemByName("ScoreMultiplierIcon").visible = true;
                  if(!this.mScoreMultiplierBlinkIconLayer)
                  {
                     this.mScoreMultiplierBlinkIconLayer = mViewContainer.getItemByName("ScoreMultiplierIcon").mClip.getChildByName("ScoreMultiplierIconOverlay") as MovieClip;
                  }
                  this.mScoreMultiplierBlinkIconLayer.alpha = 0;
                  this.mScoreMultiplierIconBlinkingUp = true;
               }
            }
            else if(mViewContainer.getItemByName("ScoreMultiplierIcon").visible)
            {
               this.mScoreMultiplierButtonTween = TweenManager.instance.createTween(mViewContainer.getItemByName("ScoreMultiplierIcon").mClip,{
                  "scaleX":0,
                  "scaleY":0
               },{
                  "scaleX":1,
                  "scaleY":1
               },0.2);
               this.mScoreMultiplierButtonTween.play();
               this.mScoreMultiplierButtonTween.onComplete = function():void
               {
                  mViewContainer.getItemByName("ScoreMultiplierIcon").visible = false;
               };
            }
         }
      }
      
      override protected function skipToLevelEnd(levelEndActionForAnalytics:String) : void
      {
         super.skipToLevelEnd(levelEndActionForAnalytics);
         if(this.mScoreMultiplierManager)
         {
            this.mScoreMultiplierManager.activateScoreMultiplier(false);
         }
      }
      
      override public function update(deltaTime:Number) : void
      {
         super.update(deltaTime);
         if(this.mScoreMultiplierManager && this.mScoreMultiplierBlinkIconLayer)
         {
            if(this.mScoreMultiplierManager.getIconBlinking())
            {
               if(this.mScoreMultiplierIconBlinkingUp)
               {
                  if(this.mScoreMultiplierBlinkIconLayer.alpha < SCORE_MULTIPLIER_ICON_MAX_ALPHA)
                  {
                     this.mScoreMultiplierBlinkIconLayer.alpha += 0.3;
                  }
                  else
                  {
                     this.mScoreMultiplierBlinkIconLayer.alpha = SCORE_MULTIPLIER_ICON_MAX_ALPHA;
                     this.mScoreMultiplierIconBlinkingUp = false;
                  }
               }
               else
               {
                  this.mScoreMultiplierBlinkIconLayer.alpha = Math.max(0,this.mScoreMultiplierBlinkIconLayer.alpha - 0.3);
                  if(this.mScoreMultiplierBlinkIconLayer.alpha == 0)
                  {
                     this.mScoreMultiplierIconBlinkingUp = true;
                     this.mScoreMultiplierManager.setIconBlinking(false);
                  }
               }
            }
         }
      }
      
      private function stopScoreMultiplierButtonTween() : void
      {
         if(this.mScoreMultiplierButtonTween)
         {
            this.mScoreMultiplierButtonTween.gotoEndAndStop();
            this.mScoreMultiplierButtonTween = null;
         }
      }
      
      override protected function handleCollectibleItems() : void
      {
         var eventManager:ItemsCollectionManager = null;
         var animationManager:FacebookAnimationManager = null;
         var itemGraphicName:String = null;
         var brandedItemName:String = null;
         var collectibleItem:FacebookLevelObjectCollectibleItem = null;
         var defaultItem:LevelItem = null;
         super.handleCollectibleItems();
         if(TournamentEventManager.instance.isEventActivated())
         {
            eventManager = TournamentEventManager.instance.getActivatedEventManager() as ItemsCollectionManager;
            if(eventManager)
            {
               if(eventManager.hasCollectableItemsLeft())
               {
                  animationManager = FacebookAnimationManager(AngryBirdsEngine.smLevelMain.animationManager);
                  itemGraphicName = FacebookLevelObjectCollectibleItem.DEFAULT_ITEM_NAME;
                  brandedItemName = FacebookLevelObjectCollectibleItem.COLLECTIBLE_ITEM_NAME_PREFIX + "_" + eventManager.getCollectibleItemName();
                  if(animationManager.getAnimation(brandedItemName))
                  {
                     itemGraphicName = brandedItemName;
                  }
                  collectibleItem = mFacebookLevelObjectManager.addObject(itemGraphicName,0,0,0,LevelObjectManager.ID_NEXT_FREE) as FacebookLevelObjectCollectibleItem;
                  if(collectibleItem && !collectibleItem.levelItem.soundResource)
                  {
                     defaultItem = (AngryBirdsEngine.smLevelMain as FacebookLevelMain).levelItemManager.getItem(FacebookLevelObjectCollectibleItem.DEFAULT_ITEM_NAME);
                     collectibleItem.levelItem.soundResource = defaultItem.soundResource;
                  }
               }
            }
         }
      }
      
      override protected function getTournamentId() : int
      {
         if(TournamentModel.instance.currentTournament)
         {
            return TournamentModel.instance.currentTournament.id;
         }
         return -1;
      }
   }
}
