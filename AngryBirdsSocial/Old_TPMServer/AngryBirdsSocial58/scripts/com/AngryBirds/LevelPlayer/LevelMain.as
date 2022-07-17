package com.AngryBirds.LevelPlayer
{
   import com.AngryBirds.model.LevelDataModel;
   import com.rovio.factory.MouseCursorController;
   import com.rovio.states.StateBase;
   import com.rovio.ui.Views.UIView;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.ui.Keyboard;
   
   public class LevelMain extends Sprite
   {
      
      public static const LEVEL_WIDTH_PIXEL:Number = AngryBirdsSocial.SCREEN_WIDTH;
      
      public static const LEVEL_HEIGHT_PIXEL:Number = AngryBirdsSocial.SCREEN_HEIGHT;
      
      public static const PIXEL_TO_B2_SCALE:Number = 1 / 12;
      
      public static const LEVEL_HEIGHT_B2:Number = AngryBirdsSocial.SCREEN_HEIGHT * PIXEL_TO_B2_SCALE;
      
      public static const LEVEL_WIDTH_B2:Number = LEVEL_WIDTH_PIXEL * PIXEL_TO_B2_SCALE;
      
      public static const GAME_OVER_EVALUATE_DELAY:Number = 2000;
      
      public static const SCORE_SPEED:int = 50;
      
      public static const DAMAGE_SCORE_MULTILIER:int = 10;
      
      public static const LEVEL_STATE_STARTING:int = 0;
      
      public static const LEVEL_STATE_SLINGSHOT:int = 1;
      
      public static const LEVEL_STATE_BIRD_FLYING:int = 2;
      
      public static const LEVEL_STATE_CASTLE_VIEW:int = 3;
      
      public static const LEVEL_STATE_DAMAGE_VIEW:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const LEVEL_STATE_FAIL:int = 7;
      
      public static const PARTICLE_TRAIL_DELAY:int = LevelEngineBox2D.UPDATE_TIME_STEP * 1000 * 1;
      
      public static const DRAGGING_OVERLAYS_ENABLED:Boolean = true;
       
      
      public var mLevelObjects:LevelObjects;
      
      public var mActiveObject:LevelObject;
      
      public var mLevelBackground:LevelBackground;
      
      public var mLevelEngine:LevelEngineBox2D;
      
      public var mLevelBorders:LevelBorders;
      
      public var mLevelCamera:LevelCamera;
      
      public var mLevelSlingshot:LevelSlingshot;
      
      public var mLevelParticles:LevelParticles;
      
      public var mLevelEditor:LevelEditor;
      
      public var mReadyToRun:Boolean = false;
      
      public var mEditorMode:Boolean = false;
      
      public var mStateTimer:Number = 0;
      
      public var mEvaluateGameOverTimer:Number;
      
      public var mPigsAnimationTimer1:Number;
      
      public var mPigsAnimationTimer2:Number;
      
      public var mDeltaTime:Number;
      
      public var mLevelData:LevelDataModel;
      
      public var mLevelScore:int = 0;
      
      public var mLevelScoreMax:int = 0;
      
      public var mLevelScoreVisible:int = 0;
      
      public var mLevelState:int = 0;
      
      public var mNextParticleTime:Number = 0;
      
      public var mTrailSpecial:Boolean = false;
      
      public var mDraggingOverlay:Sprite = null;
      
      public function LevelMain()
      {
         super();
         this.mLevelData = new LevelDataModel();
      }
      
      public function init(param1:XML, param2:Boolean = false) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         this.setEditorMode(param2,false);
         this.mLevelBorders = new LevelBorders(this,param1);
         this.mLevelEngine = new LevelEngineBox2D(this);
         this.mLevelBackground = new LevelBackground(this,param1.@background,this.mLevelBorders.mBorderGround_B2 / PIXEL_TO_B2_SCALE);
         this.mLevelObjects = new LevelObjects(this,param1);
         this.mLevelSlingshot = new LevelSlingshot(this,param1.Slingshot);
         this.mLevelParticles = new LevelParticles(this);
         if(this.mEditorMode)
         {
            this.mLevelEditor = new LevelEditor(this);
         }
         this.addItemsToDisplayList();
         this.mLevelCamera = new LevelCamera(this,param1);
         this.mDeltaTime = 0;
         this.mReadyToRun = true;
         this.mLevelState = -1;
         if(this.mEditorMode)
         {
            this.changeGameState(LEVEL_STATE_CASTLE_VIEW);
         }
         else
         {
            this.changeGameState(LEVEL_STATE_STARTING);
         }
         this.mEvaluateGameOverTimer = GAME_OVER_EVALUATE_DELAY;
         this.mLevelScore = 0;
         this.mLevelScoreVisible = 0;
         this.mLevelScoreMax = this.mLevelObjects.getMaxScore();
         this.addEventListeners();
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
      }
      
      public function setEditorMode(param1:Boolean, param2:Boolean) : void
      {
         this.mEditorMode = param1;
         if(this.mEditorMode)
         {
            if(this.mLevelCamera)
            {
               this.changeGameState(LevelMain.LEVEL_STATE_CASTLE_VIEW,true);
            }
            if(this.mLevelParticles)
            {
               this.mLevelParticles.moveTrailsNewToOld();
               this.mLevelParticles.moveTrailsNewToOld();
            }
            if(this.mLevelObjects)
            {
               this.mLevelObjects.setTexture(false);
            }
         }
         else
         {
            if(param2)
            {
               this.mLevelBorders.reLoadBasedOnExistingLevel();
               this.mLevelCamera.mManualScale = 1;
               this.mLevelCamera.loadCameraBorders();
            }
            if(this.mLevelCamera)
            {
               this.changeGameState(LevelMain.LEVEL_STATE_SLINGSHOT,true);
            }
            if(this.mLevelObjects)
            {
               this.mLevelObjects.setTexture(true);
            }
         }
      }
      
      public function addItemsToDisplayList() : void
      {
         addChild(this.mLevelBackground.mSkyAndGround);
         if(LevelBackground.SHOW_BACKGROUNDS)
         {
            addChild(this.mLevelBackground.mBackground);
         }
         addChild(this.mLevelParticles.mParticleContainers[LevelParticles.PARTICLE_GROUP_TRAILS_OLD]);
         addChild(this.mLevelParticles.mParticleContainers[LevelParticles.PARTICLE_GROUP_TRAILS]);
         addChild(this.mLevelObjects);
         addChild(this.mLevelSlingshot);
         addChild(this.mLevelParticles.mParticleContainers[LevelParticles.PARTICLE_GROUP_GAME_EFFECTS]);
         if(LevelBackground.SHOW_BACKGROUNDS)
         {
            addChild(this.mLevelBackground.mForeground);
         }
         addChild(this.mLevelParticles.mParticleContainers[LevelParticles.PARTICLE_GROUP_FLOATING_TEXT]);
         if(this.mEditorMode)
         {
            addChild(this.mLevelEditor);
         }
         if(LevelEngineBox2D.USE_DEBUG_SPRITE)
         {
            addChild(this.mLevelEngine.mDebugSprite);
         }
      }
      
      public function addEventListeners() : void
      {
         addEventListener(MouseEvent.MOUSE_DOWN,this.mouseDown);
         addEventListener(MouseEvent.MOUSE_UP,this.mouseUp);
         addEventListener(MouseEvent.MOUSE_MOVE,this.mouseMove);
         addEventListener(MouseEvent.CLICK,this.mouseClick);
         addEventListener(MouseEvent.MOUSE_WHEEL,this.mouseWheel);
         addEventListener(MouseEvent.ROLL_OUT,this.mouseRollOut);
         addEventListener(MouseEvent.ROLL_OVER,this.mouseRollOver);
      }
      
      public function removeEventListeners() : void
      {
         removeEventListener(MouseEvent.MOUSE_DOWN,this.mouseDown);
         removeEventListener(MouseEvent.MOUSE_UP,this.mouseUp);
         removeEventListener(MouseEvent.MOUSE_MOVE,this.mouseMove);
         removeEventListener(MouseEvent.CLICK,this.mouseClick);
         removeEventListener(MouseEvent.MOUSE_WHEEL,this.mouseWheel);
         removeEventListener(MouseEvent.ROLL_OUT,this.mouseRollOut);
         removeEventListener(MouseEvent.ROLL_OVER,this.mouseRollOver);
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         var _loc2_:LevelObject = null;
         if(param1.keyCode == Keyboard.PAGE_UP)
         {
            if(!(this.mLevelSlingshot.mDragging || this.mLevelCamera.mDragging))
            {
               if(this.mLevelState == LEVEL_STATE_DAMAGE_VIEW || this.mLevelState == LEVEL_STATE_CASTLE_VIEW || this.mLevelState == LEVEL_STATE_SLINGSHOT)
               {
                  this.mLevelCamera.adjustManualScale(true);
               }
            }
         }
         else if(param1.keyCode == Keyboard.PAGE_DOWN)
         {
            if(!(this.mLevelSlingshot.mDragging || this.mLevelCamera.mDragging))
            {
               if(this.mLevelState == LEVEL_STATE_DAMAGE_VIEW || this.mLevelState == LEVEL_STATE_CASTLE_VIEW || this.mLevelState == LEVEL_STATE_SLINGSHOT)
               {
                  this.mLevelCamera.adjustManualScale(false);
               }
            }
         }
         else if(!this.mEditorMode)
         {
            if(param1.keyCode == Keyboard.LEFT)
            {
               if(this.mLevelSlingshot.mSlingShotState == LevelSlingshot.STATE_BIRD_IS_READY && this.mLevelState == LEVEL_STATE_SLINGSHOT)
               {
                  this.mLevelSlingshot.applyPowerup(LevelSlingshot.POWER_UP_BLACK_BIRD);
               }
            }
            else if(param1.keyCode == Keyboard.RIGHT)
            {
               if(this.mLevelSlingshot.mSlingShotState == LevelSlingshot.STATE_BIRD_IS_READY && this.mLevelState == LEVEL_STATE_SLINGSHOT)
               {
                  this.mLevelSlingshot.applyPowerup(LevelSlingshot.POWER_UP_EXTRA_STRENGTH);
               }
            }
            else if(param1.keyCode != Keyboard.UP)
            {
               if(param1.keyCode == Keyboard.DELETE)
               {
                  for each(_loc2_ in AngryBirdsSocial.smLevelMain.mLevelObjects.mObjects)
                  {
                     if(_loc2_.isPig())
                     {
                        _loc2_.mHealth = 0;
                     }
                  }
               }
            }
         }
         else
         {
            this.mLevelEditor.keyDown(param1);
         }
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(this.mEditorMode)
         {
            this.mLevelEditor.keyUp(param1);
         }
      }
      
      public function mouseWheel(param1:MouseEvent) : void
      {
         if(!(this.mLevelSlingshot.mDragging || this.mLevelCamera.mDragging))
         {
            if(this.mLevelState == LEVEL_STATE_DAMAGE_VIEW || this.mLevelState == LEVEL_STATE_CASTLE_VIEW || this.mLevelState == LEVEL_STATE_SLINGSHOT)
            {
               this.mLevelCamera.adjustManualScale(param1.delta > 0);
            }
         }
      }
      
      public function mouseDown(param1:MouseEvent) : void
      {
         var _loc2_:Point = null;
         MouseCursorController.mouseDown();
         if(this.isGameOver(false))
         {
            return;
         }
         if(this.mEditorMode)
         {
            _loc2_ = this.screenToBox2D(param1.stageX,param1.stageY);
            if(this.mLevelEditor.mouseDown(_loc2_))
            {
               return;
            }
         }
         else
         {
            if(this.mActiveObject)
            {
               if(this.mLevelState == LEVEL_STATE_BIRD_FLYING && !this.mActiveObject.mSpecialPowerUsed)
               {
                  if(this.mActiveObject.mObjectName.toUpperCase() == "BIRD_BLUE" || this.mActiveObject.mObjectName.toUpperCase() == "BIRD_YELLOW" || this.mActiveObject.mObjectName.toUpperCase() == "BIRD_WHITE" || this.mActiveObject.mObjectName.toUpperCase() == "BIRD_BLACK" || this.mActiveObject.mObjectName.toUpperCase() == "BIRD_GREEN")
                  {
                     this.mLevelObjects.mActivateSpecialPower = true;
                     this.mTrailSpecial = true;
                  }
               }
               return;
            }
            if(this.mLevelObjects.mExplodePreviousActiveObjectOnNextClick)
            {
               if(this.mLevelObjects.explodePreviousActiveObjects())
               {
                  return;
               }
            }
         }
         _loc2_ = this.screenToBox2D(param1.stageX,param1.stageY);
         if(!this.mEditorMode && this.mLevelSlingshot.canWeStartDragging(_loc2_))
         {
            if(this.mLevelCamera.isOnCastleView())
            {
               this.changeGameState(LEVEL_STATE_SLINGSHOT);
            }
            else
            {
               this.mLevelSlingshot.startDraging();
            }
         }
         else
         {
            this.mLevelCamera.startDragging(_loc2_);
         }
      }
      
      public function mouseRollOver(param1:Event) : void
      {
         if(this.mEditorMode)
         {
            this.mLevelEditor.mouseRollOver();
            MouseCursorController.setCursor(this.mLevelEditor.getCursorForTool(this.mLevelEditor.mSelectedTool));
         }
         else
         {
            MouseCursorController.cursorShow();
         }
      }
      
      public function mouseRollOut(param1:Event) : void
      {
         if(this.mDraggingOverlay)
         {
            return;
         }
         if(this.mEditorMode)
         {
            this.mLevelEditor.mouseRollOut();
            if(!DRAGGING_OVERLAYS_ENABLED)
            {
               if(this.mLevelCamera.mDragging)
               {
                  this.mLevelCamera.stopDragging();
               }
            }
         }
         else if(!this.mDraggingOverlay)
         {
            this.mouseUp(null);
         }
         MouseCursorController.cursorHide();
      }
      
      public function mouseUp(param1:MouseEvent) : void
      {
         var _loc2_:Point = null;
         MouseCursorController.mouseUp();
         if(this.mEditorMode)
         {
            _loc2_ = this.screenToBox2D(param1.stageX,param1.stageY);
            if(this.mLevelEditor.mouseUp(_loc2_))
            {
               return;
            }
         }
         else if(!this.mEditorMode && this.mLevelSlingshot.mDragging)
         {
            if(!param1)
            {
               this.mLevelSlingshot.cancelDraging();
            }
            else
            {
               _loc2_ = this.screenToBox2D(param1.stageX,param1.stageY);
               this.mLevelSlingshot.setNewCoordinatesForRubber(_loc2_.x,_loc2_.y,false);
               if(this.mLevelSlingshot.canWeShootTheBird())
               {
                  this.mLevelSlingshot.mShootTheBird = true;
                  this.changeGameState(LEVEL_STATE_BIRD_FLYING);
               }
               else
               {
                  this.mLevelSlingshot.cancelDraging();
               }
            }
         }
         if(this.mLevelCamera.mDragging)
         {
            if(param1)
            {
               _loc2_ = this.screenToBox2D(param1.stageX,param1.stageY);
               this.mLevelCamera.dragToNewPoint(_loc2_);
            }
            this.mLevelCamera.stopDragging();
         }
      }
      
      public function mouseMove(param1:MouseEvent) : void
      {
         var _loc2_:Point = null;
         if(this.mEditorMode)
         {
            _loc2_ = this.screenToBox2D(param1.stageX,param1.stageY);
            if(this.mLevelEditor.mouseMove(_loc2_))
            {
               return;
            }
         }
         if(!this.mEditorMode && this.mLevelSlingshot.mDragging)
         {
            _loc2_ = this.screenToBox2D(param1.stageX,param1.stageY);
            this.mLevelSlingshot.setNewCoordinatesForRubber(_loc2_.x,_loc2_.y,false);
         }
         else if(this.mLevelCamera.mDragging)
         {
            _loc2_ = this.screenToBox2D(param1.stageX,param1.stageY);
            this.mLevelCamera.dragToNewPoint(_loc2_);
         }
      }
      
      public function mouseClick(param1:MouseEvent) : void
      {
         var _loc2_:Point = null;
         if(this.mEditorMode)
         {
            _loc2_ = this.screenToBox2D(param1.stageX,param1.stageY);
            if(this.mLevelEditor.mouseClick(_loc2_))
            {
               return;
            }
         }
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         _loc3_.x = (param1 / LevelCamera.smLevelScale + this.mLevelCamera.mScreenLeftScroll - LevelCamera.smLevelX / LevelCamera.smLevelScale) * PIXEL_TO_B2_SCALE;
         _loc3_.y = (param2 / LevelCamera.smLevelScale + this.mLevelCamera.mScreenTopScroll - LevelCamera.smLevelY / LevelCamera.smLevelScale) * PIXEL_TO_B2_SCALE;
         return _loc3_;
      }
      
      public function box2DToScreen(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         _loc3_.x = (param1 / PIXEL_TO_B2_SCALE + LevelCamera.smLevelX / LevelCamera.smLevelScale - this.mLevelCamera.mScreenLeftScroll) * LevelCamera.smLevelScale;
         _loc3_.y = (param2 / PIXEL_TO_B2_SCALE + LevelCamera.smLevelY / LevelCamera.smLevelScale - this.mLevelCamera.mScreenTopScroll) * LevelCamera.smLevelScale;
         return _loc3_;
      }
      
      public function createObjectFromMaterial(param1:String, param2:Number, param3:Number) : void
      {
         this.mLevelObjects.addObject(param1,param2,param3);
      }
      
      public function clearLevel() : void
      {
         if(this.mLevelBackground)
         {
            this.mLevelBackground.clear();
            this.mLevelBackground = null;
         }
         if(this.mLevelObjects)
         {
            this.mLevelObjects.clear();
            this.mLevelObjects = null;
            this.mActiveObject = null;
         }
         if(this.mLevelEngine)
         {
            this.mLevelEngine.clear();
            this.mLevelEngine = null;
         }
         if(this.mLevelBorders)
         {
            this.mLevelBorders.clear();
            this.mLevelBorders = null;
         }
         if(this.mLevelSlingshot)
         {
            this.mLevelSlingshot.clear();
            this.mLevelSlingshot = null;
         }
         if(this.mLevelCamera)
         {
            this.mLevelCamera.clear();
            this.mLevelCamera = null;
         }
         if(this.mLevelParticles)
         {
            this.mLevelParticles.clear();
            this.mLevelParticles = null;
         }
         if(this.mEditorMode && this.mLevelEditor)
         {
            this.mLevelEditor.clear();
            this.mLevelEditor = null;
         }
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
         this.mDeltaTime = 0;
         this.mReadyToRun = false;
         this.removeEventListeners();
         this.mLevelState = -1;
      }
      
      public function update(param1:Number, param2:Boolean = true) : Boolean
      {
         if(!this.mReadyToRun)
         {
            return true;
         }
         var _loc3_:Number = 0;
         if(param2)
         {
            this.mDeltaTime += param1;
            this.mDeltaTime = this.mLevelEngine.updateWorld(this.mDeltaTime);
            _loc3_ = this.mLevelEngine.mTimeUsedByBox2D;
         }
         else
         {
            this.mLevelObjects.updateLevelObjectsGoingOn();
            _loc3_ = param1;
            this.mDeltaTime = 0;
         }
         if(this.mActiveObject)
         {
            if(this.mActiveObject && this.mActiveObject.isBird())
            {
               this.mNextParticleTime -= _loc3_;
               if(this.mNextParticleTime < 0 || this.mTrailSpecial && this.mActiveObject.mObjectName.toUpperCase() == "BIRD_WHITE")
               {
                  this.mNextParticleTime += PARTICLE_TRAIL_DELAY;
                  this.addBirdTrail();
               }
            }
            if(_loc3_ > 0)
            {
               this.mLevelObjects.updateLevelObjectsComplete(_loc3_,this.mDeltaTime);
               this.mLevelCamera.updateCamera(_loc3_,this.mActiveObject);
            }
         }
         else
         {
            this.mLevelObjects.updateLevelObjectsComplete(param1,this.mDeltaTime);
            this.mLevelCamera.updateCamera(param1,this.mActiveObject);
         }
         this.mLevelEngine.drawDebugData();
         if(param2)
         {
            this.mLevelSlingshot.update(param1);
         }
         this.mLevelParticles.update(param1);
         if(this.mEditorMode)
         {
            this.mLevelEditor.mouseMove(this.screenToBox2D(parent.mouseX,parent.mouseY));
            this.mLevelEditor.update(param1);
         }
         if(this.mLevelScoreVisible < this.mLevelScore)
         {
            this.mLevelScoreVisible = Math.min(this.mLevelScore,this.mLevelScoreVisible + param1 * SCORE_SPEED);
         }
         this.handleStateChanges(param1);
         if(this.isGameOver(true))
         {
            return false;
         }
         return true;
      }
      
      public function addBirdTrail() : void
      {
         var _loc1_:Number = this.mActiveObject.getBody().GetPosition().x;
         var _loc2_:Number = this.mActiveObject.getBody().GetPosition().y;
         var _loc3_:LevelParticle = null;
         if(this.mTrailSpecial)
         {
            _loc3_ = this.mLevelParticles.addParticle(LevelParticle.PARTICLE_NAME_BIRD_TRAIL_BIG,LevelParticles.PARTICLE_GROUP_TRAILS,LevelParticle.PARTICLE_TYPE_TRAIL_PARTICLE,_loc1_,_loc2_,-1,"",LevelParticle.PARTICLE_MATERIAL_BIRD_RED);
            this.mTrailSpecial = false;
         }
         else if(this.mActiveObject && this.mActiveObject.mPowerUpDamageMultiplier > 1)
         {
            _loc3_ = this.mLevelParticles.addParticle(LevelParticle.PARTICLE_NAME_BIRD_TRAIL_SPARKLE,LevelParticles.PARTICLE_GROUP_TRAILS,LevelParticle.PARTICLE_TYPE_TRAIL_PARTICLE,_loc1_,_loc2_,-1,"",LevelParticle.PARTICLE_MATERIAL_BIRD_RED);
         }
         else
         {
            _loc3_ = this.mLevelParticles.addParticle(LevelParticle.PARTICLE_NAME_BIRD_TRAIL,LevelParticles.PARTICLE_GROUP_TRAILS,LevelParticle.PARTICLE_TYPE_TRAIL_PARTICLE,_loc1_,_loc2_,-1,"",LevelParticle.PARTICLE_MATERIAL_BIRD_RED);
         }
         if(LevelObject.INTERPOLATE_DISPLAY_OBJECTS)
         {
            _loc3_.visible = false;
         }
      }
      
      public function isGameOver(param1:Boolean = false) : Boolean
      {
         return (this.mLevelState == LEVEL_STATE_VICTORY2_END || this.mLevelState == LEVEL_STATE_VICTORY1_SLINGSHOT || this.mLevelState == LEVEL_STATE_FAIL) && (!param1 || this.mStateTimer <= 0 && this.mLevelState != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:LevelObject = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            if(this.mLevelObjects.isPigsAlive(true))
            {
               _loc2_ = this.mLevelObjects.getRandomPig(true);
               _loc2_.mRenderer.mTryToScream = LevelObjectRenderer.SCREAM_TIME;
               this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.mLevelObjects.getPigCount());
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            if(this.mLevelObjects.isPigsAlive(true))
            {
               _loc2_ = this.mLevelObjects.getRandomPig(true);
               _loc2_.mRenderer.mTryToBlink = LevelObjectRenderer.BLINK_TIME;
               this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.mLevelObjects.getPigCount());
            }
         }
      }
      
      public function handleStateChanges(param1:Number) : void
      {
         this.mEvaluateGameOverTimer -= param1;
         if(!this.mEditorMode && this.mEvaluateGameOverTimer <= 0 && !this.isGameOver(false))
         {
            this.mEvaluateGameOverTimer = GAME_OVER_EVALUATE_DELAY;
            if(this.mLevelObjects.isWorldAtSleep())
            {
               if(!this.mLevelObjects.isPigsAlive())
               {
                  this.changeGameState(LEVEL_STATE_VICTORY1_SLINGSHOT);
               }
               else if(this.mLevelSlingshot.mSlingShotState == LevelSlingshot.STATE_BIRDS_ARE_GONE)
               {
                  this.changeGameState(LEVEL_STATE_FAIL);
               }
            }
         }
         this.mStateTimer -= param1;
         if(this.mStateTimer < 0)
         {
            this.mStateTimer = 0;
         }
         if(this.mLevelState == LEVEL_STATE_CASTLE_VIEW)
         {
            this.updatePigAnimations(param1);
         }
         else if(this.mLevelState == LEVEL_STATE_DAMAGE_VIEW)
         {
            if(this.mStateTimer <= 0)
            {
               if(this.mLevelObjects.isWorldAtSleep())
               {
                  this.changeGameState(LEVEL_STATE_SLINGSHOT);
               }
               else
               {
                  this.mEvaluateGameOverTimer = 0;
                  this.mStateTimer = 2000;
               }
            }
            else
            {
               this.updatePigAnimations(param1);
            }
         }
         else if(this.mLevelState == LEVEL_STATE_STARTING)
         {
            if(this.mStateTimer <= 0)
            {
               if(this.mLevelEditor)
               {
                  this.changeGameState(LEVEL_STATE_CASTLE_VIEW);
               }
               else
               {
                  this.changeGameState(LEVEL_STATE_DAMAGE_VIEW);
               }
            }
         }
         else if(this.mLevelState == LEVEL_STATE_BIRD_FLYING)
         {
            if(!this.mActiveObject || this.mActiveObject.mHealth < this.mActiveObject.mHealthMax || this.mActiveObject.mObjectName.toUpperCase() != "BIRD_GREEN" && this.mLevelCamera.mPigsAreOnRight && this.mActiveObject.getBody().GetLinearVelocity().x <= 0)
            {
               if(this.mActiveObject && this.mActiveObject.mObjectName.toUpperCase() == "BIRD_BLACK" && (!this.mActiveObject.mSpecialPowerUsed || this.mActiveObject.mSelfExplosionTimer >= 0))
               {
                  this.mLevelObjects.mExplodePreviousActiveObjectOnNextClick = true;
                  this.changeGameState(LEVEL_STATE_DAMAGE_VIEW);
               }
               else
               {
                  this.mLevelCamera.goToNearestCamera(true);
               }
               this.mActiveObject = null;
            }
         }
         else if(this.mLevelState == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            if(this.mStateTimer <= 0)
            {
               if(this.mLevelSlingshot.updateScoreForRemaininBirds())
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
      
      public function addScore(param1:Number, param2:Boolean = false, param3:Number = 0, param4:Number = 0, param5:int = 11) : void
      {
         this.mLevelScore += param1;
         if(param2 && param1 > 0)
         {
            this.addFloatingText(param1.toString(),param3,param4,800,param5,0,-3);
         }
      }
      
      public function addFloatingText(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = 16, param6:Number = 0, param7:Number = -3) : void
      {
         this.mLevelParticles.addParticle(LevelParticle.PARTICLE_NAME_FLOATING_TEXT,LevelParticles.PARTICLE_GROUP_FLOATING_TEXT,LevelParticle.PARTICLE_TYPE_FLOATING_TEXT,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function addChildToLevelAt(param1:DisplayObject, param2:int = -1) : void
      {
         if(param2 == -1)
         {
            param2 = numChildren;
         }
         addChildAt(param1,param2);
      }
      
      public function addLevelToDisplay(param1:DisplayObjectContainer) : void
      {
         param1.addChild(this);
      }
      
      public function changeGameState(param1:int, param2:Boolean = false) : void
      {
         if(this.isGameOver(false) && !param2)
         {
            return;
         }
         if(param1 == LEVEL_STATE_STARTING)
         {
            this.mStateTimer = 2000;
         }
         else if(param1 == LEVEL_STATE_SLINGSHOT)
         {
            this.mLevelCamera.goToBirdView();
         }
         else if(param1 == LEVEL_STATE_BIRD_FLYING)
         {
            this.mLevelObjects.mExplodePreviousActiveObjectOnNextClick = false;
            this.mStateTimer = 5000;
            this.mNextParticleTime = 0;
            this.mLevelCamera.goToCastleView();
            this.mLevelParticles.moveTrailsNewToOld();
         }
         else if(param1 == LEVEL_STATE_CASTLE_VIEW)
         {
            this.mLevelCamera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_DAMAGE_VIEW)
         {
            this.mStateTimer = 2000;
            this.mLevelCamera.goToCastleView();
         }
         else if(param1 == LEVEL_STATE_VICTORY2_END)
         {
            this.mStateTimer = 1200;
            this.mLevelCamera.goToBirdView();
         }
         else if(param1 == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.mStateTimer = 1200;
            this.mLevelCamera.goToBirdView();
            this.mLevelSlingshot.setSlingShotState(LevelSlingshot.STATE_AWARDING_REMAINING_BIRD_SCORES);
         }
         else if(param1 == LEVEL_STATE_FAIL)
         {
            this.mStateTimer = 1200;
            this.mLevelCamera.goToCastleView();
            this.mLevelObjects.makePigsSmile(5);
         }
         this.mLevelState = param1;
      }
      
      public function createDraggingOverlay() : void
      {
         var _loc1_:UIView = null;
         if(!DRAGGING_OVERLAYS_ENABLED)
         {
            return;
         }
         if(!this.mDraggingOverlay)
         {
            _loc1_ = (this.parent as StateBase).mUIView;
            this.mDraggingOverlay = _loc1_.createOverlaySprite(16777215,0);
            _loc1_.addChild(this.mDraggingOverlay);
            this.mDraggingOverlay.mouseEnabled = true;
            this.mDraggingOverlay.mouseChildren = true;
            this.mDraggingOverlay.addEventListener(MouseEvent.MOUSE_MOVE,this.mouseMove);
            this.mDraggingOverlay.addEventListener(MouseEvent.MOUSE_UP,this.mouseUp);
            if(stage)
            {
               stage.addEventListener(MouseEvent.MOUSE_MOVE,this.mouseMove);
               stage.addEventListener(MouseEvent.MOUSE_UP,this.mouseUp);
            }
         }
      }
      
      public function clearDraggingOverlay() : void
      {
         if(this.mDraggingOverlay)
         {
            (parent as StateBase).mUIView.removeChild(this.mDraggingOverlay);
            this.mDraggingOverlay.removeEventListener(MouseEvent.MOUSE_UP,this.mouseUp);
            this.mDraggingOverlay.removeEventListener(MouseEvent.MOUSE_MOVE,this.mouseMove);
            this.mDraggingOverlay.removeEventListener(MouseEvent.MOUSE_OVER,this.mouseRollOver);
            if(stage)
            {
               stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.mouseMove);
               stage.removeEventListener(MouseEvent.MOUSE_UP,this.mouseUp);
            }
            this.mDraggingOverlay = null;
         }
      }
   }
}
