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
      
      public function LevelCamera(param1:LevelMain, param2:XML)
      {
         super();
         var _loc3_:XMLList = param2.Cameras;
         this.mXcenterB2 = 0;
         this.mYcenterB2 = 0;
         this.mLevelMain = param1;
         LevelCamera.smLevelScale = 1;
         this.mManualScale = 1;
         this.loadCameraBorders();
         this.updateCamera(1);
         this.loadCameraInformation(_loc3_);
         this.goToCastleView();
         this.updateCamera(99999);
         var _loc4_:Number = 0;
         if(param2.@LevelExtension.toString() != "")
         {
            _loc4_ = parseInt(param2.@LevelExtension);
         }
         this.setLevelExtension(_loc4_);
         var _loc5_:String = param2.@AutoCamera;
         this.mLevelAutoCamera = _loc5_.toUpperCase() == "TRUE";
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
      
      public function loadCameraInformation(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:String = null;
         for each(_loc2_ in param1.Camera)
         {
            _loc3_ = _loc2_.@id;
            _loc3_ = _loc3_.toUpperCase();
            if(_loc3_ == "SLINGSHOT")
            {
               this.mSlingshotCameraX = _loc2_.@x;
               this.mSlingshotCameraY = _loc2_.@y;
               this.mSlingshotCameraScale = _loc2_.@scale;
            }
            else if(_loc3_ == "CASTLE")
            {
               this.mCastleCameraX = _loc2_.@x;
               this.mCastleCameraY = _loc2_.@y;
               this.mCastleCameraScale = _loc2_.@scale;
            }
            else
            {
               Log.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
         }
         this.mPigsAreOnRight = this.mCastleCameraX >= this.mSlingshotCameraX;
      }
      
      public function updateCamera(param1:Number, param2:LevelObject = null) : void
      {
         if(this.mDragging)
         {
            this.approachDraggingLocation(param1);
         }
         else
         {
            if(param2)
            {
               this.updateCameraWithObject(param2,param1);
               return;
            }
            if(this.mTimeUsedForCameraMovement < this.mTimeNeededForCameraMovement)
            {
               this.mTimeUsedForCameraMovement = Math.min(this.mTimeUsedForCameraMovement + param1,this.mTimeNeededForCameraMovement);
               this.approachTargetLocation(param1);
            }
            else
            {
               this.mTimeUsedForCameraMovement = 0;
               this.mTimeNeededForCameraMovement = 0;
               this.mTimeToIgnoreCameraBordersForEditor = 0;
            }
            if(this.mTimeUsedForScaleMovement < this.mTimeNeededForScaleMovement)
            {
               this.mTimeUsedForScaleMovement = Math.min(this.mTimeUsedForScaleMovement + param1,this.mTimeNeededForScaleMovement);
               this.approachTargetScale(param1);
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
      
      public function updateCameraWithObject(param1:LevelObject, param2:Number) : void
      {
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         if(!param1)
         {
            return;
         }
         var _loc3_:Number = Math.max(0.001,this.mXcenterB2target - this.mXcenterB2previous);
         this.mTimeUsedForCameraMovement += param1.getBody().GetLinearVelocity().x * param2 * this.mTimeNeededForCameraMovement * 1 / (_loc3_ * 1000);
         this.mTimeUsedForCameraMovement = Math.min(this.mTimeUsedForCameraMovement,this.mTimeNeededForCameraMovement);
         if(param1.mObjectName == "BIRD_GREEN" && this.mPigsAreOnRight && param1.getBody().GetPosition().x >= this.mXcenterB2target)
         {
            this.mTimeUsedForCameraMovement = this.mTimeNeededForCameraMovement;
         }
         this.mTimeUsedForScaleMovement += param1.getBody().GetLinearVelocity().x * param2 * this.mTimeNeededForScaleMovement / (_loc3_ * 1000);
         this.mTimeUsedForScaleMovement = Math.min(this.mTimeUsedForScaleMovement,this.mTimeNeededForScaleMovement);
         this.approachTargetLocation(param2,true);
         if(LevelObject.INTERPOLATE_DISPLAY_OBJECTS)
         {
            this.applyInterpolationOffset(param1);
         }
         this.approachTargetScale(param2,true);
         this.keepCameraInBoundries();
         this.adjustLevelMainViewAccordingToScale();
         this.updateScrollingValues();
         this.setLevelMainScale();
         var _loc4_:Point = this.mLevelMain.box2DToScreen(param1.getBody().GetPosition().x,param1.getBody().GetPosition().y);
         var _loc5_:Number = 1;
         var _loc6_:Number = 1;
         var _loc7_:Number = (_loc7_ = 50) + param1.getBody().GetLinearVelocity().x / 2;
         if(_loc4_.x < _loc7_)
         {
            _loc9_ = _loc7_ - _loc4_.x;
            _loc5_ = LevelMain.LEVEL_WIDTH_PIXEL / (LevelMain.LEVEL_WIDTH_PIXEL + _loc9_ * 2);
            _loc5_ = LevelCamera.smLevelScale * _loc5_;
            _loc5_ = Math.max(_loc5_,this.mLevelMain.mLevelBorders.mMinScale);
         }
         var _loc8_:Number = 20;
         if(param1.getBody().GetLinearVelocity().y > 0)
         {
            _loc8_ += param1.getBody().GetLinearVelocity().y * 1;
         }
         else
         {
            _loc8_ += param1.getBody().GetLinearVelocity().y * 2;
         }
         if(_loc4_.y < _loc8_)
         {
            _loc10_ = _loc8_ - _loc4_.y;
            _loc6_ = LevelMain.LEVEL_HEIGHT_PIXEL / (LevelMain.LEVEL_HEIGHT_PIXEL + _loc10_);
            if((_loc6_ = LevelCamera.smLevelScale * _loc6_) < _loc5_)
            {
               _loc6_ = Math.max(_loc6_,this.mLevelMain.mLevelBorders.mMinScale);
               LevelCamera.smLevelScale = _loc6_;
               this.keepCameraInBoundries();
               this.adjustLevelMainViewAccordingToScale();
               this.updateScrollingValues();
               _loc4_ = this.mLevelMain.box2DToScreen(param1.getBody().GetPosition().x,param1.getBody().GetPosition().y);
               _loc10_ = (_loc10_ = _loc8_ - _loc4_.y) * LevelMain.PIXEL_TO_B2_SCALE / _loc6_;
               this.mYcenterB2 -= _loc10_;
            }
         }
         if(_loc5_ != 1 || _loc6_ != 1)
         {
            _loc11_ = Math.min(_loc5_,_loc6_);
            LevelCamera.smLevelScale = _loc11_;
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
         var _loc1_:Number = this.mXcenterB2 / LevelMain.PIXEL_TO_B2_SCALE;
         var _loc2_:Number = this.mYcenterB2 / LevelMain.PIXEL_TO_B2_SCALE;
         this.mScreenLeftScroll = _loc1_ - LevelMain.LEVEL_WIDTH_PIXEL / 2;
         this.mScreenTopScroll = _loc2_ - LevelMain.LEVEL_HEIGHT_PIXEL / 2 + LevelBorders.smLevelCamaraShiftToFocusGround;
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
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         if(this.mLevelMain.mEditorMode)
         {
            if(this.mLevelMain.mLevelEditor.mEditorView == LevelEditor.EDITOR_VIEW_CASTLE)
            {
               _loc1_ = this.mXcenterB2 + LevelMain.LEVEL_WIDTH_PIXEL / 2 * LevelMain.PIXEL_TO_B2_SCALE / LevelCamera.smLevelScale;
               _loc2_ = EDITOR_BORDER_CASTLE_RIGHT + this.mLevelExtension * EDITOR_BORDER_HORIZONTAL_RAISE;
               if(_loc1_ > _loc2_)
               {
                  this.mXcenterB2 -= _loc1_ - _loc2_;
               }
               _loc1_ = this.mXcenterB2 - LevelMain.LEVEL_WIDTH_PIXEL / 2 * LevelMain.PIXEL_TO_B2_SCALE / LevelCamera.smLevelScale;
               _loc2_ = EDITOR_BORDER_CASTLE_LEFT;
               if(_loc1_ < _loc2_ && this.mTimeToIgnoreCameraBordersForEditor <= 0)
               {
                  this.mXcenterB2 += _loc2_ - _loc1_;
               }
            }
            if(this.mLevelMain.mLevelEditor.mEditorView == LevelEditor.EDITOR_VIEW_SLINGSHOT)
            {
               _loc1_ = this.mXcenterB2 - LevelMain.LEVEL_WIDTH_PIXEL / 2 * LevelMain.PIXEL_TO_B2_SCALE / LevelCamera.smLevelScale;
               _loc2_ = EDITOR_BORDER_SLINGSHOT_LEFT - this.mLevelExtension * EDITOR_BORDER_HORIZONTAL_RAISE;
               if(_loc1_ < _loc2_)
               {
                  this.mXcenterB2 += _loc2_ - _loc1_;
               }
               _loc1_ = this.mXcenterB2 + LevelMain.LEVEL_WIDTH_PIXEL / 2 * LevelMain.PIXEL_TO_B2_SCALE / LevelCamera.smLevelScale;
               _loc2_ = EDITOR_BORDER_SLINGSHOT_RIGHT;
               if(_loc1_ > _loc2_ && this.mTimeToIgnoreCameraBordersForEditor <= 0)
               {
                  this.mXcenterB2 -= _loc1_ - _loc2_;
               }
            }
            _loc1_ = this.mYcenterB2 - LevelMain.LEVEL_HEIGHT_PIXEL / 2 * LevelMain.PIXEL_TO_B2_SCALE / LevelCamera.smLevelScale;
            _loc2_ = EDITOR_BORDER_SKY - this.mLevelExtension * EDITOR_BORDER_VERTICAL_RAISE;
            if(_loc1_ < _loc2_ && this.mTimeToIgnoreCameraBordersForEditor <= 0)
            {
               this.mYcenterB2 += _loc2_ - _loc1_;
            }
            _loc1_ = this.mYcenterB2 + LevelMain.LEVEL_HEIGHT_PIXEL / 2 * LevelMain.PIXEL_TO_B2_SCALE / LevelCamera.smLevelScale;
            _loc2_ = EDITOR_BORDER_GROUND;
            if(_loc1_ > _loc2_)
            {
               this.mYcenterB2 -= _loc1_ - _loc2_;
            }
         }
         else
         {
            _loc1_ = this.mXcenterB2 - LevelMain.LEVEL_WIDTH_PIXEL / 2 * LevelMain.PIXEL_TO_B2_SCALE / LevelCamera.smLevelScale;
            if(_loc1_ < this.mCameraBorderLeft)
            {
               this.mXcenterB2 += this.mCameraBorderLeft - _loc1_;
            }
            _loc1_ = this.mXcenterB2 + LevelMain.LEVEL_WIDTH_PIXEL / 2 * LevelMain.PIXEL_TO_B2_SCALE / LevelCamera.smLevelScale;
            if(_loc1_ > this.mCameraBorderRight)
            {
               this.mXcenterB2 -= _loc1_ - this.mCameraBorderRight;
            }
            _loc1_ = this.mYcenterB2 - LevelMain.LEVEL_HEIGHT_PIXEL / 2 * LevelMain.PIXEL_TO_B2_SCALE / LevelCamera.smLevelScale;
            if(_loc1_ < this.mCameraBorderSky)
            {
               this.mYcenterB2 += this.mCameraBorderSky - _loc1_;
            }
            _loc1_ = this.mYcenterB2 + LevelMain.LEVEL_HEIGHT_PIXEL / 2 * LevelMain.PIXEL_TO_B2_SCALE / LevelCamera.smLevelScale;
            if(_loc1_ > this.mCameraBorderGround)
            {
               this.mYcenterB2 -= _loc1_ - this.mCameraBorderGround;
            }
         }
      }
      
      public function isCoordinateInBorder(param1:Number, param2:Number) : Boolean
      {
         if(this.mLevelMain.mEditorMode)
         {
            if(this.mLevelMain.mLevelEditor.mEditorView == LevelEditor.EDITOR_VIEW_CASTLE)
            {
               return param1 >= EDITOR_BORDER_CASTLE_LEFT && param1 <= EDITOR_BORDER_CASTLE_RIGHT + this.mLevelExtension * EDITOR_BORDER_HORIZONTAL_RAISE && param2 >= EDITOR_BORDER_SKY - this.mLevelExtension * EDITOR_BORDER_VERTICAL_RAISE && param2 <= LevelBorders.LEVEL_GROUND_LEVEL_IN_BOX2D;
            }
            if(this.mLevelMain.mLevelEditor.mEditorView == LevelEditor.EDITOR_VIEW_SLINGSHOT)
            {
               return param1 >= EDITOR_BORDER_SLINGSHOT_LEFT - this.mLevelExtension * EDITOR_BORDER_HORIZONTAL_RAISE && param1 <= EDITOR_BORDER_SLINGSHOT_RIGHT && param2 >= EDITOR_BORDER_SKY - this.mLevelExtension * EDITOR_BORDER_VERTICAL_RAISE && param2 <= LevelBorders.LEVEL_GROUND_LEVEL_IN_BOX2D;
            }
            return false;
         }
         return false;
      }
      
      public function approachTargetLocation(param1:Number, param2:Boolean = false) : void
      {
         var _loc3_:Number = NaN;
         if(param2 || EDITOR_USE_LINEAR_CAMERA && this.mLevelMain.mEditorMode)
         {
            this.mXcenterB2 = this.mXcenterB2previous + this.mTimeUsedForCameraMovement * (this.mXcenterB2target - this.mXcenterB2previous) / this.mTimeNeededForCameraMovement;
            this.mYcenterB2 = this.mYcenterB2previous + this.mTimeUsedForCameraMovement * (this.mYcenterB2target - this.mYcenterB2previous) / this.mTimeNeededForCameraMovement;
         }
         else
         {
            _loc3_ = (this.mTimeNeededForCameraMovement - this.mTimeUsedForCameraMovement) / this.mTimeNeededForCameraMovement;
            _loc3_ *= _loc3_;
            _loc3_ = 1 - _loc3_;
            this.mXcenterB2 = this.mXcenterB2previous + _loc3_ * (this.mXcenterB2target - this.mXcenterB2previous);
            this.mYcenterB2 = this.mYcenterB2previous + _loc3_ * (this.mYcenterB2target - this.mYcenterB2previous);
         }
      }
      
      public function applyInterpolationOffset(param1:LevelObject) : void
      {
         var _loc2_:Number = param1.mInterpolationXOffset * LevelMain.PIXEL_TO_B2_SCALE;
         var _loc3_:Number = param1.mInterpolationYOffset * LevelMain.PIXEL_TO_B2_SCALE;
         if(this.mXcenterB2 != this.mXcenterB2target && _loc2_ != 0)
         {
            this.mXcenterB2 += _loc2_;
         }
         if(_loc3_ != 0 && this.mYcenterB2 != this.mYcenterB2target)
         {
            this.mYcenterB2 += _loc3_;
         }
      }
      
      public function approachDraggingLocation(param1:Number) : void
      {
         this.mDraggingTimer += param1;
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
      
      public function startDragging(param1:Point) : void
      {
         this.mDragging = true;
         this.mDraggingTimer = 1000 / 60;
         this.mDraggingPointPreviousX = param1.x;
         this.mDraggingPointCurrentX = param1.x;
         this.mDraggingPointPreviousY = param1.y;
         this.mDraggingPointCurrentY = param1.y;
         this.mDraggingPointOriginalX = param1.x;
         this.mDraggingPointOriginalY = param1.y;
         if(LevelMain.DRAGGING_OVERLAYS_ENABLED)
         {
            this.mLevelMain.createDraggingOverlay();
         }
      }
      
      public function dragToNewPoint(param1:Point) : void
      {
         this.mDraggingPointCurrentX = param1.x;
         this.mDraggingPointCurrentY = param1.y;
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
      
      public function goToNearestCamera(param1:Boolean = false) : void
      {
         if(Math.abs(this.mXcenterB2 - this.mSlingshotCameraX) < Math.abs(this.mXcenterB2 - this.mCastleCameraX))
         {
            this.mLevelMain.changeGameState(LevelMain.LEVEL_STATE_SLINGSHOT);
         }
         else if(param1)
         {
            this.mLevelMain.changeGameState(LevelMain.LEVEL_STATE_DAMAGE_VIEW);
         }
         else
         {
            this.mLevelMain.changeGameState(LevelMain.LEVEL_STATE_CASTLE_VIEW);
         }
      }
      
      public function shiftCameraInstant(param1:Number, param2:Number) : void
      {
         this.mXcenterB2 -= param1;
         this.mYcenterB2 -= param2;
      }
      
      public function approachTargetScale(param1:Number, param2:Boolean = false) : void
      {
         var _loc3_:Number = NaN;
         if(this.mTimeNeededForScaleMovement == 0)
         {
            return;
         }
         if(param2 || EDITOR_USE_LINEAR_CAMERA && this.mLevelMain.mEditorMode)
         {
            LevelCamera.smLevelScale = this.mTargetScalePrevious + this.mTimeUsedForScaleMovement * (this.mTargetScale - this.mTargetScalePrevious) / this.mTimeNeededForScaleMovement;
         }
         else
         {
            _loc3_ = (this.mTimeNeededForScaleMovement - this.mTimeUsedForScaleMovement) / this.mTimeNeededForScaleMovement;
            _loc3_ *= _loc3_;
            _loc3_ = 1 - _loc3_;
            LevelCamera.smLevelScale = this.mTargetScalePrevious + _loc3_ * (this.mTargetScale - this.mTargetScalePrevious);
         }
      }
      
      public function goToBirdView(param1:Boolean = false) : void
      {
         var _loc2_:Point = null;
         if(param1 && this.mLevelMain.mEditorMode)
         {
            this.mManualScale = this.mSlingshotCameraScale;
         }
         this.setTargetLocation(this.mSlingshotCameraX,this.mSlingshotCameraY,this.mSlingshotCameraScale);
         if(param1 && this.mLevelMain.mEditorMode)
         {
            _loc2_ = this.adjustThisCameraLocation(this.mXcenterB2target,this.mYcenterB2target,this.mTargetScale);
            this.setTargetLocation(_loc2_.x,_loc2_.y,this.mSlingshotCameraScale);
            this.mTimeToIgnoreCameraBordersForEditor = this.mTimeNeededForCameraMovement;
         }
      }
      
      public function goToCastleView(param1:Boolean = false) : void
      {
         var _loc2_:Point = null;
         if(param1 && this.mLevelMain.mEditorMode)
         {
            this.mManualScale = this.mCastleCameraScale;
         }
         this.setTargetLocation(this.mCastleCameraX,this.mCastleCameraY,this.mCastleCameraScale);
         if(param1 && this.mLevelMain.mEditorMode)
         {
            _loc2_ = this.adjustThisCameraLocation(this.mXcenterB2target,this.mYcenterB2target,this.mTargetScale);
            this.setTargetLocation(_loc2_.x,_loc2_.y,this.mCastleCameraScale);
            this.mTimeToIgnoreCameraBordersForEditor = this.mTimeNeededForCameraMovement;
         }
      }
      
      public function adjustThisCameraLocation(param1:Number, param2:Number, param3:Number) : Point
      {
         var _loc4_:Number = this.mXcenterB2;
         var _loc5_:Number = this.mYcenterB2;
         var _loc6_:Number = smLevelScale;
         this.mXcenterB2 = param1;
         this.mYcenterB2 = param2;
         smLevelScale = param3;
         this.keepCameraInBoundries();
         var _loc7_:Point;
         (_loc7_ = new Point()).x = this.mXcenterB2;
         _loc7_.y = this.mYcenterB2;
         this.mXcenterB2 = _loc4_;
         this.mYcenterB2 = _loc5_;
         smLevelScale = _loc6_;
         return _loc7_;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         return this.mXcenterB2target == this.mCastleCameraX && (!param1 || this.mTargetScale == this.mCastleCameraScale * this.mManualScale);
      }
      
      public function setTargetLocation(param1:Number, param2:Number, param3:Number) : void
      {
         if(this.mLevelMain.mEditorMode)
         {
            param3 = 1;
         }
         this.mXcenterB2previous = this.mXcenterB2;
         this.mYcenterB2previous = this.mYcenterB2;
         this.mTargetScalePrevious = LevelCamera.smLevelScale;
         this.mXcenterB2target = param1;
         this.mYcenterB2target = param2;
         this.mTargetScale = param3 * this.mManualScale;
         this.mTargetScale = Math.min(SCALE_MAX,Math.max(this.mLevelMain.mLevelBorders.mMinScale,this.mTargetScale));
         this.mTimeUsedForCameraMovement = 0;
         var _loc4_:Number = Math.abs(this.mXcenterB2previous - this.mXcenterB2target) / (CAMERA_SPEED / 1000);
         this.mTimeNeededForCameraMovement = _loc4_;
         if((_loc4_ = Math.abs(this.mYcenterB2previous - this.mYcenterB2target) / (CAMERA_SPEED / 1000)) > this.mTimeNeededForCameraMovement)
         {
            this.mTimeNeededForCameraMovement = _loc4_;
         }
         if((_loc4_ = Math.abs(this.mTargetScalePrevious - this.mTargetScale) / (SCALE_SPEED / 1000)) > this.mTimeNeededForCameraMovement)
         {
            this.mTimeNeededForCameraMovement = _loc4_;
         }
         this.mTimeNeededForScaleMovement = this.mTimeNeededForCameraMovement;
         this.mTimeUsedForScaleMovement = 0;
      }
      
      public function setTargetScale(param1:Number, param2:Boolean = true) : void
      {
         if(this.mLevelMain.mEditorMode)
         {
            param1 = 1;
         }
         this.mTargetScalePrevious = LevelCamera.smLevelScale;
         this.mTargetScale = param1 * (!!param2 ? this.mManualScale : 1);
         this.mTargetScale = Math.min(SCALE_MAX,Math.max(this.mLevelMain.mLevelBorders.mMinScale,this.mTargetScale));
         this.mTimeNeededForScaleMovement = Math.abs(this.mTargetScalePrevious - this.mTargetScale) / (SCALE_SPEED / 1000);
         this.mTimeUsedForScaleMovement = 0;
      }
      
      public function setLastTargetLocation() : void
      {
         this.setTargetLocation(this.mXcenterB2target,this.mYcenterB2target,this.mTargetScale);
      }
      
      public function adjustManualScale(param1:Boolean) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this.mLevelMain.mEditorMode && this.mTimeToIgnoreCameraBordersForEditor > 0)
         {
            return;
         }
         var _loc2_:Number = this.mManualScale;
         if(param1)
         {
            _loc2_ += MANUAL_SCALE_STEP;
         }
         else
         {
            _loc2_ -= MANUAL_SCALE_STEP;
         }
         if(this.mLevelMain.mEditorMode)
         {
            _loc3_ = 1;
            _loc4_ = (EDITOR_BORDER_CASTLE_RIGHT - EDITOR_BORDER_CASTLE_LEFT) / (EDITOR_BORDER_CASTLE_RIGHT - EDITOR_BORDER_CASTLE_LEFT + this.mLevelExtension * EDITOR_BORDER_HORIZONTAL_RAISE);
            _loc2_ = Math.max(_loc4_,Math.min(_loc3_,_loc2_));
         }
         else
         {
            _loc2_ = Math.max(MANUAL_SCALE_MIN,Math.min(MANUAL_SCALE_MAX,_loc2_));
         }
         if(_loc2_ != this.mManualScale)
         {
            this.mManualScale = _loc2_;
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
      
      public function setLevelExtension(param1:int) : void
      {
         param1 = Math.min(param1,EXTENSION_LEVEL_MAX);
         Log.log("LEVEL EXTENSION " + this.mLevelExtension + " => " + param1);
         this.mLevelExtension = param1;
      }
      
      public function getCamerasInXML() : String
      {
         this.roundUpCameras();
         var _loc1_:String = "";
         _loc1_ += "  <Cameras>" + AngryBirdsSocial.LINE_BREAK_XML;
         _loc1_ += "     <Camera id = \"Slingshot\" x = \"" + this.mSlingshotCameraX + "\" y = \"" + this.mSlingshotCameraY + "\" scale = \"" + this.mSlingshotCameraScale + "\"></Camera>" + AngryBirdsSocial.LINE_BREAK_XML;
         _loc1_ += "     <Camera id = \"Castle\" x = \"" + this.mCastleCameraX + "\" y = \"" + this.mCastleCameraY + "\" scale = \"" + this.mCastleCameraScale + "\"></Camera>" + AngryBirdsSocial.LINE_BREAK_XML;
         return _loc1_ + ("  </Cameras>" + AngryBirdsSocial.LINE_BREAK_XML);
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
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.mManualScale;
         _loc1_ += " mXcenterB2: " + this.mXcenterB2;
         _loc1_ += " mYcenterB2: " + this.mYcenterB2;
         _loc1_ += " mXcenterB2target: " + this.mManualScale;
         _loc1_ += "\n mYcenterB2target: " + this.mManualScale;
         _loc1_ += " mXcenterB2previous: " + this.mManualScale;
         _loc1_ += " mYcenterB2previous: " + this.mManualScale;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.mManualScale;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.mManualScale;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.mManualScale;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.mManualScale;
         _loc1_ += " mTargetScale: " + this.mManualScale;
         _loc1_ += " mTargetScalePrevious: " + this.mManualScale;
         _loc1_ += " mCastleCameraX: " + this.mManualScale;
         _loc1_ += "\n mCastleCameraY: " + this.mManualScale;
         _loc1_ += " mCastleCameraScale: " + this.mManualScale;
         _loc1_ += " mBirdCameraX: " + this.mManualScale;
         _loc1_ += " mBirdCameraY: " + this.mManualScale;
         _loc1_ += " mBirdCameraScale: " + this.mManualScale;
         _loc1_ += "\n mScreenLeftScroll: " + this.mManualScale;
         _loc1_ += " mScreenTopScroll: " + this.mManualScale;
         _loc1_ += " mDragging: " + this.mManualScale;
         _loc1_ += " mDraggingPointPreviousX: " + this.mManualScale;
         _loc1_ += " mDraggingPointPreviousY: " + this.mManualScale;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.mManualScale;
         _loc1_ += " mDraggingPointCurrentY: " + this.mManualScale;
         _loc1_ += " mDraggingPointOriginalX: " + this.mManualScale;
         _loc1_ += " mDraggingPointOriginalY: " + this.mManualScale;
         _loc1_ += " mDraggingTimer: " + this.mManualScale;
         _loc1_ += "\n mCameraBorderLeft: " + this.mManualScale;
         _loc1_ += " mCameraBorderRight: " + this.mManualScale;
         _loc1_ += " mCameraBorderSky: " + this.mManualScale;
         _loc1_ += " mCameraBorderGround: " + this.mManualScale;
         return _loc1_ + (" mPigsAreOnRight: " + this.mManualScale + "\n ");
      }
   }
}
