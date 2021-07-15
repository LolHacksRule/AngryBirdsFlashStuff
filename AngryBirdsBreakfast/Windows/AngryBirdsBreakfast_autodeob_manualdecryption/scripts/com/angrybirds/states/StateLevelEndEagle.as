package com.angrybirds.states
{
   import com.rovio.ui.Components.Helpers.UIComponentInteractiveRovio;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.ui.Components.UITextFieldRovio;
   import com.rovio.ui.Components.UIMovieClipRovio;
   import com.rovio.ui.Components.UIButtonRovio;
   import com.rovio.sound.SoundEngine;
   import com.rovio.ui.Views.ViewXMLLibrary;
   import com.rovio.ui.Views.UIView;
   import com.angrybirds.data.level.LevelManager;
   import com.rovio.data.localization.LocalizationManager;
   import com.angrybirds.sfx.ColorFadeLayer;
   import com.rovio.tween.TweenManager;
   import com.rovio.tween.ISimpleTween;
   import com.angrybirds.AngryBirdsEngine;
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
      
      public function StateLevelEndEagle(param1:LevelManager, param2:LocalizationManager, param3:Boolean = false, param4:String = "LevelEndEagleState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         mUIView = new UIView(this);
         mUIView.init(ViewXMLLibrary.mLibrary.Views.View_LevelEndEagle[0]);
         this.mFullFillWidth = (mUIView.getItemByName("MovieClip_EagleMeterFill") as UIMovieClipRovio).width;
         SoundEngine.addNewChannelControl(LOOP_CHANNEL_NAME,1,1);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.mColorFadeLayer = new ColorFadeLayer(0,0,0,0);
         mUIView.movieClip.addChildAt(this.mColorFadeLayer,mUIView.movieClip.numChildren - 1);
         (mUIView.getItemByName("MovieClip_EagleMeterEmpty") as UIMovieClipRovio).setVisibility(true);
         (mUIView.getItemByName("MovieClip_EagleMeterFill") as UIMovieClipRovio).setVisibility(true);
         SoundEngine.playSound("LevelCompletedTheme1");
         this.mColorFadeLayer.fadeToAlpha(0.7);
         var _loc2_:int = AngryBirdsEngine.controller.getEagleScore();
         this.mOldHighEagleScore = AngryBirdsBase.singleton.dataModel.userProgress.getEagleScoreForLevel(mLevelManager.currentLevel);
         var _loc3_:* = _loc2_ > this.mOldHighEagleScore;
         if(_loc3_)
         {
            this.saveNewHighScore(_loc2_);
         }
         (mUIView.getItemByName("TextField_EaglePercentage") as UITextFieldRovio).mTextField.text = _loc2_ + "%";
         SoundEngine.playSound("Hiscore_Count",LOOP_CHANNEL_NAME,100);
         this.mPercentageTween = TweenManager.instance.createTween(this,{"mEagleScoreCounter":_loc2_},{"mEagleScoreCounter":0},_loc2_ / 100 * 4);
         this.mPercentageTween.onComplete = this.onCountComplete;
         this.mPercentageTween.play();
      }
      
      protected function saveNewHighScore(param1:Number) : void
      {
         AngryBirdsBase.singleton.dataModel.userProgress.setEagleScoreForLevel(mLevelManager.currentLevel,param1);
      }
      
      protected function onCountComplete() : void
      {
         var _loc1_:GlowFilter = null;
         SoundEngine.stopChannel(LOOP_CHANNEL_NAME);
         if(this.mEagleScoreCounter == 100)
         {
            SoundEngine.playSound("Hiscore_Badge",LOOP_CHANNEL_NAME);
            _loc1_ = new GlowFilter(16777215,1,22,22,2.5,10);
            (mUIView.getItemByName("MovieClip_EagleMeterEffect") as UIMovieClipRovio).setVisibility(true);
            (mUIView.getItemByName("MovieClip_EagleMeterFill") as UIMovieClipRovio).mClip.filters = [_loc1_];
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(int(this.mEagleScoreCounter) > this.mOldHighEagleScore)
         {
            (mUIView.getItemByName("TextField_EaglePercentage") as UITextFieldRovio).mTextField.text = int(this.mEagleScoreCounter) + "%";
            (mUIView.getItemByName("TextField_EaglePercentageEffects") as UITextFieldRovio).mTextField.text = int(this.mEagleScoreCounter) + "%";
         }
         else
         {
            (mUIView.getItemByName("TextField_EaglePercentage") as UITextFieldRovio).mTextField.text = int(this.mOldHighEagleScore) + "%";
            (mUIView.getItemByName("TextField_EaglePercentageEffects") as UITextFieldRovio).mTextField.text = int(this.mOldHighEagleScore) + "%";
         }
         var _loc2_:Rectangle = new Rectangle(0,0,this.mFullFillWidth * (this.mEagleScoreCounter / 100),(mUIView.getItemByName("MovieClip_EagleMeterFill") as UIMovieClipRovio).height);
         (mUIView.getItemByName("MovieClip_EagleMeterFill") as UIMovieClipRovio).mClip.scrollRect = _loc2_;
         (mUIView.getItemByName("MovieClip_EagleMeterEffect") as UIMovieClipRovio).mClip.rotation = (mUIView.getItemByName("MovieClip_EagleMeterEffect") as UIMovieClipRovio).mClip.rotation + param1 / 20;
         if(nextState.length > 0)
         {
            AngryBirdsEngine.mIsRunning.clearLevel();
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
      
      override protected function onUIInteraction(param1:int, param2:String, param3:UIEventListenerRovio) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               prepareToLoadNextClassicLevel();
               setNextState(StateCutScene.STATE_NAME);
               break;
            case "REPLAY":
               setNextState(StateLevelLoadClassic.STATE_NAME);
               break;
            case "MENU":
               SoundEngine.stopSounds();
               setNextState(StateLevelSelection.STATE_NAME);
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsBase.singleton.toggleFullScreen();
         }
      }
   }
}
