package com.angrybirds.popups
{
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.ui.Components.UIButtonRovio;
   import com.rovio.sound.SoundEngine;
   import com.rovio.ui.popup.PopupLayerIndexType;
   import com.rovio.ui.popup.PopupPriorityType;
   import com.angrybirds.popups.events.PopupClosedEvent;
   import com.angrybirds.sfx.ColorFadeLayer;
   import com.rovio.factory.XMLFactory;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class PopupTutorial extends PopupCustom
   {
      
      private static const TUTORIAL_POPUP_SCALE:Number = 1;
      
      private static var sTutorialPopupBin:Class = PopupTutorial_sTutorialPopupBin;
       
      
      protected var mTutorialClip:MovieClip;
      
      protected var mTutorialName:String;
      
      private const ANIMATION_FRAME_DURATION:int = 300;
      
      private var mAnimationFrameCount:int;
      
      private var mAnimationFrameIndex:int = 1;
      
      private var mAnimationTimer:Timer;
      
      private var mAnimationShowedAtLeastOnce:Boolean;
      
      private var mSkipButton:UIButtonRovio;
      
      private var mFirstInLine:Boolean;
      
      private var mLastInLine:Boolean;
      
      public function PopupTutorial(param1:int, param2:int, param3:MovieClip, param4:String, param5:Boolean, param6:Boolean, param7:Boolean)
      {
         mUseFadeLayer = true;
         mUseScaleEffect = false;
         mCenterToOrigin = true;
         if(param6)
         {
            mColorFadeLayer = new ColorFadeLayer(0,0,0,0.7);
         }
         super(PopupLayerIndexType.NORMAL_LAYER_INDEX,PopupPriorityType.DEFAULT,XMLFactory.fromOctetStreamClass(sTutorialPopupBin));
         this.mTutorialName = param4;
         mLoopRunTransition = true;
         this.mTutorialClip = param3;
         this.mTutorialClip.gotoAndStop(1);
         this.mTutorialClip.name = "MovieClip_TutorialClip";
         this.mAnimationFrameCount = this.mTutorialClip.totalFrames;
         this.mFirstInLine = param6;
         this.mLastInLine = param7;
         this.mAnimationShowedAtLeastOnce = false;
      }
      
      override protected function init() : void
      {
         super.init();
         var _loc1_:MovieClip = mContainer.getItemByName("MovieClip_Tutorial").mClip;
         while(_loc1_.numChildren > 0)
         {
            _loc1_.removeChildAt(0);
         }
         _loc1_.addChild(this.mTutorialClip);
         this.mAnimationTimer = new Timer(this.ANIMATION_FRAME_DURATION,this.mAnimationFrameCount - 1);
         this.mAnimationTimer.addEventListener(TimerEvent.TIMER,this.onTimer);
         this.mSkipButton = mContainer.getItemByName("Button_CloseTutorial") as UIButtonRovio;
         this.mSkipButton.setVisibility(true);
         mApplication.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseClick);
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         this.mContainer.mClip.scaleX = TUTORIAL_POPUP_SCALE;
         this.mContainer.mClip.scaleY = TUTORIAL_POPUP_SCALE;
         SoundEngine.stopChannel("Channel_Theme");
         SoundEngine.stopChannel("7");
         SoundEngine.playSound("tutorial_music","7");
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         super.hide(param1);
         SoundEngine.stopChannel("7");
      }
      
      override protected function onTransitionStart(param1:String) : void
      {
      }
      
      override protected function onTransitionComplete(param1:String) : void
      {
         if(param1 == "in")
         {
            this.mAnimationTimer.start();
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:UIEventListenerRovio) : void
      {
         switch(param2)
         {
            case "CLOSE_TUTORIAL":
               this.closePressed();
         }
      }
      
      override protected function closePressed() : void
      {
         mUseFadeLayer = this.mLastInLine;
         mUseScaleEffect = this.mLastInLine;
         close();
      }
      
      override public function dispose() : void
      {
         this.mTutorialClip.stop();
         mApplication.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.onMouseClick);
         dispatchEvent(new PopupClosedEvent(PopupClosedEvent.ON_POPUP_CLOSE));
         super.dispose();
      }
      
      private function onTimer(param1:TimerEvent) : void
      {
         if(!this.mTutorialClip)
         {
            return;
         }
         ++this.mAnimationFrameIndex;
         if(this.mAnimationFrameIndex > this.mAnimationFrameCount)
         {
            this.mAnimationFrameIndex = 1;
         }
         if(this.mAnimationTimer.currentCount >= this.mAnimationTimer.repeatCount)
         {
            this.mAnimationShowedAtLeastOnce = true;
            this.mAnimationTimer.reset();
            this.mAnimationTimer.start();
            mApplication.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.onMouseClick);
            if(this.mSkipButton.mClip && !this.mSkipButton.visible)
            {
               this.mSkipButton.setVisibility(true);
            }
         }
         this.mTutorialClip.gotoAndStop(this.mAnimationFrameIndex);
      }
      
      private function onMouseClick(param1:MouseEvent) : void
      {
         mApplication.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.onMouseClick);
         this.mSkipButton.setVisibility(true);
         if(mTransition)
         {
            mTransition.stop();
         }
      }
   }
}
