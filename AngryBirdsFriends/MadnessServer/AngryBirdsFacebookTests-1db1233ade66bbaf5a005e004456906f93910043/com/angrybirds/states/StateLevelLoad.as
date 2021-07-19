package com.angrybirds.states
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.data.level.LevelManager;
   import com.angrybirds.data.level.LevelModel;
   import com.rovio.data.localization.LocalizationManager;
   import com.rovio.ui.Views.UIView;
   import com.rovio.ui.Views.ViewXMLLibrary;
   
   public class StateLevelLoad extends StateBaseLevel
   {
      
      public static const USE_ONLY_LOCAL_LEVELS:Boolean = false;
      
      public static const LOAD_STATE_NONE:int = 0;
      
      protected static var smLoadStateStep:int = LOAD_STATE_NONE;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var smLevelIndex:Number = -1;
       
      
      private var mStateTimer:Number = 0;
      
      public function StateLevelLoad(levelManager:LevelManager, localizationManager:LocalizationManager, initState:Boolean, name:String)
      {
         super(levelManager,initState,name,localizationManager);
      }
      
      override protected function init() : void
      {
         super.init();
         this.initLoadingView();
      }
      
      protected function initLoadingView() : void
      {
         this.mUIView = new UIView(this);
         mUIView.init(ViewXMLLibrary.mLibrary.Views.View_LevelLoad[0]);
      }
      
      override public function activate(previousState:String) : void
      {
         super.activate(previousState);
         smLoadStateStep = LOAD_STATE_STEP_1;
         this.setLoadingText();
      }
      
      protected function setLoadingText() : void
      {
         if(mLevelManager.currentLevel != null)
         {
            mUIView.setText("LOADING " + mLevelManager.currentLevel.replace("-"," - "),"TextField_LevelLoading");
         }
      }
      
      override protected function update(deltaTime:Number) : void
      {
         super.update(deltaTime);
         if(smLoadStateStep == LOAD_STATE_STEP_1)
         {
            AngryBirdsEngine.smLevelMain.clearLevel();
            this.initLevelLoad();
            smLoadStateStep = LOAD_STATE_STEP_2;
         }
         else if(smLoadStateStep == LOAD_STATE_STEP_2)
         {
            if(this.isLoadingReady())
            {
               this.onLevelLoadReady();
            }
            else if(this.hasError())
            {
               this.onLevelLoadError();
            }
         }
      }
      
      protected function initLevelLoad() : void
      {
      }
      
      public function isLoadingReady() : Boolean
      {
         return false;
      }
      
      public function hasError() : Boolean
      {
         return false;
      }
      
      public function onLevelLoadReady() : void
      {
      }
      
      public function onLevelLoadError() : void
      {
      }
      
      protected function initLevelMain(levelData:LevelModel) : void
      {
         AngryBirdsEngine.loadLevel(levelData);
      }
   }
}
