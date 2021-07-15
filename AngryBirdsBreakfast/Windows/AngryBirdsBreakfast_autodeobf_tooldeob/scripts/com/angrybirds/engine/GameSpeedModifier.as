package com.angrybirds.engine
{
   public class GameSpeedModifier
   {
      
      private static const DEFAULT_SPEED:Number = 1;
       
      
      private var mSpeed:Number = 1.0;
      
      private var mDurationMilliSeconds:Number = 0.0;
      
      private var mFadeInMilliSeconds:Number = 0.0;
      
      private var mFadeOutMilliSeconds:Number = 0.0;
      
      private var mOffsetMilliSeconds:Number = 0.0;
      
      private var mCurrentSpeed:Number = 1.0;
      
      public function GameSpeedModifier(param1:Number = 0.0, param2:Number = 0.0, param3:Number = 0.0, param4:Number = 1.0)
      {
         super();
         this.mSpeed = param4;
         this.mDurationMilliSeconds = param2;
         this.mFadeInMilliSeconds = param1;
         this.mFadeOutMilliSeconds = param3;
         this.update(0);
      }
      
      public function get speed() : Number
      {
         return this.mCurrentSpeed;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         this.mOffsetMilliSeconds += param1;
         if(this.mOffsetMilliSeconds < this.mFadeInMilliSeconds)
         {
            this.mCurrentSpeed = DEFAULT_SPEED + (this.mSpeed - DEFAULT_SPEED) * this.mOffsetMilliSeconds / this.mFadeInMilliSeconds;
         }
         else if(this.mOffsetMilliSeconds < this.mFadeInMilliSeconds + this.mDurationMilliSeconds)
         {
            this.mCurrentSpeed = this.mSpeed;
         }
         else
         {
            if(this.mOffsetMilliSeconds >= this.mFadeInMilliSeconds + this.mDurationMilliSeconds + this.mFadeOutMilliSeconds)
            {
               this.mCurrentSpeed = DEFAULT_SPEED;
               return false;
            }
            _loc2_ = this.mOffsetMilliSeconds - (this.mFadeInMilliSeconds + this.mDurationMilliSeconds);
            this.mCurrentSpeed = this.mSpeed + (DEFAULT_SPEED - this.mSpeed) * _loc2_ / this.mFadeOutMilliSeconds;
         }
         return true;
      }
   }
}
