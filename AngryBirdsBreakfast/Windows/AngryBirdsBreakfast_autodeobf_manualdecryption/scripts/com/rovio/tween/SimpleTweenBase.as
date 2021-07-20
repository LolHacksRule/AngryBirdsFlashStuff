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
      
      public function set delay(param1:Number) : void
      {
         this.mDelaySeconds = param1;
         if(param1 < 0)
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
      
      public function set catchErrors(param1:Boolean) : void
      {
         this.mCatchErrors = param1;
      }
      
      public function set automaticCleanup(param1:Boolean) : void
      {
         this.mAutomaticCleanup = param1;
      }
      
      public function get automaticCleanup() : Boolean
      {
         return this.mAutomaticCleanup;
      }
      
      public function set onComplete(param1:Function) : void
      {
         if(!this.isCompleted)
         {
            this.mOnComplete = param1;
         }
      }
      
      public function set onStart(param1:Function) : void
      {
         if(this.mTimeMilliSeconds <= 0)
         {
            this.mOnStart = param1;
         }
      }
      
      public function set stopOnComplete(param1:Boolean) : void
      {
         this.mStopOnComplete = param1;
      }
      
      public function get stopOnComplete() : Boolean
      {
         return this.mStopOnComplete;
      }
      
      protected function updateTime(param1:Number) : Boolean
      {
         if(this.mIsPaused || this.isCompleted)
         {
            return false;
         }
         this.mTimeMilliSeconds += param1;
         if(this.mTimeMilliSeconds <= 0)
         {
            return false;
         }
         if(this.mTimeMilliSeconds <= param1)
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
