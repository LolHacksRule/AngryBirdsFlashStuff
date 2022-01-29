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
      
      public function GameSpeedModifier(fadeInMilliSeconds:Number = 0.0, durationMilliSeconds:Number = 0.0, fadeOutMilliSeconds:Number = 0.0, speed:Number = 1.0)
      {
         super();
         this.mSpeed = speed;
         this.mDurationMilliSeconds = durationMilliSeconds;
         this.mFadeInMilliSeconds = fadeInMilliSeconds;
         this.mFadeOutMilliSeconds = fadeOutMilliSeconds;
         this.update(0);
      }
      
      public function get speed() : Number
      {
         return this.mCurrentSpeed;
      }
      
      public function update(deltaTimeMilliSeconds:Number) : Boolean
      {
         var fadeOutOffsetMilliSeconds:Number = NaN;
         this.mOffsetMilliSeconds += deltaTimeMilliSeconds;
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
            fadeOutOffsetMilliSeconds = this.mOffsetMilliSeconds - (this.mFadeInMilliSeconds + this.mDurationMilliSeconds);
            this.mCurrentSpeed = this.mSpeed + (DEFAULT_SPEED - this.mSpeed) * fadeOutOffsetMilliSeconds / this.mFadeOutMilliSeconds;
         }
         return true;
      }
   }
}
