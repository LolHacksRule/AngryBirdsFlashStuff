package com.angrybirds.states
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.data.level.LevelManager;
   import com.rovio.data.localization.LocalizationManager;
   import com.rovio.graphics.DynamicContentManager;
   import com.rovio.graphics.TextureManager;
   import com.rovio.graphics.cutscenes.CutScene;
   import com.rovio.graphics.cutscenes.CutSceneManager;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.ui.Views.UIView;
   import com.rovio.ui.Views.ViewXMLLibrary;
   import flash.events.Event;
   import starling.core.Starling;
   
   public class StateCutScene extends StateBaseLevel
   {
      
      public static const STATE_NAME:String = "StateCutScene";
      
      private static const SKIP_BUTTON_DELAY_LENGHT:Number = 500;
       
      
      protected var mCutScene:CutScene;
      
      protected var mSkipCutScene:Boolean;
      
      private var mSkipButtonAlpha:Number = 0;
      
      private var mSkipButtonDelay:Number = 0;
      
      protected var mCutSceneManager:DynamicContentManager;
      
      public function StateCutScene(levelManager:LevelManager, localizationManager:LocalizationManager, initState:Boolean = true, name:String = "StateCutScene")
      {
         super(levelManager,initState,name,localizationManager);
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
      
      protected function loadCutScene(cutsceneName:String) : Boolean
      {
         if(cutsceneName)
         {
            if(this.mCutSceneManager)
            {
               mUIView.getItemByName("MovieClip_Loading").setVisibility(true);
               this.mCutSceneManager.removeEventListener(Event.COMPLETE,this.onCutSceneAvailable);
               this.mCutSceneManager.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
               this.mCutSceneManager.addEventListener(Event.COMPLETE,this.onCutSceneAvailable);
               this.mCutSceneManager.addEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
               this.loadCutSceneContent(cutsceneName);
            }
            else
            {
               this.startCutScene();
            }
            return true;
         }
         return false;
      }
      
      protected function loadCutSceneContent(contentName:String) : void
      {
         this.mCutSceneManager.loadContent("cutscene_" + contentName);
      }
      
      protected function onCutSceneAvailable(e:Event) : void
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
         var cutSceneName:String = this.getCutSceneName();
         var textureManager:TextureManager = TextureManager.instance;
         if(this.mCutSceneManager)
         {
            textureManager = this.mCutSceneManager.textureManager;
         }
         this.mCutScene = CutSceneManager.getCutSceneClone(cutSceneName,textureManager);
         if(this.mCutScene)
         {
            AngryBirdsBase.singleton.dataModel.userProgress.setCutSceneSeen(cutSceneName);
            AngryBirdsEngine.smLevelMain.setVisible(true);
            AngryBirdsEngine.smLevelMain.setGameVisible(false);
            this.mCutScene.update(0);
            AngryBirdsEngine.smLevelMain.rootSprite.addChild(this.mCutScene.sprite);
         }
      }
      
      protected function onCutSceneNotAvailable(e:Event) : void
      {
         if(this.mCutSceneManager)
         {
            this.mCutSceneManager.removeEventListener(Event.COMPLETE,this.onCutSceneAvailable);
            this.mCutSceneManager.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
         }
         this.end();
      }
      
      override public function activate(previousState:String) : void
      {
         super.activate(previousState);
         AngryBirdsEngine.smLevelMain.clearLevel();
         AngryBirdsEngine.smLevelMain.setVisible(false);
         AngryBirdsEngine.smLevelMain.addEventListeners();
         if(!this.mCutSceneManager)
         {
            this.mCutSceneManager = AngryBirdsEngine.smLevelMain.cutSceneManager;
         }
         if(Starling.current)
         {
            Starling.current.color = 0;
         }
         this.mSkipButtonAlpha = 0;
         this.mSkipButtonDelay = 0;
         mUIView.getItemByName("Button_Skip").setVisibility(false);
         mUIView.getItemByName("Button_Skip").mClip.alpha = this.mSkipButtonAlpha;
         this.stopThemeMusic();
         this.mSkipCutScene = false;
         mUIView.getItemByName("MovieClip_Loading").setVisibility(false);
         var cutSceneName:String = this.getCutSceneName();
         if(!this.loadCutScene(cutSceneName))
         {
            this.end();
         }
      }
      
      protected function stopThemeMusic() : void
      {
         AngryBirdsBase.singleton.stopThemeMusic();
      }
      
      protected function getCutSceneName() : String
      {
         var levelId:String = mLevelManager.previousLevel;
         var cutScene:String = mLevelManager.getCurrentEpisodeModel().getCutScene(levelId + "-OUTRO");
         if(!cutScene)
         {
            levelId = mLevelManager.currentLevel;
            cutScene = mLevelManager.getCurrentEpisodeModel().getCutScene(levelId + "-INTRO");
         }
         return cutScene;
      }
      
      override public function deActivate() : void
      {
         if(this.mCutScene)
         {
            AngryBirdsEngine.smLevelMain.rootSprite.removeChild(this.mCutScene.sprite);
            this.mCutScene.dispose();
            this.mCutScene = null;
         }
         if(this.mCutSceneManager)
         {
            this.mCutSceneManager.removeEventListener(Event.COMPLETE,this.onCutSceneAvailable);
            this.mCutSceneManager.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
         }
         AngryBirdsEngine.smLevelMain.setGameVisible(true);
         super.deActivate();
      }
      
      override protected function onUIInteraction(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         switch(eventName)
         {
            case "SKIP":
               this.mSkipCutScene = true;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsBase.singleton.toggleFullScreen();
         }
      }
      
      override protected function update(deltaTime:Number) : void
      {
         if(this.mSkipButtonDelay > SKIP_BUTTON_DELAY_LENGHT)
         {
            mUIView.getItemByName("Button_Skip").setVisibility(true);
            this.mSkipButtonAlpha += deltaTime / 1000;
            mUIView.getItemByName("Button_Skip").mClip.alpha = this.mSkipButtonAlpha;
            if(this.mSkipButtonAlpha > 1)
            {
               this.mSkipButtonAlpha = 1;
            }
         }
         else
         {
            this.mSkipButtonDelay += deltaTime;
         }
         if(this.mSkipCutScene || this.mCutScene && !this.mCutScene.update(deltaTime))
         {
            this.end();
         }
      }
      
      protected function end() : void
      {
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
            this.handleLevelLoad();
         }
      }
      
      protected function handleLevelLoad() : void
      {
         var currentLevel:String = mLevelManager.currentLevel;
         if(currentLevel)
         {
            setNextState(this.getLevelLoadState());
         }
         else
         {
            setNextState(this.stateOnDefaultEnd);
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
