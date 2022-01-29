package com.rovio.tween
{
   public class SimpleTween extends SimpleTweenBase implements IManagedTween
   {
       
      
      private var mLifeTime:Number;
      
      private var mIsCompleted:Boolean;
      
      private var mEasing:Function;
      
      private var mTarget:Object;
      
      private var mOriginal:Object;
      
      private var mChange:Object;
      
      private var mExtraDelay:Number = 0.0;
      
      public function SimpleTween(target:Object, to:Object, from:Object, time:Number, easing:Function)
      {
         super();
         if(time <= 0)
         {
            time = 0;
         }
         this.mLifeTime = time * 1000;
         this.mEasing = easing;
         mTimeMilliSeconds = 0;
         this.mIsCompleted = false;
         to = this.validateAttributes(to,target);
         if(from != null)
         {
            from = this.validateAttributes(from,to);
            this.updateAttributeDeltas(to,from);
         }
         else
         {
            this.updateAttributeDeltas(to,target);
         }
         this.mTarget = target;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.mIsCompleted;
      }
      
      public function set extraDelay(extraDelay:Number) : void
      {
         this.mExtraDelay = extraDelay;
      }
      
      public function get extraDelay() : Number
      {
         return this.mExtraDelay;
      }
      
      override public function dispose() : void
      {
         this.stop();
         this.mTarget = null;
         this.mChange = null;
         this.mOriginal = null;
         super.dispose();
      }
      
      public function restart() : void
      {
         mTimeMilliSeconds = -mDelaySeconds;
         this.mIsCompleted = false;
      }
      
      private function validateAttributes(checked:Object, valid:Object) : Object
      {
         var attribute:* = undefined;
         var result:Object = {};
         for(attribute in checked)
         {
            if(valid[attribute] != null && checked[attribute] is Number && valid[attribute] is Number)
            {
               result[attribute] = checked[attribute];
            }
         }
         return result;
      }
      
      private function updateAttributeDeltas(to:Object, from:Object) : void
      {
         var attribute:* = undefined;
         var result:Object = {};
         var original:Object = {};
         for(attribute in to)
         {
            result[attribute] = to[attribute] - from[attribute];
            original[attribute] = from[attribute];
         }
         this.mChange = result;
         this.mOriginal = original;
      }
      
      public function stop() : void
      {
         if(!this.mIsCompleted)
         {
            this.mIsCompleted = true;
            mOnComplete = null;
            mTimeMilliSeconds = this.mLifeTime;
         }
      }
      
      public function gotoEndAndStop() : void
      {
         if(!this.mIsCompleted)
         {
            this.mIsCompleted = true;
            mTimeMilliSeconds = this.mLifeTime;
            this.updateAttributes();
         }
      }
      
      public function update(deltaTime:Number) : void
      {
         if(!updateTime(deltaTime))
         {
            return;
         }
         if(mTimeMilliSeconds >= this.mLifeTime + this.mExtraDelay * 1000)
         {
            if(mStopOnComplete)
            {
               mTimeMilliSeconds = this.mLifeTime;
               this.mIsCompleted = true;
            }
            else
            {
               mTimeMilliSeconds = 0;
            }
         }
         this.updateAttributes();
         this.checkCompleting();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function updateAttributes() : void
      {
         var timeValue:Number = NaN;
         var attribute:* = undefined;
         try
         {
            timeValue = this.getTimeValue();
            for(attribute in this.mChange)
            {
               this.mTarget[attribute] = this.mOriginal[attribute] + this.mChange[attribute] * timeValue;
            }
         }
         catch(e:Error)
         {
            mIsCompleted = true;
            if(!mCatchErrors)
            {
               throw e;
            }
         }
      }
      
      private function checkCompleting() : void
      {
         if(this.isCompleted && mOnComplete != null)
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
      
      private function getTimeValue() : Number
      {
         if(this.mLifeTime <= 0)
         {
            return 1;
         }
         var time:Number = Math.max(0,mTimeMilliSeconds);
         time = Math.min(time,this.mLifeTime);
         return this.mEasing(time,0,1,this.mLifeTime);
      }
   }
}
