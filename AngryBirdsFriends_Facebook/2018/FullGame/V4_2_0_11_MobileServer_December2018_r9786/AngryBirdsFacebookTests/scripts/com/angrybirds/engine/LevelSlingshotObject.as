package com.angrybirds.engine
{
   import com.angrybirds.data.level.item.CircleShapeDefinition;
   import com.angrybirds.data.level.item.LevelItem;
   import com.angrybirds.data.level.item.LevelItemSoundResource;
   import com.angrybirds.data.level.item.ShapeDefinition;
   import com.angrybirds.engine.objects.LevelObject;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.factory.RovioUtils;
   import com.rovio.graphics.Animation;
   import com.rovio.sound.SoundEngine;
   import starling.display.DisplayObject;
   import starling.display.Sprite;
   
   public class LevelSlingshotObject
   {
      
      public static const CHANNEL_NAME:String = "ChannelSlingshot";
      
      public static const TIME_TO_JUMP_ON_SLINGSHOT:Number = 900;
      
      public static const BLINK_TIME:Number = 200;
      
      public static const TALK_TIME:Number = 200;
      
      public static const BLINK_RATE:Number = 1500;
      
      public static const TALK_RATE:Number = 5000;
      
      public static const BOUNCE_RATE:Number = 1000;
      
      public static const MAX_BOUNCE_TIME:Number = 1000;
      
      public static const LAUNCH_SPEED_DEFAULT:Number = 46.25;
      
      public static const LAUNCH_SPEED_GREEN_BIRD:Number = 52.5;
      
      private static const BIRD_BASIC_IDLE_SOUNDS:Array = ["bird_misc_a1","bird_misc_a2","bird_misc_a3","bird_misc_a4","bird_misc_a5","bird_misc_a6","bird_misc_a7","bird_misc_a8","bird_misc_a9","bird_misc_a10","bird_misc_a11","bird_misc_a12"];
       
      
      protected var mName:String;
      
      protected var mX:Number;
      
      protected var mY:Number;
      
      protected var mBaseAngle:Number;
      
      protected var mOriginalX:Number;
      
      protected var mOriginalY:Number;
      
      protected var mOriginalRotation:Number;
      
      private var mSoundResource:LevelItemSoundResource;
      
      protected var mRotation:Number;
      
      protected var mRotationDirection:Number = 1;
      
      private var mSprite:Sprite;
      
      private var mBackgroundSprite:Sprite;
      
      protected var mAnimation:Animation;
      
      private var mImage:DisplayObject;
      
      protected var mSlingshot:LevelSlingshot;
      
      private var mRadius:Number;
      
      protected var mOnSlingshot:Boolean = false;
      
      private var mTryToGoSlingshot:Boolean = false;
      
      protected var mFallingFromSlingshot:Boolean = false;
      
      private var mApproachSlingshotTimer:Number;
      
      private var mBlinkingTimer:Number = 0;
      
      private var mTalkingTimer:Number = 0;
      
      private var mBounceTimer:Number = 0;
      
      private var mBounceTimeLenght:Number = 1000;
      
      private var mBounceTarget:Number;
      
      private var mBounceTargetStart:Number;
      
      private var mBounceCount:int;
      
      private var mBounceOffset:Number = 0;
      
      protected var mGroundCheckTimer:Number;
      
      protected var mLegContactPoint:Number;
      
      private var mPowerUpDamageMultiplier:Object;
      
      private var mPowerUpVelocityMultiplier:Object;
      
      private var mPowerUpSpeed:Number = 0;
      
      private var mObjectPivot:b2Vec2;
      
      private var mScale:Number = 1;
      
      private var mItemShape:ShapeDefinition;
      
      protected var mLevelItem:LevelItem;
      
      protected var mAnimationsEnabled:Boolean = true;
      
      private var mLaunchIndex:int;
      
      protected var yOffset:Number = 0;
      
      protected var xOffset:Number = 0;
      
      public var scoreCounted:Boolean;
      
      public function LevelSlingshotObject(newSlingshot:LevelSlingshot, sprite:Sprite, newName:String, levelItem:LevelItem, newX:Number, newY:Number, baseAngleRadians:Number, index:int)
      {
         super();
         this.mLevelItem = levelItem;
         this.mLaunchIndex = index;
         this.mSlingshot = newSlingshot;
         this.mSprite = sprite;
         this.mName = newName;
         this.mItemShape = levelItem.shape;
         this.mSoundResource = levelItem.soundResource;
         this.mX = newX;
         this.mY = newY;
         this.mBaseAngle = baseAngleRadians / Math.PI * 180;
         this.mOriginalRotation = this.mBaseAngle;
         this.mOriginalX = newX;
         this.mOriginalY = newY;
         this.mOnSlingshot = false;
         this.mTryToGoSlingshot = false;
         this.mRotation = 0;
         this.mBlinkingTimer = 0;
         this.mGroundCheckTimer = 0;
         this.initPivot();
         this.loadAnimation();
      }
      
      public function get launchIndex() : int
      {
         return this.mLaunchIndex;
      }
      
      public function set launchIndex(value:int) : void
      {
         this.mLaunchIndex = value;
      }
      
      public function get backgroundSprite() : Sprite
      {
         return this.mBackgroundSprite;
      }
      
      public function dispose() : void
      {
         if(this.mSprite)
         {
            this.mSprite.dispose();
            this.mSprite = null;
         }
         if(this.mBackgroundSprite)
         {
            this.mBackgroundSprite.dispose();
            this.mBackgroundSprite = null;
         }
      }
      
      public function createBackgroundSprite() : void
      {
         if(!this.mBackgroundSprite)
         {
            this.mBackgroundSprite = new Sprite();
            this.backgroundSprite.x = this.mSprite.x;
            this.backgroundSprite.y = this.mSprite.y;
            this.backgroundSprite.rotation = this.mSprite.rotation;
         }
      }
      
      public function set color(color:uint) : void
      {
         if(this.mImage)
         {
            this.mImage.color = color;
         }
      }
      
      public function get levelItem() : LevelItem
      {
         return this.mLevelItem;
      }
      
      public function setOnSlingshot(onSlingShot:Boolean) : void
      {
         this.mOnSlingshot = onSlingShot;
         if(!this.onSlingshot)
         {
            this.mX = this.mOriginalX;
            this.mY = this.mOriginalY;
            this.mRotation = this.mBaseAngle;
            this.updateRenderer();
         }
      }
      
      public function set animationsEnabled(enabled:Boolean) : void
      {
         this.mAnimationsEnabled = enabled;
      }
      
      public function get launchSpeed() : Number
      {
         if(this.name.toUpperCase() == "BIRD_GREEN")
         {
            return LAUNCH_SPEED_GREEN_BIRD;
         }
         return LAUNCH_SPEED_DEFAULT;
      }
      
      public function approachSlingshot(deltaTime:Number) : void
      {
         if(!this.mTryToGoSlingshot || this.mOnSlingshot)
         {
            return;
         }
         if(this.mRotationDirection != 0)
         {
            this.mBounceTimer = 0;
            this.mBounceOffset = 0;
            this.mRotation = 0;
            this.mBounceTargetStart = 0;
            this.mRotationDirection = 0;
         }
         deltaTime = Math.min(deltaTime,this.mApproachSlingshotTimer);
         this.mX += deltaTime * (this.mSlingshot.x - this.mX + this.xOffset) / this.mApproachSlingshotTimer;
         this.mY += deltaTime * (this.mSlingshot.y - this.mY + this.yOffset) / this.mApproachSlingshotTimer;
         this.mY -= deltaTime / 50 * (this.mApproachSlingshotTimer / TIME_TO_JUMP_ON_SLINGSHOT);
         this.mRotation += deltaTime * (360 - this.mRotation) / this.mApproachSlingshotTimer;
         this.mApproachSlingshotTimer -= deltaTime;
         if(this.mApproachSlingshotTimer <= 0)
         {
            this.mX = this.mSlingshot.x;
            this.mY = this.mSlingshot.y;
            this.mTryToGoSlingshot = false;
            this.setOnSlingshot(true);
            this.mRotation = 0;
            this.mBaseAngle = this.mSlingshot.angle / Math.PI * 180;
         }
         this.updateRenderer();
      }
      
      public function startGoingToSlingshot() : void
      {
         this.mTryToGoSlingshot = true;
         this.mApproachSlingshotTimer = TIME_TO_JUMP_ON_SLINGSHOT;
         SoundEngine.playSound(this.mSoundResource.getSelectionSound(),this.mSoundResource.channelName);
         if(this.mBounceOffset != 0)
         {
            this.mY += this.mBounceOffset;
            this.mBounceOffset = 0;
         }
      }
      
      public function updateGroundControl(deltaTime:Number) : void
      {
         var index:int = 0;
         var obj:LevelObject = null;
         if(!this.mOnSlingshot && this.mGroundCheckTimer >= 0)
         {
            if(this.mLegContactPoint > this.mSlingshot.levelMain.borders.ground)
            {
               this.applyGravity(this.mSlingshot.levelMain.borders.ground - this.mLegContactPoint);
               this.mGroundCheckTimer = -1;
            }
            this.mGroundCheckTimer -= deltaTime;
            if(this.mGroundCheckTimer <= 0)
            {
               if(this.mBounceTimer > 0)
               {
                  this.mGroundCheckTimer = this.mBounceTimer;
                  return;
               }
               index = 0;
               if(!isNaN(this.mLegContactPoint))
               {
                  index = this.mSlingshot.levelMain.objects.getObjectIndexFromPoint(this.mX,this.mLegContactPoint);
               }
               if(index < 0)
               {
                  if(this.applyGravity(deltaTime / 100))
                  {
                     this.mGroundCheckTimer = -1;
                  }
                  else
                  {
                     this.mGroundCheckTimer = 0;
                  }
               }
               else
               {
                  obj = this.mSlingshot.levelMain.objects.getObject(index) as LevelObject;
                  if(obj && obj.isDestroyable)
                  {
                     this.mFallingFromSlingshot = false;
                     this.mGroundCheckTimer = -1;
                  }
                  else if(obj && obj.considerSleeping())
                  {
                     this.mFallingFromSlingshot = false;
                     this.mGroundCheckTimer = 2000;
                  }
                  else
                  {
                     this.mGroundCheckTimer = 500;
                  }
               }
            }
         }
      }
      
      public function applyGravity(movement:Number) : Boolean
      {
         this.mY += movement;
         this.mLegContactPoint += movement;
         if(this.mLegContactPoint > this.mSlingshot.levelMain.borders.ground)
         {
            movement = this.mLegContactPoint - this.mSlingshot.levelMain.borders.ground;
            this.mY -= movement;
            this.mLegContactPoint -= movement;
            this.updateRenderer();
            return true;
         }
         this.updateRenderer();
         return false;
      }
      
      protected function initPivot() : void
      {
         var circleShape:CircleShapeDefinition = null;
         if(this.mItemShape is CircleShapeDefinition)
         {
            circleShape = CircleShapeDefinition(this.mItemShape);
            this.mObjectPivot = new b2Vec2(circleShape.pivot.x,circleShape.pivot.y);
            this.mRadius = circleShape.radius;
         }
         else
         {
            this.mObjectPivot = new b2Vec2(0,0);
            this.mRadius = 1.5;
         }
      }
      
      protected function loadAnimation() : void
      {
         this.mAnimation = this.mSlingshot.levelMain.animationManager.getAnimation(this.mName);
         if(!this.mAnimation)
         {
            this.setImage(null);
         }
         else
         {
            this.setDefaultTexture();
         }
      }
      
      public function setImage(image:DisplayObject) : void
      {
         this.mImage = image;
         if(this.mImage && this.mImage.parent != this.mSprite)
         {
            this.mSprite.addChild(this.mImage);
         }
         if(this.mImage)
         {
            this.mImage.pivotX -= this.mObjectPivot.x / LevelMain.PIXEL_TO_B2_SCALE;
            this.mImage.pivotY -= this.mObjectPivot.y / LevelMain.PIXEL_TO_B2_SCALE;
         }
         this.updateRenderer();
      }
      
      public function update(deltaTime:Number, isJoyBounce:Boolean = false, updateLogic:Boolean = true) : void
      {
         var allowBounce:Boolean = true;
         this.updateGroundControl(deltaTime);
         if(this.mTryToGoSlingshot)
         {
            this.mBounceTimer = 0;
            allowBounce = false;
         }
         if(this.mAnimationsEnabled)
         {
            this.updateBlinking(deltaTime);
            this.updateTalking(deltaTime);
            if(allowBounce && updateLogic)
            {
               this.updateBouncing(deltaTime,isJoyBounce);
            }
         }
      }
      
      public function updateBlinking(deltaTime:Number) : void
      {
         if(this.mBlinkingTimer > 0)
         {
            this.mBlinkingTimer -= deltaTime;
            if(this.mBlinkingTimer <= 0)
            {
               this.stopBlinking();
            }
         }
         else if(this.mTalkingTimer <= 0 && Math.random() * BLINK_RATE < deltaTime && this.mSlingshot.mSlingShotState)
         {
            this.startBlinking();
         }
      }
      
      public function stopBlinking() : void
      {
         this.mBlinkingTimer = 0;
         this.setDefaultTexture();
      }
      
      public function startBlinking() : void
      {
         if(!this.mAnimationsEnabled)
         {
            return;
         }
         this.mBlinkingTimer = BLINK_TIME;
         this.setBlinkingTexture();
      }
      
      protected function setBlinkingTexture() : void
      {
         this.setImage(this.mAnimation.getSubAnimation("blink").getFrame(0,this.mImage));
      }
      
      public function updateTalking(deltaTime:Number) : void
      {
         if(this.mTalkingTimer > 0)
         {
            this.mTalkingTimer -= deltaTime;
            if(this.mTalkingTimer <= 0)
            {
               this.stopTalking();
            }
         }
         else if(this.mBlinkingTimer <= 0 && Math.random() * TALK_RATE < deltaTime)
         {
            this.startTalking();
         }
      }
      
      public function stopTalking() : void
      {
         this.mTalkingTimer = 0;
         this.setDefaultTexture();
      }
      
      protected function setDefaultTexture() : void
      {
         this.setImage(this.mAnimation.getFrame(0,this.mImage));
      }
      
      public function startTalking(loud:Boolean = false) : void
      {
         if(!this.mAnimationsEnabled)
         {
            return;
         }
         if(this.mTalkingTimer > 0)
         {
            this.stopTalking();
         }
         if(this.mBlinkingTimer > 0)
         {
            this.stopBlinking();
         }
         this.mTalkingTimer = TALK_TIME;
         this.setYellTexture();
         var idleSound:String = this.mSoundResource.getIdleSounds();
         if(!idleSound)
         {
            idleSound = BIRD_BASIC_IDLE_SOUNDS[int(Math.random() * BIRD_BASIC_IDLE_SOUNDS.length)];
         }
         if(this.mOnSlingshot || this.mTryToGoSlingshot || loud)
         {
            SoundEngine.playSound(idleSound,this.mSoundResource.channelName);
         }
         else
         {
            SoundEngine.playSound(idleSound,CHANNEL_NAME);
         }
      }
      
      protected function setYellTexture() : void
      {
         this.setImage(this.mAnimation.getSubAnimation("yell").getFrame(0,this.mImage));
      }
      
      public function updateBouncing(deltaTime:Number, isJoyBounce:Boolean) : void
      {
         var t:Number = NaN;
         if(this.mBounceTimer > 0)
         {
            this.mBounceTimer -= deltaTime;
            if(this.mBounceTimer <= 0)
            {
               ++this.mBounceCount;
               this.mBounceTargetStart *= 0.4;
               if(!this.mOnSlingshot && this.mBounceCount < 2)
               {
                  if(this.mBounceCount > 1 && this.mBounceTargetStart < -1)
                  {
                     this.mBounceTargetStart = -1;
                  }
                  this.mBounceTarget = this.mBounceTargetStart;
                  this.mBounceTimer = MAX_BOUNCE_TIME;
                  this.mBounceTimer *= Math.abs(this.mBounceTarget) / 2;
                  this.mBounceTimeLenght = this.mBounceTimer;
                  this.mRotation = 0;
                  this.mRotationDirection = 0;
               }
               else if(!this.mOnSlingshot && isJoyBounce)
               {
                  this.startBouncing(1.5);
               }
               else
               {
                  this.mBounceTimer = 0;
                  this.mBounceOffset = 0;
                  this.mRotation = 0;
                  this.mBounceTargetStart = 0;
               }
            }
            else
            {
               if(this.mBounceTimer >= this.mBounceTimeLenght / 2)
               {
                  t = (this.mBounceTimeLenght - this.mBounceTimer) / (this.mBounceTimeLenght / 2);
                  t = RovioUtils.exponentialMove(t);
                  this.mBounceOffset = t * this.mBounceTarget;
               }
               else
               {
                  t = (this.mBounceTimeLenght / 2 - this.mBounceTimer) / (this.mBounceTimeLenght / 2);
                  t = RovioUtils.exponentialMove(t,false);
                  this.mBounceOffset = this.mBounceTarget + t * -this.mBounceTarget;
               }
               this.mRotation = 360 * RovioUtils.exponentialMove((this.mBounceTimeLenght - this.mBounceTimer) / this.mBounceTimeLenght) * this.mRotationDirection;
            }
            this.updateRenderer();
         }
         else if(Math.random() * BOUNCE_RATE < deltaTime && !this.mOnSlingshot && !this.mTryToGoSlingshot && !this.mFallingFromSlingshot)
         {
            this.startBouncing();
         }
      }
      
      public function startBouncing(force:Number = 1) : void
      {
         if(!this.mAnimationsEnabled)
         {
            return;
         }
         this.mBounceCount = 0;
         this.mBounceTimer = MAX_BOUNCE_TIME;
         this.mBounceOffset = 0;
         this.mBounceTarget = -(0.75 + Math.random() * 1.5) * force;
         this.mBounceTargetStart = this.mBounceTarget;
         this.mBounceTimer *= Math.abs(this.mBounceTarget) / 3;
         this.mBounceTimeLenght = this.mBounceTimer;
         if(this.mName == "BIRD_WHITE" || this.mName == "BIRD_BLACK" || this.mName == "RED_BIG")
         {
            this.mRotationDirection = 0;
         }
         else if(this.mBounceTimer < 350)
         {
            this.mRotationDirection = 0;
         }
         else
         {
            this.mRotationDirection = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.mRotationDirection = Math.random() > 0.5 ? Number(this.mRotationDirection) : Number(0);
         }
      }
      
      public function updateRenderer() : void
      {
         if(this.mSlingshot.useGravity)
         {
            this.mSprite.x = this.mX / LevelMain.PIXEL_TO_B2_SCALE;
            this.mSprite.y = (this.mY + this.mBounceOffset) / LevelMain.PIXEL_TO_B2_SCALE;
         }
         else
         {
            this.mSprite.x = (this.mX + this.mBounceOffset * Math.cos((this.mBaseAngle + 90) / 180 * Math.PI)) / LevelMain.PIXEL_TO_B2_SCALE;
            this.mSprite.y = (this.mY + this.mBounceOffset * Math.sin((this.mBaseAngle + 90) / 180 * Math.PI)) / LevelMain.PIXEL_TO_B2_SCALE;
         }
         if(this.mSlingshot.rotateBird)
         {
            this.mSprite.rotation = (this.mRotation + this.mBaseAngle) / 180 * Math.PI;
         }
         if(this.backgroundSprite)
         {
            this.backgroundSprite.x = this.mSprite.x;
            this.backgroundSprite.y = this.mSprite.y;
            this.backgroundSprite.rotation = this.mSprite.rotation;
         }
      }
      
      public function fallFromSlingshot() : void
      {
         this.mFallingFromSlingshot = true;
         this.mOnSlingshot = false;
         this.mTryToGoSlingshot = false;
         this.mBounceCount = 0;
         this.mGroundCheckTimer = 0;
         this.mBounceTimer = 0;
         this.mBounceTimer = 0;
         this.mBounceOffset = 0;
         this.mRotation = 0;
         this.mBounceTargetStart = 0;
         this.mRotationDirection = 0;
      }
      
      public function isInCoordinates(locX:Number, locY:Number) : Boolean
      {
         var distance:Number = Math.sqrt((locX - this.mX) * (locX - this.mX) + (locY - this.mY) * (locY - this.mY));
         if(distance <= this.mRadius * 1.1)
         {
            return true;
         }
         return false;
      }
      
      public function isInsideRectangle(top:Number, bottom:Number, left:Number, right:Number) : Boolean
      {
         return this.mX >= left && this.mX <= right && this.mY >= top && this.mY <= bottom;
      }
      
      public function setPosition(newX:Number, newY:Number, angle:Number = 0.0) : void
      {
         var callForSort:Boolean = false;
         if(this.mX != newX || this.mY != newY)
         {
            callForSort = true;
         }
         this.mX = newX;
         this.mY = newY;
         this.mRotation = angle;
         this.mGroundCheckTimer = 100;
         this.updateRenderer();
         if(callForSort)
         {
            this.mSlingshot.sortBirds();
         }
      }
      
      public function get bounceTimer() : Number
      {
         return this.mBounceTimer;
      }
      
      public function get groundCheckTimer() : Number
      {
         return this.mGroundCheckTimer;
      }
      
      public function set groundCheckTimer(value:Number) : void
      {
         this.mGroundCheckTimer = value;
      }
      
      public function get powerUpDamageMultiplier() : Object
      {
         return this.mPowerUpDamageMultiplier;
      }
      
      public function get powerUpVelocityMultiplier() : Object
      {
         return this.mPowerUpVelocityMultiplier;
      }
      
      public function get onSlingshot() : Boolean
      {
         return this.mOnSlingshot;
      }
      
      public function get radius() : Number
      {
         return this.mRadius;
      }
      
      public function get sprite() : Sprite
      {
         return this.mSprite;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set powerUpDamageMultiplier(value:Object) : void
      {
         this.mPowerUpDamageMultiplier = value;
      }
      
      public function set powerUpVelocityMultiplier(value:Object) : void
      {
         this.mPowerUpVelocityMultiplier = value;
      }
      
      public function get powerUpSpeed() : Number
      {
         return this.mPowerUpSpeed;
      }
      
      public function set powerUpSpeed(value:Number) : void
      {
         this.mPowerUpSpeed = value;
      }
      
      public function get scale() : Number
      {
         return this.mScale;
      }
      
      public function set scale(value:Number) : void
      {
         this.mScale = value;
      }
      
      public function get x() : Number
      {
         return this.mX;
      }
      
      public function get y() : Number
      {
         return this.mY;
      }
      
      public function get originalX() : Number
      {
         return this.mOriginalX;
      }
      
      public function get originalY() : Number
      {
         return this.mOriginalY;
      }
   }
}
