package com.rovio.states.transitions
{
   import flash.display.MovieClip;
   import flash.display.Stage;
   import flash.events.Event;
   
   public class BasicTransition extends AbstractTransition
   {
      
      public static const DEFAULT_FRAMERATE:Number = 1000 / 24;
       
      
      protected var mFrameTimeMilliSeconds:Number;
      
      protected var mMillisecondsFromLastUpdate:int;
      
      protected var mFinishedAnimationCount:int;
      
      protected var mAnimationCount:int;
      
      protected var mStageQuality:String = "best";
      
      public function BasicTransition(param1:Vector.<MovieClip>, param2:Stage, param3:Number = 41.666666666666664)
      {
         super(param1,param2);
         this.mFinishedAnimationCount = 0;
         this.mAnimationCount = param1.length;
         this.mFrameTimeMilliSeconds = param3;
         this.mMillisecondsFromLastUpdate = 0;
      }
      
      protected function runAnimation(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = false;
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc2_:MovieClip = mRunnableAnimations[param1];
         if(mStopAnimation && !mWaitForAnimationsToFinish)
         {
            _loc3_ = true;
         }
         else
         {
            _loc3_ = shouldStopAnimation(_loc2_,mStopAnimation);
         }
         if(_loc3_)
         {
            if(_loc4_ = mTransitionData.loop && !mStopAnimation)
            {
               _loc5_ = mTransitionData.defaultStartLabel != "" ? mTransitionData.defaultStartLabel : "";
               _loc6_ = mTransitionData.startLabel != "" ? mTransitionData.startLabel : _loc5_;
               if(!hasLabelType(_loc2_,_loc6_))
               {
                  _loc6_ = _loc5_;
               }
               if(_loc6_ != "")
               {
                  _loc2_.gotoAndStop(_loc6_);
               }
               else
               {
                  _loc2_.gotoAndStop(1);
               }
            }
            else
            {
               mRunnableAnimations.splice(param1,1);
               ++this.mFinishedAnimationCount;
            }
         }
         else
         {
            _loc2_.nextFrame();
         }
      }
      
      protected function runAnimations() : void
      {
         var _loc1_:int = mRunnableAnimations.length - 1;
         while(_loc1_ >= 0)
         {
            this.runAnimation(_loc1_);
            _loc1_--;
         }
      }
      
      override protected function update(param1:Number) : void
      {
         this.mMillisecondsFromLastUpdate += param1;
         while(this.mMillisecondsFromLastUpdate >= this.mFrameTimeMilliSeconds)
         {
            this.runAnimations();
            this.mMillisecondsFromLastUpdate -= this.mFrameTimeMilliSeconds;
            if(this.mFinishedAnimationCount >= this.mAnimationCount)
            {
               if(stage && mTransitionData.stageQuality != "")
               {
                  stage.quality = this.mStageQuality;
               }
               mIsRunning = false;
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
      }
      
      override public function start(param1:TransitionData) : void
      {
         super.start(param1);
         this.mAnimationCount = mRunnableAnimations.length;
         this.mFinishedAnimationCount = 0;
         if(stage && param1.stageQuality != "")
         {
            this.mStageQuality = stage.quality;
            stage.quality = param1.stageQuality;
         }
      }
   }
}
