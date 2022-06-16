package com.angrybirds.spiningwheel
{
   import com.angrybirds.spiningwheel.events.SpinningWheelEvent;
   import com.rovio.assets.AssetCache;
   import com.rovio.sound.SoundEngine;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   
   public class SpinningWheel extends EventDispatcher
   {
      
      public static const SOUND_CHANNEL_SPINNING_WHEEL:String = "CHANNEL_SPINNING_WHEEL";
      
      private static const SOUND_CHANNEL_SPINNING_WHEEL_MAX_SOUNDS:int = 40;
      
      private static const WHEEL_CLICK_SOUND_AMOUNT:int = 20;
      
      private static const SPIKE_ON_TOP:Boolean = false;
      
      private static const ADDITIONAL_ANGLE:uint = !!SPIKE_ON_TOP ? uint(0) : uint(180);
      
      private static const ANGLE_ROTATIONS_BEFORE_STOP:uint = 1440;
      
      private static const MAX_FREE_ROTATION_TIME:uint = 1000;
      
      private static const WHEEL_START_SPEED:uint = 400;
      
      private static const WHEEL_MAX_SPEED:uint = 800;
      
      private static const WHEEL_MIN_SLOW_DOWN_SPEED:uint = 8;
      
      private static const WHEEL_PUSH_MIN_BACK_SPEED:int = -2;
      
      private static const WHEEL_ROTATION_ACC:uint = 50;
      
      private static const PADDING:Number = 3;
      
      private static const SPIKE_RETURN_WHEEL_ANGLE:uint = 7;
      
      private static const SPIKE_MAX_ANGLE:Number = -60;
      
      private static const SPIKE_MIN_ANGLE:Number = 0;
      
      private static const SPIKE_RETURN_SPEED:uint = 240;
      
      private static const SPIKE_SPEED_MAGNITUDE:uint = 4;
      
      private static const STATE_SPINNING:uint = 1;
      
      private static const STATE_NONE:uint = 0;
       
      
      private var mWheelClickSoundCounter:int;
      
      private var mFirstSpikeTouchHappened:Boolean;
      
      private var anglePerSegment:Number = 45;
      
      private var mSpike:DisplayObject;
      
      private var mWheel:DisplayObjectContainer;
      
      private var mLastUpdateTime:Number;
      
      private var mFreeRotationTimer:Number = 0;
      
      private var mCurrentWheelSpeed:Number;
      
      private var mRotationMadeInCurrentUpdate:Number;
      
      private var mCurrentSegment:int;
      
      private var mMovedToNewSegment:Boolean;
      
      private var mTotalSegments:uint;
      
      private var mTargetRotation:Number;
      
      private var mRotationRequiredToStop:Number;
      
      private var mRotationRemaining:Number;
      
      private var mSlowingDown:Boolean;
      
      private var mPushingBack:Boolean;
      
      private var mFreeRotating:Boolean;
      
      private var mWheelPushbackSpeed:Number;
      
      private var mSeparaterClsName:String;
      
      private var mRadius:Number;
      
      private var mItemsSegmentDict:Dictionary;
      
      private var mItemNameToStop:String = null;
      
      private var mState:uint;
      
      public function SpinningWheel(mWheel:DisplayObjectContainer, mSpike:DisplayObject, separatorClassName:String, radius:Number, itemNamesAndQuantity:Vector.<Object>)
      {
         super();
         this.mSpike = mSpike;
         this.mWheel = mWheel;
         this.mSeparaterClsName = separatorClassName;
         this.mRadius = radius;
         this.createWheel(itemNamesAndQuantity);
         if(!mWheel.hasEventListener(Event.ENTER_FRAME))
         {
            mWheel.addEventListener(Event.ENTER_FRAME,this.cbOnUpdate);
         }
         this.mState = STATE_NONE;
      }
      
      private static function degToRadians(deg:Number) : Number
      {
         return Math.PI * deg / 180;
      }
      
      public function createWheel(itemNamesAndQuantity:Vector.<Object>) : void
      {
         this.reset();
         this.mTotalSegments = itemNamesAndQuantity.length;
         this.mItemsSegmentDict = new Dictionary(true);
         this.mWheel.removeChildren();
         this.anglePerSegment = 360 / this.mTotalSegments;
         for(var i:int = 0; i < this.mTotalSegments; i++)
         {
            this.addSegment(itemNamesAndQuantity[i],i);
         }
         SoundEngine.addNewChannelControl(SOUND_CHANNEL_SPINNING_WHEEL,SOUND_CHANNEL_SPINNING_WHEEL_MAX_SOUNDS,1);
      }
      
      private function addSegment(segmentObj:Object, segment:uint) : void
      {
         var separaterCls:Class = AssetCache.getAssetFromCache(this.mSeparaterClsName);
         var separater:DisplayObject = new separaterCls();
         separater.rotation = segment * -this.anglePerSegment + ADDITIONAL_ANGLE;
         this.mWheel.addChild(separater);
         var angle:Number = (this.mTotalSegments - segment) * this.anglePerSegment - this.anglePerSegment / 2 - 90 + ADDITIONAL_ANGLE;
         var cls:Class = AssetCache.getAssetFromCache(segmentObj.n);
         var dsp:DisplayObject = new cls();
         ((dsp as MovieClip).getChildByName("count") as TextField).text = "x" + segmentObj.q;
         var itemsRadius:Number = this.mRadius * 0.7;
         if(this.mTotalSegments == 4)
         {
            dsp.scaleX = dsp.scaleY = 1.2;
            itemsRadius = this.mRadius * 0.65;
         }
         else if(this.mTotalSegments == 3)
         {
            dsp.scaleX = dsp.scaleY = 1.3;
            itemsRadius = this.mRadius * 0.6;
         }
         else if(this.mTotalSegments == 2)
         {
            dsp.scaleX = dsp.scaleY = 1.5;
            itemsRadius = this.mRadius * 0.5;
         }
         dsp.rotation = angle - 90;
         dsp.x = itemsRadius * Math.cos(degToRadians(angle));
         dsp.y = itemsRadius * Math.sin(degToRadians(angle));
         this.mWheel.addChild(dsp);
         this.mItemsSegmentDict[segmentObj.n] = new Segment(dsp,separater,segmentObj.n,segment);
      }
      
      public function startSpin() : void
      {
         this.reset();
         this.mState = STATE_SPINNING;
         this.mLastUpdateTime = getTimer();
         this.mCurrentWheelSpeed = WHEEL_START_SPEED;
         this.mFreeRotating = true;
      }
      
      public function cancelSpin() : void
      {
         this.reset();
         this.mItemsSegmentDict = null;
      }
      
      private function stopSpinning() : void
      {
         var segment:Segment = this.mItemsSegmentDict[this.mItemNameToStop];
         var segmentId:uint = segment.id;
         this.mTargetRotation = this.getTargetRotationForSegment(segmentId);
         this.mRotationRequiredToStop = this.mTargetRotation - this.mWheel.rotation;
         while(this.mRotationRequiredToStop < ANGLE_ROTATIONS_BEFORE_STOP)
         {
            this.mRotationRequiredToStop += 360;
         }
         this.mRotationRemaining = this.mRotationRequiredToStop;
         this.mSlowingDown = true;
         this.mFreeRotating = false;
      }
      
      private function getTargetRotationForSegment(segment:uint) : Number
      {
         var midAngle:Number = this.anglePerSegment / 2;
         var maxAngle:Number = this.anglePerSegment - PADDING;
         var randDelta:Number = -(maxAngle / 2) + Math.floor(Math.random() * (maxAngle + 1));
         var deg:Number = this.anglePerSegment * (segment + 1) - midAngle + randDelta + SPIKE_RETURN_WHEEL_ANGLE;
         return this.degToRotation(deg);
      }
      
      private function cbOnUpdate(e:Event) : void
      {
         var time:Number = getTimer();
         var dt:Number = time - this.mLastUpdateTime;
         this.mLastUpdateTime = time;
         switch(this.mState)
         {
            case STATE_SPINNING:
               if(dt > 0)
               {
                  this.checkTimeToStop(dt);
                  this.animateWheel(dt);
                  this.animateSpike(dt);
                  if(this.mSlowingDown)
                  {
                     this.updateSlowDown();
                  }
                  if(this.mPushingBack)
                  {
                     this.updatePushBack();
                  }
               }
               this.checkStopped();
         }
      }
      
      private function checkTimeToStop(dt:Number) : void
      {
         if(this.mCurrentWheelSpeed == WHEEL_MAX_SPEED)
         {
            this.mFreeRotationTimer += dt;
            if(this.mFreeRotationTimer >= MAX_FREE_ROTATION_TIME && this.mItemNameToStop && !this.mSlowingDown)
            {
               this.stopSpinning();
            }
         }
      }
      
      private function checkStopped() : void
      {
         if(this.mCurrentWheelSpeed == 0 && this.mSpike.rotation == 0)
         {
            this.mState = STATE_NONE;
            dispatchEvent(new SpinningWheelEvent(SpinningWheelEvent.EVENT_SPIN_COMPLETE,this.mItemNameToStop));
         }
      }
      
      private function updatePushBack() : void
      {
         if(this.mRotationRemaining < 0)
         {
            this.mCurrentWheelSpeed = Math.min(WHEEL_PUSH_MIN_BACK_SPEED,this.mWheelPushbackSpeed * this.mRotationRemaining / this.mRotationRequiredToStop);
            this.mRotationRemaining -= this.mRotationMadeInCurrentUpdate;
         }
         else
         {
            this.mRotationRequiredToStop = 0;
            this.mRotationRemaining = 0;
            this.mWheel.rotation = this.mTargetRotation;
            this.mCurrentWheelSpeed = 0;
            this.mPushingBack = false;
         }
      }
      
      private function updateSlowDown() : void
      {
         if(this.mRotationRemaining > 0)
         {
            this.mCurrentWheelSpeed = WHEEL_MIN_SLOW_DOWN_SPEED + WHEEL_MAX_SPEED * (this.mRotationRemaining / this.mRotationRequiredToStop);
            this.mRotationRemaining -= this.mRotationMadeInCurrentUpdate;
         }
         else
         {
            this.mRotationRemaining = 0;
            this.mRotationRequiredToStop = 0;
            this.mWheel.rotation = this.mTargetRotation;
            this.mCurrentWheelSpeed = 0;
            this.mSlowingDown = false;
            if(this.isHittingSpike())
            {
               this.pushBackWheel();
            }
         }
      }
      
      private function pushBackWheel() : void
      {
         this.mPushingBack = true;
         var angle:Number = 0;
         var segmentAngle:Number = this.getSegmentAngle();
         if(segmentAngle < SPIKE_RETURN_WHEEL_ANGLE)
         {
            angle = segmentAngle + PADDING;
         }
         else
         {
            angle = segmentAngle - (this.anglePerSegment - PADDING);
         }
         var tempTarget:Number = angle * -2;
         this.mRotationRequiredToStop = this.mRotationRemaining = tempTarget;
         this.mTargetRotation = this.mWheel.rotation + this.mRotationRequiredToStop;
         var tempSpeed:Number = -angle;
         this.mWheelPushbackSpeed = this.mCurrentWheelSpeed = tempSpeed;
      }
      
      private function animateSpike(dt:Number) : void
      {
         var deltaRotation:Number = 0;
         if(this.mMovedToNewSegment || this.isHittingSpike())
         {
            deltaRotation = dt / 1000 * this.mCurrentWheelSpeed * -SPIKE_SPEED_MAGNITUDE;
         }
         else
         {
            deltaRotation = dt / 1000 * SPIKE_RETURN_SPEED;
         }
         var rotation:Number = this.mSpike.rotation + deltaRotation;
         rotation = Math.min(rotation,SPIKE_MIN_ANGLE);
         rotation = Math.max(rotation,SPIKE_MAX_ANGLE);
         this.mSpike.rotation = rotation;
         if(this.isHittingSpike())
         {
            if(!this.mFirstSpikeTouchHappened)
            {
               this.playWheelClickSound();
               this.mFirstSpikeTouchHappened = true;
            }
         }
         else if(this.mFirstSpikeTouchHappened)
         {
            this.mFirstSpikeTouchHappened = false;
         }
      }
      
      private function animateWheel(dt:Number) : void
      {
         this.mRotationMadeInCurrentUpdate = dt / 1000 * this.mCurrentWheelSpeed;
         this.mWheel.rotation += this.mRotationMadeInCurrentUpdate;
         var segment:int = this.rotationToDegree(this.mWheel.rotation - SPIKE_RETURN_WHEEL_ANGLE) / this.anglePerSegment;
         if(this.mCurrentSegment != segment)
         {
            this.mCurrentSegment = segment;
            this.mMovedToNewSegment = true;
         }
         else
         {
            this.mMovedToNewSegment = false;
         }
         if(this.mFreeRotating)
         {
            this.mCurrentWheelSpeed += WHEEL_ROTATION_ACC;
            this.mCurrentWheelSpeed = Math.min(this.mCurrentWheelSpeed,WHEEL_MAX_SPEED);
         }
      }
      
      private function reset() : void
      {
         this.mCurrentSegment = 0;
         this.mCurrentWheelSpeed = 0;
         this.mWheelPushbackSpeed = 0;
         this.mTargetRotation = 0;
         this.mRotationRemaining = 0;
         this.mRotationRequiredToStop = 0;
         this.mFreeRotationTimer = 0;
         this.mLastUpdateTime = 0;
         this.mSlowingDown = false;
         this.mPushingBack = false;
         this.mTotalSegments = 0;
         this.mItemNameToStop = null;
         this.mWheel.rotation = 0;
      }
      
      private function rotationToDegree(angle:Number) : Number
      {
         return (angle + 360) % 360;
      }
      
      private function degToRotation(angle:Number) : Number
      {
         var rot:Number = angle;
         while(rot > 180)
         {
            rot -= 360;
         }
         while(rot < -180)
         {
            rot += 360;
         }
         return rot;
      }
      
      private function getSegmentAngle() : Number
      {
         return this.rotationToDegree(this.mWheel.rotation) % this.anglePerSegment;
      }
      
      private function isHittingSpike() : Boolean
      {
         var segmentRotationAngle:Number = this.getSegmentAngle();
         return segmentRotationAngle < SPIKE_RETURN_WHEEL_ANGLE || segmentRotationAngle > this.anglePerSegment - PADDING;
      }
      
      public function stopWheelAt(itemName:String) : void
      {
         this.mItemNameToStop = itemName;
      }
      
      public function setSpikeVisibility(b:Boolean) : void
      {
         this.mSpike.visible = b;
      }
      
      public function dispose() : void
      {
         this.cancelSpin();
         this.mWheel.removeEventListener(Event.ENTER_FRAME,this.cbOnUpdate);
      }
      
      private function playWheelClickSound() : void
      {
         this.mWheelClickSoundCounter = this.mWheelClickSoundCounter < WHEEL_CLICK_SOUND_AMOUNT ? int(this.mWheelClickSoundCounter + 1) : 1;
         SoundEngine.playSound("fortunewheel_click_" + this.mWheelClickSoundCounter,SOUND_CHANNEL_SPINNING_WHEEL);
      }
   }
}

import flash.display.DisplayObject;
import flash.display.Sprite;

class Segment
{
   
   private static const FADE_SPEED:Number = 0.03;
   
   private static const FADE_ACC:Number = 0.00005;
   
   private static const STATE_FADE_IN:uint = 1;
   
   private static const STATE_FADE_OUT:uint = 2;
   
   private static const MAX_TIME_INVISIBLE:uint = 100;
    
   
   public var itemDsp:DisplayObject;
   
   public var name:String;
   
   public var id:uint;
   
   public var separaterDsp:DisplayObject;
   
   private var mFadeState:uint;
   
   private var fadeVel:Number;
   
   private var timeSinceInvisible:int;
   
   function Segment(itemDsp:DisplayObject, separaterDsp:DisplayObject, name:String, id:uint)
   {
      super();
      this.itemDsp = itemDsp;
      this.separaterDsp = separaterDsp;
      this.itemDsp.name = name;
      this.name = name;
      this.id = id;
   }
   
   public function showReadyToRemove() : void
   {
      (this.itemDsp as Sprite).buttonMode = true;
      this.itemDsp.cacheAsBitmap = true;
      this.mFadeState = STATE_FADE_OUT;
      this.fadeVel = 0;
      this.timeSinceInvisible = 0;
   }
   
   public function update(dt:Number) : void
   {
      if(this.mFadeState == STATE_FADE_IN)
      {
         this.itemDsp.alpha += FADE_SPEED;
         if(this.itemDsp.alpha >= 1)
         {
            this.itemDsp.alpha = 1;
            this.mFadeState = STATE_FADE_OUT;
            this.fadeVel = 0;
         }
      }
      else if(this.mFadeState == STATE_FADE_OUT)
      {
         this.itemDsp.alpha -= FADE_SPEED;
         if(this.itemDsp.alpha <= 0)
         {
            this.timeSinceInvisible += dt;
            if(this.timeSinceInvisible > MAX_TIME_INVISIBLE)
            {
               this.timeSinceInvisible = 0;
               this.itemDsp.alpha = 0;
               this.mFadeState = STATE_FADE_IN;
               this.fadeVel = 0;
            }
         }
      }
   }
}
