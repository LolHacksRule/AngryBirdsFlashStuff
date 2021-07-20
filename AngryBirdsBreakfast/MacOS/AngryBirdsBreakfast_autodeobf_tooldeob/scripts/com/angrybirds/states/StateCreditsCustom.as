package com.angrybirds.states
{
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.sound.SoundEngine;
   import com.rovio.ui.Views.ViewXMLLibrary;
   import com.rovio.ui.Views.UIView;
   import com.angrybirds.data.level.LevelManager;
   import com.rovio.data.localization.LocalizationManager;
   import com.angrybirds.sfx.ColorFadeLayer;
   import com.angrybirds.sfx.ColorFadeLayerEvent;
   import com.angrybirds.engine.LevelSlingshotObject;
   import com.angrybirds.engine.LevelMain;
   import com.angrybirds.engine.controllers.SlowScrollController;
   import com.angrybirds.AngryBirdsEngine;
   import flash.desktop.NativeApplication;
   
   public class StateCreditsCustom extends StateCredits
   {
       
      
      private var mLevelMain:LevelMain;
      
      protected var mFadeSFX:ColorFadeLayer = null;
      
      private var mFadeStarted:Boolean;
      
      public function StateCreditsCustom(param1:LevelManager, param2:LocalizationManager, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override protected function init() : void
      {
         this.mFadeSFX = new ColorFadeLayer(0,0,0,1);
         mUIView = new UIView(this);
         mUIView.init(this.getViewXML());
         this.mLevelMain = AngryBirdsEngine.smLevelMain;
         mEngineController = new SlowScrollController(this.mLevelMain,mLevelManager);
         mUIView.movieClip.cacheAsBitmap = true;
      }
      
      protected function getViewXML() : XML
      {
         var _loc1_:XML = ViewXMLLibrary.mLibrary.Views.View_Credits[0];
         return AngryBirdsCustom.changeXMLWitdh(_loc1_);
      }
      
      override protected function activateLevelEngine() : void
      {
         this.mLevelMain.setVisible(true);
         AngryBirdsEngine.resume();
         AngryBirdsEngine.setController(mEngineController);
         this.mLevelMain.camera.zoomOut();
         this.disableBirdAnimationsAndSounds();
         AngryBirdsCustom.playThemeMusic();
      }
      
      private function disableBirdAnimationsAndSounds() : void
      {
         var _loc1_:LevelSlingshotObject = null;
         for each(_loc1_ in this.mLevelMain.slingshot.mBirds)
         {
            _loc1_.animationsEnabled = false;
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:UIEventListenerRovio) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               this.mFadeStarted = false;
               this.fadeAndReturnToPreviousScreen();
               SoundEngine.playSound("Menu_Back");
         }
      }
      
      protected function fadeAndReturnToPreviousScreen() : void
      {
         if(this.mFadeSFX && !this.mFadeStarted)
         {
            this.mFadeSFX.mouseEnabled = true;
            this.mFadeStarted = true;
            this.mFadeSFX.setAlpha(0);
            this.mFadeSFX.fadeToAlpha(1,0.25);
            this.mFadeSFX.addEventListener(ColorFadeLayerEvent.ON_FADE_TO_ALPHA_COMPLETE,this.onFadeAndReturnToLevelSelectionComplete);
         }
      }
      
      protected function onFadeAndReturnToLevelSelectionComplete(param1:ColorFadeLayerEvent) : void
      {
         this.mFadeSFX.mouseEnabled = false;
         this.mFadeSFX.removeEventListener(ColorFadeLayerEvent.ON_FADE_TO_ALPHA_COMPLETE,this.onFadeAndReturnToLevelSelectionComplete);
         if((AngryBirdsBase.singleton as AngryBirdsCustom).hasPlayButtonBeenPressed())
         {
            setNextState(StateLevelSelectionCustom.STATE_NAME);
         }
         else
         {
            setNextState(StateLanguageSelection.STATE_NAME);
         }
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.mFadeSFX.mouseEnabled = true;
         this.mFadeStarted = false;
         mUIView.container.mClip.addChild(this.mFadeSFX);
         this.StartFadeOut();
         AngryBirdsBase.singleton.popupManager.closeAllPopups();
      }
      
      protected function StartFadeOut() : void
      {
         if(this.mFadeSFX && !this.mFadeStarted)
         {
            this.mFadeStarted = true;
            this.mFadeSFX.setAlpha(1);
            this.mFadeSFX.fadeToAlpha(0,0.25);
            this.mFadeSFX.addEventListener(ColorFadeLayerEvent.ON_FADE_TO_ALPHA_COMPLETE,this.onFadeOutComplete);
         }
      }
      
      private function onFadeOutComplete(param1:ColorFadeLayerEvent) : void
      {
         this.mFadeSFX.mouseEnabled = false;
         this.mFadeSFX.removeEventListener(ColorFadeLayerEvent.ON_FADE_TO_ALPHA_COMPLETE,this.onFadeOutComplete);
      }
      
      override public function deActivate() : void
      {
         if(this.mFadeSFX.parent == mUIView.container.mClip)
         {
            mUIView.container.mClip.removeChild(this.mFadeSFX);
         }
         super.deActivate();
      }
      
      override protected function setVersion() : void
      {
         var _loc1_:XML = NativeApplication.nativeApplication.applicationDescriptor;
         var _loc2_:Namespace = _loc1_.namespace();
         mUIView.setText(_loc1_._loc2_::versionNumber,"TextField_Version_Number");
      }
   }
}
