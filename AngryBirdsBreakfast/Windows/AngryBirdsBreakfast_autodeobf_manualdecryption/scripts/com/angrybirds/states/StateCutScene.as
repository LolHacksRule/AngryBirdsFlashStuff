package com.angrybirds.states
{
   import com.rovio.graphics.TextureManager;
   import com.rovio.graphics.DynamicContentManager;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.graphics.cutscenes.CutSceneManager;
   import com.rovio.graphics.cutscenes.CutScene;
   import com.rovio.ui.Views.ViewXMLLibrary;
   import com.rovio.ui.Views.UIView;
   import com.angrybirds.data.level.LevelManager;
   import com.rovio.data.localization.LocalizationManager;
   import starling.core.Starling;
   import com.angrybirds.AngryBirdsEngine;
   import flash.events.Event;
   
   public class StateCutScene extends StateBaseLevel
   {
      
      public static const STATE_NAME:String = "StateCutScene";
      
      private static const SKIP_BUTTON_DELAY_LENGHT:Number = 500;
       
      
      private var mCutScene:CutScene;
      
      private var mSkipCutScene:Boolean;
      
      private var mSkipButtonAlpha:Number = 0;
      
      private var mSkipButtonDelay:Number = 0;
      
      protected var mCutSceneManager:DynamicContentManager;
      
      public function StateCutScene(param1:LevelManager, param2:LocalizationManager, param3:Boolean = true, param4:String = "StateCutScene")
      {
         super(param1,param3,param4,param2);
      }
      
      protected function get cutScene() : CutScene
      {
         return this.mCutScene;
      }
      
      override protected function init() : void
      {
         super.init();
         mUIView = new UIView(this);
         mUIView.init(ViewXMLLibrary.mLibrary.Views.View_CutScene[0]);
      }
      
      protected function loadCutScene(param1:String) : Boolean
      {
         if(param1)
         {
            if(this.mCutSceneManager)
            {
               mUIView.getItemByName("MovieClip_Loading").setVisibility(true);
               this.mCutSceneManager.removeEventListener(Event.COMPLETE,this.onCutSceneAvailable);
               this.mCutSceneManager.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
               this.mCutSceneManager.addEventListener(Event.COMPLETE,this.onCutSceneAvailable);
               this.mCutSceneManager.addEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
               this.loadCutSceneContent(param1);
            }
            else
            {
               this.startCutScene();
            }
            return true;
         }
         return false;
      }
      
      protected function loadCutSceneContent(param1:String) : void
      {
         this.mCutSceneManager.loadContent("cutscene_" + param1);
      }
      
      protected function onCutSceneAvailable(param1:Event) : void
      {
         if(this.mCutSceneManager)
         {
            this.mCutSceneManager.removeEventListener(Event.COMPLETE,this.onCutSceneAvailable);
            this.mCutSceneManager.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
            this.startCutScene();
         }
      }
      
      protected function startCutScene() : void
      {
         mUIView.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.getCutSceneName();
         var _loc2_:TextureManager = TextureManager.instance;
         if(this.mCutSceneManager)
         {
            _loc2_ = this.mCutSceneManager.textureManager;
         }
         this.mCutScene = CutSceneManager.getCutSceneClone(_loc1_,_loc2_);
         if(this.mCutScene)
         {
            AngryBirdsBase.singleton.dataModel.userProgress.setCutSceneSeen(_loc1_);
            AngryBirdsEngine.mIsRunning.setVisible(true);
            AngryBirdsEngine.mIsRunning.setGameVisible(false);
            this.mCutScene.update(0);
            AngryBirdsEngine.mIsRunning.rootSprite.addChild(this.mCutScene.sprite);
         }
      }
      
      protected function onCutSceneNotAvailable(param1:Event) : void
      {
         if(this.mCutSceneManager)
         {
            this.mCutSceneManager.removeEventListener(Event.COMPLETE,this.onCutSceneAvailable);
            this.mCutSceneManager.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
         }
         this.end();
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         AngryBirdsEngine.mIsRunning.clearLevel();
         AngryBirdsEngine.mIsRunning.setVisible(false);
         if(!this.mCutSceneManager)
         {
            this.mCutSceneManager = AngryBirdsEngine.mIsRunning.cutSceneManager;
         }
         if(Starling.current)
         {
            Starling.current.color = 0;
         }
         this.mSkipButtonAlpha = 0;
         this.mSkipButtonDelay = 0;
         mUIView.getItemByName("Button_Skip").setVisibility(false);
         mUIView.getItemByName("Button_Skip").mClip.alpha = this.mSkipButtonAlpha;
         AngryBirdsBase.singleton.stopThemeMusic();
         this.mSkipCutScene = false;
         mUIView.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc2_:String = this.getCutSceneName();
         if(!this.loadCutScene(_loc2_))
         {
            this.end();
         }
      }
      
      protected function getCutSceneName() : String
      {
         var _loc1_:String = mLevelManager.previousLevel;
         var _loc2_:String = mLevelManager.getCurrentEpisodeModel().getCutScene(_loc1_ + "-OUTRO");
         if(!_loc2_)
         {
            _loc1_ = mLevelManager.currentLevel;
            _loc2_ = mLevelManager.getCurrentEpisodeModel().getCutScene(_loc1_ + "-INTRO");
         }
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         if(this.mCutScene)
         {
            AngryBirdsEngine.mIsRunning.rootSprite.removeChild(this.mCutScene.sprite);
            this.mCutScene.dispose();
            this.mCutScene = null;
         }
         if(this.mCutSceneManager)
         {
            this.mCutSceneManager.removeEventListener(Event.COMPLETE,this.onCutSceneAvailable);
            this.mCutSceneManager.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
         }
         AngryBirdsEngine.mIsRunning.setGameVisible(true);
         super.deActivate();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:UIEventListenerRovio) : void
      {
         switch(param2)
         {
            case "SKIP":
               this.mSkipCutScene = true;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsBase.singleton.toggleFullScreen();
         }
      }
      
      override protected function update(param1:Number) : void
      {
         if(this.mSkipButtonDelay > SKIP_BUTTON_DELAY_LENGHT)
         {
            mUIView.getItemByName("Button_Skip").setVisibility(true);
            this.mSkipButtonAlpha += param1 / 1000;
            mUIView.getItemByName("Button_Skip").mClip.alpha = this.mSkipButtonAlpha;
            if(this.mSkipButtonAlpha > 1)
            {
               this.mSkipButtonAlpha = 1;
            }
         }
         else
         {
            this.mSkipButtonDelay += param1;
         }
         if(this.mSkipCutScene || this.mCutScene && !this.mCutScene.update(param1))
         {
            this.end();
         }
      }
      
      private function end() : void
      {
         var _loc1_:String = null;
         if(this.mCutSceneManager)
         {
            this.mCutSceneManager.removeEventListener(Event.COMPLETE,this.onCutSceneAvailable);
            this.mCutSceneManager.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
         }
         if(this.mCutScene && this.mCutScene.cutSceneType == CutScene.TYPE_OUTRO)
         {
            StateLevelSelection.sPreviousState = StateCutScene.STATE_NAME;
            setNextState(StateLevelSelection.STATE_NAME);
         }
         else if(this.mCutScene && this.mCutScene.cutSceneType == CutScene.TYPE_FINAL_OUTRO)
         {
            setNextState(StateCredits.STATE_NAME);
         }
         else
         {
            _loc1_ = mLevelManager.currentLevel;
            if(_loc1_)
            {
               setNextState(this.getLevelLoadState());
            }
            else
            {
               setNextState(this.stateOnDefaultEnd);
            }
         }
      }
      
      protected function get stateOnDefaultEnd() : String
      {
         return StateLevelSelection.STATE_NAME;
      }
      
      protected function getLevelLoadState() : String
      {
         return StateLevelLoadClassic.STATE_NAME;
      }
   }
}
