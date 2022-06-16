package com.angrybirds.data.level.theme
{
   public class LevelThemeBackgroundLayerSpace extends LevelThemeBackgroundLayer
   {
       
      
      protected var mAnimationElements:Vector.<BackgroundAnimationElement>;
      
      protected var mXMultiplier:Number = 1.0;
      
      protected var mYMultiplier:Number = 1.0;
      
      protected var mAngleMultiplier:Number = 1.0;
      
      protected var mScaleSpeed:Number = 1.0;
      
      protected var mVelocityY:Number = 0.0;
      
      public function LevelThemeBackgroundLayerSpace(spriteName:String, spriteNames:Array, frameTime:Number, color:String, scale:Number, speed:Number, xOffset:Number, yOffset:Number, xMult:Number, yMult:Number, angleMult:Number, scaleSpeed:Number, velocityX:Number, velocityY:Number, foreground:Boolean, tileable:Boolean, optional:Boolean, moveStartOffsetX:Number, moveEndOffsetX:Number, highQuality:Boolean = false, visibility:Boolean = true)
      {
         super(spriteName,spriteNames,frameTime,color,scale,speed,xOffset,yOffset,velocityX,foreground,tileable,optional,moveStartOffsetX,moveEndOffsetX,highQuality,visibility);
         this.mAnimationElements = new Vector.<BackgroundAnimationElement>();
         this.mXMultiplier = xMult;
         this.mYMultiplier = yMult;
         this.mAngleMultiplier = angleMult;
         this.mScaleSpeed = scaleSpeed;
         this.mVelocityY = velocityY;
      }
      
      public function get xMultiplier() : Number
      {
         return this.mXMultiplier;
      }
      
      public function get yMultiplier() : Number
      {
         return this.mYMultiplier;
      }
      
      public function get angleMultiplier() : Number
      {
         return this.mAngleMultiplier;
      }
      
      public function get scaleSpeed() : Number
      {
         return this.mScaleSpeed;
      }
      
      public function get velocityY() : Number
      {
         return this.mVelocityY;
      }
      
      public function initializeExtraElements(count:int, x:Number, y:Number, w:Number, h:Number, velX:Number, velY:Number, variation:Number, randomRotation:Boolean, spriteList:Array) : void
      {
         var animationElement:BackgroundAnimationElement = new BackgroundAnimationElement(spriteList);
         animationElement.count = count;
         animationElement.x = x;
         animationElement.y = y;
         animationElement.w = w;
         animationElement.h = h;
         animationElement.velX = velX;
         animationElement.velY = velY;
         animationElement.variation = variation;
         animationElement.randomRotation = randomRotation;
         this.mAnimationElements.push(animationElement);
      }
   }
}
