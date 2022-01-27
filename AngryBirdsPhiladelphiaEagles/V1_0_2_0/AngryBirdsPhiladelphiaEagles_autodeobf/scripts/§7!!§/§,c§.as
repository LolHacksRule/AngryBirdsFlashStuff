package §7!!§
{
   import §#!?§.§ !4§;
   import §#!?§.§49§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §,c§ extends MovieClip
   {
       
      
      private var §7!B§:§ !4§;
      
      private var §83§:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var § I§:Boolean = false;
      
      public function §,c§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         param5 = Number(param5) || Number(AngryBirdsFP11.§"Y§.getAppWidth());
         param6 = Number(param6) || Number(AngryBirdsFP11.§"Y§.getAppHeight());
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
         AngryBirdsFP11.§"Y§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      public function §!!+§(param1:Number, param2:Number, param3:Number, param4:Number = 0.3) : void
      {
         if(this.§ I§)
         {
            return;
         }
         if(this.§7!B§)
         {
            this.§7!B§.stop();
         }
         this.§83§ = new ColorTransform();
         this.§83§.redOffset = transform.colorTransform.redOffset;
         this.§83§.greenOffset = transform.colorTransform.greenOffset;
         this.§83§.blueOffset = transform.colorTransform.blueOffset;
         this.§7!B§ = §49§.§&y§.§=!3§(this.§83§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§7!B§.onComplete = this.§@!@§;
         this.§7!B§.play();
         this.§ I§ = true;
      }
      
      public function §'G§(param1:Number) : void
      {
         this.mNewAlpha = param1;
         alpha = param1;
      }
      
      public function fadeToAlpha(param1:Number, param2:Number = 0.5) : void
      {
         if(this.§7!B§ != null)
         {
            this.§7!B§.stop();
         }
         this.§7!B§ = §49§.§&y§.§=!3§(this,{"mNewAlpha":param1},null,param2);
         this.§7!B§.onComplete = this.§?!4§;
         this.§7!B§.§`J§ = false;
         this.§7!B§.play();
      }
      
      private function §?!4§() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§<2§));
      }
      
      private function §@!@§() : void
      {
         this.§ I§ = false;
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§83§)
         {
            transform.colorTransform = this.§83§;
            if(!this.§ I§)
            {
               this.§83§ = null;
            }
         }
         if(alpha != this.mNewAlpha)
         {
            alpha = this.mNewAlpha;
         }
      }
      
      public function clean() : void
      {
         AngryBirdsFP11.§"Y§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         if(this.§7!B§)
         {
            this.§7!B§.stop();
            this.§7!B§ = null;
         }
      }
   }
}
