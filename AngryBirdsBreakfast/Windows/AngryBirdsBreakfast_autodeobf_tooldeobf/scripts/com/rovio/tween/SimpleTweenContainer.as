package com.rovio.tween
{
   public class SimpleTweenContainer extends SimpleTweenBase implements IManagedTween
   {
       
      
      private var mTweens:Vector.<IManagedTween>;
      
      private var mIsParallel:Boolean = true;
      
      private var mSequenceTweenIndex:int = 0;
      
      public function SimpleTweenContainer(param1:Array, param2:Boolean)
      {
         var _loc3_:IManagedTween = null;
         this.mTweens = new Vector.<IManagedTween>();
         super();
         for each(_loc3_ in param1)
         {
            this.mTweens.push(_loc3_);
         }
         this.mIsParallel = param2;
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc1_:IManagedTween = null;
         for each(_loc1_ in this.mTweens)
         {
            if(!_loc1_.isCompleted)
            {
               return false;
            }
         }
         return true;
      }
      
      override public function get isPaused() : Boolean
      {
         var _loc1_:IManagedTween = null;
         for each(_loc1_ in this.mTweens)
         {
            if(!_loc1_.isPaused)
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
         var _loc1_:IManagedTween = null;
         while(this.mTweens.length > 0)
         {
            _loc1_ = this.mTweens.shift();
            _loc1_.dispose();
         }
         super.dispose();
      }
      
      public function stop() : void
      {
         var _loc1_:IManagedTween = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.mTweens)
            {
               _loc1_.stop();
            }
         }
      }
      
      public function gotoEndAndStop() : void
      {
         var _loc1_:IManagedTween = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.mTweens)
            {
               _loc1_.gotoEndAndStop();
            }
         }
      }
      
      override public function pause() : void
      {
         var _loc1_:IManagedTween = null;
         super.pause();
         for each(_loc1_ in this.mTweens)
         {
            _loc1_.pause();
         }
      }
      
      override public function play() : void
      {
         var _loc1_:IManagedTween = null;
         super.play();
         for each(_loc1_ in this.mTweens)
         {
            _loc1_.play();
         }
      }
      
      public function restart() : void
      {
         var _loc2_:IManagedTween = null;
         mTimeMilliSeconds = -mDelaySeconds;
         this.mSequenceTweenIndex = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.mTweens.length)
         {
            _loc2_ = this.mTweens[_loc1_];
            _loc2_.restart();
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:IManagedTween = null;
         if(!updateTime(param1))
         {
            return;
         }
         var _loc2_:int = this.activeTweenCount;
         var _loc3_:int = this.firstActiveTweenIndex;
         var _loc4_:int = _loc3_;
         while(_loc4_ < _loc3_ + _loc2_)
         {
            (_loc5_ = this.mTweens[_loc4_]).update(param1);
            this.checkAndHandleTweenCompleting(_loc5_);
            _loc4_++;
         }
         this.checkCompleting();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function checkAndHandleTweenCompleting(param1:IManagedTween) : void
      {
         if(param1.isCompleted)
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
