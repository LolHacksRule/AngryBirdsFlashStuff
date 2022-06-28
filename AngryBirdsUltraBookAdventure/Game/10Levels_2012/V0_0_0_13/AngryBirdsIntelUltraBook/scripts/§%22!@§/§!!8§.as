package §"!@§
{
   import §2=§.§!T§;
   import §2=§.TweenManager;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §!!8§ extends MovieClip
   {
       
      
      private var §+5§:§!T§;
      
      private var §^Q§:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var §'a§:Boolean = false;
      
      public function §!!8§(red:Number, green:Number, blue:Number, startAlpha:Number, width:Number = NaN, height:Number = NaN)
      {
         width = Number(width) || Number(AngryBirdsFP11.§5V§.getAppWidth());
         height = Number(height) || Number(AngryBirdsFP11.§5V§.getAppHeight());
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
         AngryBirdsFP11.§5V§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      public function §`]§(red:Number, green:Number, blue:Number, time:Number = 0.3) : void
      {
         if(this.§'a§)
         {
            return;
         }
         if(this.§+5§)
         {
            this.§+5§.stop();
         }
         this.§^Q§ = new ColorTransform();
         this.§^Q§.redOffset = transform.colorTransform.redOffset;
         this.§^Q§.greenOffset = transform.colorTransform.greenOffset;
         this.§^Q§.blueOffset = transform.colorTransform.blueOffset;
         this.§+5§ = TweenManager.§8!X§.§8m§(this.§^Q§,{
            "redOffset":red,
            "greenOffset":green,
            "blueOffset":blue
         },null,time);
         this.§+5§.onComplete = this.§%7§;
         this.§+5§.play();
         this.§'a§ = true;
      }
      
      public function §2X§(newAlpha:Number) : void
      {
         this.mNewAlpha = newAlpha;
         alpha = newAlpha;
      }
      
      public function §6k§(newAlpha:Number, time:Number = 0.5) : void
      {
         if(this.§+5§ != null)
         {
            this.§+5§.stop();
         }
         this.§+5§ = TweenManager.§8!X§.§8m§(this,{"mNewAlpha":newAlpha},null,time);
         this.§+5§.onComplete = this.§4!8§;
         this.§+5§.§2!_§ = false;
         this.§+5§.play();
      }
      
      private function §4!8§() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.ON_FADE_TO_ALPHA_COMPLETE));
      }
      
      private function §%7§() : void
      {
         this.§'a§ = false;
      }
      
      private function onEnterFrame(e:Event) : void
      {
         if(this.§^Q§)
         {
            transform.colorTransform = this.§^Q§;
            if(!this.§'a§)
            {
               this.§^Q§ = null;
            }
         }
         if(alpha != this.mNewAlpha)
         {
            alpha = this.mNewAlpha;
         }
      }
      
      public function clean() : void
      {
         AngryBirdsFP11.§5V§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         if(this.§+5§)
         {
            this.§+5§.stop();
            this.§+5§ = null;
         }
      }
   }
}
