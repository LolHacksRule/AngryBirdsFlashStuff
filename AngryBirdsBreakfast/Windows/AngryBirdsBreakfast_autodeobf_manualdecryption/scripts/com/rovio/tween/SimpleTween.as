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
      
      public function SimpleTween(param1:Object, param2:Object, param3:Object, param4:Number, param5:Function)
      {
         super();
         if(param4 <= 0)
         {
            param4 = 0;
         }
         this.mLifeTime = param4 * 1000;
         this.mEasing = param5;
         mTimeMilliSeconds = 0;
         this.mIsCompleted = false;
         param2 = this.validateAttributes(param2,param1);
         if(param3 != null)
         {
            param3 = this.validateAttributes(param3,param2);
            this.updateAttributeDeltas(param2,param3);
         }
         else
         {
            this.updateAttributeDeltas(param2,param1);
         }
         this.mTarget = param1;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.mIsCompleted;
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
      
      private function validateAttributes(param1:Object, param2:Object) : Object
      {
         var _loc4_:* = undefined;
         var _loc3_:Object = {};
         for(_loc4_ in param1)
         {
            if(param2[_loc4_] != null && param1[_loc4_] is Number && param2[_loc4_] is Number)
            {
               _loc3_[_loc4_] = param1[_loc4_];
            }
         }
         return _loc3_;
      }
      
      private function updateAttributeDeltas(param1:Object, param2:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
            _loc4_[_loc5_] = param2[_loc5_];
         }
         this.mChange = _loc3_;
         this.mOriginal = _loc4_;
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
      
      public function update(param1:Number) : void
      {
         if(!updateTime(param1))
         {
            return;
         }
         if(mTimeMilliSeconds >= this.mLifeTime)
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
         var _loc1_:Number = Math.max(0,mTimeMilliSeconds);
         _loc1_ = Math.min(_loc1_,this.mLifeTime);
         return this.mEasing(_loc1_,0,1,this.mLifeTime);
      }
   }
}
