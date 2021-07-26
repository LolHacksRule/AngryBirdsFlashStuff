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
      
      public function LevelSlingshotObject(newSlingshot:LevelSlingshot, newName:String, newX:Number, newY:Number)
      {
         super();
         this.mSlingshot = newSlingshot;
         this.mName = newName;
         this.mSoundNames = LevelItems.getItem(this.mName).mValues[LevelItem.RESOURCE_PATH_SOUND_OBJECT] as LevelItemResourcePathSound;
         this.mX = newX;
         this.mY = newY;
         this.mRotation = 0;
         this.mOnSlingshot = false;
         this.mTryToGoSlingshot = false;
         this.mBlinkingTimer = 0;
         this.loadAnimation();
         this.mGroundCheckTimer = 0;
      }
      
      public function approachSlingshot(deltaTime:Number) : void
      {
         if(!this.mTryToGoSlingshot || this.mOnSlingshot)
         {
            return;
         }
         deltaTime = Math.min(deltaTime,this.mApproachSlingshotTimer);
         this.mX += deltaTime * (this.mSlingshot.mX - this.mX) / this.mApproachSlingshotTimer;
         this.mY += deltaTime * (this.mSlingshot.mY - this.mY) / this.mApproachSlingshotTimer;
         this.mRotation += deltaTime * (360 - this.mRotation) / this.mApproachSlingshotTimer;
         this.mApproachSlingshotTimer -= deltaTime;
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
      
      public function updateGroundControl(deltaTime:Number) : void
      {
         var index:int = 0;
         if(!this.mOnSlingshot && this.mGroundCheckTimer >= 0)
         {
            if(this.mLegContactPoint > this.mSlingshot.mLevelMain.mLevelBorders.mBorderGround_B2)
            {
               this.applyGravity(this.mSlingshot.mLevelMain.mLevelBorders.mBorderGround_B2 - this.mLegContactPoint);
               this.mGroundCheckTimer = -1;
               this.startBouncing();
            }
            this.mGroundCheckTimer -= deltaTime;
            if(this.mGroundCheckTimer <= 0)
            {
               if(this.mBouncingTimer > 0)
               {
                  this.mGroundCheckTimer = this.mBouncingTimer;
                  return;
               }
               index = this.mSlingshot.mLevelMain.mLevelObjects.getObjectIndexFromPoint(this.mX,this.mLegContactPoint);
               if(index < 0)
               {
                  if(this.applyGravity(deltaTime / 100))
                  {
                     this.mGroundCheckTimer = -1;
                     this.startBouncing();
                  }
                  else
                  {
                     this.mGroundCheckTimer = 0;
                  }
               }
               else if((this.mSlingshot.mLevelMain.mLevelObjects.mObjects[index] as LevelObject).mDefence < 0)
               {
                  this.mGroundCheckTimer = -1;
                  this.startBouncing();
               }
               else if((this.mSlingshot.mLevelMain.mLevelObjects.mObjects[index] as LevelObject).considerSleeping())
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
      
      public function applyGravity(movement:Number) : Boolean
      {
         this.mY += movement;
         this.mLegContactPoint += movement;
         if(this.mLegContactPoint > this.mSlingshot.mLevelMain.mLevelBorders.mBorderGround_B2)
         {
            movement = this.mLegContactPoint - this.mSlingshot.mLevelMain.mLevelBorders.mBorderGround_B2;
            this.mY -= movement;
            this.mLegContactPoint -= movement;
            this.updateRenderer();
            return true;
         }
         this.updateRenderer();
         return false;
      }
      
      public function loadAnimation() : void
      {
         var clipClass:Class = AssetCache.getAssetFromCache(this.mName);
         this.mAnimations = new clipClass();
         this.mRadius = this.mAnimations.getChildByName("Collision1_Circle").width / 2 * LevelMain.PIXEL_TO_B2_SCALE;
         this.mAnimations = (this.mAnimations.getChildByName("Animations") as DisplayObjectContainer).getChildByName("Damaged1") as MovieClip;
         this.mLegContactPointDistance = this.mAnimations.getChildByName("Neutral").getRect(this.mAnimations.parent).bottom * LevelMain.PIXEL_TO_B2_SCALE;
         this.mLegContactPoint = this.mY + this.mLegContactPointDistance;
         this.mSlingshot.mSlingshotBirds.addChildAt(this.mAnimations,0);
         var lenght:int = this.mAnimations.numChildren;
         for(var i:int = 0; i < lenght; i++)
         {
            this.mAnimations.getChildAt(i).visible = false;
         }
         this.mAnimations.getChildByName("Neutral").visible = true;
         this.updateRenderer();
      }
      
      public function update(deltaTime:Number) : void
      {
         this.updateGroundControl(deltaTime);
         this.updateBlinking(deltaTime);
         this.updateTalking(deltaTime);
         this.updateBouncing(deltaTime);
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
         else if(this.mTalkingTimer <= 0 && Math.random() * 5000 < deltaTime && this.mSlingshot.mSlingShotState != LevelSlingshot.STATE_AWARDING_REMAINING_BIRD_SCORES)
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
         var anim:DisplayObject = this.mAnimations.getChildByName("Blinking") as DisplayObject;
         if(anim)
         {
            anim.visible = true;
            this.mBlinkingTimer = BLINK_TIME;
            this.mAnimations.getChildByName("Neutral").visible = false;
            if(anim is MovieClip)
            {
               (anim as MovieClip).gotoAndPlay(0);
            }
         }
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
         else if(this.mBlinkingTimer <= 0 && Math.random() * 10000 < deltaTime && !this.mOnSlingshot && this.mSlingshot.mSlingShotState != LevelSlingshot.STATE_AWARDING_REMAINING_BIRD_SCORES)
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
      
      public function startTalking(soundIndex:int = -1, loud:Boolean = false) : void
      {
         if(this.mTalkingTimer > 0)
         {
            this.stopTalking();
         }
         if(this.mBlinkingTimer > 0)
         {
            this.stopBlinking();
         }
         var anim:DisplayObject = this.mAnimations.getChildByName("Screaming") as DisplayObject;
         if(anim)
         {
            if(soundIndex < 0)
            {
               soundIndex = LevelItemResourcePathSound.SOUND_TALK;
            }
            anim.visible = true;
            this.mTalkingTimer = TALK_TIME;
            this.mAnimations.getChildByName("Neutral").visible = false;
            if(anim is MovieClip)
            {
               (anim as MovieClip).gotoAndPlay(0);
            }
            if(this.mSlingshot.mLevelMain.mLevelState == LevelMain.LEVEL_STATE_SLINGSHOT || this.mSlingshot.mSlingShotState == LevelSlingshot.STATE_AWARDING_REMAINING_BIRD_SCORES)
            {
               if(this.mOnSlingshot || this.mTryToGoSlingshot || loud)
               {
                  LevelObject.playSoundEffectStatic(soundIndex,this.mSoundNames);
               }
               else
               {
                  LevelObject.playSoundEffectStatic(soundIndex,this.mSoundNames,CHANNEL_NAME);
               }
            }
         }
      }
      
      public function updateBouncing(deltaTime:Number) : void
      {
         var t:Number = NaN;
         if(this.mBouncingTimer > 0)
         {
            this.mBouncingTimer -= deltaTime;
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
                  t = (BOUNCE_TIME - this.mBouncingTimer) / (BOUNCE_TIME / 2);
                  t = RovioUtils.exponentialMove(t);
                  this.mY = this.mBounceStart + t * (this.mBounceTarget - this.mBounceStart);
               }
               else
               {
                  t = (BOUNCE_TIME / 2 - this.mBouncingTimer) / (BOUNCE_TIME / 2);
                  t = RovioUtils.exponentialMove(t,false);
                  this.mY = this.mBounceTarget + t * (this.mBounceStart - this.mBounceTarget);
               }
               this.mRotation = 360 * RovioUtils.exponentialMove((BOUNCE_TIME - this.mBouncingTimer) / BOUNCE_TIME);
            }
            this.updateRenderer();
         }
         else if(Math.random() * 12000 < deltaTime && !this.mOnSlingshot && this.mSlingshot.mSlingShotState != LevelSlingshot.STATE_AWARDING_REMAINING_BIRD_SCORES)
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
      
      public function powerUpSetSpecialDamagePower(newPower:Number = 3) : void
      {
         this.mPowerUpDamageMultiplier = newPower;
         this.addGlowFilter();
      }
      
      public function addGlowFilter(size:Number = 8, color:uint = 16777215) : void
      {
         var glowFilter:GlowFilter = new GlowFilter();
         glowFilter.blurX = size;
         glowFilter.blurY = size;
         glowFilter.color = color;
         this.mAnimations.filters = [glowFilter];
      }
      
      public function clearGlowFilter() : void
      {
         this.mAnimations.filters = [];
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
      
      public function setPosition(newX:Number, newY:Number) : void
      {
         var callForSort:Boolean = false;
         if(this.mX != newX || this.mY != newY)
         {
            callForSort = true;
         }
         this.mX = newX;
         this.mY = newY;
         this.mLegContactPoint = this.mY + this.mLegContactPointDistance;
         this.mGroundCheckTimer = 100;
         this.updateRenderer();
         if(callForSort)
         {
            this.mSlingshot.sortBirds();
         }
      }
   }
}
