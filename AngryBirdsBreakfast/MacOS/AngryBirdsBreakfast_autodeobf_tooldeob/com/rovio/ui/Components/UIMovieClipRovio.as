package com.rovio.ui.Components
{
   import com.rovio.ui.Components.Helpers.UIComponentInteractiveRovio;
   import com.rovio.events.UIInteractionEvent;
   import flash.display.MovieClip;
   
   public class UIMovieClipRovio extends UIComponentInteractiveRovio
   {
      
      private static const TIME_PER_FRAME:Number = 1000 / 60;
       
      
      private var mCurrentLabel:String;
      
      private var mPreviousLabel:String;
      
      private var mPreviousFrame:int = 0;
      
      private var mCurrentFrame:int = 0;
      
      private var mTimePassed:Number = 0;
      
      private var mIsPlaying:Boolean = false;
      
      public function UIMovieClipRovio(param1:XML, param2:UIContainerRovio, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : UIInteractionEvent
      {
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function playByTime(param1:Number) : String
      {
         var _loc2_:String = null;
         this.mTimePassed += param1;
         this.mCurrentFrame = this.mTimePassed / TIME_PER_FRAME;
         while(this.mPreviousFrame < this.mCurrentFrame)
         {
            ++this.mPreviousFrame;
            mClip.gotoAndStop(this.mPreviousFrame);
            this.mCurrentLabel = mClip.currentLabel;
            if(this.mCurrentLabel != this.mPreviousLabel)
            {
               _loc2_ = this.mCurrentLabel;
               this.mCurrentFrame = this.mPreviousFrame;
               this.mTimePassed = this.mCurrentFrame * TIME_PER_FRAME;
            }
         }
         this.mPreviousFrame = this.mCurrentFrame;
         this.mPreviousLabel = this.mCurrentLabel;
         return _loc2_;
      }
      
      public function StopAt(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function PlayAt(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function PlayAtLabel(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function StopAtLabel(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.mCurrentLabel = param1;
         this.mPreviousLabel = param1;
         this.mCurrentFrame = mClip.currentFrame;
         this.mPreviousFrame = mClip.currentFrame;
         this.mTimePassed = mClip.currentFrame * TIME_PER_FRAME;
      }
      
      public function getCurrentFrameLabel() : String
      {
         return mClip.currentLabel;
      }
      
      public function getCurrentFrame() : int
      {
         return mClip.currentFrame;
      }
      
      public function get isPlaying() : Boolean
      {
         return this.mIsPlaying;
      }
      
      public function set isPlaying(param1:Boolean) : void
      {
         this.mIsPlaying = param1;
      }
   }
}
