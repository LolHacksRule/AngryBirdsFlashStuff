package com.angrybirds.popups
{
   import com.rovio.utils.DynamicLanguage;
   import com.rovio.utils.Integer;
   import com.angrybirds.data.level.item.LevelItemManager;
   import com.angrybirds.data.level.item.LevelItemManagerCustom;
   import com.rovio.ui.Components.Helpers.UIComponentInteractiveRovio;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.ui.Components.UIContainerRovio;
   import com.rovio.ui.Components.UITextFieldRovio;
   import com.rovio.ui.Components.UIMovieClipRovio;
   import com.rovio.ui.Components.UIButtonRovio;
   import com.rovio.sound.SoundEngine;
   import com.rovio.ui.popup.PopupLayerIndexType;
   import com.rovio.ui.popup.PopupPriorityType;
   import com.angrybirds.states.StateLevelEndCustom;
   import com.angrybirds.sfx.StarSplash;
   import com.rovio.tween.TweenManager;
   import com.rovio.tween.ISimpleTween;
   import com.angrybirds.AngryBirdsEngine;
   import com.rovio.factory.XMLFactory;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class PopupLevelEnd extends PopupCustom
   {
      
      private static const STAR_LAND_INTERVAL:Number = 750;
      
      private static var sLevelEndPopupBin:Class = PopupLevelEnd_sLevelEndPopupBin;
      
      public static const SHAKE_COUNT:Number = 30;
      
      protected static const LOOP_CHANNEL_NAME:String = "ScoreLoopCountChannel";
      
      protected static const EFFECT_CHANNEL_NAME:String = "EndScreenEffectChannel";
       
      
      private var mShakeTween:ISimpleTween;
      
      private var mShakeCounter:Number;
      
      private var mLevelEndStripeDeltaX:Number = 0.0;
      
      private var mLevelEndStripeDeltaY:Number = 0.0;
      
      private var mStatsRequested:Boolean = false;
      
      private var mStarTimer:Timer;
      
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
      
      private var mParentState:StateLevelEndCustom;
      
      private var mIsOpen:Boolean;
      
      public function PopupLevelEnd(param1:StateLevelEndCustom, param2:LevelItemManager)
      {
         this.mDefaultButtonPositions = [];
         this.mNewScore = new Integer();
         mUseFadeLayer = true;
         mUseScaleEffect = false;
         mCenterToOrigin = true;
         super(PopupLayerIndexType.LEVEL_END_SCREEN_LAYER_INDEX,PopupPriorityType.OVERRIDE,this.getViewXML());
         mLevelItemManager = param2 as LevelItemManagerCustom;
         this.mParentState = param1;
         SoundEngine.addNewChannelControl(LOOP_CHANNEL_NAME,1,1);
         SoundEngine.addNewChannelControl(EFFECT_CHANNEL_NAME,3,1);
      }
      
      protected function getViewXML() : XML
      {
         var _loc1_:XML = XMLFactory.fromOctetStreamClass(sLevelEndPopupBin);
         return AngryBirdsCustom.changeXMLWitdh(_loc1_);
      }
      
      protected function showButtonsNormal() : void
      {
         (mContainer.getItemByName("Button_Menu") as UIButtonRovio).setVisibility(true);
         (mContainer.getItemByName("Button_Replay") as UIButtonRovio).setVisibility(true);
         if(this.mParentState.levelManager.getNextLevelId())
         {
            (mContainer.getItemByName("Button_NextLevel") as UIButtonRovio).setVisibility(true);
            (mContainer.getItemByName("Button_CutScene") as UIButtonRovio).setVisibility(false);
            (mContainer.getItemByName("Button_Menu") as UIButtonRovio).x = this.mDefaultButtonPositions[0];
            (mContainer.getItemByName("Button_Replay") as UIButtonRovio).x = this.mDefaultButtonPositions[1];
            (mContainer.getItemByName("Button_NextLevel") as UIButtonRovio).x = this.mDefaultButtonPositions[2];
         }
         else if(this.mParentState.levelManager.isCutSceneNext())
         {
            (mContainer.getItemByName("Button_CutScene") as UIButtonRovio).setVisibility(true);
            (mContainer.getItemByName("Button_NextLevel") as UIButtonRovio).setVisibility(false);
            (mContainer.getItemByName("Button_Menu") as UIButtonRovio).x = this.mDefaultButtonPositions[0];
            (mContainer.getItemByName("Button_Replay") as UIButtonRovio).x = this.mDefaultButtonPositions[1];
            (mContainer.getItemByName("Button_CutScene") as UIButtonRovio).x = this.mDefaultButtonPositions[2];
         }
         else
         {
            (mContainer.getItemByName("Button_NextLevel") as UIButtonRovio).setVisibility(false);
            (mContainer.getItemByName("Button_CutScene") as UIButtonRovio).setVisibility(false);
            (mContainer.getItemByName("Button_Menu") as UIButtonRovio).x = this.mDefaultButtonPositions[0] + 40;
            (mContainer.getItemByName("Button_Replay") as UIButtonRovio).x = this.mDefaultButtonPositions[2] - 40;
         }
      }
      
      protected function initButtonDefaultPositions() : void
      {
         this.mDefaultButtonPositions.push(Math.round((mContainer.getItemByName("Button_Menu") as UIButtonRovio).x));
         this.mDefaultButtonPositions.push(Math.round((mContainer.getItemByName("Button_Replay") as UIButtonRovio).x));
         this.mDefaultButtonPositions.push(Math.round((mContainer.getItemByName("Button_NextLevel") as UIButtonRovio).x));
      }
      
      override protected function init() : void
      {
         super.init();
         mUseFadeLayer = true;
         this.updateTextFields();
         this.initButtonDefaultPositions();
         this.mStarSplashPool = new Vector.<StarSplash>();
         AngryBirdsEngine.smLevelMain.background.stopAmbientSound();
         SoundEngine.addNewChannelControl(LOOP_CHANNEL_NAME,1,0.8);
         this.mShowShareThreeStar = false;
         AngryBirdsEngine.pause();
         this.showButtonsNormal();
         this.mNewScoreCounter = 0;
         this.mFinalCount = false;
         SoundEngine.playSound("LevelCompletedTheme1");
         this.mLevelEndStripeDeltaX = 0;
         this.mLevelEndStripeDeltaY = 0;
         this.startSplashes();
         this.mIsOpen = true;
         mCustomContainer.cacheAsBitmap = true;
      }
      
      private function startSplashes() : void
      {
         this.mSkipBirdBadge = false;
         this.setScoreData();
         this.mStarTimer = new Timer(100);
         this.mTimerCount = 0;
         this.mStarTimer.addEventListener(TimerEvent.TIMER,this.onTimer);
         this.mStarTimer.start();
      }
      
      protected function setScoreStars(param1:int, param2:int) : void
      {
         if(this.mIsNewHighScore)
         {
            param2 = param1;
            (AngryBirdsBase.singleton as AngryBirdsCustom).userProgressCustom.setScoreForLevel(this.mParentState.levelManager.currentLevel,param2);
            (AngryBirdsBase.singleton as AngryBirdsCustom).userProgressCustom.setWeekScoreForLevel(this.mParentState.levelManager.currentLevel,param2);
            mContainer.setText("New Highscore!","TextField_BestScore");
         }
         else
         {
            mContainer.setText(param2.toString(),"TextField_BestScore");
            this.mStarsBest = this.mParentState.levelManager.getNumStarsForLevel(this.mParentState.levelManager.currentLevel,param2);
            switch(this.mStarsBest)
            {
               case 1:
                  (mContainer.getItemByName("MovieClip_BestScoreStars") as UIMovieClipRovio).StopAtLabel("OneStar");
                  break;
               case 2:
                  (mContainer.getItemByName("MovieClip_BestScoreStars") as UIMovieClipRovio).StopAtLabel("TwoStar");
                  break;
               case 3:
                  (mContainer.getItemByName("MovieClip_BestScoreStars") as UIMovieClipRovio).StopAtLabel("ThreeStar");
            }
         }
      }
      
      protected function setScoreData() : void
      {
         var _loc1_:int = (AngryBirdsBase.singleton as AngryBirdsCustom).userProgressCustom.getScoreForLevel(this.mParentState.levelManager.currentLevel);
         var _loc2_:int = AngryBirdsEngine.controller.getScore(10);
         this.mIsNewHighScore = _loc2_ >= _loc1_;
         this.setScoreStars(_loc2_,_loc1_);
         var _loc3_:int = (AngryBirdsBase.singleton as AngryBirdsCustom).userProgressCustom.getStarsForLevel(this.mParentState.levelManager.currentLevel,_loc2_);
         (mContainer.getItemByName("MovieClip_NewHighScoreBadge") as UIMovieClipRovio).setVisibility(false);
         (mContainer.getItemByName("MovieClip_StarLeft") as UIMovieClipRovio).mClip.gotoAndStop("UnLit");
         (mContainer.getItemByName("MovieClip_StarCenter") as UIMovieClipRovio).mClip.gotoAndStop("UnLit");
         (mContainer.getItemByName("MovieClip_StarRight") as UIMovieClipRovio).mClip.gotoAndStop("UnLit");
      }
      
      protected function onBadgeLanded() : void
      {
         if(this.mIsNewHighScore)
         {
            SoundEngine.playSound("Hiscore_Badge",EFFECT_CHANNEL_NAME);
            (mContainer.getItemByName("TextField_NewHighScore") as UITextFieldRovio).setVisibility(true);
            (mContainer.getItemByName("MovieClip_BestScoreStars") as UIMovieClipRovio).setVisibility(false);
            this.shake();
         }
         else
         {
            (mContainer.getItemByName("TextField_BestScore") as UITextFieldRovio).setVisibility(true);
            (mContainer.getItemByName("MovieClip_BestScoreStars") as UIMovieClipRovio).setVisibility(true);
            (mContainer.getItemByName("MovieClip_BestScoreText") as UITextFieldRovio).setVisibility(true);
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
         (mContainer.getItemByName("Container_LevelEndStripe") as UIContainerRovio).x = (mContainer.getItemByName("Container_LevelEndStripe") as UIContainerRovio).x - this.mLevelEndStripeDeltaX;
         (mContainer.getItemByName("Container_LevelEndStripe") as UIContainerRovio).y = (mContainer.getItemByName("Container_LevelEndStripe") as UIContainerRovio).y - this.mLevelEndStripeDeltaY;
         if(this.mShakeCounter > 0)
         {
            this.mLevelEndStripeDeltaX = (Math.random() - 0.5) * (this.mShakeCounter / SHAKE_COUNT) * 20;
            this.mLevelEndStripeDeltaY = (Math.random() - 0.5) * (this.mShakeCounter / SHAKE_COUNT) * 20;
            (mContainer.getItemByName("Container_LevelEndStripe") as UIContainerRovio).x = (mContainer.getItemByName("Container_LevelEndStripe") as UIContainerRovio).x + this.mLevelEndStripeDeltaX;
            (mContainer.getItemByName("Container_LevelEndStripe") as UIContainerRovio).y = (mContainer.getItemByName("Container_LevelEndStripe") as UIContainerRovio).y + this.mLevelEndStripeDeltaY;
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
         var _loc4_:Number = this.mParentState.levelManager.getLevelForId(this.mParentState.levelManager.currentLevel).scoreGold;
         var _loc5_:Number = this.mParentState.levelManager.getLevelForId(this.mParentState.levelManager.currentLevel).scoreSilver;
         if((mContainer.getItemByName("MovieClip_StarLeft") as UIMovieClipRovio).mClip.currentLabel == "UnLit")
         {
            SoundEngine.playSound("Hiscore_Count",LOOP_CHANNEL_NAME,999,-1,100);
            SoundEngine.playSound("Hiscore_Star_Splash1",EFFECT_CHANNEL_NAME);
            this.mStarTimer.delay = STAR_LAND_INTERVAL;
            this.mNewScore.assign(AngryBirdsEngine.controller.getScore(10));
            _loc6_ = this.mNewScore.getValue() / _loc4_ * 2;
            if(_loc4_ <= 0)
            {
               _loc6_ = 1;
            }
            this.mScoreTween = TweenManager.instance.createTween(this,{"mNewScoreCounter":this.mNewScore.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.mScoreTween.onComplete = this.countComplete;
            this.mScoreTween.play();
            (mContainer.getItemByName("MovieClip_StarLeft") as UIMovieClipRovio).mClip.gotoAndStop("Lit");
            _loc2_ = (mContainer.getItemByName("MovieClip_StarLeft") as UIMovieClipRovio).x + (mContainer.getItemByName("Container_LevelEndStripe") as UIContainerRovio).x;
            _loc3_ = (mContainer.getItemByName("MovieClip_StarLeft") as UIMovieClipRovio).y + (mContainer.getItemByName("Container_LevelEndStripe") as UIContainerRovio).y;
            this.mStarSplash = new StarSplash(AngryBirdsBase.screenWidth,AngryBirdsBase.screenHeight,_loc2_,_loc3_,StarSplash.STARSPLASH_LEFT);
            mContainer.mClip.addChild(this.mStarSplash);
            this.mStarSplashPool.push(this.mStarSplash);
         }
         else if(this.mNewScore.getValue() >= _loc5_ && (mContainer.getItemByName("MovieClip_StarCenter") as UIMovieClipRovio).mClip.currentLabel == "UnLit")
         {
            SoundEngine.playSound("Hiscore_Star_Splash2",EFFECT_CHANNEL_NAME);
            (mContainer.getItemByName("MovieClip_StarCenter") as UIMovieClipRovio).mClip.gotoAndStop("Lit");
            _loc2_ = (mContainer.getItemByName("MovieClip_StarCenter") as UIMovieClipRovio).x + (mContainer.getItemByName("Container_LevelEndStripe") as UIContainerRovio).x;
            _loc3_ = (mContainer.getItemByName("MovieClip_StarCenter") as UIMovieClipRovio).y + (mContainer.getItemByName("Container_LevelEndStripe") as UIContainerRovio).y;
            this.mStarSplash = new StarSplash(AngryBirdsBase.screenWidth,AngryBirdsBase.screenHeight,_loc2_,_loc3_,StarSplash.STARSPLASH_CENTER);
            mContainer.mClip.addChild(this.mStarSplash);
            this.mStarSplashPool.push(this.mStarSplash);
         }
         else if(this.mNewScore.getValue() >= _loc4_ && (mContainer.getItemByName("MovieClip_StarRight") as UIMovieClipRovio).mClip.currentLabel == "UnLit")
         {
            this.mShowShareThreeStar = true;
            SoundEngine.playSound("Hiscore_Star_Splash3",EFFECT_CHANNEL_NAME);
            (mContainer.getItemByName("MovieClip_StarRight") as UIMovieClipRovio).mClip.gotoAndStop("Lit");
            _loc2_ = (mContainer.getItemByName("MovieClip_StarRight") as UIMovieClipRovio).x + (mContainer.getItemByName("Container_LevelEndStripe") as UIContainerRovio).x;
            _loc3_ = (mContainer.getItemByName("MovieClip_StarRight") as UIMovieClipRovio).y + (mContainer.getItemByName("Container_LevelEndStripe") as UIContainerRovio).y;
            this.mStarSplash = new StarSplash(AngryBirdsBase.screenWidth,AngryBirdsBase.screenHeight,_loc2_,_loc3_,StarSplash.STARSPLASH_RIGHT);
            mContainer.mClip.addChild(this.mStarSplash);
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
               (mContainer.getItemByName("MovieClip_NewHighScoreBadge") as UIMovieClipRovio).setVisibility(true);
               mContainer.getItemByName("TextField_NewHighScore").setVisibility(true);
            }
            else
            {
               (mContainer.getItemByName("MovieClip_NewHighScoreBadge") as UIMovieClipRovio).setVisibility(false);
               mContainer.getItemByName("TextField_NewHighScore").setVisibility(false);
            }
            this.mShakeTween = TweenManager.instance.createTween((mContainer.getItemByName("MovieClip_NewHighScoreBadge") as UIMovieClipRovio).mClip,{
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
      
      private function countComplete() : void
      {
         SoundEngine.stopChannel(LOOP_CHANNEL_NAME);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:StarSplash = null;
         mContainer.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         for each(_loc2_ in this.mStarSplashPool)
         {
            _loc2_.update(param1);
         }
         if(this.mShakeCounter >= 0)
         {
            this.updateShake(param1);
         }
      }
      
      override public function dispose() : void
      {
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
         mContainer.setText("0","TextField_LevelEndScore");
         this.mIsOpen = false;
         super.dispose();
      }
      
      protected function setButtonStates(param1:String) : void
      {
         (mContainer.getItemByName("Button_Menu") as UIButtonRovio).setComponentVisualState(param1);
         (mContainer.getItemByName("Button_Replay") as UIButtonRovio).setComponentVisualState(param1);
         (mContainer.getItemByName("Button_NextLevel") as UIButtonRovio).setComponentVisualState(param1);
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
            if(mContainer.mClip.contains(splash))
            {
               mContainer.mClip.removeChild(splash);
            }
            splash.clean();
         }
         this.mStarSplashPool = new Vector.<StarSplash>();
         this.hideBestScoreTexts();
      }
      
      protected function hideBestScoreTexts() : void
      {
         (mContainer.getItemByName("TextField_BestScore") as UITextFieldRovio).setVisibility(false);
         (mContainer.getItemByName("MovieClip_BestScoreStars") as UIMovieClipRovio).setVisibility(false);
         (mContainer.getItemByName("TextField_NewHighScore") as UITextFieldRovio).setVisibility(false);
      }
      
      protected function loadNextLevel() : void
      {
         this.mParentState.proceedToNextLevel();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:UIEventListenerRovio) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
            case "CUTSCENE":
               mUseFadeLayer = false;
               close();
               this.loadNextLevel();
               break;
            case "REPLAY":
               mUseFadeLayer = false;
               close();
               this.mParentState.setState(this.mParentState.getStateLevelLoadState());
               break;
            case "MENU":
               SoundEngine.stopSounds();
               mUseFadeLayer = false;
               close();
               this.mParentState.setState(this.mParentState.getMenuButtonTargetState());
         }
      }
      
      override public function updateLocalization() : void
      {
         super.updateLocalization();
         this.updateTextFields();
      }
      
      override public function updateTextFields() : void
      {
         DynamicLanguage.instance.updateTextFields(mContainer,"StateEnd");
      }
      
      public function get isOpen() : Boolean
      {
         return this.mIsOpen;
      }
   }
}
