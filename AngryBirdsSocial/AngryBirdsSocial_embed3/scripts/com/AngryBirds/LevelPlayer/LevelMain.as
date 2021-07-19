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
      
      public var mLevelOfDayScore:int = 0;
      
      public var mLevelOfDayEndTime:Number = 0;
      
      public var mLevelOfDayId:String = "";
      
      public var mLevelState:int = 0;
      
      public var mNextParticleTime:Number = 0;
      
      public var mTrailSpecial:Boolean = false;
      
      public var mDraggingOverlay:Sprite = null;
      
      public function LevelMain()
      {
         super();
         this.mLevelData = new LevelDataModel();
      }
      
      public function init(level:XML, editorMode:Boolean = false) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         this.setEditorMode(editorMode,false);
         this.mLevelBorders = new LevelBorders(this,level);
         this.mLevelEngine = new LevelEngineBox2D(this);
         this.mLevelBackground = new LevelBackground(this,level.@background,this.mLevelBorders.mBorderGround_B2 / PIXEL_TO_B2_SCALE);
         this.mLevelObjects = new LevelObjects(this,level);
         this.mLevelSlingshot = new LevelSlingshot(this,level.Slingshot);
         this.mLevelParticles = new LevelParticles(this);
         if(this.mEditorMode)
         {
            this.mLevelEditor = new LevelEditor(this);
         }
         this.addItemsToDisplayList();
         this.mLevelCamera = new LevelCamera(this,level);
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
         this.mLevelOfDayScore = 0;
         this.addEventListeners();
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
      }
      
      public function setEditorMode(mode:Boolean, comingFromLevelEditor:Boolean) : void
      {
         this.mEditorMode = mode;
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
            if(comingFromLevelEditor)
            {
               this.mLevelBorders.reLoadBasedOnExistingLevel();
               this.mLevelCamera.mManualScale = 1;
               this.mLevelCamera.loadCameraBorders();
            }
            if(this.mLevelCamera)
            {
               this.changeGameState(LevelMain.LEVEL_STATE_STARTING,true);
               this.mLevelCamera.goToCastleView();
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
      
      public function keyDown(e:KeyboardEvent) : void
      {
         var obj:LevelObject = null;
         if(e.keyCode == Keyboard.PAGE_UP)
         {
            if(!(this.mLevelSlingshot.mDragging || this.mLevelCamera.mDragging))
            {
               if(this.mLevelState == LEVEL_STATE_DAMAGE_VIEW || this.mLevelState == LEVEL_STATE_CASTLE_VIEW || this.mLevelState == LEVEL_STATE_SLINGSHOT)
               {
                  this.mLevelCamera.adjustManualScale(true);
               }
            }
         }
         else if(e.keyCode == Keyboard.PAGE_DOWN)
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
            if(e.keyCode == Keyboard.LEFT)
            {
               if(this.mLevelSlingshot.mSlingShotState == LevelSlingshot.STATE_BIRD_IS_READY && this.mLevelState == LEVEL_STATE_SLINGSHOT && AngryBirdsSocial.DEBUG_MODE_ENABLED)
               {
                  this.mLevelSlingshot.applyPowerup(LevelSlingshot.POWER_UP_BLACK_BIRD);
               }
            }
            else if(e.keyCode == Keyboard.RIGHT)
            {
               if(this.mLevelSlingshot.mSlingShotState == LevelSlingshot.STATE_BIRD_IS_READY && this.mLevelState == LEVEL_STATE_SLINGSHOT && AngryBirdsSocial.DEBUG_MODE_ENABLED)
               {
                  this.mLevelSlingshot.applyPowerup(LevelSlingshot.POWER_UP_EXTRA_STRENGTH);
               }
            }
            else if(e.keyCode != Keyboard.UP)
            {
               if(e.keyCode == Keyboard.DELETE)
               {
                  if(AngryBirdsSocial.DEBUG_MODE_ENABLED)
                  {
                     for each(obj in AngryBirdsSocial.smLevelMain.mLevelObjects.mObjects)
                     {
                        if(obj.isPig())
                        {
                           obj.mHealth = 0;
                        }
                     }
                  }
               }
            }
         }
         else
         {
            this.mLevelEditor.keyDown(e);
         }
      }
      
      public function keyUp(e:KeyboardEvent) : void
      {
         if(this.mEditorMode)
         {
            this.mLevelEditor.keyUp(e);
         }
      }
      
      public function mouseWheel(e:MouseEvent) : void
      {
         if(!(this.mLevelSlingshot.mDragging || this.mLevelCamera.mDragging))
         {
            if(this.mLevelState == LEVEL_STATE_DAMAGE_VIEW || this.mLevelState == LEVEL_STATE_CASTLE_VIEW || this.mLevelState == LEVEL_STATE_SLINGSHOT)
            {
               this.mLevelCamera.adjustManualScale(e.delta > 0);
            }
         }
      }
      
      public function mouseDown(e:MouseEvent) : void
      {
         var p:Point = null;
         MouseCursorController.mouseDown();
         if(this.isGameOver(false))
         {
            return;
         }
         if(this.mEditorMode)
         {
            p = this.screenToBox2D(e.stageX,e.stageY);
            if(this.mLevelEditor.mouseDown(p))
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
         p = this.screenToBox2D(e.stageX,e.stageY);
         if(!this.mEditorMode && this.mLevelSlingshot.canWeStartDragging(p))
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
            this.mLevelCamera.startDragging(p);
         }
      }
      
      public function mouseRollOver(e:Event) : void
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
      
      public function mouseRollOut(e:Event) : void
      {
         if(this.mDraggingOverlay && e.target != this.mDraggingOverlay)
         {
            return;
         }
         if(this.mEditorMode)
         {
            this.mLevelEditor.mouseRollOut();
            if(this.mLevelCamera.mDragging)
            {
               this.mLevelCamera.stopDragging();
            }
         }
         else
         {
            this.mouseUp(null);
         }
         MouseCursorController.cursorHide();
      }
      
      public function mouseUp(e:MouseEvent) : void
      {
         var p:Point = null;
         MouseCursorController.mouseUp();
         if(this.mEditorMode)
         {
            p = this.screenToBox2D(e.stageX,e.stageY);
            if(this.mLevelEditor.mouseUp(p))
            {
               return;
            }
         }
         else if(!this.mEditorMode && this.mLevelSlingshot.mDragging)
         {
            if(!e)
            {
               this.mLevelSlingshot.cancelDraging();
            }
            else
            {
               p = this.screenToBox2D(e.stageX,e.stageY);
               this.mLevelSlingshot.setNewCoordinatesForRubber(p.x,p.y,false);
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
            if(e)
            {
               p = this.screenToBox2D(e.stageX,e.stageY);
               this.mLevelCamera.dragToNewPoint(p);
            }
            this.mLevelCamera.stopDragging();
         }
      }
      
      public function mouseMove(e:MouseEvent) : void
      {
         var p:Point = null;
         if(this.mEditorMode)
         {
            p = this.screenToBox2D(e.stageX,e.stageY);
            if(this.mLevelEditor.mouseMove(p))
            {
               return;
            }
         }
         if(!this.mEditorMode && this.mLevelSlingshot.mDragging)
         {
            p = this.screenToBox2D(e.stageX,e.stageY);
            this.mLevelSlingshot.setNewCoordinatesForRubber(p.x,p.y,false);
         }
         else if(this.mLevelCamera.mDragging)
         {
            p = this.screenToBox2D(e.stageX,e.stageY);
            this.mLevelCamera.dragToNewPoint(p);
         }
      }
      
      public function mouseClick(e:MouseEvent) : void
      {
         var p:Point = null;
         if(this.mEditorMode)
         {
            p = this.screenToBox2D(e.stageX,e.stageY);
            if(this.mLevelEditor.mouseClick(p))
            {
               return;
            }
         }
      }
      
      public function screenToBox2D(newX:Number, newY:Number) : Point
      {
         var p:Point = new Point();
         p.x = (newX / LevelCamera.smLevelScale + this.mLevelCamera.mScreenLeftScroll - LevelCamera.smLevelX / LevelCamera.smLevelScale) * PIXEL_TO_B2_SCALE;
         p.y = (newY / LevelCamera.smLevelScale + this.mLevelCamera.mScreenTopScroll - LevelCamera.smLevelY / LevelCamera.smLevelScale) * PIXEL_TO_B2_SCALE;
         return p;
      }
      
      public function box2DToScreen(newX:Number, newY:Number) : Point
      {
         var p:Point = new Point();
         p.x = (newX / PIXEL_TO_B2_SCALE + LevelCamera.smLevelX / LevelCamera.smLevelScale - this.mLevelCamera.mScreenLeftScroll) * LevelCamera.smLevelScale;
         p.y = (newY / PIXEL_TO_B2_SCALE + LevelCamera.smLevelY / LevelCamera.smLevelScale - this.mLevelCamera.mScreenTopScroll) * LevelCamera.smLevelScale;
         return p;
      }
      
      public function createObjectFromMaterial(materialName:String, x:Number, y:Number) : void
      {
         this.mLevelObjects.addObject(materialName,x,y);
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
      
      public function update(newDeltaTime:Number, updatePhysics:Boolean = true) : Boolean
      {
         if(!this.mReadyToRun)
         {
            return true;
         }
         var timeUsedForBox2D:Number = 0;
         if(updatePhysics)
         {
            this.mDeltaTime += newDeltaTime;
            this.mDeltaTime = this.mLevelEngine.updateWorld(this.mDeltaTime);
            timeUsedForBox2D = this.mLevelEngine.mTimeUsedByBox2D;
         }
         else
         {
            this.mLevelObjects.updateLevelObjectsGoingOn();
            timeUsedForBox2D = newDeltaTime;
            this.mDeltaTime = 0;
         }
         if(this.mActiveObject)
         {
            if(this.mActiveObject && this.mActiveObject.isBird())
            {
               this.mNextParticleTime -= timeUsedForBox2D;
               if(this.mNextParticleTime < 0 || this.mTrailSpecial && this.mActiveObject.mObjectName.toUpperCase() == "BIRD_WHITE")
               {
                  this.mNextParticleTime += PARTICLE_TRAIL_DELAY;
                  this.addBirdTrail();
               }
            }
            if(timeUsedForBox2D > 0)
            {
               this.mLevelObjects.updateLevelObjectsComplete(timeUsedForBox2D,this.mDeltaTime);
               this.mLevelCamera.updateCamera(timeUsedForBox2D,this.mActiveObject);
            }
         }
         else
         {
            this.mLevelObjects.updateLevelObjectsComplete(newDeltaTime,this.mDeltaTime);
            this.mLevelCamera.updateCamera(newDeltaTime,this.mActiveObject);
         }
         this.mLevelEngine.drawDebugData();
         if(updatePhysics)
         {
            this.mLevelSlingshot.update(newDeltaTime);
         }
         this.mLevelParticles.update(newDeltaTime);
         if(this.mEditorMode)
         {
            this.mLevelEditor.mouseMove(this.screenToBox2D(parent.mouseX,parent.mouseY));
            this.mLevelEditor.update(newDeltaTime);
         }
         if(this.mLevelScoreVisible < this.mLevelScore)
         {
            this.mLevelScoreVisible = Math.min(this.mLevelScore,this.mLevelScoreVisible + newDeltaTime * SCORE_SPEED);
         }
         this.handleStateChanges(newDeltaTime);
         if(this.isGameOver(true))
         {
            return false;
         }
         return true;
      }
      
      public function addBirdTrail() : void
      {
         var birdX:Number = this.mActiveObject.getBody().GetPosition().x;
         var birdY:Number = this.mActiveObject.getBody().GetPosition().y;
         var particle:LevelParticle = null;
         if(this.mTrailSpecial)
         {
            particle = this.mLevelParticles.addParticle(LevelParticle.PARTICLE_NAME_BIRD_TRAIL_BIG,LevelParticles.PARTICLE_GROUP_TRAILS,LevelParticle.PARTICLE_TYPE_TRAIL_PARTICLE,birdX,birdY,-1,"",LevelParticle.PARTICLE_MATERIAL_BIRD_RED);
            this.mTrailSpecial = false;
         }
         else if(this.mActiveObject && this.mActiveObject.mPowerUpDamageMultiplier > 1)
         {
            particle = this.mLevelParticles.addParticle(LevelParticle.PARTICLE_NAME_BIRD_TRAIL_SPARKLE,LevelParticles.PARTICLE_GROUP_TRAILS,LevelParticle.PARTICLE_TYPE_TRAIL_PARTICLE,birdX,birdY,-1,"",LevelParticle.PARTICLE_MATERIAL_BIRD_RED);
         }
         else
         {
            particle = this.mLevelParticles.addParticle(LevelParticle.PARTICLE_NAME_BIRD_TRAIL,LevelParticles.PARTICLE_GROUP_TRAILS,LevelParticle.PARTICLE_TYPE_TRAIL_PARTICLE,birdX,birdY,-1,"",LevelParticle.PARTICLE_MATERIAL_BIRD_RED);
         }
         if(LevelObject.INTERPOLATE_DISPLAY_OBJECTS)
         {
            particle.visible = false;
         }
      }
      
      public function isGameOver(shouldWeEndGame:Boolean = false) : Boolean
      {
         return (this.mLevelState == LEVEL_STATE_VICTORY2_END || this.mLevelState == LEVEL_STATE_VICTORY1_SLINGSHOT || this.mLevelState == LEVEL_STATE_FAIL) && (!shouldWeEndGame || this.mStateTimer <= 0 && this.mLevelState != LEVEL_STATE_VICTORY1_SLINGSHOT);
      }
      
      public function updatePigAnimations(deltaTime:Number) : void
      {
         var pig:LevelObject = null;
         this.mPigsAnimationTimer1 -= deltaTime;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            if(this.mLevelObjects.isPigsAlive(true))
            {
               pig = this.mLevelObjects.getRandomPig(true);
               pig.mRenderer.mTryToScream = LevelObjectRenderer.SCREAM_TIME;
               this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.mLevelObjects.getPigCount());
            }
         }
         this.mPigsAnimationTimer2 -= deltaTime;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            if(this.mLevelObjects.isPigsAlive(true))
            {
               pig = this.mLevelObjects.getRandomPig(true);
               pig.mRenderer.mTryToBlink = LevelObjectRenderer.BLINK_TIME;
               this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.mLevelObjects.getPigCount());
            }
         }
      }
      
      public function handleStateChanges(newDeltaTime:Number) : void
      {
         this.mEvaluateGameOverTimer -= newDeltaTime;
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
         this.mStateTimer -= newDeltaTime;
         if(this.mStateTimer < 0)
         {
            this.mStateTimer = 0;
         }
         if(this.mLevelState == LEVEL_STATE_CASTLE_VIEW)
         {
            this.updatePigAnimations(newDeltaTime);
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
               this.updatePigAnimations(newDeltaTime);
            }
         }
         else if(this.mLevelState == LEVEL_STATE_STARTING)
         {
            if(this.mStateTimer <= 0)
            {
               if(this.mLevelEditor && this.mEditorMode)
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
      
      public function addScore(newScore:Number, showScore:Boolean = false, newX:Number = 0, newY:Number = 0, newMaterial:int = -9999) : void
      {
         if(newMaterial == -9999)
         {
            newMaterial = LevelParticle.PARTICLE_MATERIAL_BLOCKS_MISC;
         }
         this.mLevelScore += newScore;
         if(showScore && newScore > 0)
         {
            this.addFloatingText(newScore.toString(),newX,newY,800,newMaterial,0,-3);
         }
      }
      
      public function addFloatingText(text:String, x:Number = 0, y:Number = 0, lifetime:Number = 1000, material:int = -9999, xSpeed:Number = 0, ySpeed:Number = -3) : void
      {
         if(material == -9999)
         {
            material = LevelParticle.PARTICLE_MATERIAL_TEXT_WHITE;
         }
         this.mLevelParticles.addParticle(LevelParticle.PARTICLE_NAME_FLOATING_TEXT,LevelParticles.PARTICLE_GROUP_FLOATING_TEXT,LevelParticle.PARTICLE_TYPE_FLOATING_TEXT,x,y,lifetime,text,material,xSpeed,ySpeed);
      }
      
      public function addChildToLevelAt(child:DisplayObject, index:int = -1) : void
      {
         if(index == -1)
         {
            index = numChildren;
         }
         addChildAt(child,index);
      }
      
      public function addLevelToDisplay(display:DisplayObjectContainer) : void
      {
         display.addChild(this);
      }
      
      public function changeGameState(newState:int, forceChange:Boolean = false) : void
      {
         if(this.isGameOver(false) && !forceChange)
         {
            return;
         }
         if(newState == LEVEL_STATE_STARTING)
         {
            this.mStateTimer = 2000;
         }
         else if(newState == LEVEL_STATE_SLINGSHOT)
         {
            this.mLevelCamera.goToBirdView();
         }
         else if(newState == LEVEL_STATE_BIRD_FLYING)
         {
            this.mLevelObjects.mExplodePreviousActiveObjectOnNextClick = false;
            this.mStateTimer = 5000;
            this.mNextParticleTime = 0;
            this.mLevelCamera.goToCastleView();
            this.mLevelParticles.moveTrailsNewToOld();
         }
         else if(newState == LEVEL_STATE_CASTLE_VIEW)
         {
            this.mLevelCamera.goToCastleView();
         }
         else if(newState == LEVEL_STATE_DAMAGE_VIEW)
         {
            this.mStateTimer = 2000;
            this.mLevelCamera.goToCastleView();
         }
         else if(newState == LEVEL_STATE_VICTORY2_END)
         {
            this.mStateTimer = 1200;
            this.mLevelCamera.goToBirdView();
         }
         else if(newState == LEVEL_STATE_VICTORY1_SLINGSHOT)
         {
            this.mStateTimer = 1200;
            this.mLevelCamera.goToBirdView();
            this.mLevelSlingshot.setSlingShotState(LevelSlingshot.STATE_AWARDING_REMAINING_BIRD_SCORES);
         }
         else if(newState == LEVEL_STATE_FAIL)
         {
            this.mStateTimer = 1200;
            this.mLevelCamera.goToCastleView();
            this.mLevelObjects.makePigsSmile(5);
         }
         this.mLevelState = newState;
      }
      
      public function createDraggingOverlay() : void
      {
         var view:UIView = null;
         if(!DRAGGING_OVERLAYS_ENABLED)
         {
            return;
         }
         if(!this.mDraggingOverlay)
         {
            view = (this.parent as StateBase).mUIView;
            this.mDraggingOverlay = view.createOverlaySprite(16777215,0);
            view.addChild(this.mDraggingOverlay);
            this.mDraggingOverlay.mouseEnabled = true;
            this.mDraggingOverlay.mouseChildren = true;
            this.mDraggingOverlay.addEventListener(MouseEvent.MOUSE_MOVE,this.mouseMove);
            this.mDraggingOverlay.addEventListener(MouseEvent.MOUSE_UP,this.mouseUp);
            this.mDraggingOverlay.addEventListener(MouseEvent.MOUSE_OUT,this.mouseRollOut);
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
      
      public function isLevelOfDay() : Boolean
      {
         return this.mLevelData.levelID == this.mLevelOfDayId;
      }
   }
}
