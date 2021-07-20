package com.angrybirds.engine
{
   import com.rovio.graphics.Animation;
   import com.angrybirds.data.level.item.CircleShapeDefinition;
   import com.angrybirds.data.level.item.LevelItemSoundResource;
   import com.angrybirds.data.level.item.LevelItem;
   import com.angrybirds.data.level.item.ShapeDefinition;
   import com.angrybirds.engine.objects.LevelObject;
   import starling.display.DisplayObject;
   import starling.display.Sprite;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import each.RovioUtils;
   
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
      
      private var mPowerUpDamageMultiplier:Number = 1;
      
      private var mPowerUpSpeed:Number = 0;
      
      private var mObjectPivot:b2Vec2;
      
      private var mScale:Number = 1;
      
      private var mItemShape:ShapeDefinition;
      
      protected var mLevelItem:LevelItem;
      
      protected var mAnimationsEnabled:Boolean = true;
      
      private var mLaunchIndex:int;
      
      public function LevelSlingshotObject(param1:LevelSlingshot, param2:Sprite, param3:String, param4:LevelItem, param5:Number, param6:Number, param7:Number, param8:int)
      {
         super();
         this.mLevelItem = param4;
         this.mLaunchIndex = param8;
         this.mSlingshot = param1;
         this.mSprite = param2;
         this.mName = param3;
         this.mItemShape = param4.shape;
         this.mSoundResource = param4.soundResource;
         this.mX = param5;
         this.mY = param6;
         this.mBaseAngle = param7 / Math.PI * 180;
         this.mOriginalRotation = this.mBaseAngle;
         this.mOriginalX = param5;
         this.mOriginalY = param6;
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
      
      public function dispose() : void
      {
         if(this.mSprite)
         {
            this.mSprite.dispose();
            this.mSprite = null;
         }
      }
      
      public function get levelItem() : LevelItem
      {
         return this.mLevelItem;
      }
      
      public function setOnSlingshot(param1:Boolean) : void
      {
         this.mOnSlingshot = param1;
         if(!this.onSlingshot)
         {
            this.mX = this.mOriginalX;
            this.mY = this.mOriginalY;
            this.mRotation = this.mBaseAngle;
            this.updateRenderer();
         }
      }
      
      public function set animationsEnabled(param1:Boolean) : void
      {
         this.mAnimationsEnabled = param1;
      }
      
      public function get launchSpeed() : Number
      {
         if(this.name.toUpperCase() == "BIRD_GREEN")
         {
            return LAUNCH_SPEED_GREEN_BIRD;
         }
         return LAUNCH_SPEED_DEFAULT;
      }
      
      public function approachSlingshot(param1:Number) : void
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
         param1 = Math.min(param1,this.mApproachSlingshotTimer);
         this.mX += param1 * (this.mSlingshot.x - this.mX) / this.mApproachSlingshotTimer;
         this.mY += param1 * (this.mSlingshot.y - this.mY) / this.mApproachSlingshotTimer;
         this.mY -= param1 / 50 * (this.mApproachSlingshotTimer / TIME_TO_JUMP_ON_SLINGSHOT);
         this.mRotation += param1 * (360 - this.mRotation) / this.mApproachSlingshotTimer;
         this.mApproachSlingshotTimer -= param1;
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
         this.startTalking(LevelItemSoundResource.SOUND_READY);
         if(this.mBounceOffset != 0)
         {
            this.mY += this.mBounceOffset;
            this.mBounceOffset = 0;
         }
      }
      
      public function updateGroundControl(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:LevelObject = null;
         if(!this.mOnSlingshot && this.mGroundCheckTimer >= 0)
         {
            if(this.mLegContactPoint > this.mSlingshot.levelMain.borders.ground)
            {
               this.applyGravity(this.mSlingshot.levelMain.borders.ground - this.mLegContactPoint);
               this.mGroundCheckTimer = -1;
            }
            this.mGroundCheckTimer -= param1;
            if(this.mGroundCheckTimer <= 0)
            {
               if(this.mBounceTimer > 0)
               {
                  this.mGroundCheckTimer = this.mBounceTimer;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.mLegContactPoint))
               {
                  _loc2_ = this.mSlingshot.levelMain.objects.getObjectIndexFromPoint(this.mX,this.mLegContactPoint);
               }
               if(_loc2_ < 0)
               {
                  if(this.applyGravity(param1 / 100))
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
                  _loc3_ = this.mSlingshot.levelMain.objects.getObject(_loc2_) as LevelObject;
                  if(_loc3_ && _loc3_.isDestroyable)
                  {
                     this.mFallingFromSlingshot = false;
                     this.mGroundCheckTimer = -1;
                  }
                  else if(_loc3_ && _loc3_.considerSleeping())
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
      
      public function applyGravity(param1:Number) : Boolean
      {
         this.mY += param1;
         this.mLegContactPoint += param1;
         if(this.mLegContactPoint > this.mSlingshot.levelMain.borders.ground)
         {
            param1 = this.mLegContactPoint - this.mSlingshot.levelMain.borders.ground;
            this.mY -= param1;
            this.mLegContactPoint -= param1;
            this.updateRenderer();
            return true;
         }
         this.updateRenderer();
         return false;
      }
      
      protected function initPivot() : void
      {
         var _loc1_:CircleShapeDefinition = null;
         if(this.mItemShape is CircleShapeDefinition)
         {
            _loc1_ = CircleShapeDefinition(this.mItemShape);
            this.mObjectPivot = new b2Vec2(_loc1_.pivot.x,_loc1_.pivot.y);
            this.mRadius = _loc1_.radius;
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
      
      public function setImage(param1:DisplayObject) : void
      {
         this.mImage = param1;
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
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.updateGroundControl(param1);
         if(this.mTryToGoSlingshot)
         {
            this.mBounceTimer = 0;
            _loc4_ = false;
         }
         if(this.mAnimationsEnabled)
         {
            this.updateBlinking(param1);
            this.updateTalking(param1);
            if(_loc4_ && param3)
            {
               this.updateBouncing(param1,param2);
            }
         }
      }
      
      public function updateBlinking(param1:Number) : void
      {
         if(this.mBlinkingTimer > 0)
         {
            this.mBlinkingTimer -= param1;
            if(this.mBlinkingTimer <= 0)
            {
               this.stopBlinking();
            }
         }
         else if(this.mTalkingTimer <= 0 && Math.random() * BLINK_RATE < param1 && this.mSlingshot.mSlingShotState)
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
      
      public function updateTalking(param1:Number) : void
      {
         if(this.mTalkingTimer > 0)
         {
            this.mTalkingTimer -= param1;
            if(this.mTalkingTimer <= 0)
            {
               this.stopTalking();
            }
         }
         else if(this.mBlinkingTimer <= 0 && Math.random() * TALK_RATE < param1)
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
      
      public function startTalking(param1:int = -1, param2:Boolean = false) : void
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
         if(param1 < 0)
         {
            param1 = LevelItemSoundResource.SOUND_TALK;
         }
         this.mTalkingTimer = TALK_TIME;
         this.setYellTexture();
         if(this.mOnSlingshot || this.mTryToGoSlingshot || param2)
         {
            LevelObject.playSoundEffectStatic(param1,this.mSoundResource);
         }
         else
         {
            LevelObject.playSoundEffectStatic(param1,this.mSoundResource,CHANNEL_NAME);
         }
      }
      
      protected function setYellTexture() : void
      {
         this.setImage(this.mAnimation.getSubAnimation("yell").getFrame(0,this.mImage));
      }
      
      public function updateBouncing(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.mBounceTimer > 0)
         {
            this.mBounceTimer -= param1;
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
               else if(!this.mOnSlingshot && param2)
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
                  _loc3_ = (this.mBounceTimeLenght - this.mBounceTimer) / (this.mBounceTimeLenght / 2);
                  _loc3_ = RovioUtils.exponentialMove(_loc3_);
                  this.mBounceOffset = _loc3_ * this.mBounceTarget;
               }
               else
               {
                  _loc3_ = (this.mBounceTimeLenght / 2 - this.mBounceTimer) / (this.mBounceTimeLenght / 2);
                  _loc3_ = RovioUtils.exponentialMove(_loc3_,false);
                  this.mBounceOffset = this.mBounceTarget + _loc3_ * -this.mBounceTarget;
               }
               this.mRotation = 360 * RovioUtils.exponentialMove((this.mBounceTimeLenght - this.mBounceTimer) / this.mBounceTimeLenght) * this.mRotationDirection;
            }
            this.updateRenderer();
         }
         else if(Math.random() * BOUNCE_RATE < param1 && !this.mOnSlingshot && !this.mTryToGoSlingshot && !this.mFallingFromSlingshot)
         {
            this.startBouncing();
         }
      }
      
      public function startBouncing(param1:Number = 1) : void
      {
         if(!this.mAnimationsEnabled)
         {
            return;
         }
         this.mBounceCount = 0;
         this.mBounceTimer = MAX_BOUNCE_TIME;
         this.mBounceOffset = 0;
         this.mBounceTarget = -(0.75 + Math.random() * 1.5) * param1;
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
         this.mSprite.rotation = (this.mRotation + this.mBaseAngle) / 180 * Math.PI;
      }
      
      public function final() : void
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
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.mX) * (param1 - this.mX) + (param2 - this.mY) * (param2 - this.mY));
         if(_loc3_ <= this.mRadius * 1.1)
         {
            return true;
         }
         return false;
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.mX >= param3 && this.mX <= param4 && this.mY >= param1 && this.mY <= param2;
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Number = 0.0) : void
      {
         var _loc4_:Boolean = false;
         if(this.mX != param1 || this.mY != param2)
         {
            _loc4_ = true;
         }
         this.mX = param1;
         this.mY = param2;
         this.mRotation = param3;
         this.mGroundCheckTimer = 100;
         this.updateRenderer();
         if(_loc4_)
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
      
      public function set groundCheckTimer(param1:Number) : void
      {
         this.mGroundCheckTimer = param1;
      }
      
      public function get powerUpDamageMultiplier() : Number
      {
         return this.mPowerUpDamageMultiplier;
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
      
      public function set powerUpDamageMultiplier(param1:Number) : void
      {
         this.mPowerUpDamageMultiplier = param1;
      }
      
      public function get powerUpSpeed() : Number
      {
         return this.mPowerUpSpeed;
      }
      
      public function set powerUpSpeed(param1:Number) : void
      {
         this.mPowerUpSpeed = param1;
      }
      
      public function get scale() : Number
      {
         return this.mScale;
      }
      
      public function set scale(param1:Number) : void
      {
         this.mScale = param1;
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
