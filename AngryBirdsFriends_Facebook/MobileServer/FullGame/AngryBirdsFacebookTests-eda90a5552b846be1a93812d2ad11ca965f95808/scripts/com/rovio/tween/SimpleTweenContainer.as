package com.rovio.tween
{
   public class SimpleTweenContainer extends SimpleTweenBase implements IManagedTween
   {
       
      
      private var mTweens:Vector.<IManagedTween>;
      
      private var mIsParallel:Boolean = true;
      
      private var mSequenceTweenIndex:int = 0;
      
      public function SimpleTweenContainer(tweens:Array, isParallel:Boolean)
      {
         var tween:IManagedTween = null;
         this.mTweens = new Vector.<IManagedTween>();
         super();
         for each(tween in tweens)
         {
            this.mTweens.push(tween);
         }
         this.mIsParallel = isParallel;
      }
      
      override public function get isCompleted() : Boolean
      {
         var tween:IManagedTween = null;
         for each(tween in this.mTweens)
         {
            if(!tween.isCompleted)
            {
               return false;
            }
         }
         return true;
      }
      
      override public function get isPaused() : Boolean
      {
         var tween:IManagedTween = null;
         for each(tween in this.mTweens)
         {
            if(!tween.isPaused)
            {
               return false;
            }
         }
         return true;
      }
      
      private function get activeTweenCount() : int
      {
         if(this.mIsParallel)
         {
            return this.mTweens.length;
         }
         if(this.mTweens.length > this.mSequenceTweenIndex)
         {
            return 1;
         }
         return 0;
      }
      
      private function get firstActiveTweenIndex() : int
      {
         if(this.mIsParallel)
         {
            return 0;
         }
         return this.mSequenceTweenIndex;
      }
      
      override public function dispose() : void
      {
         var tween:IManagedTween = null;
         while(this.mTweens.length > 0)
         {
            tween = this.mTweens.shift();
            tween.dispose();
         }
         super.dispose();
      }
      
      public function stop() : void
      {
         var tween:IManagedTween = null;
         if(!this.isCompleted)
         {
            for each(tween in this.mTweens)
            {
               tween.stop();
            }
         }
      }
      
      public function gotoEndAndStop() : void
      {
         var tween:IManagedTween = null;
         if(!this.isCompleted)
         {
            for each(tween in this.mTweens)
            {
               tween.gotoEndAndStop();
            }
         }
      }
      
      override public function pause() : void
      {
         var t:IManagedTween = null;
         super.pause();
         for each(t in this.mTweens)
         {
            t.pause();
         }
      }
      
      override public function play() : void
      {
         var t:IManagedTween = null;
         super.play();
         for each(t in this.mTweens)
         {
            t.play();
         }
      }
      
      public function restart() : void
      {
         var tween:IManagedTween = null;
         mTimeMilliSeconds = -mDelaySeconds;
         this.mSequenceTweenIndex = 0;
         for(var i:int = 0; i < this.mTweens.length; i++)
         {
            tween = this.mTweens[i];
            tween.restart();
         }
      }
      
      public function update(deltaTime:Number) : void
      {
         var tween:IManagedTween = null;
         if(!updateTime(deltaTime))
         {
            return;
         }
         var activeCount:int = this.activeTweenCount;
         var startIndex:int = this.firstActiveTweenIndex;
         for(var i:int = startIndex; i < startIndex + activeCount; i++)
         {
            tween = this.mTweens[i];
            tween.update(deltaTime);
            this.checkAndHandleTweenCompleting(tween);
         }
         this.checkCompleting();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function checkAndHandleTweenCompleting(tween:IManagedTween) : void
      {
         if(tween.isCompleted)
         {
            if(!this.mIsParallel)
            {
               ++this.mSequenceTweenIndex;
               if(this.mSequenceTweenIndex < this.mTweens.length)
               {
                  this.mTweens[this.mSequenceTweenIndex].play();
               }
            }
         }
      }
      
      private function checkCompleting() : void
      {
         if(this.isCompleted)
         {
            if(!mStopOnComplete)
            {
               this.restart();
               this.play();
            }
            else if(mOnComplete != null)
            {
               try
               {
                  mOnComplete();
                  mOnComplete = null;
               }
               catch(e:Error)
               {
                  mOnComplete = null;
                  if(!mCatchErrors)
                  {
                     throw e;
                  }
               }
            }
         }
      }
   }
}
