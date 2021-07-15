package com.angrybirds.states
{
   import com.angrybirds.data.level.LevelManager;
   import com.rovio.data.localization.LocalizationManager;
   import com.angrybirds.engine.LevelMain;
   import com.angrybirds.engine.controllers.GameLogicController;
   import com.angrybirds.AngryBirdsEngine;
   import com.rovio.factory.MouseCursorController;
   import flash.events.KeyboardEvent;
   
   public class StatePlayBase extends StateBaseLevel
   {
       
      
      protected var mLevelController:GameLogicController;
      
      protected var mEndLevel:Boolean = false;
      
      private var mLevelCompleted:Boolean = false;
      
      public function StatePlayBase(param1:LevelManager, param2:LocalizationManager, param3:Boolean, param4:String)
      {
         super(param1,param3,param4,param2);
      }
      
      protected function levelStarted() : void
      {
         this.mLevelController.init();
         this.mLevelCompleted = false;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
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
      
      protected function getGameLogicController(param1:LevelMain) : GameLogicController
      {
         return new GameLogicController(param1,mLevelManager);
      }
      
      override protected function update(param1:Number) : void
      {
         if(!AngryBirdsEngine.isPaused)
         {
            this.mLevelController.update(param1);
         }
         if(this.mLevelController.isReadyToExitGameState() || this.mEndLevel)
         {
            this.mEndLevel = false;
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
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         if(AngryBirdsEngine.DEBUG_MODE_ENABLED)
         {
            switch(param1.keyCode)
            {
               case 87:
                  AngryBirdsEngine.smLevelMain.cheatKillAllThePigs();
                  break;
               case 66:
                  AngryBirdsEngine.smLevelMain.cheatKillAllTheDynamites();
            }
         }
         AngryBirdsEngine.controller.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         AngryBirdsEngine.controller.keyUp(param1);
      }
      
      public function setZoomCursor() : void
      {
         var _loc1_:Number = AngryBirdsEngine.smLevelMain.camera.manualScale - AngryBirdsEngine.smLevelMain.camera.manualScaleMin;
         var _loc2_:Number = (AngryBirdsEngine.smLevelMain.camera.manualScaleMax - AngryBirdsEngine.smLevelMain.camera.manualScaleMin) / 2;
         if(_loc1_ > _loc2_)
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
