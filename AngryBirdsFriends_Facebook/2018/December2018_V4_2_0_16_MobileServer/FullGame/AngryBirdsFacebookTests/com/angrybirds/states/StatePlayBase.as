package com.angrybirds.states
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.data.level.LevelManager;
   import com.angrybirds.engine.LevelMain;
   import com.angrybirds.engine.controllers.GameLogicController;
   import com.rovio.data.localization.LocalizationManager;
   import com.rovio.factory.MouseCursorController;
   import flash.events.KeyboardEvent;
   
   public class StatePlayBase extends StateBaseLevel
   {
       
      
      protected var mLevelController:GameLogicController;
      
      private var mLevelCompleted:Boolean = false;
      
      public function StatePlayBase(levelManager:LevelManager, localizationManager:LocalizationManager, initState:Boolean, name:String)
      {
         super(levelManager,initState,name,localizationManager);
      }
      
      protected function levelStarted() : void
      {
         this.mLevelController.init();
         this.mLevelCompleted = false;
      }
      
      override public function activate(previousState:String) : void
      {
         super.activate(previousState);
         AngryBirdsEngine.smLevelMain.setVisible(true);
         AngryBirdsEngine.smLevelMain.setGameVisible(true);
         this.resumeEngine();
         if(this.mLevelController == null)
         {
            this.mLevelController = this.getGameLogicController(AngryBirdsEngine.smLevelMain);
         }
         AngryBirdsEngine.setController(this.mLevelController);
         if(AngryBirdsEngine.smLevelMain.mLevelTimeMilliSeconds == 0)
         {
            this.levelStarted();
         }
         AngryBirdsEngine.smLevelMain.background.playAmbientSound();
      }
      
      protected function resumeEngine() : void
      {
         AngryBirdsEngine.resume();
      }
      
      protected function getGameLogicController(levelMain:LevelMain) : GameLogicController
      {
         return new GameLogicController(levelMain,mLevelManager);
      }
      
      override protected function update(deltaTime:Number) : void
      {
         if(!AngryBirdsEngine.isPaused)
         {
            this.mLevelController.update(deltaTime);
         }
         if(this.mLevelController.isReadyToExitGameState())
         {
            if(this.mLevelController.levelState == GameLogicController.LEVEL_STATE_VICTORY2_END)
            {
               if(!this.mLevelCompleted)
               {
                  this.mLevelCompleted = true;
                  this.levelCompleted();
               }
               if(this.isAllowedToChangeVictoryState())
               {
                  setNextState(this.getVictoryStateName());
               }
            }
            else if(this.mLevelController.levelState == GameLogicController.LEVEL_STATE_FAIL)
            {
               if(this.isAllowedToChangeFailState())
               {
                  setNextState(this.getLoserStateName());
               }
            }
         }
      }
      
      protected function isAllowedToChangeVictoryState() : Boolean
      {
         return true;
      }
      
      protected function isAllowedToChangeFailState() : Boolean
      {
         return true;
      }
      
      protected function levelCompleted() : void
      {
      }
      
      public function getVictoryStateName() : String
      {
         return null;
      }
      
      public function getLoserStateName() : String
      {
         return null;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function keyDown(e:KeyboardEvent) : void
      {
         super.keyDown(e);
         if(AngryBirdsEngine.DEBUG_MODE_ENABLED)
         {
            switch(e.keyCode)
            {
               case 87:
                  AngryBirdsEngine.smLevelMain.cheatKillAllTheLevelGoals();
                  break;
               case 66:
                  AngryBirdsEngine.smLevelMain.cheatKillAllTheDynamites();
            }
         }
         AngryBirdsEngine.controller.keyDown(e);
      }
      
      override public function keyUp(e:KeyboardEvent) : void
      {
         super.keyUp(e);
         AngryBirdsEngine.controller.keyUp(e);
      }
      
      public function setZoomCursor() : void
      {
         var zoomLevel:Number = AngryBirdsEngine.smLevelMain.camera.manualScale - AngryBirdsEngine.smLevelMain.camera.manualScaleMin;
         var borderValue:Number = (AngryBirdsEngine.smLevelMain.camera.manualScaleMax - AngryBirdsEngine.smLevelMain.camera.manualScaleMin) / 2;
         if(zoomLevel > borderValue)
         {
            MouseCursorController.setCursor("Cursor_Zoom_Out");
         }
         else
         {
            MouseCursorController.setCursor("Cursor_Zoom_In");
         }
      }
   }
}
