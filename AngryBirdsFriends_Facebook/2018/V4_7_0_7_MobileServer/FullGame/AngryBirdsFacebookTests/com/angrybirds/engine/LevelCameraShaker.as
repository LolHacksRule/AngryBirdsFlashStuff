package com.angrybirds.engine
{
   import com.angrybirds.engine.camera.LevelCamera;
   
   public class LevelCameraShaker
   {
      
      protected static const FRAME_TIME_MILLISECONDS:Number = 1000 / 60;
       
      
      protected var mLifeTimeMilliseconds:Number = 0;
      
      protected var mShakingAngle:Number = 0;
      
      protected var mShakingFrequency:Number = 0;
      
      protected var mShakingAmplitude:Number = 0;
      
      protected var mDurationMilliSeconds:Number = 0;
      
      protected var mInitialShakingFrequency:Number = 0;
      
      protected var mInitialShakingAmplitude:Number = 0;
      
      public function LevelCameraShaker(frequency:Number, amplitude:Number, duration:Number)
      {
         super();
         this.mShakingFrequency = frequency;
         this.mShakingAmplitude = amplitude;
         this.mInitialShakingFrequency = frequency;
         this.mInitialShakingAmplitude = amplitude;
         this.mLifeTimeMilliseconds = 0;
         this.mShakingAngle = 0;
         this.mDurationMilliSeconds = duration;
      }
      
      public function shake(camera:LevelCamera, deltaTimeMilliSeconds:Number) : Boolean
      {
         var shake:Number = NaN;
         var cameraShakeX:Number = NaN;
         var cameraShakeY:Number = NaN;
         if(this.mLifeTimeMilliseconds < this.mDurationMilliSeconds)
         {
            this.mLifeTimeMilliseconds += deltaTimeMilliSeconds;
            this.mShakingAngle += this.mShakingFrequency;
            shake = deltaTimeMilliSeconds / FRAME_TIME_MILLISECONDS * this.mShakingAmplitude;
            cameraShakeX = shake * Math.sin(Math.PI / 4 + this.mShakingAngle * 2 * Math.PI);
            cameraShakeY = shake * (Math.random() - 0.5);
            this.mShakingAmplitude -= deltaTimeMilliSeconds / this.mDurationMilliSeconds * this.mInitialShakingAmplitude;
            this.mShakingFrequency -= deltaTimeMilliSeconds / this.mDurationMilliSeconds * this.mInitialShakingFrequency;
            camera.setOffset(cameraShakeX,cameraShakeY);
            camera.updateScrollingValues();
            return true;
         }
         return false;
      }
      
      private function get timeRemaining() : Number
      {
         return this.mDurationMilliSeconds - this.mLifeTimeMilliseconds;
      }
      
      public function upgradeToFrequency(frequency:Number) : void
      {
         var diff:Number = frequency - (this.mShakingFrequency < 0 ? 0 : this.mShakingFrequency);
         if(diff > 0)
         {
            this.mShakingFrequency += diff;
         }
      }
      
      public function upgradeToAmplitude(amplitude:Number) : void
      {
         var diff:Number = amplitude - (this.mShakingAmplitude < 0 ? 0 : this.mShakingAmplitude);
         if(diff > 0)
         {
            this.mShakingAmplitude += diff;
         }
      }
      
      public function upgradeTime(durationMilliSeconds:Number) : void
      {
         var diff:Number = durationMilliSeconds - this.timeRemaining;
         if(diff > 0)
         {
            this.mDurationMilliSeconds += diff;
         }
      }
   }
}
