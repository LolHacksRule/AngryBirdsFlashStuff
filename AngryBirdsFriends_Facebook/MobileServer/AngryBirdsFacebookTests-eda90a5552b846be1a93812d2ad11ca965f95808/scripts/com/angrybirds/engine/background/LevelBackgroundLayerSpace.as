package com.angrybirds.engine.background
{
   import com.angrybirds.data.level.theme.LevelThemeBackgroundLayerSpace;
   import com.angrybirds.engine.LevelMain;
   import com.rovio.graphics.PivotTexture;
   import com.rovio.graphics.TextureManager;
   import flash.geom.Rectangle;
   import starling.display.DisplayObject;
   import starling.display.Sprite;
   
   public class LevelBackgroundLayerSpace extends LevelBackgroundLayer
   {
       
      
      protected var mXMultiplier:Number = 1.0;
      
      protected var mYMultiplier:Number = 1.0;
      
      protected var mAngleMultiplier:Number = 1.0;
      
      protected var mScaleSpeed:Number = 1.0;
      
      protected var mVelocityY:Number = 0.0;
      
      protected var mMovingOffsetY:Number = 0.0;
      
      protected var mInitialOffsetSet:Boolean = false;
      
      protected var mInitialOffsetX:Number = 0.0;
      
      protected var mInitialOffsetY:Number = 0.0;
      
      protected var mInitialScale:Number = 0.0;
      
      public function LevelBackgroundLayerSpace(data:LevelThemeBackgroundLayerSpace, sprite:Sprite, textureManager:TextureManager, minimumScale:Number)
      {
         this.mXMultiplier = data.xMultiplier;
         this.mYMultiplier = data.yMultiplier;
         this.mAngleMultiplier = data.angleMultiplier;
         this.mScaleSpeed = data.scaleSpeed;
         mVelocityX = data.velocityX;
         this.mVelocityY = data.velocityY;
         super(mLevelEventPublisher,data,sprite,textureManager,minimumScale);
      }
      
      public function get zDistance() : Number
      {
         return scrollingSpeed;
      }
      
      override protected function getRepeatCount(minimumScale:Number, singleItemPixelWidth:int) : int
      {
         var scVar:Number = (minimumScale - 1 + this.zDistance) * this.mScaleSpeed;
         var resultScl:Number = mScale + scVar;
         var extra:int = 0;
         if(mVelocityX != 0)
         {
            extra = 1;
         }
         if(isForegroundLayer)
         {
            extra++;
         }
         return (Math.ceil(LevelMain.LEVEL_WIDTH_PIXEL / (singleItemPixelWidth * resultScl)) + extra) * 2;
      }
      
      public function setInitialScreenOffset(x:Number, y:Number, scale:Number) : void
      {
         if(!this.mInitialOffsetSet)
         {
            this.mInitialOffsetSet = true;
            this.mInitialOffsetX = x;
            this.mInitialOffsetY = y;
            this.mInitialScale = scale;
         }
      }
      
      override public function setScreenOffset(offsetX:Number, offsetY:Number, scale:Number, width:Number, height:Number, widthScale:Number, heightScale:Number) : void
      {
         var screenWidth:Number = width / scale / widthScale;
         var screenHeight:Number = height / scale / heightScale;
         var top:Number = offsetY;
         offsetX += screenWidth / 2;
         offsetY += screenHeight / 2;
         this.setInitialScreenOffset(offsetX,offsetY,scale);
         if(!isForegroundLayer)
         {
            this.setBackgroundScreenOffset(scale,offsetX,offsetY,widthScale,heightScale);
         }
         else
         {
            this.setForegroundScreenOffset(offsetX,screenWidth,top);
         }
      }
      
      private function setBackgroundScreenOffset(scale:Number, offsetX:Number, offsetY:Number, widthScale:Number, heightScale:Number) : void
      {
         var scaleVar:Number = scale - this.mInitialScale;
         var scVar:Number = (scaleVar + this.zDistance) * this.mScaleSpeed;
         var resultScl:Number = mScale + scVar;
         mSprite.scaleX = resultScl / scale;
         mSprite.scaleY = resultScl / scale;
         offsetX -= this.mInitialOffsetX;
         offsetY -= this.mInitialOffsetY;
         var xSpeed:Number = offsetX * this.zDistance;
         var ySpeed:Number = offsetY * this.zDistance;
         var xPos:Number = -mWidth * (mScale + scVar * 2) + 0 * (mScale + scVar) * 2;
         var yPos:Number = mHeight * (mScale + scVar * 2) + 0 * (mScale + scVar) * 2;
         var maxScale:Number = Math.max(widthScale,heightScale);
         widthScale /= maxScale;
         heightScale /= maxScale;
         var x:Number = (xPos - xSpeed * this.mXMultiplier) * 0.5 / resultScl;
         var y:Number = (yPos - ySpeed * this.mYMultiplier) * 0.5 / resultScl;
         mSprite.x = (x * mScale + mOffsetX * widthScale) / scale;
         mSprite.y = (y * mScale + mOffsetY * heightScale) / scale;
         mSprite.pivotX = -mPivotX + mMovingOffsetX;
         mSprite.pivotY = -mPivotY + this.mMovingOffsetY;
      }
      
      private function setForegroundScreenOffset(offsetX:Number, screenWidth:Number, top:Number) : void
      {
         mSprite.scaleX = mScale;
         mSprite.scaleY = mScale;
         offsetX -= this.mInitialOffsetX;
         var xSpeed:Number = offsetX * this.zDistance;
         var xPos:Number = screenWidth / 2 + singleItemPixelWidth / 2 * mScale;
         var yPos:Number = -top;
         var x:Number = xPos - xSpeed - mPivotX;
         var y:Number = yPos - mPivotY;
         mSprite.x = x;
         mSprite.y = y;
      }
      
      override protected function initializePivotFromTexture(pivotTexture:PivotTexture) : void
      {
         mPivotY = pivotTexture.pivotY;
         mPivotX = pivotTexture.pivotX;
         mHeight = pivotTexture.height;
         mWidth = pivotTexture.width;
      }
      
      override protected function initializePivotFromComposite(displayObject:DisplayObject) : void
      {
         var bounds:Rectangle = displayObject.bounds;
         mPivotY = 0;
         if(isForegroundLayer)
         {
            mPivotX = -bounds.left;
         }
         else
         {
            mPivotX = 0;
         }
         mHeight = bounds.height;
         mWidth = bounds.width;
      }
      
      override public function update(deltaTimeMilliseconds:Number) : void
      {
         if(mVelocityX != 0)
         {
            mMovingOffsetX += mVelocityX * deltaTimeMilliseconds / 1000;
            while(mMovingOffsetX < -singleItemPixelWidth)
            {
               mMovingOffsetX += singleItemPixelWidth;
            }
            while(mMovingOffsetX > singleItemPixelWidth)
            {
               mMovingOffsetX -= singleItemPixelWidth;
            }
         }
      }
   }
}
