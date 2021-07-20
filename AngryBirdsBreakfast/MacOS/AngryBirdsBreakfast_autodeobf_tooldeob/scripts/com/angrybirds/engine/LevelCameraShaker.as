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
      
      public function LevelCameraShaker(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.mShakingFrequency = param1;
         this.mShakingAmplitude = param2;
         this.mInitialShakingFrequency = param1;
         this.mInitialShakingAmplitude = param2;
         this.mLifeTimeMilliseconds = 0;
         this.mShakingAngle = 0;
         this.mDurationMilliSeconds = param3;
      }
      
      public function shake(param1:LevelCamera, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.mLifeTimeMilliseconds < this.mDurationMilliSeconds)
         {
            this.mLifeTimeMilliseconds += param2;
            this.mShakingAngle += this.mShakingFrequency;
            _loc3_ = param2 / FRAME_TIME_MILLISECONDS * this.mShakingAmplitude;
            _loc4_ = _loc3_ * Math.sin(Math.PI / 4 + this.mShakingAngle * 2 * Math.PI);
            _loc5_ = _loc3_ * (Math.random() - 0.5);
            this.mShakingAmplitude -= param2 / this.mDurationMilliSeconds * this.mInitialShakingAmplitude;
            this.mShakingFrequency -= param2 / this.mDurationMilliSeconds * this.mInitialShakingFrequency;
            param1.setOffset(_loc4_,_loc5_);
            param1.updateScrollingValues();
            return true;
         }
         return false;
      }
   }
}
