package com.rovio.ui.Components
{
   import com.rovio.events.UIInteractionEvent;
   import com.rovio.ui.Components.Helpers.UIComponentInteractiveRovio;
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
      
      public function UIMovieClipRovio(data:XML, parentContainer:UIContainerRovio, clip:MovieClip = null)
      {
         super(data,parentContainer,clip);
      }
      
      override public function listenerUIEventOccured(eventIndex:int, eventName:String) : UIInteractionEvent
      {
         return super.listenerUIEventOccured(eventIndex,eventName);
      }
      
      public function playByTime(deltaTime:Number) : String
      {
         var returnValue:String = null;
         this.mTimePassed += deltaTime;
         this.mCurrentFrame = this.mTimePassed / TIME_PER_FRAME;
         while(this.mPreviousFrame < this.mCurrentFrame)
         {
            ++this.mPreviousFrame;
            mClip.gotoAndStop(this.mPreviousFrame);
            this.mCurrentLabel = mClip.currentLabel;
            if(this.mCurrentLabel != this.mPreviousLabel)
            {
               returnValue = this.mCurrentLabel;
               this.mCurrentFrame = this.mPreviousFrame;
               this.mTimePassed = this.mCurrentFrame * TIME_PER_FRAME;
            }
         }
         this.mPreviousFrame = this.mCurrentFrame;
         this.mPreviousLabel = this.mCurrentLabel;
         return returnValue;
      }
      
      public function StopAt(frame:int) : void
      {
         mClip.gotoAndStop(frame);
      }
      
      public function PlayAt(frame:int) : void
      {
         mClip.gotoAndPlay(frame);
      }
      
      public function PlayAtLabel(key:String) : void
      {
         mClip.gotoAndPlay(key);
      }
      
      public function StopAtLabel(key:String) : void
      {
         mClip.gotoAndStop(key);
         this.mCurrentLabel = key;
         this.mPreviousLabel = key;
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
      
      public function set isPlaying(value:Boolean) : void
      {
         this.mIsPlaying = value;
      }
   }
}
