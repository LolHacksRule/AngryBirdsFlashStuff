package com.angrybirds.engine.controllers
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.data.level.LevelManager;
   import com.angrybirds.engine.LevelMain;
   import com.angrybirds.engine.LevelSlingshot;
   import com.angrybirds.engine.Tuner;
   import com.angrybirds.engine.camera.LevelCamera;
   import com.angrybirds.engine.objects.LevelObject;
   import com.angrybirds.engine.objects.LevelObjectMightyEagle;
   import com.angrybirds.engine.objects.LevelObjectSardine;
   import com.rovio.factory.MouseCursorController;
   import com.rovio.sound.SoundEngine;
   import com.rovio.utils.Integer;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class GameLogicController extends BasicController
   {
      
      private static const SCORE_ROUNDING_VALUE:int = 1;
      
      public static const LEVEL_STATE_STARTING:int = 0;
      
      public static const LEVEL_STATE_SLINGSHOT:int = 1;
      
      public static const LEVEL_STATE_BIRD_FLYING:int = 2;
      
      public static const LEVEL_STATE_CASTLE_VIEW:int = 3;
      
      public static const LEVEL_STATE_DAMAGE_VIEW:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const LEVEL_STATE_FAIL:int = 7;
      
      public static const BACK_TO_SLING_COUNTER_DELAY:int = 5;
      
      private static const ZOOM_STEP:Number = LevelCamera.MANUAL_SCALE_STEP / 100;
       
      
      protected var mLevelState:int = 0;
      
      protected var mStateTimer:Number = 0;
      
      private var mBackToSlingCounter:Number = 0;
      
      private var mZoomState:int = 0;
      
      private var mMouseX:Number = 0;
      
      private var mMouseY:Number = 0;
      
      protected var mMouseEnabled:Boolean = true;
      
      protected var mLevelScore:Integer;
      
      protected var mMousePoint:Point;
      
      protected var mEndLevelTimerActivated:Boolean;
      
      protected var mEndLevelTimer:int;
      
      protected var mLevelEndingAllowed:Boolean;
      
      public function GameLogicController(levelMain:LevelMain, levelManager:LevelManager)
      {
         this.mLevelScore = new Integer();
         this.mMousePoint = new Point();
         super(levelMain,levelManager);
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
         this.changeGameState(LEVEL_STATE_STARTING);
         setInputEnabled(true);
         mLevelMain.objects.setCollisionsEnabled(true);
         mLevelMain.objects.setGroundTextureEnabled(true);
         mLevelMain.slingshot.addEventListener(LevelSlingshot.EVENT_BIRD_SHOT,this.onBirdShotFromSlingshot);
      }
      
      private function onBirdShotFromSlingshot(e:Event) : void
      {
         this.changeGameState(LEVEL_STATE_BIRD_FLYING);
      }
      
      override public function update(deltaTimeMilliSeconds:Number) : void
      {
         deltaTimeMilliSeconds = mLevelMain.update(deltaTimeMilliSeconds,true);
         this.handleZoom(deltaTimeMilliSeconds);
         this.handleStateChanges(deltaTimeMilliSeconds);
      }
      
      private function handleZoom(deltaTime:int) : void
      {
         if(this.mZoomState != 0)
         {
            mLevelMain.camera.adjustManualScale(this.mZoomState > 0,deltaTime * ZOOM_STEP);
         }
      }
      
      public function clearLevel() : void
      {
         mLevelMain.clearLevel();
         removeEventListeners();
         this.mLevelState = -1;
         this.resetEndLevelVariables();
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
      
      public function updateAutoCameraMovement(deltaTime:int) : void
      {
         var camera:LevelCamera = mLevelMain.camera;
         if(camera.mGoToSlingshotWhenReady > 0)
         {
            camera.mGoToSlingshotWhenReady -= deltaTime;
            if(camera.mGoToSlingshotWhenReady <= 0)
            {
               if(this.shouldWeGoToSlingshot())
               {
                  camera.mGoToSlingshotWhenReady = -1;
                  if(mLevelMain.slingshot.birdsAvailable)
                  {
                     camera.switchSides();
                  }
               }
               else
               {
                  camera.mGoToSlingshotWhenReady = LevelCamera.TIME_TO_WAIT_ON_CASTLE_BEFORE_GOING_BACK_TO_SLINGSHOT / 2;
               }
            }
         }
      }
      
      public function changeGameState(newState:int, forceChange:Boolean = false) : void
      {
         if(this.isGameOver() && !forceChange)
         {
            return;
         }
         if(newState == LEVEL_STATE_STARTING)
         {
            this.mStateTimer = 2000;
            this.resetEndLevelVariables();
         }
         else if(newState == LEVEL_STATE_SLINGSHOT)
         {
            mLevelMain.camera.goToBirdView();
         }
         else if(newState == LEVEL_STATE_BIRD_FLYING)
         {
            this.mStateTimer = 5000;
            mLevelMain.particles.moveTrailsNewToOld();
         }
         else if(newState == LEVEL_STATE_CASTLE_VIEW)
         {
            mLevelMain.camera.goToCastleView();
         }
         else if(newState == LEVEL_STATE_DAMAGE_VIEW)
         {
            this.mStateTimer = 2000;
            this.mBackToSlingCounter = BACK_TO_SLING_COUNTER_DELAY;
            mLevelMain.camera.goToCastleView();
         }
         else if(newState == LEVEL_STATE_VICTORY2_END)
         {
            this.mStateTimer = 1200;
            if(!this.isMightyEagleUsed)
            {
               mLevelMain.camera.goToBirdView();
            }
         }
         else if(newState == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.mStateTimer = 1200;
            if(!this.isMightyEagleUsed)
            {
               mLevelMain.camera.goToBirdView();
               mLevelMain.slingshot.makeBirdsJumpForJoy();
            }
            else
            {
               mLevelMain.slingshot.setSlingShotState(LevelSlingshot.STATE_CELEBRATE);
            }
            this.playWinningSoundVictory1();
         }
         else if(newState == LEVEL_STATE_FAIL)
         {
            this.mStateTimer = 1200;
            mLevelMain.camera.goToCastleView();
            mLevelMain.objects.makePigsSmile(5);
         }
         this.mLevelState = newState;
      }
      
      protected function playWinningSoundVictory1() : void
      {
         SoundEngine.stopSounds();
         SoundEngine.playSound("level_clear_military_a" + (1 + int(Math.random() * 2)));
      }
      
      public function resetToSlingShotState() : void
      {
         this.mStateTimer = 2000;
         this.changeGameState(GameLogicController.LEVEL_STATE_SLINGSHOT,true);
      }
      
      public function handleStateChanges(newDeltaTime:Number) : void
      {
         var areBirdsAlive:Boolean = false;
         var activeObject:LevelObject = null;
         if(this.mEndLevelTimer > 0)
         {
            this.mEndLevelTimer -= newDeltaTime;
            if(this.mEndLevelTimer <= 0)
            {
               this.mLevelEndingAllowed = true;
            }
         }
         this.mStateTimer -= newDeltaTime;
         if(this.mStateTimer < 0)
         {
            this.mStateTimer = 0;
         }
         if(this.mLevelState == LEVEL_STATE_CASTLE_VIEW)
         {
            if(!mLevelMain.camera.isOnCastleView() && mLevelMain.camera.mCurrentAction != LevelCamera.ACTION_DRAG)
            {
               this.changeGameState(LEVEL_STATE_SLINGSHOT);
            }
         }
         else if(this.mLevelState == LEVEL_STATE_DAMAGE_VIEW)
         {
            if(this.mStateTimer <= 0)
            {
               areBirdsAlive = mLevelMain.objects.hasBirds();
               if(areBirdsAlive && this.mBackToSlingCounter > 0)
               {
                  this.mStateTimer = 2000;
                  this.mBackToSlingCounter = this.mBackToSlingCounter - 1;
               }
               else if(!this.isMightyEagleUsed)
               {
                  this.changeGameState(LEVEL_STATE_SLINGSHOT);
               }
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
            activeObject = mLevelMain.levelObjects.activeObject;
            if(!activeObject || activeObject && !activeObject.isFlying)
            {
               this.changeGameState(LEVEL_STATE_DAMAGE_VIEW);
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
      
      protected function get isMightyEagleUsed() : Boolean
      {
         if(this.getMightyEagle() || this.isSardineActivated())
         {
            return true;
         }
         return false;
      }
      
      private function isSardineActivated() : Boolean
      {
         var sardine:LevelObjectSardine = null;
         for(var i:int = mLevelMain.objects.objectCount - 1; i >= 0; i--)
         {
            sardine = mLevelMain.objects.getObject(i) as LevelObjectSardine;
            if(sardine)
            {
               return true;
            }
         }
         if(AngryBirdsEngine.smLevelMain.slingshot.mBirds.length > 0)
         {
            if(AngryBirdsEngine.smLevelMain.slingshot.mBirds[0].name == "BIRD_SARDINE")
            {
               return true;
            }
         }
         return false;
      }
      
      public function getMightyEagle() : LevelObjectMightyEagle
      {
         var mightyEagle:LevelObjectMightyEagle = null;
         for(var i:int = mLevelMain.objects.objectCount - 1; i >= 0; i--)
         {
            mightyEagle = mLevelMain.objects.getObject(i) as LevelObjectMightyEagle;
            if(mightyEagle)
            {
               return mightyEagle;
            }
         }
         return null;
      }
      
      public function isGameOver() : Boolean
      {
         return (this.mLevelState == LEVEL_STATE_VICTORY2_END || this.mLevelState == LEVEL_STATE_VICTORY1_SLINGSHOT || this.mLevelState == LEVEL_STATE_FAIL) && (this.mStateTimer <= 0 && this.mLevelState != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public final function isInGameWonState() : Boolean
      {
         return !mLevelMain.objects.isLevelGoalObjectsAlive();
      }
      
      public function isReadyToExitGameState() : Boolean
      {
         return this.mLevelState == LEVEL_STATE_VICTORY2_END || this.mLevelState == LEVEL_STATE_FAIL;
      }
      
      override protected function onMouseWheel(e:MouseEvent) : void
      {
         if(e.delta != 0)
         {
            this.doUserZoom(e.delta > 0);
         }
      }
      
      public function doUserZoom(zoomIn:Boolean, manualScaleIncrease:Number = 0) : void
      {
         if(!this.mMouseEnabled || !mLevelMain.mReadyToRun)
         {
            return;
         }
         if(this.mLevelState == LEVEL_STATE_DAMAGE_VIEW || this.mLevelState == LEVEL_STATE_CASTLE_VIEW || this.mLevelState == LEVEL_STATE_SLINGSHOT || this.mLevelState == LEVEL_STATE_BIRD_FLYING)
         {
            if(!mLevelMain.isPlayingReplay())
            {
               mLevelMain.camera.adjustManualScale(zoomIn,manualScaleIncrease == 0 ? Number(LevelCamera.MANUAL_SCALE_STEP) : Number(manualScaleIncrease));
            }
            else
            {
               mLevelMain.changeReplaySpeed(zoomIn);
            }
         }
      }
      
      override public function keyDown(e:KeyboardEvent) : void
      {
      }
      
      private function setZoomState(state:int) : void
      {
         this.mZoomState = state;
      }
      
      override protected function handleMouseDown(x:Number, y:Number) : void
      {
         var isMouseClickLocked:Boolean = false;
         if(!this.mMouseEnabled)
         {
            return;
         }
         var mouseEvent:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,x,y);
         dispatchEvent(mouseEvent);
         if(mouseEvent.isDefaultPrevented())
         {
            return;
         }
         MouseCursorController.mouseDown();
         if(this.isGameOver())
         {
            return;
         }
         if(!mLevelMain.isPlayingReplay())
         {
            this.mMousePoint = mLevelMain.screenToBox2D(x,y,this.mMousePoint);
            if(mLevelMain.levelObjects.activeObject)
            {
               isMouseClickLocked = mLevelMain.levelObjects.activeObject.canActivateSpecialPower;
               if(!mLevelMain.levelObjects.activeObject.specialPowerUsed)
               {
                  mLevelMain.activateSpecialPower(this.mMousePoint.x,this.mMousePoint.y);
               }
               if(isMouseClickLocked)
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
               mLevelMain.camera.startDragging(x,y);
            }
            return;
         }
         mLevelMain.camera.startDragging(x,y);
         mLevelMain.resetReplaySpeed();
      }
      
      protected function removeObjectFromMousePosition(x:Number, y:Number) : void
      {
         var point:Point = mLevelMain.screenToBox2D(x,y,null);
         var obj:LevelObject = mLevelMain.objects.getObjectFromPoint(point.x,point.y);
         if(obj)
         {
            mLevelMain.objects.removeObject(obj,false);
         }
      }
      
      override protected function handleMouseUp(x:Number, y:Number) : void
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
            this.mMousePoint = mLevelMain.screenToBox2D(x,y,this.mMousePoint);
            mLevelMain.slingshot.setNewCoordinatesForRubber(this.mMousePoint.x,this.mMousePoint.y,false);
            if(mLevelMain.slingshot.canShootTheBird)
            {
               mLevelMain.slingshot.shoot();
            }
            else
            {
               mLevelMain.slingshot.cancelDragging();
            }
         }
         if(mLevelMain.camera.mDragging)
         {
            if(!isNaN(x) && !isNaN(y))
            {
               mLevelMain.camera.dragToNewPoint(x,y);
            }
            mLevelMain.camera.stopDragging();
         }
      }
      
      override protected function handleMouseMove(x:Number, y:Number) : void
      {
         if(!this.mMouseEnabled)
         {
            return;
         }
         if(mLevelMain.slingshot.mDragging)
         {
            this.mMousePoint = mLevelMain.screenToBox2D(x,y,this.mMousePoint);
            mLevelMain.slingshot.setNewCoordinatesForRubber(this.mMousePoint.x,this.mMousePoint.y,false);
         }
         else if(mLevelMain.camera.mDragging)
         {
            mLevelMain.camera.dragToNewPoint(x,y);
         }
         this.mMouseX = x;
         this.mMouseY = y;
      }
      
      public function getMouseScreenCoordinates() : Point
      {
         return new Point(this.mMouseX,this.mMouseY);
      }
      
      override public function addScore(score:int) : void
      {
         this.mLevelScore.assign(this.mLevelScore.getValue() + score);
         if(this.mLevelState == LEVEL_STATE_DAMAGE_VIEW)
         {
            this.mStateTimer = 2000;
            this.mBackToSlingCounter = BACK_TO_SLING_COUNTER_DELAY;
         }
      }
      
      override public function getScore() : int
      {
         if(SCORE_ROUNDING_VALUE > 1)
         {
            return Math.floor(this.mLevelScore.getValue() / SCORE_ROUNDING_VALUE) * SCORE_ROUNDING_VALUE;
         }
         return this.mLevelScore.getValue();
      }
      
      override public function getEagleScore() : int
      {
         if(!this.isMightyEagleUsed)
         {
            return 0;
         }
         var maxEagleScore:Number = mLevelManager.getLevelForId(mLevelManager.currentLevel).scoreEagle;
         var eagleScore:Number = Math.min(100,this.getScore() / maxEagleScore * 100);
         return Math.round(eagleScore);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.mMouseEnabled;
      }
      
      public function set mouseEnabled(value:Boolean) : void
      {
         this.mMouseEnabled = value;
      }
      
      public function skipLevelToFailure() : void
      {
         this.changeGameState(LEVEL_STATE_FAIL,true);
      }
      
      public function skipLevelToVictory() : void
      {
         this.changeGameState(LEVEL_STATE_VICTORY1_SLINGSHOT,true);
         mLevelMain.gameOver(LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      override public function checkForLevelEnd() : void
      {
         if(!this.mEndLevelTimerActivated)
         {
            if(mLevelMain.slingshot.mSlingShotState == LevelSlingshot.STATE_BIRDS_ARE_GONE || !mLevelMain.objects.isLevelGoalObjectsAlive())
            {
               this.mEndLevelTimer = Tuner.END_LEVEL_WAITING_TIME;
               this.mEndLevelTimerActivated = true;
            }
         }
      }
      
      public function increaseEndLevelTimer(moreTime:Number) : void
      {
         if(this.mEndLevelTimer > 0)
         {
            this.mEndLevelTimer += moreTime;
         }
      }
      
      public function isLevelEndingAllowed() : Boolean
      {
         return this.mLevelEndingAllowed;
      }
      
      public function resetEndLevelVariables() : void
      {
         this.mEndLevelTimerActivated = false;
         this.mEndLevelTimer = 0;
         this.mLevelEndingAllowed = false;
      }
      
      public function stopEndLevelWhenFailing() : void
      {
         if(this.mEndLevelTimerActivated)
         {
            if(mLevelMain.slingshot.mSlingShotState == LevelSlingshot.STATE_BIRDS_ARE_GONE && mLevelMain.objects.isLevelGoalObjectsAlive() && !this.mLevelEndingAllowed)
            {
               this.resetEndLevelVariables();
            }
         }
      }
   }
}
