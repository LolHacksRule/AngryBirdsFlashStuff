package §^h§
{
   import §<!G§.§9h§;
   import §<!G§.TweenManager;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §5!9§ extends MovieClip
   {
       
      
      private var §&!J§:§9h§;
      
      private var §&W§:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var §-D§:Boolean = false;
      
      public function §5!9§(red:Number, green:Number, blue:Number, startAlpha:Number, width:Number = NaN, height:Number = NaN)
      {
         width = Number(width) || Number(AngryBirdsFP11.§8R§.getAppWidth());
         height = Number(height) || Number(AngryBirdsFP11.§8R§.getAppHeight());
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
         AngryBirdsFP11.§8R§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      public function §00§(red:Number, green:Number, blue:Number, time:Number = 0.3) : void
      {
         if(this.§-D§)
         {
            return;
         }
         if(this.§&!J§)
         {
            this.§&!J§.stop();
         }
         this.§&W§ = new ColorTransform();
         this.§&W§.redOffset = transform.colorTransform.redOffset;
         this.§&W§.greenOffset = transform.colorTransform.greenOffset;
         this.§&W§.blueOffset = transform.colorTransform.blueOffset;
         this.§&!J§ = TweenManager.§&!'§.§3L§(this.§&W§,{
            "redOffset":red,
            "greenOffset":green,
            "blueOffset":blue
         },null,time);
         this.§&!J§.onComplete = this.§"5§;
         this.§&!J§.play();
         this.§-D§ = true;
      }
      
      public function §"!>§(newAlpha:Number) : void
      {
         this.mNewAlpha = newAlpha;
         alpha = newAlpha;
      }
      
      public function §89§(newAlpha:Number, time:Number = 0.5) : void
      {
         if(this.§&!J§ != null)
         {
            this.§&!J§.stop();
         }
         this.§&!J§ = TweenManager.§&!'§.§3L§(this,{"mNewAlpha":newAlpha},null,time);
         this.§&!J§.onComplete = this.§,!X§;
         this.§&!J§.§'H§ = false;
         this.§&!J§.play();
      }
      
      private function §,!X§() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.ON_FADE_TO_ALPHA_COMPLETE));
      }
      
      private function §"5§() : void
      {
         this.§-D§ = false;
      }
      
      private function onEnterFrame(e:Event) : void
      {
         if(this.§&W§)
         {
            transform.colorTransform = this.§&W§;
            if(!this.§-D§)
            {
               this.§&W§ = null;
            }
         }
         if(alpha != this.mNewAlpha)
         {
            alpha = this.mNewAlpha;
         }
      }
      
      public function clean() : void
      {
         AngryBirdsFP11.§8R§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         if(this.§&!J§)
         {
            this.§&!J§.stop();
            this.§&!J§ = null;
         }
      }
   }
}
