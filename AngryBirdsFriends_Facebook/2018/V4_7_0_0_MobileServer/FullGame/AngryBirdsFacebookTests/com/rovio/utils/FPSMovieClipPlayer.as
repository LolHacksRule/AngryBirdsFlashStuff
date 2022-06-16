package com.rovio.utils
{
   import flash.display.MovieClip;
   import flash.utils.getTimer;
   
   public class FPSMovieClipPlayer
   {
       
      
      private var mTarget:MovieClip;
      
      private var mFps:Number;
      
      private var mInitTime:Number;
      
      private var mLifeTime:Number = 0;
      
      private var mTotalFrames:int;
      
      private var mMsPerFrame:Number;
      
      private var mTotalLength:Number;
      
      public function FPSMovieClipPlayer(target:MovieClip, fps:Number)
      {
         super();
         this.mTarget = target;
         this.mFps = fps;
         this.mInitTime = getTimer();
         this.mTotalFrames = target.totalFrames;
         this.mMsPerFrame = Math.ceil(1 / fps * 1000);
         this.mTotalLength = this.mMsPerFrame * this.mTotalFrames;
         this.update(0);
      }
      
      public function update(deltaTime:Number) : void
      {
         this.mLifeTime += deltaTime;
         while(this.mLifeTime > this.mTotalLength)
         {
            this.mLifeTime -= this.mTotalLength;
         }
         var targetFrame:int = this.mLifeTime / this.mMsPerFrame;
         this.mTarget.gotoAndStop(targetFrame + 1);
      }
   }
}
