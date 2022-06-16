package com.angrybirds.data.level.theme
{
   public class AnimationData
   {
       
      
      private var _mType:String;
      
      private var _mTween:String;
      
      private var _mXOffsetPercent:Number;
      
      private var _mYOffsetPercent:Number;
      
      private var _mDuration:Number;
      
      private var _mTrigger:String;
      
      private var _mSound:String;
      
      private var _mScale:Number;
      
      public function AnimationData(mType:String, mTween:String, mXOffsetPercent:Number, mYOffsetPercent:Number, duration:Number, trigger:String, sound:String, scale:Number)
      {
         super();
         this._mType = mType;
         this._mTween = mTween;
         this._mXOffsetPercent = mXOffsetPercent;
         this._mYOffsetPercent = mYOffsetPercent;
         this._mDuration = duration;
         this._mTrigger = trigger;
         this._mSound = sound;
         this._mScale = scale;
      }
      
      public function get type() : String
      {
         return this._mType;
      }
      
      public function get tween() : String
      {
         return this._mTween;
      }
      
      public function get xOffsetPercent() : Number
      {
         return this._mXOffsetPercent;
      }
      
      public function get yOffsetPercent() : Number
      {
         return this._mYOffsetPercent;
      }
      
      public function get duration() : Number
      {
         return this._mDuration;
      }
      
      public function get trigger() : String
      {
         return this._mTrigger;
      }
      
      public function get sound() : String
      {
         return this._mSound;
      }
      
      public function get scale() : Number
      {
         return this._mScale;
      }
   }
}
