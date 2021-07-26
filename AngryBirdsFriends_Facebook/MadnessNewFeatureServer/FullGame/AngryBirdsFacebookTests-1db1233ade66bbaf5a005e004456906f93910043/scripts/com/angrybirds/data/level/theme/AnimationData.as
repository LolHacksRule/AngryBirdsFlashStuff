package com.angrybirds.data.level.theme
{
   public class AnimationData
   {
       
      
      private var mName:String;
      
      private var mType:String;
      
      private var mTween:String;
      
      private var mXOffsetPercent:Number;
      
      private var mYOffsetPercent:Number;
      
      private var mDuration:Number;
      
      private var mTrigger:String;
      
      private var mScale:Number;
      
      private var mFinalScale:Number;
      
      private var mSound:String;
      
      private var mSoundVolume:Number;
      
      private var mSoundLoop:Boolean;
      
      private var mVisbile:Boolean;
      
      private var mMovement:Object;
      
      public function AnimationData(name:String, type:String, tween:String, xOffsetPercent:Number, yOffsetPercent:Number, duration:Number, trigger:String, scale:Number, sound:String, soundVolume:Number, soundLoop:Boolean, visible:Boolean, movement:Object, finalScale:Number)
      {
         super();
         this.mName = name;
         this.mType = type;
         this.mTween = tween;
         this.mXOffsetPercent = xOffsetPercent;
         this.mYOffsetPercent = yOffsetPercent;
         this.mDuration = duration;
         this.mTrigger = trigger;
         this.mScale = scale;
         this.mFinalScale = finalScale;
         this.mSound = sound;
         this.mSoundVolume = soundVolume;
         this.mSoundLoop = soundLoop;
         this.mVisbile = visible;
         this.mMovement = movement;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get type() : String
      {
         return this.mType;
      }
      
      public function get tween() : String
      {
         return this.mTween;
      }
      
      public function get xOffsetPercent() : Number
      {
         return this.mXOffsetPercent;
      }
      
      public function get yOffsetPercent() : Number
      {
         return this.mYOffsetPercent;
      }
      
      public function get duration() : Number
      {
         return this.mDuration;
      }
      
      public function get trigger() : String
      {
         return this.mTrigger;
      }
      
      public function get scale() : Number
      {
         return this.mScale;
      }
      
      public function get finalScale() : Number
      {
         return this.mFinalScale;
      }
      
      public function get sound() : String
      {
         return this.mSound;
      }
      
      public function get soundVolume() : Number
      {
         return this.mSoundVolume;
      }
      
      public function get soundLoop() : Boolean
      {
         return this.mSoundLoop;
      }
      
      public function get visible() : Boolean
      {
         return this.mVisbile;
      }
      
      public function get movement() : Object
      {
         return this.mMovement;
      }
   }
}
