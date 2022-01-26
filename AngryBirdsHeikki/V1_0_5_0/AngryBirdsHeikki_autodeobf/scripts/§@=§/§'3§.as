package §@=§
{
   import §>!_§.§2V§;
   import §>!_§.§9!+§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §'3§ extends MovieClip
   {
       
      
      private var §10§:§2V§;
      
      private var §<@§:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var §5! §:Boolean = false;
      
      public function §'3§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Boolean = true, param6:Number = NaN, param7:Number = NaN)
      {
         param6 = Number(param6) || Number(§,-§.§ for§ * 2);
         param7 = Number(param7) || Number(§,-§.§[S§ * 2);
         super();
         var _loc8_:ColorTransform;
         (_loc8_ = new ColorTransform()).redOffset = param1;
         _loc8_.greenOffset = param2;
         _loc8_.blueOffset = param3;
         transform.colorTransform = _loc8_;
         if(param5)
         {
            graphics.beginFill(0,1);
            graphics.drawRect(-param6,-param7,param6 * 2,param7 * 2);
            scaleX = 100;
            scaleY = 100;
            graphics.endFill();
         }
         else
         {
            param6 = §,-§.§ for§;
            param7 = §,-§.§[S§;
            graphics.beginFill(0,1);
            graphics.drawRect(-param6 / 2,-param7 / 2,param6,param7);
            graphics.endFill();
         }
         this.mNewAlpha = param4;
         alpha = param4;
         this.mouseEnabled = true;
         addEventListener(Event.ENTER_FRAME,this.§3,§);
      }
      
      public function §42§(param1:Number, param2:Number, param3:Number, param4:Number = 0.3) : void
      {
         if(this.§5! §)
         {
            return;
         }
         if(this.§10§)
         {
            this.§10§.stop();
         }
         this.§<@§ = new ColorTransform();
         this.§<@§.redOffset = transform.colorTransform.redOffset;
         this.§<@§.greenOffset = transform.colorTransform.greenOffset;
         this.§<@§.blueOffset = transform.colorTransform.blueOffset;
         this.§10§ = §9!+§.§;!F§.§`!'§(this.§<@§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§10§.onComplete = this.§!!D§;
         this.§10§.play();
         this.§5! § = true;
      }
      
      public function §?!#§(param1:Number) : void
      {
         this.mNewAlpha = param1;
         alpha = param1;
      }
      
      public function §%I§(param1:Number, param2:Number = 0.5, param3:String = "linear") : void
      {
         if(this.§10§ != null)
         {
            this.§10§.stop();
         }
         this.§10§ = §9!+§.§;!F§.§`!'§(this,{"mNewAlpha":param1},null,param2,param3);
         this.§10§.onComplete = this.§79§;
         this.§10§.§^'§ = false;
         this.§10§.play();
      }
      
      private function §79§() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§-!8§));
      }
      
      private function §!!D§() : void
      {
         this.§5! § = false;
      }
      
      private function §3,§(param1:Event) : void
      {
         if(this.§<@§)
         {
            transform.colorTransform = this.§<@§;
            if(!this.§5! §)
            {
               this.§<@§ = null;
            }
         }
         if(alpha != this.mNewAlpha)
         {
            alpha = this.mNewAlpha;
         }
      }
      
      public function clean() : void
      {
         removeEventListener(Event.ENTER_FRAME,this.§3,§);
         if(this.§10§)
         {
            this.§10§.stop();
            this.§10§ = null;
         }
      }
   }
}
