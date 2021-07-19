package §3!,§
{
   import §<!0§.§%g§;
   import §<!0§.§7g§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §#x§ extends MovieClip
   {
       
      
      private var §0%§:§7g§;
      
      private var §"f§:ColorTransform;
      
      public var mAlpha:Number;
      
      public function §#x§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         param5 = Number(param5) || Number(§5!9§.§?!L§);
         param6 = Number(param6) || Number(§5!9§.§"r§);
         super();
         this.§"f§ = new ColorTransform();
         this.§"f§.redOffset = param1;
         this.§"f§.greenOffset = param2;
         this.§"f§.blueOffset = param3;
         graphics.beginFill(0,1);
         graphics.drawRect(-param5,-param6,param5 * 2,param6 * 2);
         scaleX = 100;
         scaleY = 100;
         graphics.endFill();
         this.mAlpha = param4;
         alpha = param4;
         addEventListener(Event.ENTER_FRAME,this.§!,§);
      }
      
      public function §3!%§(param1:Number, param2:Number, param3:Number, param4:Number = 0.5) : void
      {
         if(this.§0%§ != null)
         {
            this.§0%§.stop();
         }
         this.§0%§ = §%g§.§'I§.§5!0§(this.§"f§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§0%§.play();
      }
      
      public function §"!c§(param1:Number) : void
      {
         this.mAlpha = param1;
         alpha = param1;
      }
      
      public function §'H§(param1:Number, param2:Number = 0.5) : void
      {
         if(this.§0%§ != null)
         {
            this.§0%§.stop();
         }
         this.§0%§ = §%g§.§'I§.§5!0§(this,{"mAlpha":param1},null,param2);
         this.§0%§.onComplete = this.§?!Q§;
         this.§0%§.play();
      }
      
      private function §?!Q§() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§79§));
      }
      
      private function §!,§(param1:Event) : void
      {
         transform.colorTransform = this.§"f§;
         alpha = this.mAlpha;
      }
      
      public function clean() : void
      {
         removeEventListener(Event.ENTER_FRAME,this.§!,§);
      }
   }
}
