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
      
      public function AbstractTransition(animations:Vector.<MovieClip>, stage:Stage)
      {
         super();
         this.mAnimations = animations;
         this.stage = stage;
      }
      
      public function get stage() : Stage
      {
         return this.mStage;
      }
      
      public function set stage(value:Stage) : void
      {
         this.mStage = value;
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
      
      protected function update(deltaTimeMilliSeconds:Number) : void
      {
         throw "--#AbstractStateTransition[update]:: method must be implemented";
      }
      
      public final function run(deltaTimeMilliSeconds:Number) : void
      {
         if(!this.mIsRunning)
         {
            return;
         }
         if(deltaTimeMilliSeconds > DELTA_TIME_MAX_MILLI_SECONDS)
         {
            deltaTimeMilliSeconds = DELTA_TIME_MAX_MILLI_SECONDS;
         }
         this.update(deltaTimeMilliSeconds);
      }
      
      public function stop(waitForAnimationToComplete:Boolean = false) : void
      {
         if(!this.mIsRunning)
         {
            dispatchEvent(new Event(Event.COMPLETE));
            return;
         }
         this.mWaitForAnimationsToFinish = waitForAnimationToComplete;
         this.mStopAnimation = true;
      }
      
      public function start(data:TransitionData) : void
      {
         this.mIsRunning = true;
         this.mStopAnimation = false;
         this.mTransitionData = data;
         this.mRunnableAnimations = new Vector.<MovieClip>();
         for(var i:int = this.mAnimations.length - 1; i >= 0; i--)
         {
            this.startAnimation(this.mAnimations[i]);
         }
      }
      
      protected function startAnimation(mc:MovieClip) : void
      {
         if(this.hasLabelType(mc,this.mTransitionData.startLabel))
         {
            mc.gotoAndStop(this.mTransitionData.startLabel);
            this.mRunnableAnimations.push(mc);
         }
         else if(this.hasLabelType(mc,this.mTransitionData.defaultStartLabel))
         {
            mc.gotoAndStop(this.mTransitionData.defaultStartLabel);
            this.mRunnableAnimations.push(mc);
         }
      }
      
      protected function shouldStopAnimation(mc:MovieClip, useExitLabels:Boolean = false) : Boolean
      {
         if(mc.currentFrame >= mc.totalFrames)
         {
            return true;
         }
         if(mc.currentFrameLabel)
         {
            if(mc.currentFrameLabel.indexOf(this.mTransitionData.endLabel) == 0)
            {
               return true;
            }
            if(useExitLabels && (this.mTransitionData.exitLabel && mc.currentFrameLabel.indexOf(this.mTransitionData.exitLabel) == 0))
            {
               return true;
            }
         }
         return false;
      }
      
      protected function hasLabelType(mc:MovieClip, targetLabelBase:String) : Boolean
      {
         var label:FrameLabel = null;
         if(targetLabelBase == "")
         {
            return false;
         }
         var labels:Array = mc.currentLabels;
         for each(label in labels)
         {
            if(label.name.indexOf(targetLabelBase) == 0)
            {
               return true;
            }
         }
         return false;
      }
      
      public function hide() : void
      {
         for(var i:int = 0; i < this.mRunnableAnimations.length; i++)
         {
            this.mRunnableAnimations[i].visible = false;
         }
      }
      
      public function show() : void
      {
         for(var i:int = 0; i < this.mRunnableAnimations.length; i++)
         {
            this.mRunnableAnimations[i].visible = true;
         }
      }
   }
}
