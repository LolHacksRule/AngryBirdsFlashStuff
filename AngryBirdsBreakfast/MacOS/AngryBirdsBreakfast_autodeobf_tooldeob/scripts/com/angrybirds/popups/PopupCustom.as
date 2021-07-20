package com.angrybirds.popups
{
   import com.angrybirds.data.level.item.LevelItemManagerCustom;
   import com.rovio.ui.popup.AbstractPopup;
   import com.angrybirds.sfx.ColorFadeLayer;
   import com.angrybirds.sfx.ColorFadeLayerEvent;
   import com.rovio.tween.TweenManager;
   import com.rovio.tween.ISimpleTween;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   
   public class PopupCustom extends AbstractPopup
   {
       
      
      private const FADE_EFFECT_TIME:Number = 0.25;
      
      private const POP_IN_TIME:Number = 0.7;
      
      private const POP_OUT_TIME:Number = 0.25;
      
      protected var mColorFadeLayer:ColorFadeLayer = null;
      
      private var mIsClosed:Boolean;
      
      protected var mScaleTween:ISimpleTween;
      
      private var mStartScaleTweenOnResize:Boolean = false;
      
      protected var mUseFadeLayer:Boolean;
      
      protected var mUseScaleEffect:Boolean;
      
      protected var mCenterToOrigin:Boolean = false;
      
      protected var mLevelItemManager:LevelItemManagerCustom;
      
      protected var mCustomContainer:MovieClip;
      
      public function PopupCustom(param1:int, param2:int, param3:XML = null)
      {
         super(param1,param2,param3);
         if(this.mColorFadeLayer == null)
         {
            this.mColorFadeLayer = new ColorFadeLayer(0,0,0,0);
         }
      }
      
      protected function onKeyDown(param1:KeyboardEvent) : void
      {
         switch(param1.keyCode)
         {
            case Keyboard.S:
               this.updateMuteButtonState();
               break;
            case Keyboard.ESCAPE:
               if(!(AngryBirdsBase.singleton as AngryBirdsCustom).isFullScreen())
               {
                  this.closePressed();
               }
         }
      }
      
      protected function updateMuteButtonState() : void
      {
      }
      
      protected function closePressed() : void
      {
      }
      
      override protected function init() : void
      {
         super.init();
         this.mCustomContainer = mContainer.mClip;
         if(this.mUseScaleEffect)
         {
            this.mCustomContainer.scaleX = 0;
            this.mCustomContainer.scaleY = 0;
         }
         mApplication.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.onKeyDown,false,1);
      }
      
      override public function setViewSize(param1:int, param2:int) : void
      {
         var _loc3_:Number = NaN;
         if(param1 == 0)
         {
            return;
         }
         this.mCustomContainer.scaleX = 1;
         this.mCustomContainer.scaleY = 1;
         super.setViewSize(param1,param2);
         if(this.mCenterToOrigin)
         {
            _loc3_ = 0;
            if(AngryBirdsCustom.SIDEBAR_WIDTH != 0)
            {
               _loc3_ = param1 / AngryBirdsCustom.GAME_AREA_WIDTH * 220;
            }
            this.mCustomContainer.x = (param1 - _loc3_) / 2;
            this.mCustomContainer.y = param2 / 2;
         }
         if(this.mStartScaleTweenOnResize)
         {
            if(this.mScaleTween)
            {
               this.mScaleTween.stop();
            }
            this.mScaleTween = TweenManager.instance.createTween(this.mCustomContainer,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },this.POP_IN_TIME,TweenManager.EASING_BOUNCE_OUT);
            this.mScaleTween.play();
            this.mStartScaleTweenOnResize = false;
         }
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         if(this.mUseFadeLayer)
         {
            mContainer.mClip.addChildAt(this.mColorFadeLayer,0);
            this.mColorFadeLayer.fadeToAlpha(0.7,this.FADE_EFFECT_TIME);
         }
         if(this.mUseScaleEffect)
         {
            this.mStartScaleTweenOnResize = true;
         }
         else
         {
            this.mCustomContainer.scaleX = 1;
            this.mCustomContainer.scaleY = 1;
         }
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         if(this.mUseFadeLayer)
         {
            this.mColorFadeLayer.fadeToAlpha(0,this.FADE_EFFECT_TIME);
            this.mColorFadeLayer.addEventListener(ColorFadeLayerEvent.ON_FADE_TO_ALPHA_COMPLETE,this.onHide);
            if(this.mUseScaleEffect)
            {
               if(this.mScaleTween != null)
               {
                  this.mScaleTween.stop();
               }
               this.mScaleTween = TweenManager.instance.createTween(this.mCustomContainer,{
                  "scaleX":0,
                  "scaleY":0
               },null,this.POP_OUT_TIME,TweenManager.EASING_SINE_IN);
               this.mScaleTween.play();
            }
         }
         else
         {
            this.removeFadeLayer();
            super.hide(param1,param2);
         }
         mApplication.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.onKeyDown);
      }
      
      private function removeFadeLayer() : void
      {
         if(mContainer.mClip == this.mColorFadeLayer.parent && mContainer.mClip != null)
         {
            mContainer.mClip.removeChild(this.mColorFadeLayer);
         }
         this.mColorFadeLayer.removeEventListener(ColorFadeLayerEvent.ON_FADE_TO_ALPHA_COMPLETE,this.onHide);
      }
      
      protected function onHide(param1:ColorFadeLayerEvent) : void
      {
         this.removeFadeLayer();
         super.hide();
      }
      
      public function updateTextFields() : void
      {
      }
      
      override public function updateLocalization() : void
      {
         super.updateLocalization();
         this.updateTextFields();
      }
   }
}
