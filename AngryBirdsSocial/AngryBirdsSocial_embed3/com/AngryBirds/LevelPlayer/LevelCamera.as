package com.AngryBirds.LevelPlayer
{
   import com.rovio.factory.Log;
   import flash.geom.Point;
   
   public class LevelCamera
   {
      
      public static const SCALE_MAX:Number = !AngryBirdsSocial.RUN_AS_EMBED_PLAYER ? Number(1.25) : Number(0.625);
      
      public static const SCALE_MIN:Number = !AngryBirdsSocial.RUN_AS_EMBED_PLAYER ? Number(0.4) : Number(0.2);
      
      public static const MANUAL_SCALE_MAX:Number = 1;
      
      public static const MANUAL_SCALE_MIN:Number = 0.5;
      
      public static const MANUAL_SCALE_STEP:Number = 0.1;
      
      public static const EDITOR_BORDER_SKY:Number = LevelBorders.LEVEL_GROUND_LEVEL_IN_BOX2D - 0.85 * AngryBirdsSocial.SCREEN_HEIGHT * LevelMain.PIXEL_TO_B2_SCALE;
      
      public static const EDITOR_BORDER_GROUND:Number = EDITOR_BORDER_SKY + AngryBirdsSocial.SCREEN_HEIGHT * LevelMain.PIXEL_TO_B2_SCALE;
      
      public static const EDITOR_BORDER_SLINGSHOT_LEFT:Number = 0;
      
      public static const EDITOR_BORDER_SLINGSHOT_RIGHT:Number = EDITOR_BORDER_SLINGSHOT_LEFT + AngryBirdsSocial.SCREEN_WIDTH * LevelMain.PIXEL_TO_B2_SCALE;
      
      public static const EDITOR_BORDER_CASTLE_LEFT:Number = EDITOR_BORDER_SLINGSHOT_RIGHT + 5;
      
      public static const EDITOR_BORDER_CASTLE_RIGHT:Number = EDITOR_BORDER_CASTLE_LEFT + AngryBirdsSocial.SCREEN_WIDTH * LevelMain.PIXEL_TO_B2_SCALE;
      
      public static const EDITOR_USE_LINEAR_CAMERA:Boolean = false;
      
      public static const EXTENSION_LEVEL_MAX:int = 3;
      
      public static const EDITOR_BORDER_HORIZONTAL_RAISE:Number = AngryBirdsSocial.SCREEN_WIDTH * LevelMain.PIXEL_TO_B2_SCALE / EXTENSION_LEVEL_MAX;
      
      public static const EDITOR_BORDER_VERTICAL_RAISE:Number = AngryBirdsSocial.SCREEN_HEIGHT * LevelMain.PIXEL_TO_B2_SCALE / (EXTENSION_LEVEL_MAX * 2);
      
      public static const CAMERA_SPEED:Number = 50;
      
      public static const SCALE_SPEED:Number = 0.5;
      
      public static var smLevelScale:Number;
      
      public static var smLevelX:Number;
      
      public static var smLevelY:Number;
      
      public static const SWIPE_TIME:Number = 2000;
      
      public static const SWIPE_DISTANCE:Number = 6 / SWIPE_TIME;
      
      public static const SWITCH_CAMERA_DURATION:Number = 250;
       
      
      public var mManualScale:Number;
      
      public var mLevelExtension:int = 0;
      
      public var mLevelAutoCamera:Boolean;
      
      public var mXcenterB2:Number;
      
      public var mYcenterB2:Number;
      
      public var mXcenterB2target:Number;
      
      public var mYcenterB2target:Number;
      
      public var mXcenterB2previous:Number;
      
      public var mYcenterB2previous:Number;
      
      public var mTimeNeededForCameraMovement:Number;
      
      public var mTimeUsedForCameraMovement:Number;
      
      public var mTimeToIgnoreCameraBordersForEditor:Number = 0;
      
      public var mTimeNeededForScaleMovement:Number;
      
      public var mTimeUsedForScaleMovement:Number;
      
      public var mLevelMain:LevelMain;
      
      public var mTargetScale:Number;
      
      public var mTargetScalePrevious:Number;
      
      public var mCastleCameraX:Number;
      
      public var mCastleCameraY:Number;
      
      public var mCastleCameraScale:Number;
      
      public var mSlingshotCameraX:Number;
      
      public var mSlingshotCameraY:Number;
      
      public var mSlingshotCameraScale:Number;
      
      public var mScreenLeftScroll:Number;
      
      public var mScreenTopScroll:Number;
      
      public var mDragging:Boolean = false;
      
      public var mDraggingPointPreviousX:Number;
      
      public var mDraggingPointPreviousY:Number;
      
      public var mDraggingPointCurrentX:Number;
      
      public var mDraggingPointCurrentY:Number;
      
      public var mDraggingPointOriginalX:Number;
      
      public var mDraggingPointOriginalY:Number;
      
      public var mDraggingTimer:Number;
      
      public var mCameraBorderLeft:Number;
      
      public var mCameraBorderRight:Number;
      
      public var mCameraBorderSky:Number;
      
      public var mCameraBorderGround:Number;
      
      public var mPigsAreOnRight:Boolean;
      
      public function LevelCamera(aLevelMain:LevelMain, level:XML)
      {
         super();
         var cameras:XMLList = level.Cameras;
         this.mXcenterB2 = 0;
         this.mYcenterB2 = 0;
         this.mLevelMain = aLevelMain;
         LevelCamera.smLevelScale = 1;
         this.mManualScale = 1;
         this.loadCameraBorders();
         this.updateCamera(1);
         this.loadCameraInformation(cameras);
         this.goToCastleView();
         this.updateCamera(99999);
         var extension:Number = 0;
         if(level.@LevelExtension.toString() != "")
         {
            extension = parseInt(level.@LevelExtension);
         }
         this.setLevelExtension(extension);
         var autoCamera:String = level.@AutoCamera;
         this.mLevelAutoCamera = autoCamera.toUpperCase() == "TRUE";
      }
      
      public function loadCameraBorders() : void
      {
         this.mCameraBorderLeft = this.mLevelMain.mLevelBorders.mBorderLeft_B2;
         this.mCameraBorderRight = this.mLevelMain.mLevelBorders.mBorderRight_B2;
         this.mCameraBorderSky = this.mLevelMain.mLevelBorders.mBorderGround_B2 - 2 * LevelMain.LEVEL_HEIGHT_PIXEL * LevelMain.PIXEL_TO_B2_SCALE;
         this.mCameraBorderGround = this.mLevelMain.mLevelBorders.mBorderGround_B2 + 4;
      }
      
      public function clear() : void
      {
      }
      
      public function loadCameraInformation(cameras:XMLList) : void
      {
         var camera:XML = null;
         var name:String = null;
         for each(camera in cameras.Camera)
         {
            name = camera.@id;
            name = name.toUpperCase();
            if(name == "SLINGSHOT")
            {
               this.mSlingshotCameraX = camera.@x;
               this.mSlingshotCameraY = camera.@y;
               this.mSlingshotCameraScale = camera.@scale;
            }
            else if(name == "CASTLE")
            {
               this.mCastleCameraX = camera.@x;
               this.mCastleCameraY = camera.@y;
               this.mCastleCameraScale = camera.@scale;
            }
            else
            {
               Log.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
         }
         this.mPigsAreOnRight = this.mCastleCameraX >= this.mSlingshotCameraX;
      }
      
      public function updateCamera(deltaTime:Number, object:LevelObject = null) : void
      {
         if(this.mDragging)
         {
            this.approachDraggingLocation(deltaTime);
         }
         else
         {
            if(object)
            {
               this.updateCameraWithObject(object,deltaTime);
               return;
            }
            if(this.mTimeUsedForCameraMovement < this.mTimeNeededForCameraMovement)
            {
               this.mTimeUsedForCameraMovement = Math.min(this.mTimeUsedForCameraMovement + deltaTime,this.mTimeNeededForCameraMovement);
               this.approachTargetLocation(deltaTime);
            }
            else
            {
               this.mTimeUsedForCameraMovement = 0;
               this.mTimeNeededForCameraMovement = 0;
               this.mTimeToIgnoreCameraBordersForEditor = 0;
            }
            if(this.mTimeUsedForScaleMovement < this.mTimeNeededForScaleMovement)
            {
               this.mTimeUsedForScaleMovement = Math.min(this.mTimeUsedForScaleMovement + deltaTime,this.mTimeNeededForScaleMovement);
               this.approachTargetScale(deltaTime);
            }
            else
            {
               this.mTimeUsedForScaleMovement = 0;
               this.mTimeNeededForScaleMovement = 0;
            }
         }
         this.keepCameraInBoundries();
         this.adjustLevelMainViewAccordingToScale();
         this.updateScrollingValues();
         this.setLevelMainScale();
      }
      
      public function updateCameraWithObject(object:LevelObject, deltaTime:Number) : void
      {
         var shiftX:Number = NaN;
         var shiftY:Number = NaN;
         var newScale:Number = NaN;
         if(!object)
         {
            return;
         }
         var deltaX:Number = Math.max(0.001,this.mXcenterB2target - this.mXcenterB2previous);
         this.mTimeUsedForCameraMovement += object.getBody().GetLinearVelocity().x * deltaTime * this.mTimeNeededForCameraMovement * 1 / (deltaX * 1000);
         this.mTimeUsedForCameraMovement = Math.min(this.mTimeUsedForCameraMovement,this.mTimeNeededForCameraMovement);
         if(object.mObjectName == "BIRD_GREEN" && this.mPigsAreOnRight && object.getBody().GetPosition().x >= this.mXcenterB2target)
         {
            this.mTimeUsedForCameraMovement = this.mTimeNeededForCameraMovement;
         }
         this.mTimeUsedForScaleMovement += object.getBody().GetLinearVelocity().x * deltaTime * this.mTimeNeededForScaleMovement / (deltaX * 1000);
         this.mTimeUsedForScaleMovement = Math.min(this.mTimeUsedForScaleMovement,this.mTimeNeededForScaleMovement);
         this.approachTargetLocation(deltaTime,true);
         if(LevelObject.INTERPOLATE_DISPLAY_OBJECTS)
         {
            this.applyInterpolationOffset(object);
         }
         this.approachTargetScale(deltaTime,true);
         this.keepCameraInBoundries();
         this.adjustLevelMainViewAccordingToScale();
         this.updateScrollingValues();
         this.setLevelMainScale();
         var objectPositionOnScreen:Point = this.mLevelMain.box2DToScreen(object.getBody().GetPosition().x,object.getBody().GetPosition().y);
         var suggestScaleX:Number = 1;
         var suggestScaleY:Number = 1;
         var sideMargin:Number = 50;
         sideMargin += object.getBody().GetLinearVelocity().x / 2;
         if(objectPositionOnScreen.x < sideMargin)
         {
            shiftX = sideMargin - objectPositionOnScreen.x;
            suggestScaleX = LevelMain.LEVEL_WIDTH_PIXEL / (LevelMain.LEVEL_WIDTH_PIXEL + shiftX * 2);
            suggestScaleX = LevelCamera.smLevelScale * suggestScaleX;
            suggestScaleX = Math.max(suggestScaleX,this.mLevelMain.mLevelBorders.mMinScale);
         }
         var verticalMargin:Number = 20;
         if(object.getBody().GetLinearVelocity().y > 0)
         {
            verticalMargin += object.getBody().GetLinearVelocity().y * 1;
         }
         else
         {
            verticalMargin += object.getBody().GetLinearVelocity().y * 2;
         }
         if(objectPositionOnScreen.y < verticalMargin)
         {
            shiftY = verticalMargin - objectPositionOnScreen.y;
            suggestScaleY = LevelMain.LEVEL_HEIGHT_PIXEL / (LevelMain.LEVEL_HEIGHT_PIXEL + shiftY);
            suggestScaleY = LevelCamera.smLevelScale * suggestScaleY;
            if(suggestScaleY < suggestScaleX)
            {
               suggestScaleY = Math.max(suggestScaleY,this.mLevelMain.mLevelBorders.mMinScale);
               LevelCamera.smLevelScale = suggestScaleY;
               this.keepCameraInBoundries();
               this.adjustLevelMainViewAccordingToScale();
               this.updateScrollingValues();
               objectPositionOnScreen = this.mLevelMain.box2DToScreen(object.getBody().GetPosition().x,object.getBody().GetPosition().y);
               shiftY = verticalMargin - objectPositionOnScreen.y;
               shiftY = shiftY * LevelMain.PIXEL_TO_B2_SCALE / suggestScaleY;
               this.mYcenterB2 -= shiftY;
            }
         }
         if(suggestScaleX != 1 || suggestScaleY != 1)
         {
            newScale = Math.min(suggestScaleX,suggestScaleY);
            LevelCamera.smLevelScale = newScale;
            this.keepCameraInBoundries();
            this.adjustLevelMainViewAccordingToScale();
            this.updateScrollingValues();
            this.setLevelMainScale();
         }
      }
      
      public function adjustLevelMainViewAccordingToScale() : void
      {
         this.mLevelMain.x = LevelMain.LEVEL_WIDTH_PIXEL * ((1 - LevelCamera.smLevelScale) / 2);
         LevelCamera.smLevelX = this.mLevelMain.x;
         this.mLevelMain.y = LevelMain.LEVEL_HEIGHT_PIXEL * (1 - LevelCamera.smLevelScale) * LevelBorders.LEVEL_GROUND_PREFERRED_LEVEL;
         LevelCamera.smLevelY = this.mLevelMain.y;
      }
      
      public function setLevelMainScale() : void
      {
         this.mLevelMain.scaleX = LevelCamera.smLevelScale;
         this.mLevelMain.scaleY = LevelCamera.smLevelScale;
      }
      
      public function updateScrollingValues() : void
      {
         var xCenterPixel:Number = this.mXcenterB2 / LevelMain.PIXEL_TO_B2_SCALE;
         var yCenterPixel:Number = this.mYcenterB2 / LevelMain.PIXEL_TO_B2_SCALE;
         this.mScreenLeftScroll = xCenterPixel - LevelMain.LEVEL_WIDTH_PIXEL / 2;
         this.mScreenTopScroll = yCenterPixel - LevelMain.LEVEL_HEIGHT_PIXEL / 2 + LevelBorders.smLevelCamaraShiftToFocusGround;
         this.mLevelMain.mLevelBackground.updateScrollAndScale(this.mScreenLeftScroll,this.mScreenTopScroll);
         this.mLevelMain.mLevelObjects.updateScrollAndScale(this.mScreenLeftScroll,this.mScreenTopScroll);
         this.mLevelMain.mLevelEngine.updateScrollAndScale(this.mScreenLeftScroll,this.mScreenTopScroll);
         this.mLevelMain.mLevelSlingshot.updateScrollAndScale(this.mScreenLeftScroll,this.mScreenTopScroll);
         this.mLevelMain.mLevelParticles.updateScrollAndScale(this.mScreenLeftScroll,this.mScreenTopScroll);
         if(this.mLevelMain.mEditorMode)
         {
            this.mLevelMain.mLevelEditor.updateScrollAndScale(this.mScreenLeftScroll,this.mScreenTopScroll);
         }
      }
      
      public function keepCameraInBoundries() : void
      {
         var border:Number = NaN;
         var limit:Number = NaN;
         if(this.mLevelMain.mEditorMode)
         {
            if(this.mLevelMain.mLevelEditor.mEditorView == LevelEditor.EDITOR_VIEW_CASTLE)
            {
               border = this.mXcenterB2 + LevelMain.LEVEL_WIDTH_PIXEL / 2 * LevelMain.PIXEL_TO_B2_SCALE / LevelCamera.smLevelScale;
               limit = EDITOR_BORDER_CASTLE_RIGHT + this.mLevelExtension * EDITOR_BORDER_HORIZONTAL_RAISE;
               if(border > limit)
               {
                  this.mXcenterB2 -= border - limit;
               }
               border = this.mXcenterB2 - LevelMain.LEVEL_WIDTH_PIXEL / 2 * LevelMain.PIXEL_TO_B2_SCALE / LevelCamera.smLevelScale;
               limit = EDITOR_BORDER_CASTLE_LEFT;
               if(border < limit && this.mTimeToIgnoreCameraBordersForEditor <= 0)
               {
                  this.mXcenterB2 += limit - border;
               }
            }
            if(this.mLevelMain.mLevelEditor.mEditorView == LevelEditor.EDITOR_VIEW_SLINGSHOT)
            {
               border = this.mXcenterB2 - LevelMain.LEVEL_WIDTH_PIXEL / 2 * LevelMain.PIXEL_TO_B2_SCALE / LevelCamera.smLevelScale;
               limit = EDITOR_BORDER_SLINGSHOT_LEFT - this.mLevelExtension * EDITOR_BORDER_HORIZONTAL_RAISE;
               if(border < limit)
               {
                  this.mXcenterB2 += limit - border;
               }
               border = this.mXcenterB2 + LevelMain.LEVEL_WIDTH_PIXEL / 2 * LevelMain.PIXEL_TO_B2_SCALE / LevelCamera.smLevelScale;
               limit = EDITOR_BORDER_SLINGSHOT_RIGHT;
               if(border > limit && this.mTimeToIgnoreCameraBordersForEditor <= 0)
               {
                  this.mXcenterB2 -= border - limit;
               }
            }
            border = this.mYcenterB2 - LevelMain.LEVEL_HEIGHT_PIXEL / 2 * LevelMain.PIXEL_TO_B2_SCALE / LevelCamera.smLevelScale;
            limit = EDITOR_BORDER_SKY - this.mLevelExtension * EDITOR_BORDER_VERTICAL_RAISE;
            if(border < limit && this.mTimeToIgnoreCameraBordersForEditor <= 0)
            {
               this.mYcenterB2 += limit - border;
            }
            border = this.mYcenterB2 + LevelMain.LEVEL_HEIGHT_PIXEL / 2 * LevelMain.PIXEL_TO_B2_SCALE / LevelCamera.smLevelScale;
            limit = EDITOR_BORDER_GROUND;
            if(border > limit)
            {
               this.mYcenterB2 -= border - limit;
            }
         }
         else
         {
            border = this.mXcenterB2 - LevelMain.LEVEL_WIDTH_PIXEL / 2 * LevelMain.PIXEL_TO_B2_SCALE / LevelCamera.smLevelScale;
            if(border < this.mCameraBorderLeft)
            {
               this.mXcenterB2 += this.mCameraBorderLeft - border;
            }
            border = this.mXcenterB2 + LevelMain.LEVEL_WIDTH_PIXEL / 2 * LevelMain.PIXEL_TO_B2_SCALE / LevelCamera.smLevelScale;
            if(border > this.mCameraBorderRight)
            {
               this.mXcenterB2 -= border - this.mCameraBorderRight;
            }
            border = this.mYcenterB2 - LevelMain.LEVEL_HEIGHT_PIXEL / 2 * LevelMain.PIXEL_TO_B2_SCALE / LevelCamera.smLevelScale;
            if(border < this.mCameraBorderSky)
            {
               this.mYcenterB2 += this.mCameraBorderSky - border;
            }
            border = this.mYcenterB2 + LevelMain.LEVEL_HEIGHT_PIXEL / 2 * LevelMain.PIXEL_TO_B2_SCALE / LevelCamera.smLevelScale;
            if(border > this.mCameraBorderGround)
            {
               this.mYcenterB2 -= border - this.mCameraBorderGround;
            }
         }
      }
      
      public function isCoordinateInBorder(newX:Number, newY:Number) : Boolean
      {
         if(this.mLevelMain.mEditorMode)
         {
            if(this.mLevelMain.mLevelEditor.mEditorView == LevelEditor.EDITOR_VIEW_CASTLE)
            {
               return newX >= EDITOR_BORDER_CASTLE_LEFT && newX <= EDITOR_BORDER_CASTLE_RIGHT + this.mLevelExtension * EDITOR_BORDER_HORIZONTAL_RAISE && newY >= EDITOR_BORDER_SKY - this.mLevelExtension * EDITOR_BORDER_VERTICAL_RAISE && newY <= LevelBorders.LEVEL_GROUND_LEVEL_IN_BOX2D;
            }
            if(this.mLevelMain.mLevelEditor.mEditorView == LevelEditor.EDITOR_VIEW_SLINGSHOT)
            {
               return newX >= EDITOR_BORDER_SLINGSHOT_LEFT - this.mLevelExtension * EDITOR_BORDER_HORIZONTAL_RAISE && newX <= EDITOR_BORDER_SLINGSHOT_RIGHT && newY >= EDITOR_BORDER_SKY - this.mLevelExtension * EDITOR_BORDER_VERTICAL_RAISE && newY <= LevelBorders.LEVEL_GROUND_LEVEL_IN_BOX2D;
            }
            return false;
         }
         return false;
      }
      
      public function approachTargetLocation(deltaTime:Number, useLinear:Boolean = false) : void
      {
         var t:Number = NaN;
         if(useLinear || EDITOR_USE_LINEAR_CAMERA && this.mLevelMain.mEditorMode)
         {
            this.mXcenterB2 = this.mXcenterB2previous + this.mTimeUsedForCameraMovement * (this.mXcenterB2target - this.mXcenterB2previous) / this.mTimeNeededForCameraMovement;
            this.mYcenterB2 = this.mYcenterB2previous + this.mTimeUsedForCameraMovement * (this.mYcenterB2target - this.mYcenterB2previous) / this.mTimeNeededForCameraMovement;
         }
         else
         {
            t = (this.mTimeNeededForCameraMovement - this.mTimeUsedForCameraMovement) / this.mTimeNeededForCameraMovement;
            t *= t;
            t = 1 - t;
            this.mXcenterB2 = this.mXcenterB2previous + t * (this.mXcenterB2target - this.mXcenterB2previous);
            this.mYcenterB2 = this.mYcenterB2previous + t * (this.mYcenterB2target - this.mYcenterB2previous);
         }
      }
      
      public function applyInterpolationOffset(object:LevelObject) : void
      {
         var x:Number = object.mInterpolationXOffset * LevelMain.PIXEL_TO_B2_SCALE;
         var y:Number = object.mInterpolationYOffset * LevelMain.PIXEL_TO_B2_SCALE;
         if(this.mXcenterB2 != this.mXcenterB2target && x != 0)
         {
            this.mXcenterB2 += x;
         }
         if(y != 0 && this.mYcenterB2 != this.mYcenterB2target)
         {
            this.mYcenterB2 += y;
         }
      }
      
      public function approachDraggingLocation(deltaTime:Number) : void
      {
         this.mDraggingTimer += deltaTime;
         if(this.mLevelMain.mEditorMode)
         {
            this.shiftCameraInstant(this.mDraggingPointCurrentX - this.mDraggingPointPreviousX,this.mDraggingPointCurrentY - this.mDraggingPointPreviousY);
         }
         else
         {
            this.shiftCameraInstant(this.mDraggingPointCurrentX - this.mDraggingPointPreviousX,0);
         }
         this.mDraggingPointCurrentX = this.mDraggingPointPreviousX;
         this.mDraggingPointCurrentY = this.mDraggingPointPreviousY;
      }
      
      public function startDragging(newPoint:Point) : void
      {
         this.mDragging = true;
         this.mDraggingTimer = 1000 / 60;
         this.mDraggingPointPreviousX = newPoint.x;
         this.mDraggingPointCurrentX = newPoint.x;
         this.mDraggingPointPreviousY = newPoint.y;
         this.mDraggingPointCurrentY = newPoint.y;
         this.mDraggingPointOriginalX = newPoint.x;
         this.mDraggingPointOriginalY = newPoint.y;
         if(LevelMain.DRAGGING_OVERLAYS_ENABLED)
         {
            this.mLevelMain.createDraggingOverlay();
         }
      }
      
      public function dragToNewPoint(newPoint:Point) : void
      {
         this.mDraggingPointCurrentX = newPoint.x;
         this.mDraggingPointCurrentY = newPoint.y;
      }
      
      public function stopDragging() : void
      {
         this.mDragging = false;
         this.mLevelMain.clearDraggingOverlay();
         if(!this.mLevelMain.mEditorMode)
         {
            if(this.mDraggingTimer < SWIPE_TIME && Math.abs(this.mDraggingPointOriginalX - this.mDraggingPointCurrentX) > SWIPE_DISTANCE * this.mDraggingTimer)
            {
               if(this.mDraggingPointCurrentX < this.mDraggingPointOriginalX)
               {
                  if(this.mCastleCameraX > this.mSlingshotCameraX)
                  {
                     this.mLevelMain.changeGameState(LevelMain.LEVEL_STATE_CASTLE_VIEW);
                  }
                  else
                  {
                     this.mLevelMain.changeGameState(LevelMain.LEVEL_STATE_SLINGSHOT);
                  }
               }
               else if(this.mCastleCameraX < this.mSlingshotCameraX)
               {
                  this.mLevelMain.changeGameState(LevelMain.LEVEL_STATE_CASTLE_VIEW);
               }
               else
               {
                  this.mLevelMain.changeGameState(LevelMain.LEVEL_STATE_SLINGSHOT);
               }
            }
            else if(this.mDraggingTimer < SWITCH_CAMERA_DURATION)
            {
               if(this.isOnCastleView())
               {
                  this.mLevelMain.changeGameState(LevelMain.LEVEL_STATE_SLINGSHOT);
               }
               else
               {
                  this.mLevelMain.changeGameState(LevelMain.LEVEL_STATE_CASTLE_VIEW);
               }
            }
            else
            {
               this.goToNearestCamera();
            }
         }
         this.mDraggingTimer = 0;
      }
      
      public function goToNearestCamera(useDamage:Boolean = false) : void
      {
         if(Math.abs(this.mXcenterB2 - this.mSlingshotCameraX) < Math.abs(this.mXcenterB2 - this.mCastleCameraX))
         {
            this.mLevelMain.changeGameState(LevelMain.LEVEL_STATE_SLINGSHOT);
         }
         else if(useDamage)
         {
            this.mLevelMain.changeGameState(LevelMain.LEVEL_STATE_DAMAGE_VIEW);
         }
         else
         {
            this.mLevelMain.changeGameState(LevelMain.LEVEL_STATE_CASTLE_VIEW);
         }
      }
      
      public function shiftCameraInstant(deltaX:Number, deltaY:Number) : void
      {
         this.mXcenterB2 -= deltaX;
         this.mYcenterB2 -= deltaY;
      }
      
      public function approachTargetScale(deltaTime:Number, useLinear:Boolean = false) : void
      {
         var t:Number = NaN;
         if(this.mTimeNeededForScaleMovement == 0)
         {
            return;
         }
         if(useLinear || EDITOR_USE_LINEAR_CAMERA && this.mLevelMain.mEditorMode)
         {
            LevelCamera.smLevelScale = this.mTargetScalePrevious + this.mTimeUsedForScaleMovement * (this.mTargetScale - this.mTargetScalePrevious) / this.mTimeNeededForScaleMovement;
         }
         else
         {
            t = (this.mTimeNeededForScaleMovement - this.mTimeUsedForScaleMovement) / this.mTimeNeededForScaleMovement;
            t *= t;
            t = 1 - t;
            LevelCamera.smLevelScale = this.mTargetScalePrevious + t * (this.mTargetScale - this.mTargetScalePrevious);
         }
      }
      
      public function goToBirdView(markIgnoreTimeForEditor:Boolean = false) : void
      {
         var p:Point = null;
         if(markIgnoreTimeForEditor && this.mLevelMain.mEditorMode)
         {
            this.mManualScale = this.mSlingshotCameraScale;
         }
         this.setTargetLocation(this.mSlingshotCameraX,this.mSlingshotCameraY,this.mSlingshotCameraScale);
         if(markIgnoreTimeForEditor && this.mLevelMain.mEditorMode)
         {
            p = this.adjustThisCameraLocation(this.mXcenterB2target,this.mYcenterB2target,this.mTargetScale);
            this.setTargetLocation(p.x,p.y,this.mSlingshotCameraScale);
            this.mTimeToIgnoreCameraBordersForEditor = this.mTimeNeededForCameraMovement;
         }
      }
      
      public function goToCastleView(markIgnoreTimeForEditor:Boolean = false) : void
      {
         var p:Point = null;
         if(markIgnoreTimeForEditor && this.mLevelMain.mEditorMode)
         {
            this.mManualScale = this.mCastleCameraScale;
         }
         this.setTargetLocation(this.mCastleCameraX,this.mCastleCameraY,this.mCastleCameraScale);
         if(markIgnoreTimeForEditor && this.mLevelMain.mEditorMode)
         {
            p = this.adjustThisCameraLocation(this.mXcenterB2target,this.mYcenterB2target,this.mTargetScale);
            this.setTargetLocation(p.x,p.y,this.mCastleCameraScale);
            this.mTimeToIgnoreCameraBordersForEditor = this.mTimeNeededForCameraMovement;
         }
      }
      
      public function adjustThisCameraLocation(newX:Number, newY:Number, newScale:Number) : Point
      {
         var tempX:Number = this.mXcenterB2;
         var tempY:Number = this.mYcenterB2;
         var tempScale:Number = smLevelScale;
         this.mXcenterB2 = newX;
         this.mYcenterB2 = newY;
         smLevelScale = newScale;
         this.keepCameraInBoundries();
         var p:Point = new Point();
         p.x = this.mXcenterB2;
         p.y = this.mYcenterB2;
         this.mXcenterB2 = tempX;
         this.mYcenterB2 = tempY;
         smLevelScale = tempScale;
         return p;
      }
      
      public function isOnCastleView(useScale:Boolean = false) : Boolean
      {
         return this.mXcenterB2target == this.mCastleCameraX && (!useScale || this.mTargetScale == this.mCastleCameraScale * this.mManualScale);
      }
      
      public function setTargetLocation(newX:Number, newY:Number, newScale:Number) : void
      {
         if(this.mLevelMain.mEditorMode)
         {
            newScale = 1;
         }
         this.mXcenterB2previous = this.mXcenterB2;
         this.mYcenterB2previous = this.mYcenterB2;
         this.mTargetScalePrevious = LevelCamera.smLevelScale;
         this.mXcenterB2target = newX;
         this.mYcenterB2target = newY;
         this.mTargetScale = newScale * this.mManualScale;
         this.mTargetScale = Math.min(SCALE_MAX,Math.max(this.mLevelMain.mLevelBorders.mMinScale,this.mTargetScale));
         this.mTimeUsedForCameraMovement = 0;
         var time:Number = Math.abs(this.mXcenterB2previous - this.mXcenterB2target) / (CAMERA_SPEED / 1000);
         this.mTimeNeededForCameraMovement = time;
         time = Math.abs(this.mYcenterB2previous - this.mYcenterB2target) / (CAMERA_SPEED / 1000);
         if(time > this.mTimeNeededForCameraMovement)
         {
            this.mTimeNeededForCameraMovement = time;
         }
         time = Math.abs(this.mTargetScalePrevious - this.mTargetScale) / (SCALE_SPEED / 1000);
         if(time > this.mTimeNeededForCameraMovement)
         {
            this.mTimeNeededForCameraMovement = time;
         }
         this.mTimeNeededForScaleMovement = this.mTimeNeededForCameraMovement;
         this.mTimeUsedForScaleMovement = 0;
      }
      
      public function setTargetScale(newScale:Number, useManualScale:Boolean = true) : void
      {
         if(this.mLevelMain.mEditorMode)
         {
            newScale = 1;
         }
         this.mTargetScalePrevious = LevelCamera.smLevelScale;
         this.mTargetScale = newScale * (!!useManualScale ? this.mManualScale : 1);
         this.mTargetScale = Math.min(SCALE_MAX,Math.max(this.mLevelMain.mLevelBorders.mMinScale,this.mTargetScale));
         this.mTimeNeededForScaleMovement = Math.abs(this.mTargetScalePrevious - this.mTargetScale) / (SCALE_SPEED / 1000);
         this.mTimeUsedForScaleMovement = 0;
      }
      
      public function setLastTargetLocation() : void
      {
         this.setTargetLocation(this.mXcenterB2target,this.mYcenterB2target,this.mTargetScale);
      }
      
      public function adjustManualScale(increase:Boolean) : void
      {
         var maxScale:Number = NaN;
         var minScale:Number = NaN;
         if(this.mLevelMain.mEditorMode && this.mTimeToIgnoreCameraBordersForEditor > 0)
         {
            return;
         }
         var manualScale:Number = this.mManualScale;
         if(increase)
         {
            manualScale += MANUAL_SCALE_STEP;
         }
         else
         {
            manualScale -= MANUAL_SCALE_STEP;
         }
         if(this.mLevelMain.mEditorMode)
         {
            maxScale = 1;
            minScale = (EDITOR_BORDER_CASTLE_RIGHT - EDITOR_BORDER_CASTLE_LEFT) / (EDITOR_BORDER_CASTLE_RIGHT - EDITOR_BORDER_CASTLE_LEFT + this.mLevelExtension * EDITOR_BORDER_HORIZONTAL_RAISE);
            manualScale = Math.max(minScale,Math.min(maxScale,manualScale));
         }
         else
         {
            manualScale = Math.max(MANUAL_SCALE_MIN,Math.min(MANUAL_SCALE_MAX,manualScale));
         }
         if(manualScale != this.mManualScale)
         {
            this.mManualScale = manualScale;
            if(this.isOnCastleView())
            {
               this.goToCastleView();
            }
            else
            {
               this.goToBirdView();
            }
         }
      }
      
      public function setCameraSlingshot() : void
      {
         if(this.mTimeToIgnoreCameraBordersForEditor > 0)
         {
            return;
         }
         this.mSlingshotCameraX = this.mXcenterB2;
         this.mSlingshotCameraY = this.mYcenterB2;
         this.mSlingshotCameraScale = this.mTargetScale;
         Log.log("NEW SLINGSHOT CAMERA : x = " + this.mSlingshotCameraX + " y = " + this.mSlingshotCameraY + " scale = " + this.mSlingshotCameraScale);
      }
      
      public function setCameraCastle() : void
      {
         if(this.mTimeToIgnoreCameraBordersForEditor > 0)
         {
            return;
         }
         this.mCastleCameraX = this.mXcenterB2;
         this.mCastleCameraY = this.mYcenterB2;
         this.mCastleCameraScale = this.mTargetScale;
         Log.log("NEW CASTLE CAMERA : x = " + this.mCastleCameraX + " y = " + this.mCastleCameraY + " scale = " + this.mCastleCameraScale);
      }
      
      public function setLevelExtension(newValue:int) : void
      {
         newValue = Math.min(newValue,EXTENSION_LEVEL_MAX);
         Log.log("LEVEL EXTENSION " + this.mLevelExtension + " => " + newValue);
         this.mLevelExtension = newValue;
      }
      
      public function getCamerasInXML() : String
      {
         this.roundUpCameras();
         var strXML:String = "";
         strXML += "  <Cameras>" + AngryBirdsSocial.LINE_BREAK_XML;
         strXML += "     <Camera id = \"Slingshot\" x = \"" + this.mSlingshotCameraX + "\" y = \"" + this.mSlingshotCameraY + "\" scale = \"" + this.mSlingshotCameraScale + "\"></Camera>" + AngryBirdsSocial.LINE_BREAK_XML;
         strXML += "     <Camera id = \"Castle\" x = \"" + this.mCastleCameraX + "\" y = \"" + this.mCastleCameraY + "\" scale = \"" + this.mCastleCameraScale + "\"></Camera>" + AngryBirdsSocial.LINE_BREAK_XML;
         return strXML + ("  </Cameras>" + AngryBirdsSocial.LINE_BREAK_XML);
      }
      
      public function roundUpCameras() : void
      {
         this.mSlingshotCameraX = LevelEditor.roundUpCoordinate(this.mSlingshotCameraX,true);
         this.mSlingshotCameraY = LevelEditor.roundUpCoordinate(this.mSlingshotCameraY,true);
         this.mSlingshotCameraScale = LevelEditor.roundUpCoordinate(this.mSlingshotCameraScale,true);
         this.mCastleCameraX = LevelEditor.roundUpCoordinate(this.mCastleCameraX,true);
         this.mCastleCameraY = LevelEditor.roundUpCoordinate(this.mCastleCameraY,true);
         this.mCastleCameraScale = LevelEditor.roundUpCoordinate(this.mCastleCameraScale,true);
      }
      
      public function traceCameraVariables() : String
      {
         var txt:String = "";
         txt += " mManualScale: " + this.mManualScale;
         txt += " mXcenterB2: " + this.mXcenterB2;
         txt += " mYcenterB2: " + this.mYcenterB2;
         txt += " mXcenterB2target: " + this.mManualScale;
         txt += "\n mYcenterB2target: " + this.mManualScale;
         txt += " mXcenterB2previous: " + this.mManualScale;
         txt += " mYcenterB2previous: " + this.mManualScale;
         txt += " mTimeNeededForCameraMovement: " + this.mManualScale;
         txt += " mTimeUsedForCameraMovement: " + this.mManualScale;
         txt += "\n mTimeNeededForScaleMovement: " + this.mManualScale;
         txt += " mTimeUsedForScaleMovement: " + this.mManualScale;
         txt += " mTargetScale: " + this.mManualScale;
         txt += " mTargetScalePrevious: " + this.mManualScale;
         txt += " mCastleCameraX: " + this.mManualScale;
         txt += "\n mCastleCameraY: " + this.mManualScale;
         txt += " mCastleCameraScale: " + this.mManualScale;
         txt += " mBirdCameraX: " + this.mManualScale;
         txt += " mBirdCameraY: " + this.mManualScale;
         txt += " mBirdCameraScale: " + this.mManualScale;
         txt += "\n mScreenLeftScroll: " + this.mManualScale;
         txt += " mScreenTopScroll: " + this.mManualScale;
         txt += " mDragging: " + this.mManualScale;
         txt += " mDraggingPointPreviousX: " + this.mManualScale;
         txt += " mDraggingPointPreviousY: " + this.mManualScale;
         txt += "\n mDraggingPointCurrentX: " + this.mManualScale;
         txt += " mDraggingPointCurrentY: " + this.mManualScale;
         txt += " mDraggingPointOriginalX: " + this.mManualScale;
         txt += " mDraggingPointOriginalY: " + this.mManualScale;
         txt += " mDraggingTimer: " + this.mManualScale;
         txt += "\n mCameraBorderLeft: " + this.mManualScale;
         txt += " mCameraBorderRight: " + this.mManualScale;
         txt += " mCameraBorderSky: " + this.mManualScale;
         txt += " mCameraBorderGround: " + this.mManualScale;
         return txt + (" mPigsAreOnRight: " + this.mManualScale + "\n ");
      }
   }
}
