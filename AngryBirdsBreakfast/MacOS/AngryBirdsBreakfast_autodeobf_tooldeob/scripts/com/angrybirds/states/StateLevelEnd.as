package com.angrybirds.states
{
   import com.rovio.utils.Integer;
   import com.rovio.ui.Components.Helpers.UIComponentInteractiveRovio;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.ui.Components.UIContainerRovio;
   import com.rovio.ui.Components.UITextFieldRovio;
   import com.rovio.ui.Components.UIMovieClipRovio;
   import com.rovio.ui.Components.UIButtonRovio;
   import com.rovio.sound.SoundEngine;
   import com.rovio.ui.Views.ViewXMLLibrary;
   import com.rovio.ui.Views.UIView;
   import com.angrybirds.data.level.LevelManager;
   import com.rovio.data.localization.LocalizationManager;
   import com.angrybirds.sfx.Star;
   import com.angrybirds.sfx.ColorFadeLayer;
   import com.angrybirds.sfx.StarSplash;
   import com.rovio.tween.TweenManager;
   import com.rovio.tween.ISimpleTween;
   import com.angrybirds.AngryBirdsEngine;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class StateLevelEnd extends StateBaseLevel
   {
      
      public static const STATE_NAME:String = "LevelEndState";
      
      public static const SHAKE_COUNT:Number = 30;
      
      protected static const LOOP_CHANNEL_NAME:String = "ScoreLoopCountChannel";
      
      protected static const EFFECT_CHANNEL_NAME:String = "EndScreenEffectChannel";
       
      
      private var mShakeTween:ISimpleTween;
      
      private var mShakeCounter:Number;
      
      private var mLevelEndStripeDeltaX:Number = 0.0;
      
      private var mLevelEndStripeDeltaY:Number = 0.0;
      
      private var mStatsRequested:Boolean = false;
      
      private var mStarTimer:Timer;
      
      private var mColorFadeLayer:ColorFadeLayer;
      
      protected var mDefaultButtonPositions:Array;
      
      protected var mStarSplash:StarSplash;
      
      protected var mStarSplashPool:Vector.<StarSplash>;
      
      public var mNewScoreCounter:int;
      
      private var mTimerCount:int;
      
      private var mFinalCount:Boolean;
      
      protected var mSkipBirdBadge:Boolean;
      
      private var mNewScore:Integer;
      
      protected var mIsNewHighScore:Boolean;
      
      private var mScoreTween:ISimpleTween;
      
      protected var mShowShareThreeStar:Boolean;
      
      protected var mStarsBest:int;
      
      public function StateLevelEnd(param1:LevelManager, param2:LocalizationManager, param3:Boolean = false, param4:String = "LevelEndState")
      {
         this.mDefaultButtonPositions = [];
         this.mNewScore = new Integer();
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         mUIView = new UIView(this);
         mUIView.init(this.getViewXML());
         this.initButtonDefaultPositions();
         this.mStarSplashPool = new Vector.<StarSplash>();
         SoundEngine.addNewChannelControl(LOOP_CHANNEL_NAME,1,1);
         SoundEngine.addNewChannelControl(EFFECT_CHANNEL_NAME,3,1);
      }
      
      protected function initButtonDefaultPositions() : void
      {
         this.mDefaultButtonPositions.push((mUIView.getItemByName("Button_Menu") as UIButtonRovio).x);
         this.mDefaultButtonPositions.push((mUIView.getItemByName("Button_Replay") as UIButtonRovio).x);
         this.mDefaultButtonPositions.push((mUIView.getItemByName("Button_NextLevel") as UIButtonRovio).x);
         this.mDefaultButtonPositions.push((mUIView.getItemByName("Button_CutScene") as UIButtonRovio).x);
      }
      
      protected function getViewXML() : XML
      {
         return ViewXMLLibrary.mLibrary.Views.View_LevelEnd[0];
      }
      
      protected function showButtonsCutScene() : void
      {
         if(!AngryBirdsBase.singleton.dataModel.userProgress.isLevelPassed(mLevelManager.currentLevel))
         {
            (mUIView.getItemByName("Button_Menu") as UIButtonRovio).setVisibility(false);
            (mUIView.getItemByName("Button_Replay") as UIButtonRovio).setVisibility(true);
            (mUIView.getItemByName("Button_NextLevel") as UIButtonRovio).setVisibility(false);
            (mUIView.getItemByName("Button_CutScene") as UIButtonRovio).setVisibility(true);
            (mUIView.getItemByName("Button_Replay") as UIButtonRovio).x = this.mDefaultButtonPositions[0] + Math.abs(this.mDefaultButtonPositions[1] - this.mDefaultButtonPositions[0]) / 2;
            (mUIView.getItemByName("Button_CutScene") as UIButtonRovio).x = this.mDefaultButtonPositions[1] + Math.abs(this.mDefaultButtonPositions[2] - this.mDefaultButtonPositions[1]) / 2;
         }
         else
         {
            (mUIView.getItemByName("Button_Menu") as UIButtonRovio).setVisibility(true);
            (mUIView.getItemByName("Button_Replay") as UIButtonRovio).setVisibility(true);
            (mUIView.getItemByName("Button_NextLevel") as UIButtonRovio).setVisibility(false);
            (mUIView.getItemByName("Button_CutScene") as UIButtonRovio).setVisibility(true);
            (mUIView.getItemByName("Button_Menu") as UIButtonRovio).x = this.mDefaultButtonPositions[0];
            (mUIView.getItemByName("Button_Replay") as UIButtonRovio).x = this.mDefaultButtonPositions[1];
            (mUIView.getItemByName("Button_CutScene") as UIButtonRovio).x = this.mDefaultButtonPositions[2];
         }
      }
      
      protected function showButtonsNormal() : void
      {
         (mUIView.getItemByName("Button_Menu") as UIButtonRovio).setVisibility(true);
         (mUIView.getItemByName("Button_Replay") as UIButtonRovio).setVisibility(true);
         (mUIView.getItemByName("Button_CutScene") as UIButtonRovio).setVisibility(false);
         if(mLevelManager.getNextLevelId())
         {
            (mUIView.getItemByName("Button_NextLevel") as UIButtonRovio).setVisibility(true);
            (mUIView.getItemByName("Button_Menu") as UIButtonRovio).x = this.mDefaultButtonPositions[0];
            (mUIView.getItemByName("Button_Replay") as UIButtonRovio).x = this.mDefaultButtonPositions[1];
            (mUIView.getItemByName("Button_NextLevel") as UIButtonRovio).x = this.mDefaultButtonPositions[2];
         }
         else
         {
            (mUIView.getItemByName("Button_NextLevel") as UIButtonRovio).setVisibility(false);
            (mUIView.getItemByName("Button_Menu") as UIButtonRovio).x = this.mDefaultButtonPositions[0] + Math.abs(this.mDefaultButtonPositions[1] - this.mDefaultButtonPositions[0]) / 2;
            (mUIView.getItemByName("Button_Replay") as UIButtonRovio).x = this.mDefaultButtonPositions[1] + Math.abs(this.mDefaultButtonPositions[2] - this.mDefaultButtonPositions[1]) / 2;
         }
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.mShowShareThreeStar = false;
         AngryBirdsEngine.pause();
         this.mColorFadeLayer = new ColorFadeLayer(0,0,0,0);
         mUIView.movieClip.addChildAt(this.mColorFadeLayer,mUIView.movieClip.numChildren - 1);
         if(mLevelManager.isCutSceneNext())
         {
            this.showButtonsCutScene();
         }
         else
         {
            this.showButtonsNormal();
         }
         this.mNewScoreCounter = 0;
         this.mFinalCount = false;
         SoundEngine.playSound("LevelCompletedTheme1");
         this.mColorFadeLayer.fadeToAlpha(0.7);
         this.mLevelEndStripeDeltaX = 0;
         this.mLevelEndStripeDeltaY = 0;
         this.startSplashes();
      }
      
      private function startSplashes() : void
      {
         this.mSkipBirdBadge = false;
         this.setScoreData();
         this.mStarTimer = new Timer(500);
         this.mTimerCount = 0;
         this.mStarTimer.addEventListener(TimerEvent.TIMER,this.onTimer);
         this.mStarTimer.start();
      }
      
      protected function setMightyEagleFeather() : void
      {
         if(AngryBirdsBase.singleton.dataModel.userProgress.getEagleScoreForLevel(mLevelManager.currentLevel) == 100)
         {
            (mUIView.getItemByName("MovieClip_ResultMEFeather") as UIMovieClipRovio).mClip.gotoAndStop("On");
         }
         else
         {
            (mUIView.getItemByName("MovieClip_ResultMEFeather") as UIMovieClipRovio).mClip.gotoAndStop("Off");
         }
      }
      
      protected function setScoreStars(param1:int, param2:int) : void
      {
         if(this.mIsNewHighScore)
         {
            param2 = param1;
            AngryBirdsBase.singleton.dataModel.userProgress.setScoreForLevel(mLevelManager.currentLevel,param2);
            mUIView.setText("New Highscore!","TextField_BestScore");
         }
         else
         {
            mUIView.setText("Best " + param2.toString(),"TextField_BestScore");
            this.mStarsBest = mLevelManager.getNumStarsForLevel(mLevelManager.currentLevel,param2);
            switch(this.mStarsBest)
            {
               case 1:
                  (mUIView.getItemByName("MovieClip_BestScoreStars") as UIMovieClipRovio).StopAtLabel("OneStar");
                  break;
               case 2:
                  (mUIView.getItemByName("MovieClip_BestScoreStars") as UIMovieClipRovio).StopAtLabel("TwoStar");
                  break;
               case 3:
                  (mUIView.getItemByName("MovieClip_BestScoreStars") as UIMovieClipRovio).StopAtLabel("ThreeStar");
            }
         }
      }
      
      protected function setScoreData() : void
      {
         var _loc1_:int = AngryBirdsBase.singleton.dataModel.userProgress.getScoreForLevel(mLevelManager.currentLevel);
         var _loc2_:int = AngryBirdsEngine.controller.getScore(10);
         this.mIsNewHighScore = _loc2_ > _loc1_;
         this.setScoreStars(_loc2_,_loc1_);
         this.setMightyEagleFeather();
         var _loc3_:int = AngryBirdsEngine.controller.getEagleScore();
         var _loc4_:int = AngryBirdsBase.singleton.dataModel.userProgress.getEagleScoreForLevel(mLevelManager.currentLevel);
         var _loc5_:*;
         if(_loc5_ = _loc3_ > _loc4_)
         {
            _loc4_ = _loc3_;
            AngryBirdsBase.singleton.dataModel.userProgress.setEagleScoreForLevel(mLevelManager.currentLevel,_loc4_);
         }
         var _loc6_:int = AngryBirdsBase.singleton.dataModel.userProgress.getStarsForLevel(mLevelManager.currentLevel,_loc2_);
         (mUIView.getItemByName("MovieClip_NewHighScoreBadge") as UIMovieClipRovio).setVisibility(false);
         (mUIView.getItemByName("MovieClip_StarLeft") as UIMovieClipRovio).mClip.gotoAndStop("UnLit");
         (mUIView.getItemByName("MovieClip_StarCenter") as UIMovieClipRovio).mClip.gotoAndStop("UnLit");
         (mUIView.getItemByName("MovieClip_StarRight") as UIMovieClipRovio).mClip.gotoAndStop("UnLit");
      }
      
      protected function onBadgeLanded() : void
      {
         if(this.mIsNewHighScore)
         {
            SoundEngine.playSound("Hiscore_Badge",EFFECT_CHANNEL_NAME);
            mUIView.setText("New Highscore!","TextField_NewHighScore");
            (mUIView.getItemByName("TextField_NewHighScore") as UITextFieldRovio).setVisibility(true);
            (mUIView.getItemByName("MovieClip_BestScoreStars") as UIMovieClipRovio).setVisibility(false);
            this.shake();
         }
         else
         {
            (mUIView.getItemByName("TextField_BestScore") as UITextFieldRovio).setVisibility(true);
            (mUIView.getItemByName("MovieClip_BestScoreStars") as UIMovieClipRovio).setVisibility(true);
         }
      }
      
      protected function shake() : void
      {
         this.mLevelEndStripeDeltaX = 0;
         this.mLevelEndStripeDeltaY = 0;
         this.mShakeCounter = SHAKE_COUNT;
      }
      
      private function updateShake(param1:Number) : void
      {
         (mUIView.getItemByName("Container_LevelEndStripe") as UIContainerRovio).x = (mUIView.getItemByName("Container_LevelEndStripe") as UIContainerRovio).x - this.mLevelEndStripeDeltaX;
         (mUIView.getItemByName("Container_LevelEndStripe") as UIContainerRovio).y = (mUIView.getItemByName("Container_LevelEndStripe") as UIContainerRovio).y - this.mLevelEndStripeDeltaY;
         if(this.mShakeCounter > 0)
         {
            this.mLevelEndStripeDeltaX = (Math.random() - 0.5) * (this.mShakeCounter / SHAKE_COUNT) * 20;
            this.mLevelEndStripeDeltaY = (Math.random() - 0.5) * (this.mShakeCounter / SHAKE_COUNT) * 20;
            (mUIView.getItemByName("Container_LevelEndStripe") as UIContainerRovio).x = (mUIView.getItemByName("Container_LevelEndStripe") as UIContainerRovio).x + this.mLevelEndStripeDeltaX;
            (mUIView.getItemByName("Container_LevelEndStripe") as UIContainerRovio).y = (mUIView.getItemByName("Container_LevelEndStripe") as UIContainerRovio).y + this.mLevelEndStripeDeltaY;
         }
         else
         {
            this.mLevelEndStripeDeltaX = 0;
            this.mLevelEndStripeDeltaY = 0;
         }
         this.mShakeCounter -= param1 / 10;
      }
      
      private function onTimer(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:String = null;
         var _loc4_:Number = mLevelManager.getGoldScoreForLevel(mLevelManager.currentLevel);
         var _loc5_:Number = mLevelManager.getSilverScoreForLevel(mLevelManager.currentLevel);
         if((mUIView.getItemByName("MovieClip_StarLeft") as UIMovieClipRovio).mClip.currentLabel == "UnLit")
         {
            SoundEngine.playSound("Hiscore_Count",LOOP_CHANNEL_NAME,100);
            this.mStarTimer.delay = 1000;
            this.mNewScore.assign(AngryBirdsEngine.controller.getScore(10));
            _loc6_ = this.mNewScore.getValue() / _loc4_ * 2;
            if(_loc4_ <= 0)
            {
               _loc6_ = 1;
            }
            this.mScoreTween = TweenManager.instance.createTween(this,{"mNewScoreCounter":this.mNewScore.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.mScoreTween.onComplete = this.countComplete;
            this.mScoreTween.play();
            _loc7_ = this.setStarLeftLit();
            _loc2_ = (mUIView.getItemByName("MovieClip_StarLeft") as UIMovieClipRovio).x + (mUIView.getItemByName("Container_LevelEndStripe") as UIContainerRovio).x;
            _loc3_ = (mUIView.getItemByName("MovieClip_StarLeft") as UIMovieClipRovio).y + (mUIView.getItemByName("Container_LevelEndStripe") as UIContainerRovio).y;
            this.mStarSplash = new StarSplash(AngryBirdsBase.screenWidth,AngryBirdsBase.screenHeight,_loc2_,_loc3_,StarSplash.STARSPLASH_LEFT,StarSplash.STAR_MAX,_loc7_);
            mUIView.addChild(this.mStarSplash);
            this.mStarSplashPool.push(this.mStarSplash);
         }
         else if(this.mNewScore.getValue() >= _loc5_ && (mUIView.getItemByName("MovieClip_StarCenter") as UIMovieClipRovio).mClip.currentLabel == "UnLit")
         {
            _loc8_ = this.setStarCenterLit();
            _loc2_ = (mUIView.getItemByName("MovieClip_StarCenter") as UIMovieClipRovio).x + (mUIView.getItemByName("Container_LevelEndStripe") as UIContainerRovio).x;
            _loc3_ = (mUIView.getItemByName("MovieClip_StarCenter") as UIMovieClipRovio).y + (mUIView.getItemByName("Container_LevelEndStripe") as UIContainerRovio).y;
            this.mStarSplash = new StarSplash(AngryBirdsBase.screenWidth,AngryBirdsBase.screenHeight,_loc2_,_loc3_,StarSplash.STARSPLASH_CENTER,StarSplash.STAR_MAX,_loc8_);
            mUIView.addChild(this.mStarSplash);
            this.mStarSplashPool.push(this.mStarSplash);
         }
         else if(this.mNewScore.getValue() >= _loc4_ && (mUIView.getItemByName("MovieClip_StarRight") as UIMovieClipRovio).mClip.currentLabel == "UnLit")
         {
            this.mShowShareThreeStar = true;
            _loc9_ = this.setStarRightLit();
            _loc2_ = (mUIView.getItemByName("MovieClip_StarRight") as UIMovieClipRovio).x + (mUIView.getItemByName("Container_LevelEndStripe") as UIContainerRovio).x;
            _loc3_ = (mUIView.getItemByName("MovieClip_StarRight") as UIMovieClipRovio).y + (mUIView.getItemByName("Container_LevelEndStripe") as UIContainerRovio).y;
            this.mStarSplash = new StarSplash(AngryBirdsBase.screenWidth,AngryBirdsBase.screenHeight,_loc2_,_loc3_,StarSplash.STARSPLASH_RIGHT,StarSplash.STAR_MAX,_loc9_);
            mUIView.addChild(this.mStarSplash);
            this.mStarSplashPool.push(this.mStarSplash);
         }
         else if(!this.mFinalCount)
         {
            this.mFinalCount = true;
         }
         else
         {
            this.mStarTimer.stop();
            if(this.mIsNewHighScore && !this.mSkipBirdBadge)
            {
               (mUIView.getItemByName("MovieClip_NewHighScoreBadge") as UIMovieClipRovio).setVisibility(true);
            }
            else
            {
               (mUIView.getItemByName("MovieClip_NewHighScoreBadge") as UIMovieClipRovio).setVisibility(false);
            }
            this.mShakeTween = TweenManager.instance.createTween((mUIView.getItemByName("MovieClip_NewHighScoreBadge") as UIMovieClipRovio).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.mShakeTween.onComplete = this.onBadgeLanded;
            this.mShakeTween.play();
         }
         ++this.mTimerCount;
      }
      
      protected function setStarLeftLit() : String
      {
         SoundEngine.playSound("Hiscore_Star_Splash1",EFFECT_CHANNEL_NAME);
         (mUIView.getItemByName("MovieClip_StarLeft") as UIMovieClipRovio).mClip.gotoAndStop("Lit");
         return Star.TYPE_ALL;
      }
      
      protected function setStarCenterLit() : String
      {
         SoundEngine.playSound("Hiscore_Star_Splash2",EFFECT_CHANNEL_NAME);
         (mUIView.getItemByName("MovieClip_StarCenter") as UIMovieClipRovio).mClip.gotoAndStop("Lit");
         return Star.TYPE_ALL;
      }
      
      protected function setStarRightLit() : String
      {
         SoundEngine.playSound("Hiscore_Star_Splash3",EFFECT_CHANNEL_NAME);
         (mUIView.getItemByName("MovieClip_StarRight") as UIMovieClipRovio).mClip.gotoAndStop("Lit");
         return Star.TYPE_ALL;
      }
      
      private function countComplete() : void
      {
         SoundEngine.stopChannel(LOOP_CHANNEL_NAME);
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:StarSplash = null;
         super.update(param1);
         mUIView.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         mUIView.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc2_ in this.mStarSplashPool)
         {
            _loc2_.update(param1);
         }
         if(this.mShakeCounter >= 0)
         {
            this.updateShake(param1);
         }
         if(nextState.length > 0)
         {
            AngryBirdsEngine.smLevelMain.clearLevel();
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.cleanSplashes();
         this.mShakeCounter = 0;
         this.mNewScoreCounter = 0;
         if(this.mScoreTween)
         {
            this.mScoreTween.stop();
            this.mScoreTween = null;
         }
         if(this.mShakeTween)
         {
            this.mShakeTween.stop();
            this.mShakeTween = null;
         }
         SoundEngine.stopChannel(LOOP_CHANNEL_NAME);
         this.setButtonStates(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
         mUIView.setText("0","TextField_LevelEndScore");
         mUIView.setText("0","TextField_LevelEndScoreEffects");
         if(this.mColorFadeLayer)
         {
            if(mUIView.movieClip.contains(this.mColorFadeLayer))
            {
               mUIView.movieClip.removeChild(this.mColorFadeLayer);
            }
            this.mColorFadeLayer.clean();
            this.mColorFadeLayer = null;
         }
      }
      
      protected function setButtonStates(param1:String) : void
      {
         (mUIView.getItemByName("Button_Menu") as UIButtonRovio).setComponentVisualState(param1);
         (mUIView.getItemByName("Button_Replay") as UIButtonRovio).setComponentVisualState(param1);
         (mUIView.getItemByName("Button_NextLevel") as UIButtonRovio).setComponentVisualState(param1);
         (mUIView.getItemByName("Button_CutScene") as UIButtonRovio).setComponentVisualState(param1);
      }
      
      private function cleanSplashes() : void
      {
         var splash:StarSplash = null;
         if(this.mStarTimer)
         {
            this.mStarTimer.stop();
            try
            {
               this.mStarTimer.removeEventListener(TimerEvent.TIMER,this.onTimer);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.mStarSplashPool)
         {
            if(mUIView.contains(splash))
            {
               mUIView.removeChild(splash);
            }
            splash.clean();
         }
         this.mStarSplashPool = new Vector.<StarSplash>();
         this.hideBestScoreTexts();
      }
      
      protected function hideBestScoreTexts() : void
      {
         (mUIView.getItemByName("TextField_BestScore") as UITextFieldRovio).setVisibility(false);
         (mUIView.getItemByName("MovieClip_BestScoreStars") as UIMovieClipRovio).setVisibility(false);
         (mUIView.getItemByName("TextField_NewHighScore") as UITextFieldRovio).setVisibility(false);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function loadNextLevel() : void
      {
         prepareToLoadNextClassicLevel();
         setNextState(this.getCutSceneState());
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:UIEventListenerRovio) : void
      {
         var _loc4_:String = null;
         switch(param2)
         {
            case "NEXT_LEVEL":
               this.loadNextLevel();
               break;
            case "REPLAY":
               setNextState(this.getStateLevelLoadState());
               break;
            case "WATCH_REPLAY":
               setNextState(this.getStateLevelLoadState());
               if(_loc4_ = AngryBirdsEngine.smLevelMain.getReplay())
               {
                  AngryBirdsEngine.smLevelMain.initializeReplay(_loc4_);
               }
               break;
            case "MENU":
               SoundEngine.stopSounds();
               setNextState(this.getMenuButtonTargetState());
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsBase.singleton.toggleFullScreen();
         }
      }
      
      protected function getStateLevelLoadState() : String
      {
         return StateLevelLoadClassic.STATE_NAME;
      }
      
      protected function getCutSceneState() : String
      {
         return StateCutScene.STATE_NAME;
      }
      
      public function getMenuButtonTargetState() : String
      {
         return StateLevelSelection.STATE_NAME;
      }
   }
}
