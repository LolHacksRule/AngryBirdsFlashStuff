package starling.animation
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class DelayedCall extends EventDispatcher implements IAnimatable
   {
       
      
      private var mCurrentTime:Number;
      
      private var mTotalTime:Number;
      
      private var mCall:Function;
      
      private var mArgs:Array;
      
      private var mRepeatCount:int;
      
      public function DelayedCall(call:Function, delay:Number, args:Array = null)
      {
         super();
         this.reset(call,delay,args);
      }
      
      public function reset(call:Function, delay:Number, args:Array = null) : DelayedCall
      {
         this.mCurrentTime = 0;
         this.mTotalTime = Math.max(delay,0.0001);
         this.mCall = call;
         this.mArgs = args;
         this.mRepeatCount = 1;
         return this;
      }
      
      public function advanceTime(time:Number) : void
      {
         var previousTime:Number = this.mCurrentTime;
         this.mCurrentTime = Math.min(this.mTotalTime,this.mCurrentTime + time);
         if(previousTime < this.mTotalTime && this.mCurrentTime >= this.mTotalTime)
         {
            this.mCall.apply(null,this.mArgs);
            if(this.mRepeatCount == 0 || this.mRepeatCount > 1)
            {
               if(this.mRepeatCount > 0)
               {
                  this.mRepeatCount = this.mRepeatCount - 1;
               }
               this.mCurrentTime = 0;
               this.advanceTime(previousTime + time - this.mTotalTime);
            }
            else
            {
               dispatchEventWith(Event.REMOVE_FROM_JUGGLER);
            }
         }
      }
      
      public function get isComplete() : Boolean
      {
         return this.mRepeatCount == 1 && this.mCurrentTime >= this.mTotalTime;
      }
      
      public function get totalTime() : Number
      {
         return this.mTotalTime;
      }
      
      public function get currentTime() : Number
      {
         return this.mCurrentTime;
      }
      
      public function get repeatCount() : int
      {
         return this.mRepeatCount;
      }
      
      public function set repeatCount(value:int) : void
      {
         this.mRepeatCount = value;
      }
   }
}
