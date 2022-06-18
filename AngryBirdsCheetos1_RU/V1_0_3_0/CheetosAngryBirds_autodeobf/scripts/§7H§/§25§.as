package §7H§
{
   import §"Z§.§-N§;
   import §"Z§.§5!2§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §25§ extends MovieClip
   {
       
      
      private var §?]§:§5!2§;
      
      private var §?!,§:ColorTransform;
      
      public var mAlpha:Number;
      
      public function §25§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         param5 = Number(param5) || Number(§7!^§.§8o§);
         param6 = Number(param6) || Number(§7!^§.§&I§);
         super();
         this.§?!,§ = new ColorTransform();
         this.§?!,§.redOffset = param1;
         this.§?!,§.greenOffset = param2;
         this.§?!,§.blueOffset = param3;
         graphics.beginFill(0,1);
         graphics.drawRect(-param5,-param6,param5 * 2,param6 * 2);
         scaleX = 100;
         scaleY = 100;
         graphics.endFill();
         this.mAlpha = param4;
         alpha = param4;
         addEventListener(Event.ENTER_FRAME,this.§4d§);
      }
      
      public function §+"§(param1:Number, param2:Number, param3:Number, param4:Number = 0.5) : void
      {
         if(this.§?]§ != null)
         {
            this.§?]§.stop();
         }
         this.§?]§ = §-N§.§<?§.§,!D§(this.§?!,§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§?]§.play();
      }
      
      public function §@A§(param1:Number) : void
      {
         this.mAlpha = param1;
         alpha = param1;
      }
      
      public function §,!N§(param1:Number, param2:Number = 0.5) : void
      {
         if(this.§?]§ != null)
         {
            this.§?]§.stop();
         }
         this.§?]§ = §-N§.§<?§.§,!D§(this,{"mAlpha":param1},null,param2);
         this.§?]§.onComplete = this.§,#§;
         this.§?]§.play();
      }
      
      private function §,#§() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§+?§));
      }
      
      private function §4d§(param1:Event) : void
      {
         transform.colorTransform = this.§?!,§;
         alpha = this.mAlpha;
      }
      
      public function clean() : void
      {
         removeEventListener(Event.ENTER_FRAME,this.§4d§);
      }
   }
}
