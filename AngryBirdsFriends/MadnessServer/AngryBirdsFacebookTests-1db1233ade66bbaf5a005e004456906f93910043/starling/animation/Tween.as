package starling.animation
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class Tween extends EventDispatcher implements IAnimatable
   {
      
      private static var sTweenPool:Vector.<Tween> = new Vector.<Tween>(0);
       
      
      private var mTarget:Object;
      
      private var mTransitionFunc:Function;
      
      private var mTransitionName:String;
      
      private var mProperties:Vector.<String>;
      
      private var mStartValues:Vector.<Number>;
      
      private var mEndValues:Vector.<Number>;
      
      private var mOnStart:Function;
      
      private var mOnUpdate:Function;
      
      private var mOnRepeat:Function;
      
      private var mOnComplete:Function;
      
      private var mOnStartArgs:Array;
      
      private var mOnUpdateArgs:Array;
      
      private var mOnRepeatArgs:Array;
      
      private var mOnCompleteArgs:Array;
      
      private var mTotalTime:Number;
      
      private var mCurrentTime:Number;
      
      private var mDelay:Number;
      
      private var mRoundToInt:Boolean;
      
      private var mNextTween:Tween;
      
      private var mRepeatCount:int;
      
      private var mRepeatDelay:Number;
      
      private var mReverse:Boolean;
      
      private var mCurrentCycle:int;
      
      public function Tween(target:Object, time:Number, transition:Object = "linear")
      {
         super();
         this.reset(target,time,transition);
      }
      
      static function fromPool(target:Object, time:Number, transition:Object = "linear") : Tween
      {
         if(sTweenPool.length)
         {
            return sTweenPool.pop().reset(target,time,transition);
         }
         return new Tween(target,time,transition);
      }
      
      static function toPool(tween:Tween) : void
      {
         tween.mOnStart = tween.mOnUpdate = tween.mOnRepeat = tween.mOnComplete = null;
         tween.mOnStartArgs = tween.mOnUpdateArgs = tween.mOnRepeatArgs = tween.mOnCompleteArgs = null;
         tween.mTarget = null;
         tween.mTransitionFunc = null;
         tween.removeEventListeners();
         sTweenPool.push(tween);
      }
      
      public function reset(target:Object, time:Number, transition:Object = "linear") : Tween
      {
         this.mTarget = target;
         this.mCurrentTime = 0;
         this.mTotalTime = Math.max(0.0001,time);
         this.mDelay = this.mRepeatDelay = 0;
         this.mOnStart = this.mOnUpdate = this.mOnComplete = null;
         this.mOnStartArgs = this.mOnUpdateArgs = this.mOnCompleteArgs = null;
         this.mRoundToInt = this.mReverse = false;
         this.mRepeatCount = 1;
         this.mCurrentCycle = -1;
         if(transition is String)
         {
            this.transition = transition as String;
         }
         else
         {
            if(!(transition is Function))
            {
               throw new ArgumentError("Transition must be either a string or a function");
            }
            this.transitionFunc = transition as Function;
         }
         if(this.mProperties)
         {
            this.mProperties.length = 0;
         }
         else
         {
            this.mProperties = new Vector.<String>(0);
         }
         if(this.mStartValues)
         {
            this.mStartValues.length = 0;
         }
         else
         {
            this.mStartValues = new Vector.<Number>(0);
         }
         if(this.mEndValues)
         {
            this.mEndValues.length = 0;
         }
         else
         {
            this.mEndValues = new Vector.<Number>(0);
         }
         return this;
      }
      
      public function animate(property:String, targetValue:Number) : void
      {
         if(this.mTarget == null)
         {
            return;
         }
         this.mProperties.push(property);
         this.mStartValues.push(Number.NaN);
         this.mEndValues.push(targetValue);
      }
      
      public function scaleTo(factor:Number) : void
      {
         this.animate("scaleX",factor);
         this.animate("scaleY",factor);
      }
      
      public function moveTo(x:Number, y:Number) : void
      {
         this.animate("x",x);
         this.animate("y",y);
      }
      
      public function fadeTo(alpha:Number) : void
      {
         this.animate("alpha",alpha);
      }
      
      public function advanceTime(time:Number) : void
      {
         var i:int = 0;
         var startValue:Number = NaN;
         var endValue:Number = NaN;
         var delta:Number = NaN;
         var transitionValue:Number = NaN;
         var currentValue:Number = NaN;
         var onComplete:Function = null;
         var onCompleteArgs:Array = null;
         if(time == 0 || this.mRepeatCount == 1 && this.mCurrentTime == this.mTotalTime)
         {
            return;
         }
         var previousTime:Number = this.mCurrentTime;
         var restTime:Number = this.mTotalTime - this.mCurrentTime;
         var carryOverTime:Number = time > restTime ? Number(time - restTime) : Number(0);
         this.mCurrentTime = Math.min(this.mTotalTime,this.mCurrentTime + time);
         if(this.mCurrentTime <= 0)
         {
            return;
         }
         if(this.mCurrentCycle < 0 && previousTime <= 0 && this.mCurrentTime > 0)
         {
            ++this.mCurrentCycle;
            if(this.mOnStart != null)
            {
               this.mOnStart.apply(null,this.mOnStartArgs);
            }
         }
         var ratio:Number = this.mCurrentTime / this.mTotalTime;
         var reversed:Boolean = this.mReverse && this.mCurrentCycle % 2 == 1;
         var numProperties:int = this.mStartValues.length;
         for(i = 0; i < numProperties; i++)
         {
            if(isNaN(this.mStartValues[i]))
            {
               this.mStartValues[i] = this.mTarget[this.mProperties[i]] as Number;
            }
            startValue = this.mStartValues[i];
            endValue = this.mEndValues[i];
            delta = endValue - startValue;
            transitionValue = !!reversed ? Number(this.mTransitionFunc(1 - ratio)) : Number(this.mTransitionFunc(ratio));
            currentValue = startValue + transitionValue * delta;
            if(this.mRoundToInt)
            {
               currentValue = Math.round(currentValue);
            }
            this.mTarget[this.mProperties[i]] = currentValue;
         }
         if(this.mOnUpdate != null)
         {
            this.mOnUpdate.apply(null,this.mOnUpdateArgs);
         }
         if(previousTime < this.mTotalTime && this.mCurrentTime >= this.mTotalTime)
         {
            if(this.mRepeatCount == 0 || this.mRepeatCount > 1)
            {
               this.mCurrentTime = -this.mRepeatDelay;
               ++this.mCurrentCycle;
               if(this.mRepeatCount > 1)
               {
                  --this.mRepeatCount;
               }
               if(this.mOnRepeat != null)
               {
                  this.mOnRepeat.apply(null,this.mOnRepeatArgs);
               }
            }
            else
            {
               onComplete = this.mOnComplete;
               onCompleteArgs = this.mOnCompleteArgs;
               dispatchEventWith(Event.REMOVE_FROM_JUGGLER);
               if(onComplete != null)
               {
                  onComplete.apply(null,onCompleteArgs);
               }
            }
         }
         if(carryOverTime)
         {
            this.advanceTime(carryOverTime);
         }
      }
      
      public function get isComplete() : Boolean
      {
         return this.mCurrentTime >= this.mTotalTime && this.mRepeatCount == 1;
      }
      
      public function get target() : Object
      {
         return this.mTarget;
      }
      
      public function get transition() : String
      {
         return this.mTransitionName;
      }
      
      public function set transition(value:String) : void
      {
         this.mTransitionName = value;
         this.mTransitionFunc = Transitions.getTransition(value);
         if(this.mTransitionFunc == null)
         {
            throw new ArgumentError("Invalid transiton: " + value);
         }
      }
      
      public function get transitionFunc() : Function
      {
         return this.mTransitionFunc;
      }
      
      public function set transitionFunc(value:Function) : void
      {
         this.mTransitionName = "custom";
         this.mTransitionFunc = value;
      }
      
      public function get totalTime() : Number
      {
         return this.mTotalTime;
      }
      
      public function get currentTime() : Number
      {
         return this.mCurrentTime;
      }
      
      public function get delay() : Number
      {
         return this.mDelay;
      }
      
      public function set delay(value:Number) : void
      {
         this.mCurrentTime = this.mCurrentTime + this.mDelay - value;
         this.mDelay = value;
      }
      
      public function get repeatCount() : int
      {
         return this.mRepeatCount;
      }
      
      public function set repeatCount(value:int) : void
      {
         this.mRepeatCount = value;
      }
      
      public function get repeatDelay() : Number
      {
         return this.mRepeatDelay;
      }
      
      public function set repeatDelay(value:Number) : void
      {
         this.mRepeatDelay = value;
      }
      
      public function get reverse() : Boolean
      {
         return this.mReverse;
      }
      
      public function set reverse(value:Boolean) : void
      {
         this.mReverse = value;
      }
      
      public function get roundToInt() : Boolean
      {
         return this.mRoundToInt;
      }
      
      public function set roundToInt(value:Boolean) : void
      {
         this.mRoundToInt = value;
      }
      
      public function get onStart() : Function
      {
         return this.mOnStart;
      }
      
      public function set onStart(value:Function) : void
      {
         this.mOnStart = value;
      }
      
      public function get onUpdate() : Function
      {
         return this.mOnUpdate;
      }
      
      public function set onUpdate(value:Function) : void
      {
         this.mOnUpdate = value;
      }
      
      public function get onRepeat() : Function
      {
         return this.mOnRepeat;
      }
      
      public function set onRepeat(value:Function) : void
      {
         this.mOnRepeat = value;
      }
      
      public function get onComplete() : Function
      {
         return this.mOnComplete;
      }
      
      public function set onComplete(value:Function) : void
      {
         this.mOnComplete = value;
      }
      
      public function get onStartArgs() : Array
      {
         return this.mOnStartArgs;
      }
      
      public function set onStartArgs(value:Array) : void
      {
         this.mOnStartArgs = value;
      }
      
      public function get onUpdateArgs() : Array
      {
         return this.mOnUpdateArgs;
      }
      
      public function set onUpdateArgs(value:Array) : void
      {
         this.mOnUpdateArgs = value;
      }
      
      public function get onRepeatArgs() : Array
      {
         return this.mOnRepeatArgs;
      }
      
      public function set onRepeatArgs(value:Array) : void
      {
         this.mOnRepeatArgs = value;
      }
      
      public function get onCompleteArgs() : Array
      {
         return this.mOnCompleteArgs;
      }
      
      public function set onCompleteArgs(value:Array) : void
      {
         this.mOnCompleteArgs = value;
      }
      
      public function get nextTween() : Tween
      {
         return this.mNextTween;
      }
      
      public function set nextTween(value:Tween) : void
      {
         this.mNextTween = value;
      }
   }
}
