package com.AngryBirds.LevelPlayer
{
   import com.AngryBirds.LevelItemsData.LevelItem;
   import com.AngryBirds.LevelItemsData.LevelItemResourcePathSound;
   import com.AngryBirds.LevelItemsData.LevelItems;
   import com.rovio.assets.AssetCache;
   import com.rovio.factory.RovioUtils;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.filters.GlowFilter;
   
   public class LevelSlingshotObject
   {
      
      public static const TIME_TO_JUMP_ON_SLINGSHOT:Number = 500;
      
      public static const BLINK_TIME:Number = 500;
      
      public static const TALK_TIME:Number = 500;
      
      public static const BOUNCE_TIME:Number = 1000;
      
      public static const CHANNEL_NAME:String = "ChannelSlingshot";
       
      
      public var mName:String;
      
      public var mX:Number;
      
      public var mY:Number;
      
      public var mSoundNames:LevelItemResourcePathSound;
      
      public var mRotation:Number;
      
      public var mAnimations:MovieClip;
      
      public var mSlingshot:LevelSlingshot;
      
      public var mRadius:Number;
      
      public var mOnSlingshot:Boolean = false;
      
      public var mTryToGoSlingshot:Boolean = false;
      
      public var mApproachSlingshotTimer:Number;
      
      public var mBlinkingTimer:Number = 0;
      
      public var mTalkingTimer:Number = 0;
      
      public var mBouncingTimer:Number = 0;
      
      public var mBounceTarget:Number;
      
      public var mBounceStart:Number;
      
      public var mGroundCheckTimer:Number;
      
      public var mLegContactPoint:Number;
      
      public var mLegContactPointDistance:Number;
      
      public var mPowerUpDamageMultiplier:Number = 1;
      
      public function LevelSlingshotObject(param1:LevelSlingshot, param2:String, param3:Number, param4:Number)
      {
         super();
         this.mSlingshot = param1;
         this.mName = param2;
         this.mSoundNames = LevelItems.getItem(this.mName).mValues[LevelItem.RESOURCE_PATH_SOUND_OBJECT] as LevelItemResourcePathSound;
         this.mX = param3;
         this.mY = param4;
         this.mRotation = 0;
         this.mOnSlingshot = false;
         this.mTryToGoSlingshot = false;
         this.mBlinkingTimer = 0;
         this.loadAnimation();
         this.mGroundCheckTimer = 0;
      }
      
      public function approachSlingshot(param1:Number) : void
      {
         if(!this.mTryToGoSlingshot || this.mOnSlingshot)
         {
            return;
         }
         param1 = Math.min(param1,this.mApproachSlingshotTimer);
         this.mX += param1 * (this.mSlingshot.mX - this.mX) / this.mApproachSlingshotTimer;
         this.mY += param1 * (this.mSlingshot.mY - this.mY) / this.mApproachSlingshotTimer;
         this.mRotation += param1 * (360 - this.mRotation) / this.mApproachSlingshotTimer;
         this.mApproachSlingshotTimer -= param1;
         if(this.mApproachSlingshotTimer <= 0)
         {
            this.mX = this.mSlingshot.mX;
            this.mY = this.mSlingshot.mY;
            this.mTryToGoSlingshot = false;
            this.mOnSlingshot = true;
            this.mRotation = 0;
         }
         this.updateRenderer();
      }
      
      public function startGoingToSlingshot() : void
      {
         this.mTryToGoSlingshot = true;
         this.mApproachSlingshotTimer = TIME_TO_JUMP_ON_SLINGSHOT;
         this.startTalking(LevelItemResourcePathSound.SOUND_READY);
      }
      
      public function updateGroundControl(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(!this.mOnSlingshot && this.mGroundCheckTimer >= 0)
         {
            if(this.mLegContactPoint > this.mSlingshot.mLevelMain.mLevelBorders.mBorderGround_B2)
            {
               this.applyGravity(this.mSlingshot.mLevelMain.mLevelBorders.mBorderGround_B2 - this.mLegContactPoint);
               this.mGroundCheckTimer = -1;
               this.startBouncing();
            }
            this.mGroundCheckTimer -= param1;
            if(this.mGroundCheckTimer <= 0)
            {
               if(this.mBouncingTimer > 0)
               {
                  this.mGroundCheckTimer = this.mBouncingTimer;
                  return;
               }
               _loc2_ = this.mSlingshot.mLevelMain.mLevelObjects.getObjectIndexFromPoint(this.mX,this.mLegContactPoint);
               if(_loc2_ < 0)
               {
                  if(this.applyGravity(param1 / 100))
                  {
                     this.mGroundCheckTimer = -1;
                     this.startBouncing();
                  }
                  else
                  {
                     this.mGroundCheckTimer = 0;
                  }
               }
               else if((this.mSlingshot.mLevelMain.mLevelObjects.mObjects[_loc2_] as LevelObject).mDefence < 0)
               {
                  this.mGroundCheckTimer = -1;
                  this.startBouncing();
               }
               else if((this.mSlingshot.mLevelMain.mLevelObjects.mObjects[_loc2_] as LevelObject).considerSleeping())
               {
                  this.mGroundCheckTimer = 2000;
               }
               else
               {
                  this.mGroundCheckTimer = 500;
               }
            }
         }
      }
      
      public function applyGravity(param1:Number) : Boolean
      {
         this.mY += param1;
         this.mLegContactPoint += param1;
         if(this.mLegContactPoint > this.mSlingshot.mLevelMain.mLevelBorders.mBorderGround_B2)
         {
            param1 = this.mLegContactPoint - this.mSlingshot.mLevelMain.mLevelBorders.mBorderGround_B2;
            this.mY -= param1;
            this.mLegContactPoint -= param1;
            this.updateRenderer();
            return true;
         }
         this.updateRenderer();
         return false;
      }
      
      public function loadAnimation() : void
      {
         var _loc1_:Class = AssetCache.getAssetFromCache(this.mName);
         this.mAnimations = new _loc1_();
         this.mRadius = this.mAnimations.getChildByName("Collision1_Circle").width / 2 * LevelMain.PIXEL_TO_B2_SCALE;
         this.mAnimations = (this.mAnimations.getChildByName("Animations") as DisplayObjectContainer).getChildByName("Damaged1") as MovieClip;
         this.mLegContactPointDistance = this.mAnimations.getChildByName("Neutral").getRect(this.mAnimations.parent).bottom * LevelMain.PIXEL_TO_B2_SCALE;
         this.mLegContactPoint = this.mY + this.mLegContactPointDistance;
         this.mSlingshot.mSlingshotBirds.addChildAt(this.mAnimations,0);
         var _loc2_:int = this.mAnimations.numChildren;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.mAnimations.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         this.mAnimations.getChildByName("Neutral").visible = true;
         this.updateRenderer();
      }
      
      public function update(param1:Number) : void
      {
         this.updateGroundControl(param1);
         this.updateBlinking(param1);
         this.updateTalking(param1);
         this.updateBouncing(param1);
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
         else if(this.mTalkingTimer <= 0 && Math.random() * 5000 < param1 && this.mSlingshot.mSlingShotState != LevelSlingshot.STATE_AWARDING_REMAINING_BIRD_SCORES)
         {
            this.startBlinking();
         }
      }
      
      public function stopBlinking() : void
      {
         this.mBlinkingTimer = 0;
         this.mAnimations.getChildByName("Neutral").visible = true;
         this.mAnimations.getChildByName("Blinking").visible = false;
      }
      
      public function startBlinking() : void
      {
         var _loc1_:DisplayObject = this.mAnimations.getChildByName("Blinking") as DisplayObject;
         if(_loc1_)
         {
            _loc1_.visible = true;
            this.mBlinkingTimer = BLINK_TIME;
            this.mAnimations.getChildByName("Neutral").visible = false;
            if(_loc1_ is MovieClip)
            {
               (_loc1_ as MovieClip).gotoAndPlay(0);
            }
         }
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
         else if(this.mBlinkingTimer <= 0 && Math.random() * 10000 < param1 && !this.mOnSlingshot && this.mSlingshot.mSlingShotState != LevelSlingshot.STATE_AWARDING_REMAINING_BIRD_SCORES)
         {
            this.startTalking();
         }
      }
      
      public function stopTalking() : void
      {
         this.mTalkingTimer = 0;
         this.mAnimations.getChildByName("Neutral").visible = true;
         this.mAnimations.getChildByName("Screaming").visible = false;
      }
      
      public function startTalking(param1:int = -1, param2:Boolean = false) : void
      {
         if(this.mTalkingTimer > 0)
         {
            this.stopTalking();
         }
         if(this.mBlinkingTimer > 0)
         {
            this.stopBlinking();
         }
         var _loc3_:DisplayObject = this.mAnimations.getChildByName("Screaming") as DisplayObject;
         if(_loc3_)
         {
            if(param1 < 0)
            {
               param1 = LevelItemResourcePathSound.SOUND_TALK;
            }
            _loc3_.visible = true;
            this.mTalkingTimer = TALK_TIME;
            this.mAnimations.getChildByName("Neutral").visible = false;
            if(_loc3_ is MovieClip)
            {
               (_loc3_ as MovieClip).gotoAndPlay(0);
            }
            if(this.mSlingshot.mLevelMain.mLevelState == LevelMain.LEVEL_STATE_SLINGSHOT || this.mSlingshot.mSlingShotState == LevelSlingshot.STATE_AWARDING_REMAINING_BIRD_SCORES)
            {
               if(this.mOnSlingshot || this.mTryToGoSlingshot || param2)
               {
                  LevelObject.playSoundEffectStatic(param1,this.mSoundNames);
               }
               else
               {
                  LevelObject.playSoundEffectStatic(param1,this.mSoundNames,CHANNEL_NAME);
               }
            }
         }
      }
      
      public function updateBouncing(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         if(this.mBouncingTimer > 0)
         {
            this.mBouncingTimer -= param1;
            if(this.mBouncingTimer <= 0)
            {
               this.mBouncingTimer = 0;
               this.mY = this.mBounceStart;
               this.mRotation = 0;
            }
            else
            {
               if(this.mBouncingTimer >= BOUNCE_TIME / 2)
               {
                  _loc2_ = (BOUNCE_TIME - this.mBouncingTimer) / (BOUNCE_TIME / 2);
                  _loc2_ = RovioUtils.exponentialMove(_loc2_);
                  this.mY = this.mBounceStart + _loc2_ * (this.mBounceTarget - this.mBounceStart);
               }
               else
               {
                  _loc2_ = (BOUNCE_TIME / 2 - this.mBouncingTimer) / (BOUNCE_TIME / 2);
                  _loc2_ = RovioUtils.exponentialMove(_loc2_,false);
                  this.mY = this.mBounceTarget + _loc2_ * (this.mBounceStart - this.mBounceTarget);
               }
               this.mRotation = 360 * RovioUtils.exponentialMove((BOUNCE_TIME - this.mBouncingTimer) / BOUNCE_TIME);
            }
            this.updateRenderer();
         }
         else if(Math.random() * 12000 < param1 && !this.mOnSlingshot && this.mSlingshot.mSlingShotState != LevelSlingshot.STATE_AWARDING_REMAINING_BIRD_SCORES)
         {
            this.startBouncing();
         }
      }
      
      public function startBouncing() : void
      {
         if(this.mSlingshot.mLevelMain.mEditorMode)
         {
            return;
         }
         this.mBouncingTimer = BOUNCE_TIME;
         this.mBounceStart = this.mY;
         this.mBounceTarget = this.mBounceStart - (1 + Math.random() * 3);
      }
      
      public function updateRenderer() : void
      {
         this.mAnimations.x = this.mX / LevelMain.PIXEL_TO_B2_SCALE;
         this.mAnimations.y = this.mY / LevelMain.PIXEL_TO_B2_SCALE;
         this.mAnimations.rotation = this.mRotation;
         if(!this.mOnSlingshot)
         {
         }
      }
      
      public function clear() : void
      {
         this.clearGlowFilter();
         this.mSlingshot.mSlingshotBirds.removeChild(this.mAnimations);
         this.mAnimations = null;
      }
      
      public function fallFromSlingshot() : void
      {
         this.mOnSlingshot = false;
         this.mTryToGoSlingshot = false;
         this.mGroundCheckTimer = 0;
         this.mBouncingTimer = 0;
         this.mLegContactPoint = this.mY + this.mLegContactPointDistance;
      }
      
      public function powerUpSetSpecialDamagePower(param1:Number = 3) : void
      {
         this.mPowerUpDamageMultiplier = param1;
         this.addGlowFilter();
      }
      
      public function addGlowFilter(param1:Number = 8, param2:uint = 16777215) : void
      {
         var _loc3_:GlowFilter = new GlowFilter();
         _loc3_.blurX = param1;
         _loc3_.blurY = param1;
         _loc3_.color = param2;
         this.mAnimations.filters = [_loc3_];
      }
      
      public function clearGlowFilter() : void
      {
         this.mAnimations.filters = [];
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
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         if(this.mX != param1 || this.mY != param2)
         {
            _loc3_ = true;
         }
         this.mX = param1;
         this.mY = param2;
         this.mLegContactPoint = this.mY + this.mLegContactPointDistance;
         this.mGroundCheckTimer = 100;
         this.updateRenderer();
         if(_loc3_)
         {
            this.mSlingshot.sortBirds();
         }
      }
   }
}
