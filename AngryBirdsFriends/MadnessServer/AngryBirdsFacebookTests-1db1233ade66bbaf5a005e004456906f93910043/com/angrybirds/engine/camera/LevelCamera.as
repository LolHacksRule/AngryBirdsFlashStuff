package com.angrybirds.engine.camera
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.data.level.LevelCameraModel;
   import com.angrybirds.data.level.LevelModel;
   import com.angrybirds.engine.LevelMain;
   import com.angrybirds.engine.objects.LevelObject;
   import com.rovio.factory.Log;
   
   public class LevelCamera
   {
      
      public static const SCALE_MAX:Number = 1.25;
      
      public static const SCALE_MIN:Number = 0.15;
      
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
      
      public function LevelCamera(aLevelMain:LevelMain, level:LevelModel, manualScaleMax:Number = 1.0)
      {
         this.mTempCameraAnimation = new AdjustableCameraData(0,0,1,false);
         super();
         this.mXcenterB2 = 0;
         this.mYcenterB2 = 0;
         this.mLevelMain = aLevelMain;
         LevelCamera.smLevelScale = 1;
         this.mManualScaleMax = Math.max(1,Math.min(2,manualScaleMax));
         this.mManualScale = this.manualScaleMax;
         this.loadCameraInformation(level);
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
      
      public static function get SCREEN_WIDTH_B2() : Number
      {
         return AngryBirdsEngine.SCREEN_WIDTH * LevelMain.PIXEL_TO_B2_SCALE;
      }
      
      public static function get SCREEN_HEIGHT_B2() : Number
      {
         return AngryBirdsEngine.SCREEN_HEIGHT * LevelMain.PIXEL_TO_B2_SCALE;
      }
      
      public static function get levelScale() : Number
      {
         var scale:Number = AngryBirdsEngine.sWidthScale / AngryBirdsEngine.sHeightScale;
         if(scale > 1)
         {
            scale = 1;
         }
         return smLevelScale * scale * scale;
      }
      
      public function get manualScale() : Number
      {
         return this.mManualScale;
      }
      
      public function set manualScale(scale:Number) : void
      {
         this.mManualScale = scale;
      }
      
      public function getMinimumScale() : Number
      {
         return SCREEN_WIDTH_B2 / (this.mCameraBorderRight - this.mCameraBorderLeft);
      }
      
      public function get manualScaleMax() : Number
      {
         var scale:Number = AngryBirdsEngine.sWidthScale / AngryBirdsEngine.sHeightScale;
         return this.mManualScaleMax / scale;
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
      
      public function get castleCamera() : CameraData
      {
         return this.mCastleCamera;
      }
      
      public function snapManualScale(scale:Number) : void
      {
         this.mManualScale = scale;
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
      
      public function initSlowScroll(speedMultiplier:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.mXcenterB2 = this.mSlingshotCamera.x;
         this.mYcenterB2 = this.mSlingshotCamera.y;
         this.mForceSprings = false;
         this.mSweepSpeed = SLIDER_MAX / 160000 * speedMultiplier;
         this.setAction(ACTION_SLOW_SCROLL);
      }
      
      public function loadCameraBorders() : void
      {
         var buffer:Number = (this.mCastleCamera.x - this.mSlingshotCamera.x) / 1.6;
         if(buffer < SCREEN_WIDTH_B2 * 1.2)
         {
            buffer = SCREEN_WIDTH_B2 * 1.2;
         }
         this.mCameraBorderLeft = this.mSlingshotCamera.x - buffer;
         this.mCameraBorderRight = this.mCastleCamera.x + buffer;
         this.mCameraBorderTop = Math.min(this.mCastleCamera.y,this.mSlingshotCamera.y) - SCREEN_HEIGHT_B2;
         this.mCameraBorderBottom = Math.max(this.mCastleCamera.y,this.mSlingshotCamera.y) + SCREEN_HEIGHT_B2;
         this.mCameraCenterX = (this.mCastleCamera.x + this.mSlingshotCamera.x) / 2;
         this.mCameraCenterY = (this.mCastleCamera.y + this.mSlingshotCamera.y) / 2;
      }
      
      public function clear() : void
      {
         this.mLevelMain = null;
      }
      
      public function loadCameraInformation(level:LevelModel) : void
      {
         var camera:LevelCameraModel = null;
         var name:String = null;
         var cameraX:Number = NaN;
         var cameraY:Number = NaN;
         var cameraScale:Number = NaN;
         for(var i:int = 0; i < level.cameraCount; i++)
         {
            camera = level.getCamera(i);
            name = camera.id;
            name = name.toUpperCase();
            if(camera.scale.toString() != "" && camera.scale.toString() != "null" && camera.scale.toString() != "0")
            {
               this.readOldCameraScale(camera);
            }
            cameraX = camera.x;
            cameraY = camera.y;
            cameraScale = this.calculateCameraScale(camera);
            if(name == CAMERA_ID_SLINGSHOT)
            {
               this.mSlingshotCamera = new CameraData(cameraX,cameraY,cameraScale,true);
               this.mCurrentSlingshotCamera = new AdjustableCameraData(cameraX,cameraY,cameraScale,true);
            }
            else if(name == CAMERA_ID_CASTLE)
            {
               this.mCastleCamera = new CameraData(cameraX,cameraY,cameraScale,false);
               this.mCurrentCastleCamera = new AdjustableCameraData(cameraX,cameraY,cameraScale,false);
            }
            else
            {
               Log.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
         }
      }
      
      protected function calculateCameraScale(camera:LevelCameraModel) : Number
      {
         var vScale:Number = SCREEN_HEIGHT_B2 / (camera.bottom - camera.top);
         var hScale:Number = SCREEN_WIDTH_B2 / (camera.right - camera.left);
         return hScale < vScale ? Number(hScale) : Number(vScale);
      }
      
      public function writeCameraInformation(dst:LevelModel) : void
      {
         var slingshot:LevelCameraModel = new LevelCameraModel();
         slingshot.id = CAMERA_ID_SLINGSHOT;
         slingshot.x = this.mSlingshotCamera.x;
         slingshot.y = this.mSlingshotCamera.y;
         var slingshotCameraHalfWidth:Number = SCREEN_WIDTH_B2 / this.mSlingshotCamera.scale / 2;
         var slingshotCameraHalfHeight:Number = SCREEN_HEIGHT_B2 / this.mSlingshotCamera.scale / 2;
         slingshot.left = this.mSlingshotCamera.x - slingshotCameraHalfWidth;
         slingshot.right = this.mSlingshotCamera.x + slingshotCameraHalfWidth;
         slingshot.top = slingshot.y - slingshotCameraHalfHeight;
         slingshot.bottom = slingshot.y + slingshotCameraHalfHeight;
         slingshot.scale = this.mSlingshotCamera.scale;
         var castle:LevelCameraModel = new LevelCameraModel();
         castle.id = CAMERA_ID_CASTLE;
         castle.x = this.mCastleCamera.x;
         castle.y = this.mCastleCamera.y;
         var castleCameraHalfWidth:Number = SCREEN_WIDTH_B2 / this.mCastleCamera.scale / 2;
         var castleCameraHalfHeight:Number = SCREEN_HEIGHT_B2 / this.mCastleCamera.scale / 2;
         castle.left = this.mCastleCamera.x - castleCameraHalfWidth;
         castle.right = this.mCastleCamera.x + castleCameraHalfWidth;
         castle.top = castle.y - castleCameraHalfHeight;
         castle.bottom = castle.y + castleCameraHalfHeight;
         castle.scale = this.mCastleCamera.scale;
         dst.clearCameras();
         dst.addCamera(slingshot);
         dst.addCamera(castle);
      }
      
      public function readOldCameraScale(data:LevelCameraModel) : void
      {
         var scale:Number = data.scale;
         var cameraLeftBorder:Number = data.x - AngryBirdsEngine.SCREEN_WIDTH * 0.5 / scale * LevelMain.PIXEL_TO_B2_SCALE;
         var cameraTopBorder:Number = data.y - AngryBirdsEngine.SCREEN_HEIGHT * 0.5 / scale * LevelMain.PIXEL_TO_B2_SCALE;
         var cameraRightBorder:Number = cameraLeftBorder + AngryBirdsEngine.SCREEN_WIDTH / scale * LevelMain.PIXEL_TO_B2_SCALE;
         var cameraBottomBorder:Number = cameraTopBorder + AngryBirdsEngine.SCREEN_HEIGHT / scale * LevelMain.PIXEL_TO_B2_SCALE;
         data.left = cameraLeftBorder;
         data.top = cameraTopBorder;
         data.right = cameraRightBorder;
         data.bottom = cameraBottomBorder;
         data.scale = 0;
      }
      
      protected function moveCameraTowardsTarget(targetCamera:CameraData, deltaTime:Number) : void
      {
         var slider:Number = this.mCurrentCameraSliderLocation;
         slider += deltaTime * this.mSweepSpeed;
         if(slider >= SLIDER_MAX)
         {
            slider = SLIDER_MAX;
            this.setAction(ACTION_NONE);
         }
         else if(slider <= 0)
         {
            slider = 0;
            this.setAction(ACTION_NONE);
         }
         this.mCurrentCameraSliderLocation = slider;
      }
      
      private function slideCameraSlowly(deltaTime:Number) : void
      {
         var slider:Number = this.mCurrentCameraSliderLocation;
         slider += deltaTime * this.mSweepSpeed;
         var leftSideMultiplier:Number = 0.7;
         var sliderMin:Number = -SLIDER_MAX * leftSideMultiplier;
         if(slider >= SLIDER_MAX || slider < sliderMin)
         {
            if(slider < sliderMin)
            {
               slider = sliderMin;
            }
            else
            {
               slider = SLIDER_MAX;
            }
            this.mSweepSpeed = -this.mSweepSpeed;
         }
         this.mCurrentCameraSliderLocation = slider;
      }
      
      protected function updateCameraActions(deltaTime:Number) : void
      {
         if(this.mCurrentAction == ACTION_SLOW_SCROLL)
         {
            this.slideCameraSlowly(deltaTime);
         }
         else if(this.mCurrentAction == ACTION_GO_TO_CASTLE)
         {
            this.moveCameraTowardsTarget(this.mCastleCamera,deltaTime);
         }
         else if(this.mCurrentAction == ACTION_GO_TO_SLINGSHOT)
         {
            this.moveCameraTowardsTarget(this.mSlingshotCamera,-deltaTime);
         }
         else if(this.mCurrentAction == ACTION_FOLLOW_BIRD)
         {
            this.mForceSprings = true;
         }
         else if(this.mCurrentAction == ACTION_DRAG)
         {
            this.updateCameraDrag(deltaTime);
         }
      }
      
      public function updateCamera(deltaTime:Number) : void
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
            this.updateCameraActions(deltaTime);
            if(Math.abs(this.mPreviousAspectRatio - AngryBirdsEngine.sWidthScale / AngryBirdsEngine.sHeightScale) > 0.01)
            {
               deltaTime = 1000;
            }
            this.updateCameraSlider(this.mCurrentCameraSliderLocation,deltaTime);
         }
         this.updateScrollingValues();
         this.mPreviousAspectRatio = AngryBirdsEngine.sWidthScale / AngryBirdsEngine.sHeightScale;
      }
      
      private function updateTempCamera(cameraAnimationSlider:Number, springFactor:Number) : void
      {
         var cameraAnimationSliderX:Number = cameraAnimationSlider;
         var cameraAnimationSliderY:Number = cameraAnimationSlider;
         if(Math.abs(this.mCurrentCastleCamera.x - this.mCurrentSlingshotCamera.x) < 0.2)
         {
            cameraAnimationSliderX = 0.5;
         }
         if(Math.abs(this.mCurrentCastleCamera.y - this.mCurrentSlingshotCamera.y) < 0.2)
         {
            cameraAnimationSliderY = 0.5;
         }
         var tsx:Number = this.mCurrentSlingshotCamera.scale + (this.mCurrentCastleCamera.scale - this.mCurrentSlingshotCamera.scale) * cameraAnimationSliderX;
         var tpx:Number = this.mCurrentSlingshotCamera.x + (this.mCurrentCastleCamera.x - this.mCurrentSlingshotCamera.x) * cameraAnimationSliderX;
         var tpy:Number = this.mCurrentSlingshotCamera.y + (this.mCurrentCastleCamera.y - this.mCurrentSlingshotCamera.y) * cameraAnimationSliderY;
         this.mTempCameraAnimation.x -= (this.mTempCameraAnimation.x - tpx) * springFactor;
         this.mTempCameraAnimation.y -= (this.mTempCameraAnimation.y - tpy) * springFactor;
         this.mTempCameraAnimation.scale -= (this.mTempCameraAnimation.scale - tsx) * springFactor;
         this.updateCameraWithPositionLimits(this.mTempCameraAnimation);
      }
      
      protected function updateCameraSliderNoBird(slider:Number, springFactor:Number) : void
      {
         var cameraAnimationSlider:Number = NaN;
         if(this.mCameraDeltaX != 0)
         {
            if(!this.mForceSprings)
            {
               springFactor = 1;
            }
            cameraAnimationSlider = slider / SLIDER_MAX;
            this.updateTempCamera(cameraAnimationSlider,springFactor);
            this.mXcenterB2 = this.mTempCameraAnimation.x;
            this.mYcenterB2 = this.mTempCameraAnimation.y;
            smLevelScale = this.mTempCameraAnimation.scale;
         }
      }
      
      private function updateCameraSliderBird(slider:Number, dt:Number, springFactor:Number) : void
      {
         var bird:LevelObject = this.mLevelMain.levelObjects.activeObject;
         var ctx:Number = bird.getPositionX();
         var cty:Number = bird.getPositionY();
         var ctVelX:Number = bird.getBody().GetLinearVelocity().x;
         if(ctVelX > 0 && this.mCameraDeltaX != 0)
         {
            slider += dt * ctVelX * 10 / this.mCameraDeltaX * SLIDER_MAX;
         }
         if(slider >= SLIDER_MAX)
         {
            slider = SLIDER_MAX;
         }
         this.mCurrentCameraSliderLocation = slider;
         var cameraAnimationSlider:Number = slider / SLIDER_MAX;
         this.updateTempCamera(cameraAnimationSlider,springFactor);
         var scale:Number = AngryBirdsEngine.sWidthScale / AngryBirdsEngine.sHeightScale;
         if(scale > 1)
         {
            scale = 1;
         }
         var cleft:Number = this.mTempCameraAnimation.x - SCREEN_WIDTH_B2 / scale * 0.5 / this.mTempCameraAnimation.scale;
         var ctop:Number = this.mTempCameraAnimation.y - SCREEN_HEIGHT_B2 * 0.5 / this.mTempCameraAnimation.scale;
         var cright:Number = this.mTempCameraAnimation.x + SCREEN_WIDTH_B2 / scale * 0.5 / this.mTempCameraAnimation.scale;
         var cbottom:Number = this.mTempCameraAnimation.y + SCREEN_HEIGHT_B2 * 0.5 / this.mTempCameraAnimation.scale;
         var margin:Number = 150 * LevelMain.PIXEL_TO_B2_SCALE;
         var minx:Number = Math.min(cleft,ctx - margin);
         var miny:Number = Math.min(ctop,cty - margin);
         var maxx:Number = Math.max(cright,ctx + margin);
         var maxy:Number = Math.max(cbottom,cty + margin);
         minx = Math.max(this.mCameraBorderLeft,minx);
         maxx = Math.min(this.mCameraBorderRight,maxx);
         var xScale:Number = Math.abs(SCREEN_WIDTH_B2 / scale / (maxx - minx));
         var yScale:Number = Math.abs(SCREEN_HEIGHT_B2 / (maxy - miny));
         var worldScaleTemp:Number = Math.min(xScale,yScale);
         if(worldScaleTemp > this.mTempCameraAnimation.scale)
         {
            worldScaleTemp = this.mTempCameraAnimation.scale;
         }
         var tScreenX:Number = (maxx + minx) * 0.5;
         var tScreenY:Number = (maxy + miny) * 0.5;
         var limitsReached:Boolean = false;
         if(tScreenX + SCREEN_WIDTH_B2 / scale * 0.5 / worldScaleTemp > this.mCameraBorderRight)
         {
            maxx = this.mCameraBorderRight;
            minx = maxx - SCREEN_WIDTH_B2 / scale / worldScaleTemp;
            limitsReached = true;
            if(minx < this.mCameraBorderLeft)
            {
               minx = this.mCameraBorderLeft;
            }
         }
         if(tScreenX - SCREEN_WIDTH_B2 / scale * 0.5 / worldScaleTemp < this.mCameraBorderLeft)
         {
            minx = this.mCameraBorderLeft;
            maxx = minx + SCREEN_WIDTH_B2 / scale / worldScaleTemp;
            limitsReached = true;
            if(maxx > this.mCameraBorderRight)
            {
               maxx = this.mCameraBorderRight;
            }
         }
         if(limitsReached)
         {
            tScreenX = (maxx + minx) * 0.5;
            worldScaleTemp = Math.abs(SCREEN_WIDTH_B2 / scale / (maxx - minx));
         }
         if(tScreenY - SCREEN_HEIGHT_B2 * 0.5 < this.mCameraBorderTop)
         {
            tScreenY = this.mCameraBorderTop + SCREEN_HEIGHT_B2 * 0.5;
         }
         if(tScreenY + SCREEN_HEIGHT_B2 * 0.5 > this.mCameraBorderBottom)
         {
            tScreenY = this.mCameraBorderBottom - SCREEN_HEIGHT_B2 * 0.5;
         }
         this.mXcenterB2 -= (this.mXcenterB2 - tScreenX) * springFactor;
         this.mTempCameraAnimationScale2 -= (this.mTempCameraAnimationScale2 - worldScaleTemp) * springFactor;
         smLevelScale = this.mTempCameraAnimationScale2;
         this.mYcenterB2 -= (this.mYcenterB2 - tScreenY) * springFactor;
         if(ctx >= this.mCameraBorderRight || ctx <= this.mCameraBorderLeft)
         {
            this.mTempCameraAnimation.scale = smLevelScale;
            this.mTempCameraAnimation.x = this.mXcenterB2;
            this.mTempCameraAnimation.y = this.mYcenterB2;
         }
      }
      
      protected function updateCameraSlider(slider:Number, deltaTime:Number) : void
      {
         var dt:Number = deltaTime / 1000;
         var springFactor:Number = dt * 3.5;
         if(springFactor > 1)
         {
            springFactor = 1;
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
               this.updateCameraSliderBird(slider,dt,springFactor);
            }
         }
         else
         {
            this.updateCameraSliderNoBird(slider,springFactor);
         }
      }
      
      public function setOffset(offsetX:Number, offsetY:Number) : void
      {
         this.mOffsetX = offsetX;
         this.mOffsetY = offsetY;
      }
      
      protected function limitCameraZoom(targetCamera:AdjustableCameraData, sourceCamera:CameraData) : Boolean
      {
         var newScale:Number = NaN;
         var scale:Number = AngryBirdsEngine.sWidthScale / AngryBirdsEngine.sHeightScale;
         if(scale > 1)
         {
            scale = 1;
         }
         targetCamera.scale = SCALE_MIN + (sourceCamera.scale - SCALE_MIN) * this.manualScale;
         if(SCREEN_WIDTH_B2 / targetCamera.scale > (this.mCameraBorderRight - this.mCameraBorderLeft) * scale)
         {
            newScale = SCREEN_WIDTH_B2 / ((this.mCameraBorderRight - this.mCameraBorderLeft) * scale);
            targetCamera.scale = newScale;
            return true;
         }
         return false;
      }
      
      private function updateCameraWithLimits(targetCamera:AdjustableCameraData, sourceCamera:CameraData) : Boolean
      {
         var limitingScale:Boolean = this.limitCameraZoom(targetCamera,sourceCamera);
         targetCamera.y = sourceCamera.y;
         targetCamera.x = sourceCamera.x;
         this.updateCameraWithPositionLimits(targetCamera);
         return limitingScale;
      }
      
      private function updateCameraWithPositionLimits(targetCamera:AdjustableCameraData) : void
      {
         var scale:Number = AngryBirdsEngine.sWidthScale / AngryBirdsEngine.sHeightScale;
         if(scale > 1)
         {
            scale = 1;
         }
         var leftPos:Number = targetCamera.x - SCREEN_WIDTH_B2 / scale * 0.5 / targetCamera.scale;
         if(leftPos < this.mCameraBorderLeft)
         {
            targetCamera.x += this.mCameraBorderLeft - leftPos;
         }
         var rightPos:Number = targetCamera.x + SCREEN_WIDTH_B2 / scale * 0.5 / targetCamera.scale;
         if(rightPos > this.mCameraBorderRight)
         {
            targetCamera.x += this.mCameraBorderRight - rightPos;
         }
      }
      
      private function getManualScale(targetCamera:AdjustableCameraData, sourceCamera:CameraData) : Number
      {
         return (targetCamera.scale - SCALE_MIN) / (sourceCamera.scale - SCALE_MIN);
      }
      
      protected function updateCameraLocations() : void
      {
         this.updateCameraWithLimits(this.mCurrentSlingshotCamera,this.mSlingshotCamera);
         var slingshotCurrentManualScale:Number = this.getManualScale(this.mCurrentSlingshotCamera,this.mSlingshotCamera);
         this.updateCameraWithLimits(this.mCurrentCastleCamera,this.mCastleCamera);
         var castleCurrentManualScale:Number = this.getManualScale(this.mCurrentCastleCamera,this.mCastleCamera);
         this.mManualScale = Math.min(slingshotCurrentManualScale,castleCurrentManualScale);
      }
      
      public function updateScrollingValues() : void
      {
         var xCenterPixel:Number = this.mXcenterB2 / LevelMain.PIXEL_TO_B2_SCALE + this.mOffsetX;
         var yCenterPixel:Number = this.mYcenterB2 / LevelMain.PIXEL_TO_B2_SCALE + this.mOffsetY;
         var widthScale:Number = AngryBirdsEngine.sWidthScale;
         var heightScale:Number = AngryBirdsEngine.sHeightScale;
         var width:Number = LevelMain.LEVEL_WIDTH_PIXEL * widthScale / Math.max(widthScale,heightScale);
         var height:Number = LevelMain.LEVEL_HEIGHT_PIXEL;
         this.mScreenOffsetX = xCenterPixel - width / 2;
         if(widthScale < heightScale)
         {
            widthScale = heightScale;
         }
         this.mScreenOffsetY = yCenterPixel - height / 2 / (widthScale / heightScale);
         this.mScreenOffsetX += width / 2 - width / 2 / levelScale;
         this.mScreenOffsetY += (height / 2 - height / 2 / levelScale) / (widthScale / heightScale);
         this.mLevelMain.setScreenOffset(this.mScreenOffsetX,this.mScreenOffsetY,levelScale);
      }
      
      protected function setDraggingAction() : void
      {
         this.setAction(ACTION_DRAG);
      }
      
      public function startDragging(screenX:Number, screenY:Number) : void
      {
         this.mGoToSlingshotWhenReady = -1;
         this.setDraggingAction();
         this.mDragLastX = this.mDragPreviousX = this.mDragFirstX = screenX;
         this.mDragLastY = this.mDragPreviousY = this.mDragFirstY = screenY;
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
      
      public function updateCameraDrag(deltaTime:int) : void
      {
         var slider:Number = this.mCurrentCameraSliderLocation;
         this.mDragTime += deltaTime;
         var marginX:Number = this.mDragLastX - this.mDragPreviousX;
         if(this.mCameraDeltaX > 0)
         {
            slider -= marginX * LevelMain.PIXEL_TO_B2_SCALE / levelScale / this.mCameraDeltaX * SLIDER_MAX;
            this.mForceSprings = false;
            if(slider < 0)
            {
               slider -= slider * 0.3;
               this.mForceSprings = true;
            }
            if(slider > SLIDER_MAX)
            {
               slider += (SLIDER_MAX - slider) * 0.3;
               this.mForceSprings = true;
            }
            this.mCurrentCameraSliderLocation = slider;
         }
         this.mDragPreviousX = this.mDragLastX;
      }
      
      protected function isDragging() : Boolean
      {
         return this.mCurrentAction == ACTION_DRAG;
      }
      
      public function dragToNewPoint(screenX:Number, screenY:Number) : void
      {
         if(this.mDragging)
         {
            this.mDragLastX = screenX;
            this.mDragLastY = screenY;
         }
      }
      
      public function stopDragging(screenX:Number = -1, screenY:Number = -1) : void
      {
         var totalMovement:Number = NaN;
         if(this.mCurrentAction == ACTION_DRAG)
         {
            this.setAction(ACTION_NONE);
            if(screenX > 0)
            {
               this.mDragLastX = screenX;
            }
            totalMovement = Math.abs(this.mDragLastX - this.mDragFirstX);
            if(this.mDragTime < DRAG_SWIPE_MAX_TIME && totalMovement >= DRAG_SWIPE_MIN_MOVEMENT && totalMovement >= DRAG_SWIPE_MOVEMENT_PER_SECOND * this.mDragTime / 1000)
            {
               if(this.mDragLastX < this.mDragFirstX)
               {
                  this.setAction(ACTION_GO_TO_CASTLE);
               }
               else
               {
                  this.setAction(ACTION_GO_TO_SLINGSHOT);
               }
               this.mSweepSpeed = totalMovement / this.mDragTime * 10;
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
      
      public function goToNearestCamera(timer:int) : void
      {
         this.mGoToSlingshotWhenReady = timer;
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
      
      public function setAction(newAction:int) : void
      {
         this.mTempCameraAnimation.x = this.mXcenterB2;
         this.mTempCameraAnimation.y = this.mYcenterB2;
         this.mTempCameraAnimation.scale = smLevelScale;
         this.mTempCameraAnimationScale2 = smLevelScale;
         this.mCurrentAction = newAction;
      }
      
      public function isOnCastleView(useScale:Boolean = false) : Boolean
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
      
      public function isOnSlingShotView(useScale:Boolean = false) : Boolean
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
      
      public function forceCurrentCameraCoordinates(cameraModel:LevelCameraModel) : void
      {
         this.mForcedCameraPosition = cameraModel;
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
      
      public function adjustManualScale(increase:Boolean, amount:Number = 0.1) : void
      {
         var manualScale:Number = this.mManualScale;
         if(increase)
         {
            manualScale += amount;
         }
         else
         {
            manualScale -= amount;
         }
         manualScale = Math.max(this.manualScaleMin,Math.min(this.manualScaleMax,manualScale));
         if(manualScale != this.mManualScale)
         {
            this.mManualScale = manualScale;
         }
      }
      
      public function getZoomRatio() : Number
      {
         return (this.manualScale - this.manualScaleMin) / (this.manualScaleMax - this.manualScaleMin);
      }
      
      public function setZoomRatio(ratio:Number) : void
      {
         this.manualScale = Math.min(Math.max(ratio,0),1) * (this.manualScaleMax - this.manualScaleMin) + this.manualScaleMin;
      }
      
      public function zoomOut() : void
      {
         this.mManualScale = Math.max(this.mManualScale - 0.5,0.5);
      }
      
      public function traceCameraVariables() : String
      {
         var txt:String = "";
         txt += " mManualScale: " + this.manualScale;
         txt += " mXcenterB2: " + this.mXcenterB2;
         txt += " mYcenterB2: " + this.mYcenterB2;
         txt += " mXcenterB2target: " + this.manualScale;
         txt += "\n mYcenterB2target: " + this.manualScale;
         txt += " mXcenterB2previous: " + this.manualScale;
         txt += " mYcenterB2previous: " + this.manualScale;
         txt += " mTimeNeededForCameraMovement: " + this.manualScale;
         txt += " mTimeUsedForCameraMovement: " + this.manualScale;
         txt += "\n mTimeNeededForScaleMovement: " + this.manualScale;
         txt += " mTimeUsedForScaleMovement: " + this.manualScale;
         txt += " mTargetScale: " + this.manualScale;
         txt += " mTargetScalePrevious: " + this.manualScale;
         txt += " mCastleCameraX: " + this.manualScale;
         txt += "\n mCastleCameraY: " + this.manualScale;
         txt += " mCastleCameraScale: " + this.manualScale;
         txt += " mBirdCameraX: " + this.manualScale;
         txt += " mBirdCameraY: " + this.manualScale;
         txt += " mBirdCameraScale: " + this.manualScale;
         txt += "\n mScreenLeftScroll: " + this.manualScale;
         txt += "mScreenOffsetYl: " + this.manualScale;
         txt += " mDragging: " + this.manualScale;
         txt += " mDraggingPointPreviousX: " + this.manualScale;
         txt += " mDraggingPointPreviousY: " + this.manualScale;
         txt += "\n mDraggingPointCurrentX: " + this.manualScale;
         txt += " mDraggingPointCurrentY: " + this.manualScale;
         txt += " mDraggingPointOriginalX: " + this.manualScale;
         txt += " mDraggingPointOriginalY: " + this.manualScale;
         txt += " mDraggingTimer: " + this.manualScale;
         txt += "\n mCameraBorderLeft: " + this.manualScale;
         txt += " mCameraBorderRight: " + this.manualScale;
         txt += "mCameraBorderTop: " + this.manualScale;
         txt += "mCameraBorderBottom: " + this.manualScale;
         return txt + (" mPigsAreOnRight: " + this.manualScale + "\n ");
      }
      
      public function isOutOfCamera(aX:Number, aY:Number) : Boolean
      {
         return false;
      }
   }
}
