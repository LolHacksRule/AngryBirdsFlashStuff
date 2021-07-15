package com.rovio.states.transitions
{
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class AbstractTransition extends EventDispatcher implements ITransition
   {
      
      protected static const DELTA_TIME_MAX_MILLI_SECONDS:Number = 500;
       
      
      protected var mAnimations:Vector.<MovieClip>;
      
      protected var mRunnableAnimations:Vector.<MovieClip>;
      
      protected var mStopAnimation:Boolean = false;
      
      protected var mWaitForAnimationsToFinish:Boolean = false;
      
      protected var mIsRunning:Boolean = false;
      
      protected var mTransitionData:TransitionData;
      
      private var mStage:Stage;
      
      public function AbstractTransition(param1:Vector.<MovieClip>, param2:Stage)
      {
         super();
         this.mAnimations = param1;
         this.stage = param2;
      }
      
      public function get stage() : Stage
      {
         return this.mStage;
      }
      
      public function set stage(param1:Stage) : void
      {
         this.mStage = param1;
      }
      
      public function get isRunning() : Boolean
      {
         return this.mIsRunning;
      }
      
      public function dispose() : void
      {
         this.stop(false);
         this.mAnimations.length = 0;
         this.mRunnableAnimations.length = 0;
         this.mIsRunning = false;
      }
      
      protected function update(param1:Number) : void
      {
         throw "--#AbstractStateTransition[update]::m_invIB method must be implemented";
      }
      
      public final function run(param1:Number) : void
      {
         if(!this.mIsRunning)
         {
            return;
         }
         if(param1 > DELTA_TIME_MAX_MILLI_SECONDS)
         {
            param1 = DELTA_TIME_MAX_MILLI_SECONDS;
         }
         this.update(param1);
      }
      
      public function stop(param1:Boolean = false) : void
      {
         if(!this.mIsRunning)
         {
            dispatchEvent(new Event(Event.COMPLETE));
            return;
         }
         this.mWaitForAnimationsToFinish = param1;
         this.mStopAnimation = true;
      }
      
      public function start(param1:TransitionData) : void
      {
         this.mIsRunning = true;
         this.mStopAnimation = false;
         this.mTransitionData = param1;
         this.mRunnableAnimations = new Vector.<MovieClip>();
         var _loc2_:int = this.mAnimations.length - 1;
         while(_loc2_ >= 0)
         {
            this.startAnimation(this.mAnimations[_loc2_]);
            _loc2_--;
         }
      }
      
      protected function startAnimation(param1:MovieClip) : void
      {
         if(this.hasLabelType(param1,this.mTransitionData.startLabel))
         {
            param1.gotoAndStop(this.mTransitionData.startLabel);
            this.mRunnableAnimations.push(param1);
         }
         else if(this.hasLabelType(param1,this.mTransitionData.defaultStartLabel))
         {
            param1.gotoAndStop(this.mTransitionData.defaultStartLabel);
            this.mRunnableAnimations.push(param1);
         }
      }
      
      protected function shouldStopAnimation(param1:MovieClip, param2:Boolean = false) : Boolean
      {
         if(param1.currentFrame >= param1.totalFrames)
         {
            return true;
         }
         if(param1.currentFrameLabel)
         {
            if(param1.currentFrameLabel.indexOf(this.mTransitionData.endLabel) == 0)
            {
               return true;
            }
            if(param2 && (this.mTransitionData.exitLabel && param1.currentFrameLabel.indexOf(this.mTransitionData.exitLabel) == 0))
            {
               return true;
            }
         }
         return false;
      }
      
      protected function hasLabelType(param1:MovieClip, param2:String) : Boolean
      {
         var _loc4_:FrameLabel = null;
         if(param2 == "")
         {
            return false;
         }
         var _loc3_:Array = param1.currentLabels;
         for each(_loc4_ in _loc3_)
         {
            if(_loc4_.name.indexOf(param2) == 0)
            {
               return true;
            }
         }
         return false;
      }
      
      public function hide() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.mRunnableAnimations.length)
         {
            this.mRunnableAnimations[_loc1_].visible = false;
            _loc1_++;
         }
      }
      
      public function show() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.mRunnableAnimations.length)
         {
            this.mRunnableAnimations[_loc1_].visible = true;
            _loc1_++;
         }
      }
   }
}
