package com.angrybirds.engine.camera
{
   import com.angrybirds.engine.objects.LevelObject;
   import com.angrybirds.data.level.LevelCameraModel;
   import com.angrybirds.data.level.LevelModel;
   import com.angrybirds.engine.LevelMain;
   import com.angrybirds.AngryBirdsEngine;
   import each.Log;
   
   public class LevelCamera
   {
      
      public static const SCALE_MAX:Number = 1.25;
      
      public static const SCALE_MIN:Number = 0.15;
      
      public static const SCREEN_WIDTH_B2:Number = AngryBirdsEngine.SCREEN_WIDTH * LevelMain.PIXEL_TO_B2_SCALE;
      
      public static const SCREEN_HEIGHT_B2:Number = AngryBirdsEngine.SCREEN_HEIGHT * LevelMain.PIXEL_TO_B2_SCALE;
      
      public static const MANUAL_SCALE_STEP:Number = 0.1;
      
      public static const DRAG_SWIPE_MAX_TIME:int = 1500;
      
      public static const DRAG_SWIPE_MIN_MOVEMENT:int = 10;
      
      public static const DRAG_SWIPE_MOVEMENT_PER_SECOND:int = 15;
      
      public static const DRAG_SWITCH_SIDES_MAX_TIME:int = 300;
      
      public static const TIME_TO_WAIT_ON_CASTLE_BEFORE_GOING_BACK_TO_SLINGSHOT:int = 1000;
      
      public static const SLIDER_MAX:int = 10000;
      
      public static const SLIDER_SIDE_MARGIN:int = SLIDER_MAX / 50;
      
      public static const ACTION_NONE:int = 0;
      
      public static const ACTION_GO_TO_CASTLE:int = 1;
      
      public static const ACTION_GO_TO_SLINGSHOT:int = 2;
      
      public static const ACTION_FOLLOW_BIRD:int = 3;
      
      public static const ACTION_DRAG:int = 4;
      
      public static const ACTION_SLOW_SCROLL:int = 5;
      
      public static const CAMERA_ID_CASTLE:String = LevelCameraModel.CASTLE;
      
      public static const CAMERA_ID_SLINGSHOT:String = LevelCameraModel.SLINGSHOT;
      
      protected static var smLevelScale:Number;
      
      public static const SWIPE_TIME:Number = 2000;
       
      
      protected var mManualScaleMax:Number = 1.0;
      
      protected var mManualScaleMin:Number = 0.2;
      
      protected var mManualScale:Number;
      
      protected var mXcenterB2:Number;
      
      protected var mYcenterB2:Number;
      
      public var mLevelMain:LevelMain;
      
      public var mTargetScale:Number;
      
      public var mTargetScalePrevious:Number;
      
      protected var mCastleCamera:CameraData;
      
      protected var mSlingshotCamera:CameraData;
      
      protected var mScreenOffsetX:Number;
      
      protected var mScreenOffsetY:Number;
      
      protected var mPreviousAspectRatio:Number = 0;
      
      public var mDragging:Boolean = false;
      
      protected var mCameraCenterX:Number;
      
      protected var mCameraCenterY:Number;
      
      protected var mCameraBorderLeft:Number;
      
      protected var mCameraBorderRight:Number;
      
      protected var mCameraBorderTop:Number;
      
      protected var mCameraBorderBottom:Number;
      
      protected var mCurrentCastleCamera:AdjustableCameraData;
      
      protected var mCurrentSlingshotCamera:AdjustableCameraData;
      
      protected var mCameraDeltaX:Number = 0;
      
      protected var mCameraDeltaY:Number = 0;
      
      protected var mCameraDeltaScale:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var mSweepSpeed:Number = 0;
      
      public var mForceSprings:Boolean = true;
      
      public var mTimeNeededToFollowBird:Number = 0;
      
      public var mDragTime:Number = 0;
      
      public var mDragFirstX:Number = 0;
      
      public var mDragFirstY:Number = 0;
      
      public var mDragLastX:Number = 0;
      
      public var mDragLastY:Number = 0;
      
      public var mDragPreviousX:Number = 0;
      
      public var mDragPreviousY:Number = 0;
      
      public var mGoToSlingshotWhenReady:Number = 0;
      
      private var mTempCameraAnimation:AdjustableCameraData;
      
      public var mTempCameraAnimationScale2:Number = 0;
      
      private var mOffsetX:Number = 0;
      
      private var mOffsetY:Number = 0;
      
      private var mForcedCameraPosition:LevelCameraModel = null;
      
      private var mForcedCameraStoredPosition:LevelCameraModel = null;
      
      public function LevelCamera(param1:LevelMain, param2:LevelModel, param3:Number = 1.0)
      {
         this.mTempCameraAnimation = new AdjustableCameraData(0,0,1,false);
         super();
         this.mXcenterB2 = 0;
         this.mYcenterB2 = 0;
         this.mLevelMain = param1;
         LevelCamera.smLevelScale = 1;
         this.mManualScaleMax = Math.max(1,Math.min(2,param3));
         this.mManualScale = this.manualScaleMax;
         this.loadCameraInformation(param2);
         if(this.mCastleCamera && this.mSlingshotCamera)
         {
            this.loadCameraBorders();
            this.mCameraDeltaX = this.mCastleCamera.x - this.mSlingshotCamera.x;
            this.mCameraDeltaY = this.mCastleCamera.y - this.mSlingshotCamera.y;
            this.mCameraDeltaScale = this.mCastleCamera.scale - this.mSlingshotCamera.scale;
            this.mXcenterB2 = this.mCastleCamera.x;
            this.mYcenterB2 = this.mCastleCamera.y;
            smLevelScale = this.mCastleCamera.scale * this.mManualScale;
         }
         this.mCurrentCameraSliderLocation = SLIDER_MAX;
         this.mForceSprings = true;
         this.mSweepSpeed = SLIDER_MAX / 500;
      }
      
      public static function get levelScale() : Number
      {
         var _loc1_:Number = AngryBirdsEngine.sWidthScale / AngryBirdsEngine.sHeightScale;
         if(_loc1_ > 1)
         {
            _loc1_ = 1;
         }
         return smLevelScale * _loc1_ * _loc1_;
      }
      
      public function get manualScale() : Number
      {
         return this.mManualScale;
      }
      
      public function set manualScale(param1:Number) : void
      {
         this.mManualScale = param1;
      }
      
      public function getMinimumScale() : Number
      {
         return SCREEN_WIDTH_B2 / (this.mCameraBorderRight - this.mCameraBorderLeft);
      }
      
      public function get manualScaleMax() : Number
      {
         var _loc1_:Number = AngryBirdsEngine.sWidthScale / AngryBirdsEngine.sHeightScale;
         return this.mManualScaleMax / _loc1_;
      }
      
      public function get manualScaleMin() : Number
      {
         return this.mManualScaleMin;
      }
      
      public function get screenLeftScroll() : Number
      {
         return this.mScreenOffsetX;
      }
      
      public function get screenTopScroll() : Number
      {
         return this.mScreenOffsetY;
      }
      
      public function get borderLeft() : Number
      {
         return this.mCameraBorderLeft;
      }
      
      public function get borderRight() : Number
      {
         return this.mCameraBorderRight;
      }
      
      public function get centerX() : Number
      {
         return this.mCameraCenterX;
      }
      
      public function get centerY() : Number
      {
         return this.mCameraCenterY;
      }
      
      public function get maxWidth() : Number
      {
         return this.mCameraBorderRight - this.mCameraBorderLeft;
      }
      
      protected function get castleCamera() : CameraData
      {
         return this.mCastleCamera;
      }
      
      public function snapManualScale(param1:Number) : void
      {
         this.mManualScale = param1;
         this.updateCameraLocations();
         this.updateCameraSliderNoBird(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         if(this.mCurrentAction == ACTION_SLOW_SCROLL)
         {
            return;
         }
         this.goToCastleView();
         this.mTimeNeededToFollowBird = 2000;
         this.updateScrollingValues();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.mXcenterB2 = this.mSlingshotCamera.x;
         this.mYcenterB2 = this.mSlingshotCamera.y;
         this.mForceSprings = false;
         this.mSweepSpeed = SLIDER_MAX / 160000 * param1;
         this.setAction(ACTION_SLOW_SCROLL);
      }
      
      public function loadCameraBorders() : void
      {
         var _loc1_:Number = (this.mCastleCamera.x - this.mSlingshotCamera.x) / 1.6;
         if(_loc1_ < SCREEN_WIDTH_B2 * 1.2)
         {
            _loc1_ = SCREEN_WIDTH_B2 * 1.2;
         }
         this.mCameraBorderLeft = this.mSlingshotCamera.x - _loc1_;
         this.mCameraBorderRight = this.mCastleCamera.x + _loc1_;
         this.mCameraBorderTop = Math.min(this.mCastleCamera.y,this.mSlingshotCamera.y) - SCREEN_HEIGHT_B2;
         this.mCameraBorderBottom = Math.max(this.mCastleCamera.y,this.mSlingshotCamera.y) + SCREEN_HEIGHT_B2;
         this.mCameraCenterX = (this.mCastleCamera.x + this.mSlingshotCamera.x) / 2;
         this.mCameraCenterY = (this.mCastleCamera.y + this.mSlingshotCamera.y) / 2;
      }
      
      public function clear() : void
      {
         this.mLevelMain = null;
      }
      
      public function loadCameraInformation(param1:LevelModel) : void
      {
         var _loc3_:LevelCameraModel = null;
         var _loc4_:String = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc2_:int = 0;
         while(_loc2_ < param1.cameraCount)
         {
            _loc3_ = param1.getCamera(_loc2_);
            _loc4_ = (_loc4_ = _loc3_.id).toUpperCase();
            if(_loc3_.scale.toString() != "" && _loc3_.scale.toString() != "null" && _loc3_.scale.toString() != "0")
            {
               this.readOldCameraScale(_loc3_);
            }
            _loc5_ = _loc3_.x;
            _loc6_ = _loc3_.y;
            _loc7_ = this.calculateCameraScale(_loc3_);
            if(_loc4_ == CAMERA_ID_SLINGSHOT)
            {
               this.mSlingshotCamera = new CameraData(_loc5_,_loc6_,_loc7_,true);
               this.mCurrentSlingshotCamera = new AdjustableCameraData(_loc5_,_loc6_,_loc7_,true);
            }
            else if(_loc4_ == CAMERA_ID_CASTLE)
            {
               this.mCastleCamera = new CameraData(_loc5_,_loc6_,_loc7_,false);
               this.mCurrentCastleCamera = new AdjustableCameraData(_loc5_,_loc6_,_loc7_,false);
            }
            else
            {
               Log.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
            _loc2_++;
         }
      }
      
      protected function calculateCameraScale(param1:LevelCameraModel) : Number
      {
         var _loc2_:Number = SCREEN_HEIGHT_B2 / (param1.bottom - param1.top);
         var _loc3_:Number = SCREEN_WIDTH_B2 / (param1.right - param1.left);
         return _loc3_ < _loc2_ ? Number(_loc3_) : Number(_loc2_);
      }
      
      public function writeCameraInformation(param1:LevelModel) : void
      {
         var _loc2_:LevelCameraModel = new LevelCameraModel();
         _loc2_.id = CAMERA_ID_SLINGSHOT;
         _loc2_.x = this.mSlingshotCamera.x;
         _loc2_.y = this.mSlingshotCamera.y;
         var _loc3_:Number = SCREEN_WIDTH_B2 / this.mSlingshotCamera.scale / 2;
         var _loc4_:Number = SCREEN_HEIGHT_B2 / this.mSlingshotCamera.scale / 2;
         _loc2_.left = this.mSlingshotCamera.x - _loc3_;
         _loc2_.right = this.mSlingshotCamera.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         var _loc5_:LevelCameraModel;
         (_loc5_ = new LevelCameraModel()).id = CAMERA_ID_CASTLE;
         _loc5_.x = this.mCastleCamera.x;
         _loc5_.y = this.mCastleCamera.y;
         var _loc6_:Number = SCREEN_WIDTH_B2 / this.mCastleCamera.scale / 2;
         var _loc7_:Number = SCREEN_HEIGHT_B2 / this.mCastleCamera.scale / 2;
         _loc5_.left = this.mCastleCamera.x - _loc6_;
         _loc5_.right = this.mCastleCamera.x + _loc6_;
         _loc5_.top = _loc5_.y - _loc7_;
         _loc5_.bottom = _loc5_.y + _loc7_;
         param1.clearCameras();
         param1.addCamera(_loc2_);
         param1.addCamera(_loc5_);
      }
      
      public function readOldCameraScale(param1:LevelCameraModel) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - AngryBirdsEngine.SCREEN_WIDTH * 0.5 / _loc2_ * LevelMain.PIXEL_TO_B2_SCALE;
         var _loc4_:Number = param1.y - AngryBirdsEngine.SCREEN_HEIGHT * 0.5 / _loc2_ * LevelMain.PIXEL_TO_B2_SCALE;
         var _loc5_:Number = _loc3_ + AngryBirdsEngine.SCREEN_WIDTH / _loc2_ * LevelMain.PIXEL_TO_B2_SCALE;
         var _loc6_:Number = _loc4_ + AngryBirdsEngine.SCREEN_HEIGHT / _loc2_ * LevelMain.PIXEL_TO_B2_SCALE;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function moveCameraTowardsTarget(param1:CameraData, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.mSweepSpeed;
         if(_loc3_ >= SLIDER_MAX)
         {
            _loc3_ = SLIDER_MAX;
            this.setAction(ACTION_NONE);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.setAction(ACTION_NONE);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      private function slideCameraSlowly(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.mSweepSpeed;
         var _loc4_:Number = -SLIDER_MAX * 0.7;
         if(_loc2_ >= SLIDER_MAX || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = SLIDER_MAX;
            }
            this.mSweepSpeed = -this.mSweepSpeed;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function updateCameraActions(param1:Number) : void
      {
         if(this.mCurrentAction == ACTION_SLOW_SCROLL)
         {
            this.slideCameraSlowly(param1);
         }
         else if(this.mCurrentAction == ACTION_GO_TO_CASTLE)
         {
            this.moveCameraTowardsTarget(this.mCastleCamera,param1);
         }
         else if(this.mCurrentAction == ACTION_GO_TO_SLINGSHOT)
         {
            this.moveCameraTowardsTarget(this.mSlingshotCamera,-param1);
         }
         else if(this.mCurrentAction == ACTION_FOLLOW_BIRD)
         {
            this.mForceSprings = true;
         }
         else if(this.mCurrentAction == ACTION_DRAG)
         {
            this.updateCameraDrag(param1);
         }
      }
      
      public function updateCamera(param1:Number) : void
      {
         this.adjustManualScale(true,0);
         if(this.mForcedCameraPosition)
         {
            this.mXcenterB2 = this.mForcedCameraPosition.x;
            this.mYcenterB2 = this.mForcedCameraPosition.y;
            smLevelScale = SCREEN_WIDTH_B2 / (this.mForcedCameraPosition.right - this.mForcedCameraPosition.left);
         }
         else
         {
            this.updateCameraLocations();
            this.updateCameraActions(param1);
            if(Math.abs(this.mPreviousAspectRatio - AngryBirdsEngine.sWidthScale / AngryBirdsEngine.sHeightScale) > 0.01)
            {
               param1 = 1000;
            }
            this.updateCameraSlider(this.mCurrentCameraSliderLocation,param1);
         }
         this.updateScrollingValues();
         this.mPreviousAspectRatio = AngryBirdsEngine.sWidthScale / AngryBirdsEngine.sHeightScale;
      }
      
      private function updateTempCamera(param1:Number, param2:Number) : void
      {
         if(Math.abs(this.mCurrentCastleCamera.x - this.mCurrentSlingshotCamera.x) < 0.01)
         {
            param1 = 0.5;
         }
         var _loc3_:Number = this.mCurrentSlingshotCamera.scale + (this.mCurrentCastleCamera.scale - this.mCurrentSlingshotCamera.scale) * param1;
         var _loc4_:Number = this.mCurrentSlingshotCamera.x + (this.mCurrentCastleCamera.x - this.mCurrentSlingshotCamera.x) * param1;
         var _loc5_:Number = this.mCurrentSlingshotCamera.y + (this.mCurrentCastleCamera.y - this.mCurrentSlingshotCamera.y) * param1;
         this.mTempCameraAnimation.x -= (this.mTempCameraAnimation.x - _loc4_) * param2;
         this.mTempCameraAnimation.y -= (this.mTempCameraAnimation.y - _loc5_) * param2;
         this.mTempCameraAnimation.scale -= (this.mTempCameraAnimation.scale - _loc3_) * param2;
         this.updateCameraWithPositionLimits(this.mTempCameraAnimation);
      }
      
      protected function updateCameraSliderNoBird(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCameraDeltaX != 0)
         {
            if(!this.mForceSprings)
            {
               param2 = 1;
            }
            _loc3_ = param1 / SLIDER_MAX;
            this.updateTempCamera(_loc3_,param2);
            this.mXcenterB2 = this.mTempCameraAnimation.x;
            this.mYcenterB2 = this.mTempCameraAnimation.y;
            smLevelScale = this.mTempCameraAnimation.scale;
         }
      }
      
      private function updateCameraSliderBird(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:LevelObject;
         var _loc5_:Number = (_loc4_ = this.mLevelMain.levelObjects.activeObject).getPositionX();
         var _loc6_:Number = _loc4_.getPositionY();
         var _loc7_:Number;
         if((_loc7_ = _loc4_.getBody().GetLinearVelocity().x) > 0 && this.mCameraDeltaX != 0)
         {
            param1 += param2 * _loc7_ * 10 / this.mCameraDeltaX * SLIDER_MAX;
         }
         if(param1 >= SLIDER_MAX)
         {
            param1 = SLIDER_MAX;
         }
         this.mCurrentCameraSliderLocation = param1;
         var _loc8_:Number = param1 / SLIDER_MAX;
         this.updateTempCamera(_loc8_,param3);
         var _loc9_:Number;
         if((_loc9_ = AngryBirdsEngine.sWidthScale / AngryBirdsEngine.sHeightScale) > 1)
         {
            _loc9_ = 1;
         }
         var _loc10_:Number = this.mTempCameraAnimation.x - SCREEN_WIDTH_B2 / _loc9_ * 0.5 / this.mTempCameraAnimation.scale;
         var _loc11_:Number = this.mTempCameraAnimation.y - SCREEN_HEIGHT_B2 * 0.5 / this.mTempCameraAnimation.scale;
         var _loc12_:Number = this.mTempCameraAnimation.x + SCREEN_WIDTH_B2 / _loc9_ * 0.5 / this.mTempCameraAnimation.scale;
         var _loc13_:Number = this.mTempCameraAnimation.y + SCREEN_HEIGHT_B2 * 0.5 / this.mTempCameraAnimation.scale;
         var _loc14_:Number = 150 * LevelMain.PIXEL_TO_B2_SCALE;
         var _loc15_:Number = Math.min(_loc10_,_loc5_ - _loc14_);
         var _loc16_:Number = Math.min(_loc11_,_loc6_ - _loc14_);
         var _loc17_:Number = Math.max(_loc12_,_loc5_ + _loc14_);
         var _loc18_:Number = Math.max(_loc13_,_loc6_ + _loc14_);
         _loc15_ = Math.max(this.mCameraBorderLeft,_loc15_);
         _loc17_ = Math.min(this.mCameraBorderRight,_loc17_);
         var _loc19_:Number = Math.abs(SCREEN_WIDTH_B2 / _loc9_ / (_loc17_ - _loc15_));
         var _loc20_:Number = Math.abs(SCREEN_HEIGHT_B2 / (_loc18_ - _loc16_));
         var _loc21_:Number;
         if((_loc21_ = Math.min(_loc19_,_loc20_)) > this.mTempCameraAnimation.scale)
         {
            _loc21_ = this.mTempCameraAnimation.scale;
         }
         var _loc22_:Number = (_loc17_ + _loc15_) * 0.5;
         var _loc23_:Number = (_loc18_ + _loc16_) * 0.5;
         var _loc24_:Boolean = false;
         if(_loc22_ + SCREEN_WIDTH_B2 / _loc9_ * 0.5 / _loc21_ > this.mCameraBorderRight)
         {
            _loc15_ = (_loc17_ = this.mCameraBorderRight) - SCREEN_WIDTH_B2 / _loc9_ / _loc21_;
            _loc24_ = true;
            if(_loc15_ < this.mCameraBorderLeft)
            {
               _loc15_ = this.mCameraBorderLeft;
            }
         }
         if(_loc22_ - SCREEN_WIDTH_B2 / _loc9_ * 0.5 / _loc21_ < this.mCameraBorderLeft)
         {
            _loc17_ = (_loc15_ = this.mCameraBorderLeft) + SCREEN_WIDTH_B2 / _loc9_ / _loc21_;
            _loc24_ = true;
            if(_loc17_ > this.mCameraBorderRight)
            {
               _loc17_ = this.mCameraBorderRight;
            }
         }
         if(_loc24_)
         {
            _loc22_ = (_loc17_ + _loc15_) * 0.5;
            _loc21_ = Math.abs(SCREEN_WIDTH_B2 / _loc9_ / (_loc17_ - _loc15_));
         }
         if(_loc23_ - SCREEN_HEIGHT_B2 * 0.5 < this.mCameraBorderTop)
         {
            _loc23_ = this.mCameraBorderTop + SCREEN_HEIGHT_B2 * 0.5;
         }
         if(_loc23_ + SCREEN_HEIGHT_B2 * 0.5 > this.mCameraBorderBottom)
         {
            _loc23_ = this.mCameraBorderBottom - SCREEN_HEIGHT_B2 * 0.5;
         }
         this.mXcenterB2 -= (this.mXcenterB2 - _loc22_) * param3;
         this.mTempCameraAnimationScale2 -= (this.mTempCameraAnimationScale2 - _loc21_) * param3;
         smLevelScale = this.mTempCameraAnimationScale2;
         this.mYcenterB2 -= (this.mYcenterB2 - _loc23_) * param3;
         if(_loc5_ >= this.mCameraBorderRight || _loc5_ <= this.mCameraBorderLeft)
         {
            this.mTempCameraAnimation.scale = smLevelScale;
            this.mTempCameraAnimation.x = this.mXcenterB2;
            this.mTempCameraAnimation.y = this.mYcenterB2;
         }
      }
      
      protected function updateCameraSlider(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = param2 / 1000;
         var _loc4_:Number;
         if((_loc4_ = _loc3_ * 3.5) > 1)
         {
            _loc4_ = 1;
         }
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= SLIDER_MAX)
         {
            this.mForceSprings = true;
         }
         if(this.mCurrentAction == ACTION_FOLLOW_BIRD)
         {
            if(!this.mLevelMain.levelObjects.activeObject)
            {
               this.setAction(ACTION_GO_TO_CASTLE);
               this.mGoToSlingshotWhenReady = TIME_TO_WAIT_ON_CASTLE_BEFORE_GOING_BACK_TO_SLINGSHOT;
            }
            else
            {
               this.updateCameraSliderBird(param1,_loc3_,_loc4_);
            }
         }
         else
         {
            this.updateCameraSliderNoBird(param1,_loc4_);
         }
      }
      
      public function setOffset(param1:Number, param2:Number) : void
      {
         this.mOffsetX = param1;
         this.mOffsetY = param2;
      }
      
      protected function limitCameraZoom(param1:AdjustableCameraData, param2:CameraData) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc3_:Number = AngryBirdsEngine.sWidthScale / AngryBirdsEngine.sHeightScale;
         if(_loc3_ > 1)
         {
            _loc3_ = 1;
         }
         param1.scale = SCALE_MIN + (param2.scale - SCALE_MIN) * this.manualScale;
         if(SCREEN_WIDTH_B2 / param1.scale > (this.mCameraBorderRight - this.mCameraBorderLeft) * _loc3_)
         {
            _loc4_ = SCREEN_WIDTH_B2 / ((this.mCameraBorderRight - this.mCameraBorderLeft) * _loc3_);
            param1.scale = _loc4_;
            return true;
         }
         return false;
      }
      
      private function updateCameraWithLimits(param1:AdjustableCameraData, param2:CameraData) : Boolean
      {
         var _loc3_:Boolean = this.limitCameraZoom(param1,param2);
         param1.y = param2.y;
         param1.x = param2.x;
         this.updateCameraWithPositionLimits(param1);
         return _loc3_;
      }
      
      private function updateCameraWithPositionLimits(param1:AdjustableCameraData) : void
      {
         var _loc2_:Number = AngryBirdsEngine.sWidthScale / AngryBirdsEngine.sHeightScale;
         if(_loc2_ > 1)
         {
            _loc2_ = 1;
         }
         var _loc3_:Number = param1.x - SCREEN_WIDTH_B2 / _loc2_ * 0.5 / param1.scale;
         if(_loc3_ < this.mCameraBorderLeft)
         {
            param1.x += this.mCameraBorderLeft - _loc3_;
         }
         var _loc4_:Number;
         if((_loc4_ = param1.x + SCREEN_WIDTH_B2 / _loc2_ * 0.5 / param1.scale) > this.mCameraBorderRight)
         {
            param1.x += this.mCameraBorderRight - _loc4_;
         }
      }
      
      private function getManualScale(param1:AdjustableCameraData, param2:CameraData) : Number
      {
         return (param1.scale - SCALE_MIN) / (param2.scale - SCALE_MIN);
      }
      
      protected function updateCameraLocations() : void
      {
         this.updateCameraWithLimits(this.mCurrentSlingshotCamera,this.mSlingshotCamera);
         var _loc1_:Number = this.getManualScale(this.mCurrentSlingshotCamera,this.mSlingshotCamera);
         this.updateCameraWithLimits(this.mCurrentCastleCamera,this.mCastleCamera);
         var _loc2_:Number = this.getManualScale(this.mCurrentCastleCamera,this.mCastleCamera);
         this.mManualScale = Math.min(_loc1_,_loc2_);
      }
      
      public function updateScrollingValues() : void
      {
         var _loc1_:Number = this.mXcenterB2 / LevelMain.PIXEL_TO_B2_SCALE + this.mOffsetX;
         var _loc2_:Number = this.mYcenterB2 / LevelMain.PIXEL_TO_B2_SCALE + this.mOffsetY;
         var _loc3_:Number = AngryBirdsEngine.sWidthScale;
         var _loc4_:Number = AngryBirdsEngine.sHeightScale;
         var _loc5_:Number = LevelMain.LEVEL_WIDTH_PIXEL * _loc3_ / Math.max(_loc3_,_loc4_);
         var _loc6_:Number = LevelMain.LEVEL_HEIGHT_PIXEL;
         this.mScreenOffsetX = _loc1_ - _loc5_ / 2;
         if(_loc3_ < _loc4_)
         {
            _loc3_ = _loc4_;
         }
         this.mScreenOffsetY = _loc2_ - _loc6_ / 2 / (_loc3_ / _loc4_);
         this.mScreenOffsetX += _loc5_ / 2 - _loc5_ / 2 / levelScale;
         this.mScreenOffsetY += (_loc6_ / 2 - _loc6_ / 2 / levelScale) / (_loc3_ / _loc4_);
         this.mLevelMain.setScreenOffset(this.mScreenOffsetX,this.mScreenOffsetY,levelScale);
      }
      
      protected function setDraggingAction() : void
      {
         this.setAction(ACTION_DRAG);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.mGoToSlingshotWhenReady = -1;
         this.setDraggingAction();
         this.mDragLastX = this.mDragPreviousX = this.mDragFirstX = param1;
         this.mDragLastY = this.mDragPreviousY = this.mDragFirstY = param2;
         this.mDragTime = 0;
         this.mTempCameraAnimation.x = this.mXcenterB2;
         this.mTempCameraAnimation.y = this.mYcenterB2;
         this.mTempCameraAnimation.scale = smLevelScale;
         this.mTempCameraAnimationScale2 = smLevelScale;
         if(Math.abs(this.mCurrentCastleCamera.x - this.mCurrentSlingshotCamera.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.mXcenterB2 - this.mCurrentSlingshotCamera.x) / (this.mCurrentCastleCamera.x - this.mCurrentSlingshotCamera.x) * SLIDER_MAX;
         }
         this.mDragging = true;
      }
      
      public function updateCameraDrag(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.mDragTime += param1;
         var _loc3_:Number = this.mDragLastX - this.mDragPreviousX;
         if(this.mCameraDeltaX > 0)
         {
            _loc2_ -= _loc3_ * LevelMain.PIXEL_TO_B2_SCALE / levelScale / this.mCameraDeltaX * SLIDER_MAX;
            this.mForceSprings = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.mForceSprings = true;
            }
            if(_loc2_ > SLIDER_MAX)
            {
               _loc2_ += (SLIDER_MAX - _loc2_) * 0.3;
               this.mForceSprings = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.mDragPreviousX = this.mDragLastX;
      }
      
      protected function isDragging() : Boolean
      {
         return this.mCurrentAction == ACTION_DRAG;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.mDragLastX = param1;
            this.mDragLastY = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == ACTION_DRAG)
         {
            this.setAction(ACTION_NONE);
            if(param1 > 0)
            {
               this.mDragLastX = param1;
            }
            _loc3_ = Math.abs(this.mDragLastX - this.mDragFirstX);
            if(this.mDragTime < DRAG_SWIPE_MAX_TIME && _loc3_ >= DRAG_SWIPE_MIN_MOVEMENT && _loc3_ >= DRAG_SWIPE_MOVEMENT_PER_SECOND * this.mDragTime / 1000)
            {
               if(this.mDragLastX < this.mDragFirstX)
               {
                  this.setAction(ACTION_GO_TO_CASTLE);
               }
               else
               {
                  this.setAction(ACTION_GO_TO_SLINGSHOT);
               }
               this.mSweepSpeed = _loc3_ / this.mDragTime * 10;
               this.mForceSprings = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.mForceSprings = true;
               }
               if(this.mCurrentCameraSliderLocation > SLIDER_MAX)
               {
                  this.mForceSprings = true;
               }
            }
            else if(this.mDragTime < DRAG_SWITCH_SIDES_MAX_TIME)
            {
               this.switchSides();
               this.mSweepSpeed = SLIDER_MAX / (SLIDER_MAX / 500);
               this.mForceSprings = true;
            }
            else
            {
               this.updateCameraDrag(0);
               this.goToNearestCamera(0);
               this.mSweepSpeed = SLIDER_MAX / (SLIDER_MAX / 500);
               this.mForceSprings = true;
            }
         }
         this.mDragging = false;
      }
      
      public function switchSides() : void
      {
         if(this.mCurrentAction == ACTION_GO_TO_CASTLE)
         {
            this.setAction(ACTION_GO_TO_SLINGSHOT);
         }
         else if(this.mCurrentAction == ACTION_GO_TO_SLINGSHOT)
         {
            this.setAction(ACTION_GO_TO_CASTLE);
         }
         else if(this.mCurrentCameraSliderLocation >= SLIDER_MAX / 2)
         {
            this.setAction(ACTION_GO_TO_SLINGSHOT);
         }
         else if(this.mCurrentCameraSliderLocation <= SLIDER_MAX / 2)
         {
            this.setAction(ACTION_GO_TO_CASTLE);
         }
      }
      
      public function goToNearestCamera(param1:int) : void
      {
         this.mGoToSlingshotWhenReady = param1;
         if(this.mCurrentCameraSliderLocation < SLIDER_MAX / 2)
         {
            this.setAction(ACTION_GO_TO_SLINGSHOT);
         }
         else
         {
            this.setAction(ACTION_GO_TO_CASTLE);
         }
      }
      
      public function goToBirdView() : void
      {
         this.setAction(ACTION_GO_TO_SLINGSHOT);
      }
      
      public function goToCastleView() : void
      {
         this.setAction(ACTION_GO_TO_CASTLE);
      }
      
      public function setAction(param1:int) : void
      {
         this.mTempCameraAnimation.x = this.mXcenterB2;
         this.mTempCameraAnimation.y = this.mYcenterB2;
         this.mTempCameraAnimation.scale = smLevelScale;
         this.mTempCameraAnimationScale2 = smLevelScale;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == SLIDER_MAX)
         {
            return true;
         }
         if(this.mCurrentAction == ACTION_GO_TO_CASTLE)
         {
            return true;
         }
         return false;
      }
      
      public function isOnSlingShotView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == ACTION_GO_TO_SLINGSHOT)
         {
            return true;
         }
         return false;
      }
      
      public function forceCurrentCameraCoordinates(param1:LevelCameraModel) : void
      {
         this.mForcedCameraPosition = param1;
         if(this.mForcedCameraPosition != null)
         {
            this.mForcedCameraStoredPosition = new LevelCameraModel();
            this.mForcedCameraStoredPosition.x = this.mXcenterB2;
            this.mForcedCameraStoredPosition.y = this.mYcenterB2;
            this.mForcedCameraStoredPosition.scale = smLevelScale;
         }
         else
         {
            this.mXcenterB2 = this.mForcedCameraStoredPosition.x;
            this.mYcenterB2 = this.mForcedCameraStoredPosition.y;
            smLevelScale = this.mForcedCameraStoredPosition.scale;
            this.mForcedCameraStoredPosition = null;
         }
      }
      
      protected function manualScaleChanged() : void
      {
         if(this.isOnCastleView())
         {
            this.goToCastleView();
         }
         else
         {
            this.goToBirdView();
         }
      }
      
      public function adjustManualScale(param1:Boolean, param2:Number = 0.1) : void
      {
         var _loc3_:Number = this.mManualScale;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(this.manualScaleMin,Math.min(this.manualScaleMax,_loc3_));
         if(_loc3_ != this.mManualScale)
         {
            this.mManualScale = _loc3_;
         }
      }
      
      public function getZoomRatio() : Number
      {
         return (this.manualScale - this.manualScaleMin) / (this.manualScaleMax - this.manualScaleMin);
      }
      
      public function setZoomRatio(param1:Number) : void
      {
         this.manualScale = Math.min(Math.max(param1,0),1) * (this.manualScaleMax - this.manualScaleMin) + this.manualScaleMin;
      }
      
      public function zoomOut() : void
      {
         this.mManualScale = Math.max(this.mManualScale - 0.5,0.5);
      }
      
      public function traceCameraVariables() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.manualScale;
         _loc1_ += " mXcenterB2: " + this.mXcenterB2;
         _loc1_ += " mYcenterB2: " + this.mYcenterB2;
         _loc1_ += " mXcenterB2target: " + this.manualScale;
         _loc1_ += "\n mYcenterB2target: " + this.manualScale;
         _loc1_ += " mXcenterB2previous: " + this.manualScale;
         _loc1_ += " mYcenterB2previous: " + this.manualScale;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.manualScale;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.manualScale;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.manualScale;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.manualScale;
         _loc1_ += " mTargetScale: " + this.manualScale;
         _loc1_ += " mTargetScalePrevious: " + this.manualScale;
         _loc1_ += " mCastleCameraX: " + this.manualScale;
         _loc1_ += "\n mCastleCameraY: " + this.manualScale;
         _loc1_ += " mCastleCameraScale: " + this.manualScale;
         _loc1_ += " mBirdCameraX: " + this.manualScale;
         _loc1_ += " mBirdCameraY: " + this.manualScale;
         _loc1_ += " mBirdCameraScale: " + this.manualScale;
         _loc1_ += "\n mScreenLeftScroll: " + this.manualScale;
         _loc1_ += "mScreenOffsetYl: " + this.manualScale;
         _loc1_ += " mDragging: " + this.manualScale;
         _loc1_ += " mDraggingPointPreviousX: " + this.manualScale;
         _loc1_ += " mDraggingPointPreviousY: " + this.manualScale;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.manualScale;
         _loc1_ += " mDraggingPointCurrentY: " + this.manualScale;
         _loc1_ += " mDraggingPointOriginalX: " + this.manualScale;
         _loc1_ += " mDraggingPointOriginalY: " + this.manualScale;
         _loc1_ += " mDraggingTimer: " + this.manualScale;
         _loc1_ += "\n mCameraBorderLeft: " + this.manualScale;
         _loc1_ += " mCameraBorderRight: " + this.manualScale;
         _loc1_ += "mCameraBorderTop: " + this.manualScale;
         _loc1_ += "mCameraBorderBottom: " + this.manualScale;
         return _loc1_ + (" mPigsAreOnRight: " + this.manualScale + "\n ");
      }
      
      public function isOutOfCamera(param1:Number, param2:Number) : Boolean
      {
         return false;
      }
   }
}
