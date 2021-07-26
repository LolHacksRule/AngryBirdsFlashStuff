package com.rovio.tween
{
   public class SimpleTweenBase
   {
       
      
      protected var mTimeMilliSeconds:Number = 0.0;
      
      protected var mDelaySeconds:Number = 0.0;
      
      private var mIsPaused:Boolean = true;
      
      protected var mOnComplete:Function = null;
      
      protected var mOnStart:Function = null;
      
      protected var mCatchErrors:Boolean = true;
      
      protected var mAutomaticCleanup:Boolean = true;
      
      protected var mStopOnComplete:Boolean = true;
      
      public function SimpleTweenBase()
      {
         super();
      }
      
      public function dispose() : void
      {
         this.mOnComplete = null;
         this.mOnStart = null;
      }
      
      public function set delay(delaySeconds:Number) : void
      {
         this.mDelaySeconds = delaySeconds;
         if(delaySeconds < 0)
         {
            this.mDelaySeconds = 0;
         }
         this.mTimeMilliSeconds = -this.mDelaySeconds * 1000;
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return this.mIsPaused;
      }
      
      public function pause() : void
      {
         this.mIsPaused = true;
      }
      
      public function play() : void
      {
         this.mIsPaused = false;
      }
      
      public function set catchErrors(catchErrors:Boolean) : void
      {
         this.mCatchErrors = catchErrors;
      }
      
      public function set automaticCleanup(automaticCleanup:Boolean) : void
      {
         this.mAutomaticCleanup = automaticCleanup;
      }
      
      public function get automaticCleanup() : Boolean
      {
         return this.mAutomaticCleanup;
      }
      
      public function set onComplete(onComplete:Function) : void
      {
         if(!this.isCompleted)
         {
            this.mOnComplete = onComplete;
         }
      }
      
      public function set onStart(onStart:Function) : void
      {
         if(this.mTimeMilliSeconds <= 0)
         {
            this.mOnStart = onStart;
         }
      }
      
      public function set stopOnComplete(stopOnComplete:Boolean) : void
      {
         this.mStopOnComplete = stopOnComplete;
      }
      
      public function get stopOnComplete() : Boolean
      {
         return this.mStopOnComplete;
      }
      
      protected function updateTime(deltaTime:Number) : Boolean
      {
         if(this.mIsPaused || this.isCompleted)
         {
            return false;
         }
         this.mTimeMilliSeconds += deltaTime;
         if(this.mTimeMilliSeconds <= 0)
         {
            return false;
         }
         if(this.mTimeMilliSeconds <= deltaTime)
         {
            if(this.mOnStart != null)
            {
               this.mOnStart();
               this.mOnStart = null;
            }
         }
         return true;
      }
   }
}
