package com.AngryBirds.LevelPlayer
{
   import com.rovio.factory.Log;
   
   public class LevelCamera
   {
      
      public static const SCALE_MAX:Number = 1.25;
      
      public static const SCALE_MIN:Number = 0.4;
      
      public static const MANUAL_SCALE_MAX_PLAY_STATE:Number = 1;
      
      public static const MANUAL_SCALE_MIN_PLAY_STATE:Number = 0.1;
      
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
      
      public static const SCREEN_WIDTH_B2:Number = AngryBirdsSocial.SCREEN_WIDTH * LevelMain.PIXEL_TO_B2_SCALE;
      
      public static const SCREEN_HEIGHT_B2:Number = AngryBirdsSocial.SCREEN_HEIGHT * LevelMain.PIXEL_TO_B2_SCALE;
       
      
      public var mManualScale:Number;
      
      public var mLevelExtension:int = 0;
      
      public var mLevelAutoCamera:Boolean;
      
      public var mXcenterB2:Number;
      
      public var mYcenterB2:Number;
      
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
      
      public var mDraggingTimer:Number;
      
      public var mCameraBorderLeft:Number;
      
      public var mCameraBorderRight:Number;
      
      public var mCameraBorderSky:Number;
      
      public var mCameraBorderGround:Number;
      
      public var mPigsAreOnRight:Boolean;
      
      public var mCurrentCastleCameraX:Number;
      
      public var mCurrentCastleCameraY:Number;
      
      public var mCurrentCastleCameraScale:Number;
      
      public var mCurrentSlingshotCameraX:Number;
      
      public var mCurrentSlingshotCameraY:Number;
      
      public var mCurrentSlingshotCameraScale:Number;
      
      public var mCameraDeltaX:Number = 0;
      
      public var mCameraDeltaY:Number = 0;
      
      public var mCameraDeltaScale:Number = 0;
      
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
      
      public var mTempCameraAnimationX:Number = 0;
      
      public var mTempCameraAnimationY:Number = 0;
      
      public var mTempCameraAnimationScale:Number = 0;
      
      public var mTempCameraAnimationScale2:Number = 0;
      
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
         this.loadCameraInformation(_loc3_);
         this.mCameraDeltaX = this.mCastleCameraX - this.mSlingshotCameraX;
         this.mCameraDeltaY = this.mCastleCameraY - this.mSlingshotCameraY;
         this.mCameraDeltaScale = this.mCastleCameraScale - this.mSlingshotCameraScale;
         this.mXcenterB2 = this.mCastleCameraX;
         this.mYcenterB2 = this.mCastleCameraY;
         smLevelScale = this.mCastleCameraScale;
         this.mCurrentCameraSliderLocation = SLIDER_MAX;
         this.mForceSprings = true;
         this.mSweepSpeed = SLIDER_MAX / 500;
         this.goToCastleView();
         this.mTimeNeededToFollowBird = 2000;
         var _loc4_:Number = 0;
         if(param2.@LevelExtension.toString() != "")
         {
            _loc4_ = parseInt(param2.@LevelExtension);
         }
         this.setLevelExtension(_loc4_);
         var _loc5_:String = param2.@AutoCamera;
         this.mLevelAutoCamera = _loc5_.toUpperCase() == "TRUE";
         this.adjustLevelMainViewAccordingToScale();
         this.updateScrollingValues();
         this.setLevelMainScale();
      }
      
      public function loadCameraBorders() : void
      {
         this.mCameraBorderLeft = this.mLevelMain.mLevelBorders.mBorderLeft_B2;
         this.mCameraBorderRight = this.mLevelMain.mLevelBorders.mBorderRight_B2;
         this.mCameraBorderSky = this.mLevelMain.mLevelBorders.mBorderGround_B2 - 20 * LevelMain.LEVEL_HEIGHT_PIXEL * LevelMain.PIXEL_TO_B2_SCALE;
         this.mCameraBorderGround = this.mLevelMain.mLevelBorders.mBorderGround_B2 + 4;
      }
      
      public function clear() : void
      {
         this.mLevelMain = null;
      }
      
      public function loadCameraInformation(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         for each(_loc2_ in param1.Camera)
         {
            _loc3_ = _loc2_.@id;
            _loc3_ = _loc3_.toUpperCase();
            if(_loc2_.@scale.toString() != "" && _loc2_.@scale.toString() != "null")
            {
               this.readOldCameraScale(_loc2_);
            }
            _loc4_ = _loc2_.@leftBorder;
            _loc5_ = _loc2_.@rightBorder;
            _loc6_ = _loc2_.@topBorder;
            _loc7_ = _loc2_.@bottomBorder;
            _loc8_ = _loc4_ + (_loc5_ - _loc4_) / 2;
            _loc9_ = _loc6_ + (_loc7_ - _loc6_) / 2;
            _loc10_ = SCREEN_HEIGHT_B2 / (_loc7_ - _loc6_);
            _loc12_ = (_loc11_ = Number(SCREEN_WIDTH_B2 / (_loc5_ - _loc4_))) < _loc10_ ? Number(_loc11_) : Number(_loc10_);
            if(_loc3_ == "SLINGSHOT")
            {
               this.mSlingshotCameraX = _loc8_;
               this.mSlingshotCameraY = _loc9_;
               this.mSlingshotCameraScale = _loc12_;
            }
            else if(_loc3_ == "CASTLE")
            {
               this.mCastleCameraX = _loc8_;
               this.mCastleCameraY = _loc9_;
               this.mCastleCameraScale = _loc12_;
            }
            else
            {
               Log.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
         }
         this.mPigsAreOnRight = this.mCastleCameraX >= this.mSlingshotCameraX;
      }
      
      public function readOldCameraScale(param1:XML) : void
      {
         var _loc2_:Number = param1.@scale;
         var _loc3_:Number = param1.@x - 760 * 0.5 / _loc2_ * LevelMain.PIXEL_TO_B2_SCALE;
         var _loc4_:Number = param1.@y - 455 * 0.5 / _loc2_ * LevelMain.PIXEL_TO_B2_SCALE;
         var _loc5_:Number = _loc3_ + 760 / _loc2_ * LevelMain.PIXEL_TO_B2_SCALE;
         var _loc6_:Number = _loc4_ + 455 / _loc2_ * LevelMain.PIXEL_TO_B2_SCALE;
         param1.@leftBorder = _loc3_;
         param1.@topBorder = _loc4_;
         param1.@rightBorder = _loc5_;
         param1.@bottomBorder = _loc6_;
         param1.@scale = null;
      }
      
      public function updateCamera(param1:Number) : void
      {
         this.updateAutoCameraMovement(param1);
         this.updateCameraLocations();
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         if(this.mCurrentAction == ACTION_GO_TO_CASTLE)
         {
            _loc2_ += param1 * this.mSweepSpeed;
            if(_loc2_ >= SLIDER_MAX)
            {
               _loc2_ = SLIDER_MAX;
               this.setAction(ACTION_NONE);
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         else if(this.mCurrentAction == ACTION_GO_TO_SLINGSHOT)
         {
            _loc2_ -= param1 * this.mSweepSpeed;
            if(_loc2_ <= 0)
            {
               _loc2_ = 0;
               this.setAction(ACTION_NONE);
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         else if(this.mCurrentAction == ACTION_FOLLOW_BIRD)
         {
            this.mForceSprings = true;
         }
         else if(this.mCurrentAction == ACTION_DRAG)
         {
            this.updateCameraDrag(param1);
         }
         this.updateCameraSlider(this.mCurrentCameraSliderLocation,param1);
         this.adjustLevelMainViewAccordingToScale();
         this.updateScrollingValues();
         this.setLevelMainScale();
      }
      
      public function updateAutoCameraMovement(param1:int) : void
      {
         if(this.mGoToSlingshotWhenReady > 0)
         {
            this.mGoToSlingshotWhenReady -= param1;
            if(this.mGoToSlingshotWhenReady <= 0)
            {
               if(this.mLevelMain.shouldWeGoToSlingshot())
               {
                  this.mGoToSlingshotWhenReady = -1;
                  if(this.mLevelMain.mLevelSlingshot.mNextBirdIndex < this.mLevelMain.mLevelSlingshot.mBirds.length)
                  {
                     this.switchSides();
                  }
               }
               else
               {
                  this.mGoToSlingshotWhenReady = TIME_TO_WAIT_ON_CASTLE_BEFORE_GOING_BACK_TO_SLINGSHOT / 2;
               }
            }
         }
      }
      
      public function updateCameraSlider(param1:Number, param2:Number) : void
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:LevelObject = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc26_:Number = NaN;
         var _loc27_:Boolean = false;
         var _loc3_:Number = param2 / 1000;
         var _loc4_:Number;
         if((_loc4_ = _loc3_ * 3.5) > 1)
         {
            _loc4_ = 1;
         }
         if(this.mCurrentCameraSliderLocation < 0)
         {
            this.mForceSprings = true;
            this.mSweepSpeed = 0;
         }
         if(this.mCurrentCameraSliderLocation > SLIDER_MAX)
         {
            this.mForceSprings = true;
            this.mSweepSpeed = 0;
         }
         if(this.mCurrentAction != ACTION_FOLLOW_BIRD && this.mCameraDeltaX != 0)
         {
            if(this.mForceSprings == false)
            {
               _loc4_ = 1;
            }
            _loc5_ = param1 / SLIDER_MAX;
            _loc6_ = this.mCurrentSlingshotCameraScale + (this.mCurrentCastleCameraScale - this.mCurrentSlingshotCameraScale) * _loc5_;
            _loc7_ = this.mCurrentSlingshotCameraX + (this.mCurrentCastleCameraX - this.mCurrentSlingshotCameraX) * _loc5_;
            _loc8_ = this.mCurrentSlingshotCameraY + (this.mCurrentCastleCameraY - this.mCurrentSlingshotCameraY) * _loc5_;
            this.mTempCameraAnimationX -= (this.mTempCameraAnimationX - _loc7_) * _loc4_;
            this.mTempCameraAnimationY -= (this.mTempCameraAnimationY - _loc8_) * _loc4_;
            this.mTempCameraAnimationScale -= (this.mTempCameraAnimationScale - _loc6_) * _loc4_;
            this.mXcenterB2 = this.mTempCameraAnimationX;
            this.mYcenterB2 = this.mTempCameraAnimationY;
            smLevelScale = this.mTempCameraAnimationScale;
         }
         if(this.mCurrentAction == ACTION_FOLLOW_BIRD)
         {
            if(!this.mLevelMain.mActiveObject)
            {
               this.setAction(ACTION_GO_TO_CASTLE);
               this.mGoToSlingshotWhenReady = TIME_TO_WAIT_ON_CASTLE_BEFORE_GOING_BACK_TO_SLINGSHOT;
            }
            else
            {
               _loc10_ = (_loc9_ = this.mLevelMain.mActiveObject).getBody().GetPosition().x + (!!_loc9_.mInterpolationXOffset ? _loc9_.mInterpolationXOffset * LevelMain.PIXEL_TO_B2_SCALE : 0);
               _loc11_ = _loc9_.getBody().GetPosition().y + (!!_loc9_.mInterpolationYOffset ? _loc9_.mInterpolationYOffset * LevelMain.PIXEL_TO_B2_SCALE : 0);
               if((_loc12_ = _loc9_.getBody().GetLinearVelocity().x) > 0 && this.mCameraDeltaX != 0)
               {
                  param1 += _loc3_ * _loc12_ * 10 / this.mCameraDeltaX * SLIDER_MAX;
               }
               if(param1 >= SLIDER_MAX)
               {
                  param1 = SLIDER_MAX;
               }
               this.mCurrentCameraSliderLocation = param1;
               _loc5_ = param1 / SLIDER_MAX;
               _loc6_ = this.mCurrentSlingshotCameraScale + (this.mCurrentCastleCameraScale - this.mCurrentSlingshotCameraScale) * _loc5_;
               _loc7_ = this.mCurrentSlingshotCameraX + (this.mCurrentCastleCameraX - this.mCurrentSlingshotCameraX) * _loc5_;
               _loc8_ = this.mCurrentSlingshotCameraY + (this.mCurrentCastleCameraY - this.mCurrentSlingshotCameraY) * _loc5_;
               this.mTempCameraAnimationScale -= (this.mTempCameraAnimationScale - _loc6_) * _loc4_;
               this.mTempCameraAnimationX -= (this.mTempCameraAnimationX - _loc7_) * _loc4_;
               this.mTempCameraAnimationY -= (this.mTempCameraAnimationY - _loc8_) * _loc4_;
               _loc13_ = this.mTempCameraAnimationX - SCREEN_WIDTH_B2 * 0.5 / this.mTempCameraAnimationScale;
               _loc14_ = this.mTempCameraAnimationY - SCREEN_HEIGHT_B2 * 0.5 / this.mTempCameraAnimationScale;
               _loc15_ = this.mTempCameraAnimationX + SCREEN_WIDTH_B2 * 0.5 / this.mTempCameraAnimationScale;
               _loc16_ = this.mTempCameraAnimationY + SCREEN_HEIGHT_B2 * 0.5 / this.mTempCameraAnimationScale;
               _loc17_ = 150 * LevelMain.PIXEL_TO_B2_SCALE;
               _loc18_ = Math.min(_loc13_,_loc10_ - _loc17_);
               _loc19_ = Math.min(_loc14_,_loc11_ - _loc17_);
               _loc20_ = Math.max(_loc15_,_loc10_ + _loc17_);
               _loc21_ = Math.max(_loc16_,_loc11_ + _loc17_);
               _loc18_ = Math.max(this.mCameraBorderLeft,_loc18_);
               _loc20_ = Math.min(this.mCameraBorderRight,_loc20_);
               _loc22_ = Math.abs(SCREEN_WIDTH_B2 / (_loc20_ - _loc18_));
               _loc23_ = Math.abs(SCREEN_HEIGHT_B2 / (_loc21_ - _loc19_));
               if((_loc24_ = Math.min(_loc22_,_loc23_)) > this.mTempCameraAnimationScale)
               {
                  _loc24_ = this.mTempCameraAnimationScale;
               }
               _loc25_ = (_loc20_ + _loc18_) * 0.5;
               _loc26_ = (_loc21_ + _loc19_) * 0.5;
               _loc27_ = false;
               if(_loc25_ + SCREEN_WIDTH_B2 * 0.5 / _loc24_ > this.mCameraBorderRight)
               {
                  _loc18_ = (_loc20_ = this.mCameraBorderRight) - SCREEN_WIDTH_B2 / _loc24_;
                  _loc27_ = true;
                  if(_loc18_ < this.mCameraBorderLeft)
                  {
                     _loc18_ = this.mCameraBorderLeft;
                  }
               }
               if(_loc25_ - SCREEN_WIDTH_B2 * 0.5 / _loc24_ < this.mCameraBorderLeft)
               {
                  _loc20_ = (_loc18_ = this.mCameraBorderLeft) + SCREEN_WIDTH_B2 / _loc24_;
                  _loc27_ = true;
                  if(_loc20_ > this.mCameraBorderRight)
                  {
                     _loc20_ = this.mCameraBorderRight;
                  }
               }
               if(_loc27_)
               {
                  _loc25_ = (_loc20_ + _loc18_) * 0.5;
                  _loc24_ = Math.abs(SCREEN_WIDTH_B2 / (_loc20_ - _loc18_));
               }
               if(_loc26_ - SCREEN_WIDTH_B2 * 0.5 / _loc24_ < this.mCameraBorderSky)
               {
                  _loc26_ = this.mCameraBorderSky + SCREEN_WIDTH_B2 * 0.5 / _loc24_;
               }
               this.mXcenterB2 -= (this.mXcenterB2 - _loc25_) * _loc4_;
               this.mTempCameraAnimationScale2 -= (this.mTempCameraAnimationScale2 - _loc24_) * _loc4_;
               smLevelScale = this.mTempCameraAnimationScale2;
               this.mYcenterB2 -= (this.mYcenterB2 - _loc26_) * _loc4_;
               if(_loc10_ >= this.mCameraBorderRight || _loc10_ <= this.mCameraBorderLeft)
               {
                  this.mTempCameraAnimationScale = smLevelScale;
                  this.mTempCameraAnimationX = this.mXcenterB2;
                  this.mTempCameraAnimationY = this.mYcenterB2;
               }
               _loc24_ = Math.abs(SCREEN_WIDTH_B2 / (_loc20_ - _loc18_));
               if(_loc26_ - SCREEN_WIDTH_B2 * 0.5 / _loc24_ < this.mCameraBorderSky)
               {
                  _loc26_ = this.mCameraBorderSky + SCREEN_WIDTH_B2 * 0.5 / _loc24_;
               }
            }
         }
      }
      
      public function updateCameraLocations() : void
      {
         this.mCurrentSlingshotCameraScale = SCALE_MIN + (this.mSlingshotCameraScale - SCALE_MIN) * this.mManualScale;
         this.mCurrentSlingshotCameraY = this.mSlingshotCameraY;
         var _loc1_:Number = this.mCurrentSlingshotCameraY + SCREEN_HEIGHT_B2 * 0.5 / this.mSlingshotCameraScale;
         var _loc2_:Number = SCREEN_HEIGHT_B2 / SCALE_MIN * 5;
         if(_loc1_ > _loc2_)
         {
            this.mCurrentSlingshotCameraY += _loc2_ - _loc1_;
         }
         this.mCurrentSlingshotCameraX = this.mSlingshotCameraX;
         var _loc3_:Number = this.mCurrentSlingshotCameraX - SCREEN_WIDTH_B2 * 0.5 / this.mCurrentSlingshotCameraScale;
         if(_loc3_ < this.mCameraBorderLeft)
         {
            this.mCurrentSlingshotCameraX += this.mCameraBorderLeft - _loc3_;
         }
         this.mCurrentCastleCameraScale = SCALE_MIN + (this.mCastleCameraScale - SCALE_MIN) * this.mManualScale;
         this.mCurrentCastleCameraY = this.mCastleCameraY;
         _loc1_ = this.mCurrentCastleCameraY + SCREEN_HEIGHT_B2 * 0.5 / this.mCurrentCastleCameraScale;
         if(_loc1_ > _loc2_)
         {
            this.mCurrentCastleCameraY += _loc2_ - _loc1_;
         }
         this.mCurrentCastleCameraX = this.mCastleCameraX;
         var _loc4_:Number;
         if((_loc4_ = this.mCurrentCastleCameraX + SCREEN_WIDTH_B2 * 0.5 / this.mCurrentCastleCameraScale) > this.mCameraBorderRight)
         {
            this.mCurrentCastleCameraX += this.mCameraBorderRight - _loc4_;
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
         this.mLevelMain.scaleX = smLevelScale;
         this.mLevelMain.scaleY = smLevelScale;
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
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.mGoToSlingshotWhenReady = -1;
         this.setAction(ACTION_DRAG);
         this.mDragLastX = this.mDragPreviousX = this.mDragFirstX = param1;
         this.mDragLastY = this.mDragPreviousY = this.mDragFirstY = param2;
         this.mDragTime = 0;
         this.mTempCameraAnimationX = this.mXcenterB2;
         this.mTempCameraAnimationY = this.mYcenterB2;
         this.mTempCameraAnimationScale = smLevelScale;
         this.mTempCameraAnimationScale2 = smLevelScale;
         if(Math.abs(this.mCurrentCastleCameraX - this.mCurrentSlingshotCameraX) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.mXcenterB2 - this.mCurrentSlingshotCameraX) / (this.mCurrentCastleCameraX - this.mCurrentSlingshotCameraX) * SLIDER_MAX;
         }
         this.mDragging = true;
         if(LevelMain.DRAGGING_OVERLAYS_ENABLED)
         {
            this.mLevelMain.createDraggingOverlay();
         }
      }
      
      public function updateCameraDrag(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.mDragTime += param1;
         var _loc3_:Number = this.mDragLastX - this.mDragPreviousX;
         if(this.mCameraDeltaX > 0)
         {
            _loc2_ -= _loc3_ * LevelMain.PIXEL_TO_B2_SCALE / smLevelScale / this.mCameraDeltaX * SLIDER_MAX;
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
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mCurrentAction == ACTION_DRAG)
         {
            this.mDragLastX = param1;
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
         if(LevelMain.DRAGGING_OVERLAYS_ENABLED)
         {
            this.mLevelMain.clearDraggingOverlay();
         }
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
      
      public function goToBirdView(param1:Boolean = false) : void
      {
         this.setAction(ACTION_GO_TO_SLINGSHOT);
      }
      
      public function goToCastleView(param1:Boolean = false) : void
      {
         this.setAction(ACTION_GO_TO_CASTLE);
      }
      
      public function setAction(param1:int) : void
      {
         this.mTempCameraAnimationX = this.mXcenterB2;
         this.mTempCameraAnimationY = this.mYcenterB2;
         this.mTempCameraAnimationScale = smLevelScale;
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
      
      public function adjustManualScale(param1:Boolean, param2:Boolean = false) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.mLevelMain.mEditorMode && this.mTimeToIgnoreCameraBordersForEditor > 0)
         {
            return;
         }
         var _loc3_:Number = this.mManualScale;
         if(param2)
         {
            if(param1)
            {
               _loc3_ = 100;
            }
            else
            {
               _loc3_ = 0;
            }
         }
         else if(param1)
         {
            _loc3_ += MANUAL_SCALE_STEP;
         }
         else
         {
            _loc3_ -= MANUAL_SCALE_STEP;
         }
         if(this.mLevelMain.mEditorMode)
         {
            _loc4_ = 1;
            _loc5_ = (EDITOR_BORDER_CASTLE_RIGHT - EDITOR_BORDER_CASTLE_LEFT) / (EDITOR_BORDER_CASTLE_RIGHT - EDITOR_BORDER_CASTLE_LEFT + this.mLevelExtension * EDITOR_BORDER_HORIZONTAL_RAISE);
            _loc3_ = Math.max(_loc5_,Math.min(_loc4_,_loc3_));
         }
         else
         {
            _loc3_ = Math.max(MANUAL_SCALE_MIN_PLAY_STATE,Math.min(MANUAL_SCALE_MAX_PLAY_STATE,_loc3_));
         }
         if(_loc3_ != this.mManualScale)
         {
            this.mManualScale = _loc3_;
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
         this.mSlingshotCameraScale = smLevelScale;
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
         this.mCastleCameraScale = smLevelScale;
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
         var _loc2_:Number = this.mCastleCameraX - SCREEN_WIDTH_B2 / 2 / this.mCastleCameraScale;
         var _loc3_:Number = this.mCastleCameraY - SCREEN_HEIGHT_B2 / 2 / this.mSlingshotCameraScale;
         var _loc4_:Number = _loc2_ + SCREEN_WIDTH_B2 / this.mCastleCameraScale;
         var _loc5_:Number = _loc3_ + SCREEN_HEIGHT_B2 / this.mCastleCameraScale;
         var _loc6_:Number = this.mSlingshotCameraX - AngryBirdsSocial.SCREEN_WIDTH * 0.5 / this.mSlingshotCameraScale * LevelMain.PIXEL_TO_B2_SCALE;
         var _loc7_:Number = this.mSlingshotCameraY - AngryBirdsSocial.SCREEN_HEIGHT * 0.5 / this.mSlingshotCameraScale * LevelMain.PIXEL_TO_B2_SCALE;
         var _loc8_:Number = _loc6_ + SCREEN_WIDTH_B2 / this.mSlingshotCameraScale;
         var _loc9_:Number = _loc7_ + SCREEN_HEIGHT_B2 / this.mSlingshotCameraScale;
         _loc1_ += "     <Camera id = \"Slingshot\" leftBorder = \"" + _loc6_ + "\" topBorder = \"" + _loc7_ + "\" rightBorder = \"" + _loc8_ + "\" bottomBorder = \"" + _loc9_ + "\"></Camera>" + AngryBirdsSocial.LINE_BREAK_XML;
         _loc1_ += "     <Camera id = \"Castle\" leftBorder = \"" + _loc2_ + "\" topBorder = \"" + _loc3_ + "\" rightBorder = \"" + _loc4_ + "\" bottomBorder = \"" + _loc5_ + "\"></Camera>" + AngryBirdsSocial.LINE_BREAK_XML;
         return _loc1_ + ("  </Cameras>" + AngryBirdsSocial.LINE_BREAK_XML);
      }
      
      public function getCamerasInXMLForJSON() : String
      {
         this.roundUpCameras();
         var _loc1_:String = "";
         _loc1_ += "<CameraSlingshot x=\"" + this.mSlingshotCameraX + "\" y=\"" + this.mSlingshotCameraY + "\" scale = \"" + this.mSlingshotCameraScale + "\"  top = \"-49\" bottom = \"0.5\" left = \"-11.1\" right = \"47.3\"/>" + AngryBirdsSocial.LINE_BREAK_XML;
         return _loc1_ + ("<CameraCastle x=\"" + this.mCastleCameraX + "\" y=\"" + this.mCastleCameraY + "\" scale = \"" + this.mCastleCameraScale + "\" top = \"-50\" bottom = \"0.8\" left = \"12.1\" right = \"88.8\"/>" + AngryBirdsSocial.LINE_BREAK_XML);
      }
      
      public function getCamerasInJSON() : String
      {
         this.roundUpCameras();
         var _loc1_:String = "";
         return "\"cameraCastle\": {" + AngryBirdsSocial.LINE_BREAK_XML + "\"x\":" + this.mCastleCameraX + "," + AngryBirdsSocial.LINE_BREAK_XML + "\"y\":" + this.mCastleCameraY + "," + AngryBirdsSocial.LINE_BREAK_XML + "\"scale\":" + this.mCastleCameraScale + "," + AngryBirdsSocial.LINE_BREAK_XML + "\"top\":-50," + AngryBirdsSocial.LINE_BREAK_XML + "\"bottom\":0.8," + AngryBirdsSocial.LINE_BREAK_XML + "\"left\":12.1," + AngryBirdsSocial.LINE_BREAK_XML + "\"right\":88.8" + AngryBirdsSocial.LINE_BREAK_XML + "}," + AngryBirdsSocial.LINE_BREAK_XML + "\"cameraSlingshot\": {" + AngryBirdsSocial.LINE_BREAK_XML + "\"x\":" + this.mSlingshotCameraX + "," + AngryBirdsSocial.LINE_BREAK_XML + "\"y\":" + this.mSlingshotCameraY + "," + AngryBirdsSocial.LINE_BREAK_XML + "\"scale\":" + this.mSlingshotCameraScale + "," + AngryBirdsSocial.LINE_BREAK_XML + "\"top\":-49," + AngryBirdsSocial.LINE_BREAK_XML + "\"bottom\":0.5," + AngryBirdsSocial.LINE_BREAK_XML + "\"left\":-11.1," + AngryBirdsSocial.LINE_BREAK_XML + "\"right\":47.3" + AngryBirdsSocial.LINE_BREAK_XML + "},";
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
