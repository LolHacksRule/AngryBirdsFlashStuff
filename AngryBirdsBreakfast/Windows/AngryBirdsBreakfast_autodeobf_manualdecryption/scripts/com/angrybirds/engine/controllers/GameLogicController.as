package com.angrybirds.engine.controllers
{
   import com.rovio.utils.Integer;
   import com.angrybirds.engine.camera.LevelCamera;
   import com.angrybirds.engine.objects.LevelObjectSardine;
   import com.angrybirds.engine.objects.LevelObject;
   import com.angrybirds.engine.objects.LevelObjectMightyEagle;
   import com.angrybirds.engine.objects.LevelObjectBird;
   import com.rovio.sound.SoundEngine;
   import com.angrybirds.data.level.LevelManager;
   import com.angrybirds.engine.LevelSlingshot;
   import com.angrybirds.engine.LevelMain;
   import com.rovio.factory.MouseCursorController;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class GameLogicController extends BasicController
   {
      
      public static const LEVEL_STATE_STARTING:int = 0;
      
      public static const LEVEL_STATE_SLINGSHOT:int = 1;
      
      public static const LEVEL_STATE_BIRD_FLYING:int = 2;
      
      public static const LEVEL_STATE_CASTLE_VIEW:int = 3;
      
      public static const LEVEL_STATE_DAMAGE_VIEW:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const LEVEL_STATE_FAIL:int = 7;
      
      public static const GAME_OVER_EVALUATE_DELAY:Number = 2000;
      
      public static const GAME_OVER_BLOCK_AFTER_SCORE_DELAY:Number = 2500;
      
      public static const BACK_TO_SLING_COUNTER_DELAY:int = 5;
      
      private static const ZOOM_STEP:Number = LevelCamera.MANUAL_SCALE_STEP / 100;
       
      
      protected var mLevelState:int = 0;
      
      protected var mEvaluateGameOverTimer:Number;
      
      protected var mForceGameOverTimer:Number = 0;
      
      protected var mForceGameOverTimerIsRunning:Boolean = false;
      
      protected var mStateTimer:Number = 0;
      
      private var mBackToSlingCounter:Number = 0;
      
      private var mZoomState:int = 0;
      
      private var mMouseX:Number = 0;
      
      private var mMouseY:Number = 0;
      
      protected var mMouseEnabled:Boolean = true;
      
      protected var mLevelScore:Integer;
      
      protected var mMousePoint:Point;
      
      public function GameLogicController(param1:LevelMain, param2:LevelManager)
      {
         this.mLevelScore = new Integer();
         this.mMousePoint = new Point();
         super(param1,param2);
      }
      
      public function get levelState() : int
      {
         return this.mLevelState;
      }
      
      override public function init() : void
      {
         super.init();
         this.mLevelScore.assign(0);
         this.mLevelState = -1;
         this.mZoomState = 0;
         this.mForceGameOverTimer = 0;
         this.mForceGameOverTimerIsRunning = false;
         this.changeGameState(LEVEL_STATE_STARTING);
         this.mEvaluateGameOverTimer = GAME_OVER_EVALUATE_DELAY;
         setInputEnabled(true);
         mLevelMain.objects.setCollisionsEnabled(true);
         mLevelMain.objects.setGroundTextureEnabled(true);
      }
      
      override public function update(param1:Number) : void
      {
         param1 = mLevelMain.update(param1,true);
         this.handleZoom(param1);
         this.handleStateChanges(param1);
      }
      
      private function handleZoom(param1:int) : void
      {
         if(this.mZoomState != 0)
         {
            mLevelMain.camera.adjustManualScale(this.mZoomState > 0,param1 * ZOOM_STEP);
         }
      }
      
      public function clearLevel() : void
      {
         mLevelMain.clearLevel();
         removeEventListeners();
         this.mLevelState = -1;
      }
      
      override public function addEventListeners() : void
      {
         super.addEventListeners();
      }
      
      public function shouldWeGoToSlingshot() : Boolean
      {
         if(mLevelMain.camera.mCurrentCameraSliderLocation < LevelCamera.SLIDER_MAX)
         {
            return false;
         }
         if(!mLevelMain.objects.isWorldAtSleep())
         {
            return false;
         }
         return true;
      }
      
      public function updateAutoCameraMovement(param1:int) : void
      {
         var _loc2_:LevelCamera = mLevelMain.camera;
         if(_loc2_.mGoToSlingshotWhenReady > 0)
         {
            _loc2_.mGoToSlingshotWhenReady -= param1;
            if(_loc2_.mGoToSlingshotWhenReady <= 0)
            {
               if(this.shouldWeGoToSlingshot())
               {
                  _loc2_.mGoToSlingshotWhenReady = -1;
                  if(mLevelMain.slingshot.birdsAvailable)
                  {
                     _loc2_.switchSides();
                  }
               }
               else
               {
                  _loc2_.mGoToSlingshotWhenReady = LevelCamera.TIME_TO_WAIT_ON_CASTLE_BEFORE_GOING_BACK_TO_SLINGSHOT / 2;
               }
            }
         }
      }
      
      public function changeGameState(param1:int, param2:Boolean = false) : void
      {
         if(this.isGameOver(false) && param2)
         {
            return;
         }
         if(param1 == LEVEL_STATE_STARTING)
         {
            this.mStateTimer = 2000;
         }
         else if(param1 == LEVEL_STATE_SLINGSHOT)
         {
            mLevelMain.camera.goToBirdView();
         }
         else if(param1 == LEVEL_STATE_BIRD_FLYING)
         {
            this.mStateTimer = 5000;
            mLevelMain.particles.moveTrailsNewToOld();
         }
         else if(param1 == LEVEL_STATE_CASTLE_VIEW)
         {
            mLevelMain.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_DAMAGE_VIEW)
         {
            this.mStateTimer = 2000;
            this.mBackToSlingCounter = BACK_TO_SLING_COUNTER_DELAY;
            mLevelMain.camera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.playWinningSoundVictory2();
            this.mStateTimer = 1200;
            if(!this.isMightyEagleUsed)
            {
               mLevelMain.camera.goToBirdView();
            }
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.mStateTimer = 1200;
            if(!this.isMightyEagleUsed)
            {
               mLevelMain.camera.goToBirdView();
               mLevelMain.slingshot.makeBirdsJumpForJoy();
            }
            this.playWinningSoundVictory1();
         }
         else if(param1 == LEVEL_STATE_FAIL)
         {
            this.playFailSound();
            this.mStateTimer = 1200;
            mLevelMain.camera.goToCastleView();
            mLevelMain.objects.makePigsSmile(5);
         }
         this.mLevelState = param1;
      }
      
      protected function playWinningSoundVictory1() : void
      {
         SoundEngine.stopSounds();
         SoundEngine.playSound("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
      }
      
      protected function playWinningSoundVictory2() : void
      {
      }
      
      protected function playFailSound() : void
      {
         SoundEngine.stopSounds();
         SoundEngine.playSound("LevelFailedPigs1");
      }
      
      public function resetToSlingShotState() : void
      {
         this.mStateTimer = 2000;
         this.mForceGameOverTimerIsRunning = false;
         this.mForceGameOverTimer = 2000;
         this.changeGameState(GameLogicController.LEVEL_STATE_SLINGSHOT,true);
      }
      
      public function blockGameOverFor(param1:Number) : void
      {
         this.mForceGameOverTimer = Math.max(this.mForceGameOverTimer,param1);
      }
      
      public function isOutOfBirds() : Boolean
      {
         return mLevelMain.slingshot.mSlingShotState == LevelSlingshot.STATE_BIRDS_ARE_GONE && !mLevelMain.objects.hasBirds();
      }
      
      public function handleStateChanges(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Boolean = false;
         var _loc4_:LevelObjectMightyEagle = null;
         var _loc5_:Boolean = false;
         var _loc6_:LevelObjectBird = null;
         this.mEvaluateGameOverTimer -= param1;
         if(this.mForceGameOverTimerIsRunning)
         {
            this.mForceGameOverTimer -= param1;
            if(this.mForceGameOverTimer < 0)
            {
               this.mEvaluateGameOverTimer = 0;
            }
         }
         if(this.mEvaluateGameOverTimer <= 0 && !this.isGameOver(false))
         {
            _loc2_ = -1;
            this.mEvaluateGameOverTimer = GAME_OVER_EVALUATE_DELAY;
            _loc3_ = mLevelMain.objects.isWorldAtSleep();
            if(!_loc3_ && (!this.mForceGameOverTimerIsRunning || this.mForceGameOverTimer > 0))
            {
               if((!this.mForceGameOverTimerIsRunning || this.mForceGameOverTimer > 6000) && !mLevelMain.objects.isPigsAlive())
               {
                  this.mForceGameOverTimer = 6000;
                  this.mForceGameOverTimerIsRunning = true;
               }
               else if(!this.mForceGameOverTimerIsRunning && this.isOutOfBirds())
               {
                  this.mForceGameOverTimer = 15000;
                  this.mForceGameOverTimerIsRunning = true;
               }
            }
            else if(!mLevelMain.objects.isPigsAlive() && this.isAllowedToWin && !this.isSpecialUsed())
            {
               _loc2_ = LEVEL_STATE_VICTORY1_SLINGSHOT;
               this.setGameOverState(LEVEL_STATE_VICTORY1_SLINGSHOT);
            }
            else if(this.isOutOfBirds())
            {
               if(_loc4_ = this.getMightyEagle())
               {
                  if(_loc4_.hasTouchedGround && _loc4_.mKeyCode > 3000)
                  {
                     _loc2_ = LEVEL_STATE_VICTORY1_SLINGSHOT;
                     this.setGameOverState(LEVEL_STATE_VICTORY1_SLINGSHOT);
                  }
                  else if(_loc4_.hasTouchedGround)
                  {
                     this.mEvaluateGameOverTimer = GAME_OVER_EVALUATE_DELAY;
                  }
               }
               else if(!this.isGameOverBlocked())
               {
                  _loc2_ = LEVEL_STATE_FAIL;
                  this.setGameOverState(LEVEL_STATE_FAIL);
               }
            }
            if(this.isGameOver(false))
            {
               mLevelMain.gameOver(_loc2_);
            }
         }
         this.mStateTimer -= param1;
         if(this.mStateTimer < 0)
         {
            this.mStateTimer = 0;
         }
         if(this.mLevelState == LEVEL_STATE_CASTLE_VIEW)
         {
            mLevelMain.updatePigAnimations(param1);
            if(!mLevelMain.camera.isOnCastleView() && mLevelMain.camera.mCurrentAction != LevelCamera.ACTION_DRAG)
            {
               this.changeGameState(LEVEL_STATE_SLINGSHOT);
            }
         }
         else if(this.mLevelState == LEVEL_STATE_DAMAGE_VIEW)
         {
            if(this.mStateTimer <= 0)
            {
               if((_loc5_ = mLevelMain.objects.hasBirds()) && this.mBackToSlingCounter > 0)
               {
                  this.mStateTimer = 2000;
                  this.mEvaluateGameOverTimer = 0;
                  this.mBackToSlingCounter = this.mBackToSlingCounter - 1;
               }
               else if(!this.isMightyEagleUsed)
               {
                  this.changeGameState(LEVEL_STATE_SLINGSHOT);
               }
            }
            else
            {
               mLevelMain.updatePigAnimations(param1);
            }
            if(!mLevelMain.camera.isOnCastleView() && mLevelMain.camera.mCurrentAction != LevelCamera.ACTION_DRAG)
            {
               this.changeGameState(LEVEL_STATE_SLINGSHOT);
            }
         }
         else if(this.mLevelState == LEVEL_STATE_STARTING)
         {
            if(this.mStateTimer <= 0)
            {
               this.changeGameState(LEVEL_STATE_SLINGSHOT);
            }
         }
         else if(this.mLevelState == LEVEL_STATE_SLINGSHOT)
         {
            if(mLevelMain.camera.isOnCastleView() && mLevelMain.camera.mCurrentAction != LevelCamera.ACTION_DRAG)
            {
               this.changeGameState(LEVEL_STATE_CASTLE_VIEW);
            }
         }
         else if(this.mLevelState == LEVEL_STATE_BIRD_FLYING)
         {
            if(_loc6_ = mLevelMain.levelObjects.activeObject as LevelObjectBird)
            {
            }
         }
         else if(this.mLevelState == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.mStateTimer <= 0)
            {
               if(mLevelMain.slingshot.updateScoreForRemainingBirds())
               {
                  this.mStateTimer = 1000;
               }
               else
               {
                  this.changeGameState(LEVEL_STATE_VICTORY2_END,true);
               }
            }
         }
      }
      
      protected function isSpecialUsed() : Boolean
      {
         return this.isMightyEagleUsed;
      }
      
      protected function get isMightyEagleUsed() : Boolean
      {
         if(this.getMightyEagle())
         {
            return true;
         }
         return false;
      }
      
      protected function get isAllowedToWin() : Boolean
      {
         return true;
      }
      
      public function getMightyEagle() : LevelObjectMightyEagle
      {
         var _loc2_:LevelObjectMightyEagle = null;
         var _loc1_:int = mLevelMain.objects.objectCount - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = mLevelMain.objects.getObject(_loc1_) as LevelObjectMightyEagle;
            if(_loc2_)
            {
               return _loc2_;
            }
            _loc1_--;
         }
         return null;
      }
      
      public function isGameOverBlocked() : Boolean
      {
         var _loc2_:LevelObjectSardine = null;
         var _loc1_:int = mLevelMain.objects.objectCount - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = mLevelMain.objects.getObject(_loc1_) as LevelObjectSardine;
            if(_loc2_)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      protected function setGameOverState(param1:int, param2:Boolean = false) : void
      {
         if(!this.mForceGameOverTimerIsRunning)
         {
            this.mForceGameOverTimerIsRunning = true;
         }
         if(new Date().time - mLevelMain.slingshot.timeOfLastBirdShot < 6000)
         {
            return;
         }
         if(mLevelMain.slingshot.mDragging)
         {
            return;
         }
         if(mLevelMain.objects.isWorldAtSleep())
         {
            this.mForceGameOverTimer = Math.min(this.mForceGameOverTimer,3500);
         }
         if(this.mForceGameOverTimer <= 0)
         {
            this.changeGameState(param1,param2);
         }
      }
      
      public function isGameOver(param1:Boolean = false) : Boolean
      {
         return (this.mLevelState == LEVEL_STATE_VICTORY2_END || this.mLevelState == LEVEL_STATE_VICTORY1_SLINGSHOT || this.mLevelState == LEVEL_STATE_FAIL) && (param1 || this.mStateTimer <= 0 && this.mLevelState != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function isReadyToExitGameState() : Boolean
      {
         return this.mLevelState == LEVEL_STATE_VICTORY2_END || this.mLevelState == LEVEL_STATE_FAIL;
      }
      
      override protected function onMouseWheel(param1:MouseEvent) : void
      {
         if(param1.delta != 0)
         {
            this.doUserZoom(param1.delta > 0);
         }
      }
      
      public function doUserZoom(param1:Boolean, param2:Number = 0) : void
      {
         if(!this.mMouseEnabled || !mLevelMain.mReadyToRun)
         {
            return;
         }
         if(this.mLevelState == LEVEL_STATE_DAMAGE_VIEW || this.mLevelState == LEVEL_STATE_CASTLE_VIEW || this.mLevelState == LEVEL_STATE_SLINGSHOT || this.mLevelState == LEVEL_STATE_BIRD_FLYING)
         {
            if(!mLevelMain.isPlayingReplay())
            {
               mLevelMain.camera.adjustManualScale(param1,param2 == 0 ? Number(LevelCamera.MANUAL_SCALE_STEP) : Number(param2));
            }
            else
            {
               mLevelMain.changeReplaySpeed(param1);
            }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function setZoomState(param1:int) : void
      {
         this.mZoomState = param1;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         if(!this.mMouseEnabled)
         {
            return;
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         dispatchEvent(_loc3_);
         if(_loc3_.isDefaultPrevented())
         {
            return;
         }
         MouseCursorController.mouseDown();
         if(this.isGameOver(false))
         {
            return;
         }
         if(!mLevelMain.isPlayingReplay())
         {
            this.mMousePoint = mLevelMain.screenToBox2D(param1,param2,this.mMousePoint);
            if(mLevelMain.levelObjects.activeObject is LevelObjectBird)
            {
               _loc4_ = LevelObjectBird(mLevelMain.levelObjects.activeObject).canActivateSpecialPower;
               if(!LevelObjectBird(mLevelMain.levelObjects.activeObject).specialPowerUsed)
               {
                  mLevelMain.activateSpecialPower(this.mMousePoint.x,this.mMousePoint.y);
               }
               if(_loc4_)
               {
                  return;
               }
            }
            if(mLevelMain.slingshot.canStartDragging(this.mMousePoint))
            {
               mLevelMain.slingshot.startDragging();
               this.changeGameState(LEVEL_STATE_SLINGSHOT);
            }
            else
            {
               mLevelMain.camera.startDragging(param1,param2);
            }
            return;
         }
         mLevelMain.camera.startDragging(param1,param2);
         mLevelMain.resetReplaySpeed();
      }
      
      protected function removeObjectFromMousePosition(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = mLevelMain.screenToBox2D(param1,param2,null);
         var _loc4_:LevelObject;
         if(_loc4_ = mLevelMain.objects.getObjectFromPoint(_loc3_.x,_loc3_.y))
         {
            mLevelMain.objects.removeObject(_loc4_,false);
         }
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         if(!this.mMouseEnabled)
         {
            return;
         }
         MouseCursorController.mouseUp();
         if(this.mLevelState == LEVEL_STATE_STARTING)
         {
            this.changeGameState(LEVEL_STATE_SLINGSHOT);
         }
         if(mLevelMain.slingshot.mDragging)
         {
            this.mMousePoint = mLevelMain.screenToBox2D(param1,param2,this.mMousePoint);
            mLevelMain.slingshot.setNewCoordinatesForRubber(this.mMousePoint.x,this.mMousePoint.y,false);
            if(mLevelMain.slingshot.canShootTheBird)
            {
               mLevelMain.slingshot.shoot();
               this.changeGameState(LEVEL_STATE_BIRD_FLYING);
               if(this.mForceGameOverTimer < 6000)
               {
                  this.mForceGameOverTimer = 6000;
               }
            }
            else
            {
               mLevelMain.slingshot.cancelDragging();
            }
         }
         if(mLevelMain.camera.mDragging)
         {
            if(!isNaN(param1) && !isNaN(param2))
            {
               mLevelMain.camera.dragToNewPoint(param1,param2);
            }
            mLevelMain.camera.stopDragging();
         }
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         if(!this.mMouseEnabled)
         {
            return;
         }
         if(mLevelMain.slingshot.mDragging)
         {
            this.mMousePoint = mLevelMain.screenToBox2D(param1,param2,this.mMousePoint);
            mLevelMain.slingshot.setNewCoordinatesForRubber(this.mMousePoint.x,this.mMousePoint.y,false);
         }
         else if(mLevelMain.camera.mDragging)
         {
            mLevelMain.camera.dragToNewPoint(param1,param2);
         }
         this.mMouseX = param1;
         this.mMouseY = param2;
      }
      
      public function getMouseScreenCoordinates() : Point
      {
         return new Point(this.mMouseX,this.mMouseY);
      }
      
      override public function addScore(param1:int) : void
      {
         this.mLevelScore.assign(this.mLevelScore.getValue() + param1);
         this.blockGameOverFor(GAME_OVER_BLOCK_AFTER_SCORE_DELAY);
         if(this.mLevelState == LEVEL_STATE_DAMAGE_VIEW)
         {
            this.mStateTimer = 2000;
            this.mBackToSlingCounter = BACK_TO_SLING_COUNTER_DELAY;
         }
      }
      
      override public function getScore(param1:int) : int
      {
         if(param1 > 1)
         {
            return Math.floor(this.mLevelScore.getValue() / param1) * param1;
         }
         return this.mLevelScore.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!this.isMightyEagleUsed)
         {
            return 0;
         }
         var _loc1_:Number = mLevelManager.getLevelForId(mLevelManager.currentLevel).getEagleScore(mLevelMain.levelItemManager,mLevelMain.damageScoreMultiplier);
         var _loc2_:Number = Math.min(100,this.getScore(10) / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.mMouseEnabled;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         this.mMouseEnabled = param1;
      }
      
      public function skipLevelToFailure() : void
      {
         this.changeGameState(LEVEL_STATE_FAIL,true);
      }
      
      public function skipLevelToVictory() : void
      {
         while(mLevelMain.slingshot.updateScoreForRemainingBirds())
         {
         }
         this.changeGameState(LEVEL_STATE_VICTORY2_END,true);
      }
   }
}
