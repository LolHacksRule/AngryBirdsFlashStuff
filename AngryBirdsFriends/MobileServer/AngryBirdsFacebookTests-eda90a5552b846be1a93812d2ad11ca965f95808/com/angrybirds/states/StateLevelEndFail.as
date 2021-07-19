package com.angrybirds.states
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.data.level.LevelManager;
   import com.angrybirds.sfx.ColorFadeLayer;
   import com.rovio.data.localization.LocalizationManager;
   import com.rovio.sound.SoundEngine;
   import com.rovio.ui.Components.Helpers.UIComponentInteractiveRovio;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.ui.Components.UIButtonRovio;
   import com.rovio.ui.Views.UIView;
   import com.rovio.ui.Views.ViewXMLLibrary;
   
   public class StateLevelEndFail extends StateBaseLevel
   {
      
      public static const STATE_NAME:String = "LevelEndFailState";
       
      
      private var mColorFadeLayer:ColorFadeLayer;
      
      public function StateLevelEndFail(levelManager:LevelManager, localizationManager:LocalizationManager, initState:Boolean = false, name:String = "LevelEndFailState")
      {
         super(levelManager,initState,name,localizationManager);
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
         var nextLevelId:String = mLevelManager.getNextLevelId();
         if(nextLevelId && !AngryBirdsBase.singleton.dataModel.userProgress.isLevelOpen(nextLevelId) || !AngryBirdsBase.singleton.dataModel.userProgress.isLevelPassed(mLevelManager.currentLevel))
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
      
      override public function activate(previousState:String) : void
      {
         super.activate(previousState);
         AngryBirdsEngine.pause();
         this.mColorFadeLayer = new ColorFadeLayer(0,0,0,0);
         mUIView.movieClip.addChildAt(this.mColorFadeLayer,mUIView.movieClip.numChildren - 1);
         this.showButtons();
         this.mColorFadeLayer.fadeToAlpha(0.7);
      }
      
      override protected function update(deltaTime:Number) : void
      {
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
         this.setButtonStates(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.hideButtons();
      }
      
      protected function setButtonStates(state:String) : void
      {
         (mUIView.getItemByName("Button_Menu") as UIButtonRovio).setComponentVisualState(state);
         (mUIView.getItemByName("Button_Replay") as UIButtonRovio).setComponentVisualState(state);
         (mUIView.getItemByName("Button_NextLevel") as UIButtonRovio).setComponentVisualState(state);
         (mUIView.getItemByName("Button_CutScene") as UIButtonRovio).setComponentVisualState(state);
         (mUIView.getItemByName("Button_MightyEagle") as UIButtonRovio).setComponentVisualState(state);
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
               setNextState(this.getCutSceneState());
               break;
            case "REPLAY":
               SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
               setNextState(this.getLevelLoadState());
               break;
            case "MENU":
               SoundEngine.stopSounds();
               SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
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
