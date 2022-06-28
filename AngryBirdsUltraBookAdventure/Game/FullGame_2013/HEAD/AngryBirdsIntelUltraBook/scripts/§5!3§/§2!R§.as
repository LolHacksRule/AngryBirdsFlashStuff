package §5!3§
{
   import §?!O§.§?W§;
   import §?!O§.TweenManager;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §2!R§ extends MovieClip
   {
       
      
      private var §2,§:§?W§;
      
      private var § S§:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var §]t§:Boolean = false;
      
      public function §2!R§(red:Number, green:Number, blue:Number, startAlpha:Number, width:Number = NaN, height:Number = NaN)
      {
         width = Number(width) || Number(AngryBirdsFP11.§'t§.getAppWidth());
         height = Number(height) || Number(AngryBirdsFP11.§'t§.getAppHeight());
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
         AngryBirdsFP11.§'t§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      public function §6!6§(red:Number, green:Number, blue:Number, time:Number = 0.3) : void
      {
         if(this.§]t§)
         {
            return;
         }
         if(this.§2,§)
         {
            this.§2,§.stop();
         }
         this.§ S§ = new ColorTransform();
         this.§ S§.redOffset = transform.colorTransform.redOffset;
         this.§ S§.greenOffset = transform.colorTransform.greenOffset;
         this.§ S§.blueOffset = transform.colorTransform.blueOffset;
         this.§2,§ = TweenManager.§7!E§.§5§(this.§ S§,{
            "redOffset":red,
            "greenOffset":green,
            "blueOffset":blue
         },null,time);
         this.§2,§.onComplete = this.§,L§;
         this.§2,§.play();
         this.§]t§ = true;
      }
      
      public function §-d§(newAlpha:Number) : void
      {
         this.mNewAlpha = newAlpha;
         alpha = newAlpha;
      }
      
      public function §`!]§(newAlpha:Number, time:Number = 0.5) : void
      {
         if(this.§2,§ != null)
         {
            this.§2,§.stop();
         }
         this.§2,§ = TweenManager.§7!E§.§5§(this,{"mNewAlpha":newAlpha},null,time);
         this.§2,§.onComplete = this.§-!`§;
         this.§2,§.§1!,§ = false;
         this.§2,§.play();
      }
      
      private function §-!`§() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.ON_FADE_TO_ALPHA_COMPLETE));
      }
      
      private function §,L§() : void
      {
         this.§]t§ = false;
      }
      
      private function onEnterFrame(e:Event) : void
      {
         if(this.§ S§)
         {
            transform.colorTransform = this.§ S§;
            if(!this.§]t§)
            {
               this.§ S§ = null;
            }
         }
         if(alpha != this.mNewAlpha)
         {
            alpha = this.mNewAlpha;
         }
      }
      
      public function clean() : void
      {
         AngryBirdsFP11.§'t§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         if(this.§2,§)
         {
            this.§2,§.stop();
            this.§2,§ = null;
         }
      }
   }
}
