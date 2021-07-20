package com.angrybirds.sfx
{
   import com.rovio.events.FrameUpdateEvent;
   import com.rovio.tween.TweenManager;
   import com.rovio.tween.ISimpleTween;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class ColorFadeLayer extends MovieClip
   {
       
      
      private var mColorTween:ISimpleTween;
      
      private var mColorTransform:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var mColorChanging:Boolean = false;
      
      public function ColorFadeLayer(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         param5 = Number(param5) || Number(AngryBirdsBase.singleton.getAppWidth());
         param6 = Number(param6) || Number(AngryBirdsBase.singleton.getAppHeight());
         super();
         var _loc7_:ColorTransform;
         (_loc7_ = new ColorTransform()).redOffset = param1;
         _loc7_.greenOffset = param2;
         _loc7_.blueOffset = param3;
         transform.colorTransform = _loc7_;
         graphics.beginFill(0,1);
         graphics.drawRect(-param5,-param6,param5 * 2,param6 * 2);
         scaleX = 100;
         scaleY = 100;
         graphics.endFill();
         this.mNewAlpha = param4;
         alpha = param4;
         this.mouseEnabled = true;
         AngryBirdsBase.singleton.addEventListener(FrameUpdateEvent.UPDATE,this.onEnterFrame);
      }
      
      public function fadeToColor(param1:Number, param2:Number, param3:Number, param4:Number = 0.3) : void
      {
         if(this.mColorChanging)
         {
            return;
         }
         if(this.mColorTween)
         {
            this.mColorTween.stop();
         }
         this.mColorTransform = new ColorTransform();
         this.mColorTransform.redOffset = transform.colorTransform.redOffset;
         this.mColorTransform.greenOffset = transform.colorTransform.greenOffset;
         this.mColorTransform.blueOffset = transform.colorTransform.blueOffset;
         this.mColorTween = TweenManager.instance.createTween(this.mColorTransform,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.mColorTween.onComplete = this.onColorChangeComplete;
         this.mColorTween.play();
         this.mColorChanging = true;
      }
      
      public function setAlpha(param1:Number) : void
      {
         this.mNewAlpha = param1;
         alpha = param1;
      }
      
      public function fadeToAlpha(param1:Number, param2:Number = 0.5) : void
      {
         if(this.mColorTween != null)
         {
            this.mColorTween.stop();
         }
         this.mColorTween = TweenManager.instance.createTween(this,{"mNewAlpha":param1},null,param2);
         this.mColorTween.onComplete = this.onFadeToAlphaComplete;
         this.mColorTween.automaticCleanup = false;
         this.mColorTween.play();
      }
      
      private function onFadeToAlphaComplete() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.ON_FADE_TO_ALPHA_COMPLETE));
      }
      
      private function onColorChangeComplete() : void
      {
         this.mColorChanging = false;
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.mColorTransform)
         {
            transform.colorTransform = this.mColorTransform;
            if(!this.mColorChanging)
            {
               this.mColorTransform = null;
            }
         }
         if(alpha != this.mNewAlpha)
         {
            alpha = this.mNewAlpha;
         }
      }
      
      public function clean() : void
      {
         AngryBirdsBase.singleton.removeEventListener(FrameUpdateEvent.UPDATE,this.onEnterFrame);
         if(this.mColorTween)
         {
            this.mColorTween.stop();
            this.mColorTween = null;
         }
      }
   }
}
