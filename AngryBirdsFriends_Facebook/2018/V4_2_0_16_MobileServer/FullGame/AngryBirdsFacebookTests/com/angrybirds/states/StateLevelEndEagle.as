package com.angrybirds.states
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.data.level.LevelManager;
   import com.angrybirds.sfx.ColorFadeLayer;
   import com.rovio.data.localization.LocalizationManager;
   import com.rovio.sound.SoundEngine;
   import com.rovio.tween.ISimpleTween;
   import com.rovio.tween.TweenManager;
   import com.rovio.ui.Components.Helpers.UIComponentInteractiveRovio;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.ui.Components.UIButtonRovio;
   import com.rovio.ui.Components.UIMovieClipRovio;
   import com.rovio.ui.Components.UITextFieldRovio;
   import com.rovio.ui.Views.UIView;
   import com.rovio.ui.Views.ViewXMLLibrary;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class StateLevelEndEagle extends StateBaseLevel
   {
      
      public static const STATE_NAME:String = "LevelEndEagleState";
      
      private static const LOOP_CHANNEL_NAME:String = "ScoreLoopCountChannel";
       
      
      private var mPercentageTween:ISimpleTween;
      
      private var mColorFadeLayer:ColorFadeLayer;
      
      public var mEagleScoreCounter:Number;
      
      private var mFullFillWidth:Number;
      
      private var mOldHighEagleScore:int;
      
      public function StateLevelEndEagle(levelManager:LevelManager, localizationManager:LocalizationManager, initState:Boolean = false, name:String = "LevelEndEagleState")
      {
         super(levelManager,initState,name,localizationManager);
      }
      
      override protected function init() : void
      {
         super.init();
         mUIView = new UIView(this);
         mUIView.init(ViewXMLLibrary.mLibrary.Views.View_LevelEndEagle[0]);
         this.mFullFillWidth = (mUIView.getItemByName("MovieClip_EagleMeterFill") as UIMovieClipRovio).width;
         SoundEngine.addNewChannelControl(LOOP_CHANNEL_NAME,1,1);
      }
      
      override public function activate(previousState:String) : void
      {
         super.activate(previousState);
         this.mColorFadeLayer = new ColorFadeLayer(0,0,0,0);
         mUIView.movieClip.addChildAt(this.mColorFadeLayer,mUIView.movieClip.numChildren - 1);
         (mUIView.getItemByName("MovieClip_EagleMeterEmpty") as UIMovieClipRovio).setVisibility(true);
         (mUIView.getItemByName("MovieClip_EagleMeterFill") as UIMovieClipRovio).setVisibility(false);
         SoundEngine.playSound("LevelCompletedTheme1");
         this.mColorFadeLayer.fadeToAlpha(0.7);
         var newEagleScore:int = AngryBirdsEngine.controller.getEagleScore();
         this.mOldHighEagleScore = AngryBirdsBase.singleton.dataModel.userProgress.getEagleScoreForLevel(mLevelManager.currentLevel);
         var isNewEagleHighScore:* = newEagleScore > this.mOldHighEagleScore;
         if(isNewEagleHighScore)
         {
            this.saveNewHighScore(newEagleScore);
         }
         (mUIView.getItemByName("TextField_EaglePercentage") as UITextFieldRovio).mTextField.text = newEagleScore + "%";
         SoundEngine.playSound("gamescorescreen_score_count_loop",LOOP_CHANNEL_NAME,100);
         this.mPercentageTween = TweenManager.instance.createTween(this,{"mEagleScoreCounter":newEagleScore},{"mEagleScoreCounter":0},newEagleScore / 100 * 4);
         this.mPercentageTween.onComplete = this.onCountComplete;
         this.mPercentageTween.play();
      }
      
      protected function saveNewHighScore(newEagleScore:Number) : void
      {
         AngryBirdsBase.singleton.dataModel.userProgress.setEagleScoreForLevel(mLevelManager.currentLevel,newEagleScore);
      }
      
      protected function onCountComplete() : void
      {
         var glowFilter:GlowFilter = null;
         SoundEngine.stopChannel(LOOP_CHANNEL_NAME);
         if(this.mEagleScoreCounter == 100)
         {
            SoundEngine.playSound("highscore",LOOP_CHANNEL_NAME);
            glowFilter = new GlowFilter(16777215,1,22,22,2.5,10);
            (mUIView.getItemByName("MovieClip_EagleMeterEffect") as UIMovieClipRovio).setVisibility(true);
            (mUIView.getItemByName("MovieClip_EagleMeterFill") as UIMovieClipRovio).mClip.filters = [glowFilter];
         }
      }
      
      override protected function update(deltaTime:Number) : void
      {
         super.update(deltaTime);
         (mUIView.getItemByName("TextField_EaglePercentage") as UITextFieldRovio).mTextField.text = int(this.mEagleScoreCounter) + "%";
         (mUIView.getItemByName("TextField_EaglePercentageEffects") as UITextFieldRovio).mTextField.text = int(this.mEagleScoreCounter) + "%";
         if(!mUIView.getItemByName("MovieClip_EagleMeterFill").visible)
         {
            mUIView.getItemByName("MovieClip_EagleMeterFill").setVisibility(true);
         }
         var clipRect:Rectangle = new Rectangle(0,0,this.mFullFillWidth * (this.mEagleScoreCounter / 100),(mUIView.getItemByName("MovieClip_EagleMeterFill") as UIMovieClipRovio).height);
         (mUIView.getItemByName("MovieClip_EagleMeterFill") as UIMovieClipRovio).mClip.scrollRect = clipRect;
         (mUIView.getItemByName("MovieClip_EagleMeterEffect") as UIMovieClipRovio).mClip.rotation = (mUIView.getItemByName("MovieClip_EagleMeterEffect") as UIMovieClipRovio).mClip.rotation + deltaTime / 20;
         if(nextState.length > 0)
         {
            AngryBirdsEngine.smLevelMain.clearLevel();
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.mColorFadeLayer)
         {
            if(mUIView.movieClip.contains(this.mColorFadeLayer))
            {
               mUIView.movieClip.removeChild(this.mColorFadeLayer);
            }
            this.mColorFadeLayer.clean();
            this.mColorFadeLayer = null;
         }
         SoundEngine.stopChannel(LOOP_CHANNEL_NAME);
         this.mEagleScoreCounter = 0;
         if(this.mPercentageTween)
         {
            this.mPercentageTween.stop();
            this.mPercentageTween = null;
         }
         (mUIView.getItemByName("MovieClip_EagleMeterFill") as UIMovieClipRovio).mClip.filters = [];
         (mUIView.getItemByName("MovieClip_EagleMeterEffect") as UIMovieClipRovio).setVisibility(false);
         (mUIView.getItemByName("Button_Menu") as UIButtonRovio).setComponentVisualState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
         (mUIView.getItemByName("Button_Replay") as UIButtonRovio).setComponentVisualState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
         (mUIView.getItemByName("Button_NextLevel") as UIButtonRovio).setComponentVisualState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         switch(eventName)
         {
            case "NEXT_LEVEL":
               prepareToLoadNextClassicLevel();
               setNextState(StateCutScene.STATE_NAME);
               break;
            case "REPLAY":
               SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
               setNextState(StateLevelLoadClassic.STATE_NAME);
               break;
            case "MENU":
               SoundEngine.stopSounds();
               SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
               setNextState(this.getMenuButtonTargetState());
               break;
            case "FULLSCREEN_BUTTON":
               SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
               AngryBirdsBase.singleton.toggleFullScreen();
         }
      }
      
      public function getMenuButtonTargetState() : String
      {
         return StateLevelSelection.STATE_NAME;
      }
   }
}
