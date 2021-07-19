package com.angrybirds.engine.beams
{
   import com.angrybirds.engine.LevelMain;
   import com.angrybirds.engine.objects.LevelObjectBase;
   import com.angrybirds.engine.raycasting.RayCastHitObject;
   import com.rovio.graphics.Animation;
   import starling.display.DisplayObject;
   import starling.display.Sprite;
   
   public class LevelBeamBase
   {
       
      
      protected var mX:Number;
      
      protected var mY:Number;
      
      protected var mAngle:Number;
      
      protected var mTimeSinceReflectionMilliSeconds:Number;
      
      protected var mSpeed:Number;
      
      protected var mSpeedX:Number;
      
      protected var mSpeedY:Number;
      
      protected var mSprite:Sprite;
      
      protected var mAnimation:Animation;
      
      protected var mScreenX:Number;
      
      protected var mScreenY:Number;
      
      protected var mImage:DisplayObject;
      
      protected var mImageWidth:Number;
      
      protected var mImageHeight:Number;
      
      protected var mScale:Number;
      
      protected var mHitObjects:Vector.<LevelObjectBase>;
      
      public function LevelBeamBase(x:Number, y:Number, angle:Number, speed:Number, sprite:Sprite, animation:Animation, scale:Number)
      {
         super();
         this.mX = x;
         this.mY = y;
         this.mAnimation = animation;
         this.mSprite = sprite;
         this.mImage = animation.getFrame(0);
         this.mSprite.addChild(this.mImage);
         this.mImageWidth = this.mImage.width;
         this.mImageHeight = this.mImage.height;
         this.mScale = scale;
         this.resetHitObjects();
         this.initializeSpeed(angle,speed);
      }
      
      public function get x() : Number
      {
         return this.mX;
      }
      
      public function get y() : Number
      {
         return this.mY;
      }
      
      public function get angle() : Number
      {
         return this.mAngle;
      }
      
      public function get speed() : Number
      {
         return this.mSpeed;
      }
      
      public function get speedX() : Number
      {
         return this.mSpeedX;
      }
      
      public function get speedY() : Number
      {
         return this.mSpeedY;
      }
      
      public function get width() : Number
      {
         return this.mImageWidth * LevelMain.PIXEL_TO_B2_SCALE;
      }
      
      public function get height() : Number
      {
         return this.mImageHeight * LevelMain.PIXEL_TO_B2_SCALE;
      }
      
      public function get sprite() : Sprite
      {
         return this.mSprite;
      }
      
      public function dispose() : void
      {
         if(this.mSprite)
         {
            this.mSprite.dispose();
            this.mSprite = null;
         }
      }
      
      public function getTailX(tailLength:Number) : Number
      {
         var timeSinceMilliSeconds:Number = tailLength / this.mSpeed * 1000;
         if(timeSinceMilliSeconds > this.mTimeSinceReflectionMilliSeconds)
         {
            timeSinceMilliSeconds = this.mTimeSinceReflectionMilliSeconds;
         }
         return this.mX - this.mSpeedX * timeSinceMilliSeconds / 1000;
      }
      
      public function getTailY(tailLength:Number) : Number
      {
         var timeSinceMilliSeconds:Number = tailLength / this.mSpeed * 1000;
         if(timeSinceMilliSeconds > this.mTimeSinceReflectionMilliSeconds)
         {
            timeSinceMilliSeconds = this.mTimeSinceReflectionMilliSeconds;
         }
         return this.mY - this.mSpeedY * timeSinceMilliSeconds / 1000;
      }
      
      protected function getTailLength(tailLength:Number) : Number
      {
         var timeSinceMilliSeconds:Number = tailLength / this.mSpeed * 1000;
         if(timeSinceMilliSeconds > this.mTimeSinceReflectionMilliSeconds)
         {
            timeSinceMilliSeconds = this.mTimeSinceReflectionMilliSeconds;
         }
         return this.mSpeed * timeSinceMilliSeconds / 1000;
      }
      
      public function resetHitObjects() : void
      {
         if(!this.mHitObjects || this.mHitObjects.length > 0)
         {
            this.mHitObjects = new Vector.<LevelObjectBase>();
         }
      }
      
      public function addHitObject(hitObject:RayCastHitObject) : void
      {
         this.mHitObjects.push(hitObject.levelObject);
      }
      
      public function hasHitObject(hitObject:RayCastHitObject) : Boolean
      {
         return this.mHitObjects.indexOf(hitObject.levelObject) >= 0;
      }
      
      public function reflectToAngle(angle:Number, speed:Number) : void
      {
         this.initializeSpeed(angle,speed);
      }
      
      protected function initializeSpeed(angle:Number, speed:Number) : void
      {
         this.mSpeed = speed;
         this.mAngle = angle;
         this.mSpeedX = Math.cos(this.mAngle) * this.mSpeed;
         this.mSpeedY = Math.sin(this.mAngle) * this.mSpeed;
         this.mTimeSinceReflectionMilliSeconds = 0;
         this.updateCurrentScreenPosition();
      }
      
      public function update(deltaTimeMilliSeconds:Number) : void
      {
         this.mX += this.mSpeedX * deltaTimeMilliSeconds / 1000;
         this.mY += this.mSpeedY * deltaTimeMilliSeconds / 1000;
         this.updateCurrentScreenPosition();
         this.mTimeSinceReflectionMilliSeconds += deltaTimeMilliSeconds;
      }
      
      protected function updateCurrentScreenPosition() : void
      {
         this.mScreenX = this.mX / LevelMain.PIXEL_TO_B2_SCALE;
         this.mScreenY = this.mY / LevelMain.PIXEL_TO_B2_SCALE;
         var width:Number = this.getTailLength(this.mImageWidth * LevelMain.PIXEL_TO_B2_SCALE) / LevelMain.PIXEL_TO_B2_SCALE;
         var height:Number = this.mImageHeight;
         this.mImage.width = width * this.mScale;
         this.mImage.height = height * this.mScale;
         this.mImage.pivotX = -width;
         this.mImage.pivotY = -height / 2;
      }
      
      public function render() : void
      {
         this.mSprite.visible = true;
         this.mSprite.rotation = this.mAngle;
         this.mSprite.x = this.mScreenX;
         this.mSprite.y = this.mScreenY;
      }
   }
}
