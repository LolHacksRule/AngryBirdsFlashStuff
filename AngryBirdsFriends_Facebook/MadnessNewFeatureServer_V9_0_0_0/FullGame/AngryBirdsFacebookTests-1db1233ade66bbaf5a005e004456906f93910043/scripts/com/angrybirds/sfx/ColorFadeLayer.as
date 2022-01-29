package com.angrybirds.sfx
{
   import com.rovio.events.FrameUpdateEvent;
   import com.rovio.tween.ISimpleTween;
   import com.rovio.tween.TweenManager;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class ColorFadeLayer extends MovieClip
   {
       
      
      private var mColorTween:ISimpleTween;
      
      private var mColorTransform:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var mColorChanging:Boolean = false;
      
      public function ColorFadeLayer(red:Number, green:Number, blue:Number, startAlpha:Number, width:Number = NaN, height:Number = NaN)
      {
         width = Number(width) || Number(AngryBirdsBase.singleton.getAppWidth());
         height = Number(height) || Number(AngryBirdsBase.singleton.getAppHeight());
         super();
         var colorTransform:ColorTransform = new ColorTransform();
         colorTransform.redOffset = red;
         colorTransform.greenOffset = green;
         colorTransform.blueOffset = blue;
         transform.colorTransform = colorTransform;
         graphics.beginFill(0,1);
         graphics.drawRect(-width,-height,width * 2,height * 2);
         scaleX = 100;
         scaleY = 100;
         graphics.endFill();
         this.mNewAlpha = startAlpha;
         alpha = startAlpha;
         this.mouseEnabled = true;
         AngryBirdsBase.singleton.addEventListener(FrameUpdateEvent.UPDATE,this.onEnterFrame);
      }
      
      public function fadeToColor(red:Number, green:Number, blue:Number, time:Number = 0.3) : void
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
            "redOffset":red,
            "greenOffset":green,
            "blueOffset":blue
         },null,time);
         this.mColorTween.onComplete = this.onColorChangeComplete;
         this.mColorTween.play();
         this.mColorChanging = true;
      }
      
      public function setAlpha(newAlpha:Number) : void
      {
         this.mNewAlpha = newAlpha;
         alpha = newAlpha;
      }
      
      public function fadeToAlpha(newAlpha:Number, time:Number = 0.5) : void
      {
         if(this.mColorTween != null)
         {
            this.mColorTween.stop();
         }
         this.mColorTween = TweenManager.instance.createTween(this,{"mNewAlpha":newAlpha},null,time);
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
      
      private function onEnterFrame(e:Event) : void
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
