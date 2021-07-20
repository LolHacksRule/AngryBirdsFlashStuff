package com.angrybirds.states
{
   import com.rovio.ui.Components.Helpers.UIComponentInteractiveRovio;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.ui.Components.UIButtonRovio;
   import com.rovio.sound.SoundEngine;
   import com.rovio.ui.Views.ViewXMLLibrary;
   import com.rovio.ui.Views.UIView;
   import com.angrybirds.data.level.LevelManager;
   import com.rovio.data.localization.LocalizationManager;
   import com.angrybirds.sfx.ColorFadeLayer;
   import com.angrybirds.AngryBirdsEngine;
   
   public class StateLevelEndFail extends StateBaseLevel
   {
      
      public static const STATE_NAME:String = "LevelEndFailState";
       
      
      private var mColorFadeLayer:ColorFadeLayer;
      
      public function StateLevelEndFail(param1:LevelManager, param2:LocalizationManager, param3:Boolean = false, param4:String = "LevelEndFailState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         mUIView = new UIView(this);
         mUIView.init(this.getViewXML());
      }
      
      protected function getViewXML() : XML
      {
         return ViewXMLLibrary.mLibrary.Views.View_LevelEndFail[0];
      }
      
      protected function showButtons() : void
      {
         var _loc1_:String = mLevelManager.getNextLevelId();
         if(_loc1_ && !AngryBirdsBase.singleton.dataModel.userProgress.isLevelOpen(_loc1_) || !AngryBirdsBase.singleton.dataModel.userProgress.isLevelPassed(mLevelManager.currentLevel))
         {
            (mUIView.getItemByName("Button_NextLevel") as UIButtonRovio).setVisibility(false);
            (mUIView.getItemByName("Button_CutScene") as UIButtonRovio).setVisibility(false);
            (mUIView.getItemByName("Button_MightyEagle") as UIButtonRovio).setVisibility(true);
         }
         else if(mLevelManager.isCutSceneNext())
         {
            (mUIView.getItemByName("Button_NextLevel") as UIButtonRovio).setVisibility(false);
            (mUIView.getItemByName("Button_CutScene") as UIButtonRovio).setVisibility(true);
         }
         else
         {
            (mUIView.getItemByName("Button_NextLevel") as UIButtonRovio).setVisibility(true);
            (mUIView.getItemByName("Button_CutScene") as UIButtonRovio).setVisibility(false);
         }
      }
      
      protected function hideButtons() : void
      {
         (mUIView.getItemByName("Button_CutScene") as UIButtonRovio).setVisibility(false);
         (mUIView.getItemByName("Button_MightyEagle") as UIButtonRovio).setVisibility(false);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.mColorFadeLayer = new ColorFadeLayer(0,0,0,0);
         mUIView.movieClip.addChildAt(this.mColorFadeLayer,mUIView.movieClip.numChildren - 1);
         this.showButtons();
         this.mColorFadeLayer.fadeToAlpha(0.7);
      }
      
      override protected function update(param1:Number) : void
      {
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
         this.setButtonStates(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.hideButtons();
      }
      
      protected function setButtonStates(param1:String) : void
      {
         (mUIView.getItemByName("Button_Menu") as UIButtonRovio).setComponentVisualState(param1);
         (mUIView.getItemByName("Button_Replay") as UIButtonRovio).setComponentVisualState(param1);
         (mUIView.getItemByName("Button_NextLevel") as UIButtonRovio).setComponentVisualState(param1);
         (mUIView.getItemByName("Button_CutScene") as UIButtonRovio).setComponentVisualState(param1);
         (mUIView.getItemByName("Button_MightyEagle") as UIButtonRovio).setComponentVisualState(param1);
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
               setNextState(this.getCutSceneState());
               break;
            case "REPLAY":
               setNextState(this.getLevelLoadState());
               break;
            case "MENU":
               SoundEngine.stopSounds();
               setNextState(this.getLevelSelectionState());
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsBase.singleton.toggleFullScreen();
         }
      }
      
      protected function getLevelLoadState() : String
      {
         return StateLevelLoadClassic.STATE_NAME;
      }
      
      protected function getLevelSelectionState() : String
      {
         return StateLevelSelection.STATE_NAME;
      }
      
      protected function getCutSceneState() : String
      {
         return StateCutScene.STATE_NAME;
      }
   }
}
