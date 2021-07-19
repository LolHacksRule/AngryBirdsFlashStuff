package §;!Q§
{
   import §#!V§.§&!!§;
   import §#!V§.§';§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §"g§ extends MovieClip
   {
       
      
      private var §1Y§:§&!!§;
      
      private var §8!4§:ColorTransform;
      
      public var mAlpha:Number;
      
      public function §"g§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         param5 = Number(param5) || Number(§#x§.§;#§);
         param6 = Number(param6) || Number(§#x§.§0h§);
         super();
         this.§8!4§ = new ColorTransform();
         this.§8!4§.redOffset = param1;
         this.§8!4§.greenOffset = param2;
         this.§8!4§.blueOffset = param3;
         graphics.beginFill(0,1);
         graphics.drawRect(-param5,-param6,param5 * 2,param6 * 2);
         scaleX = 100;
         scaleY = 100;
         graphics.endFill();
         this.mAlpha = param4;
         alpha = param4;
         addEventListener(Event.ENTER_FRAME,this.§ v§);
      }
      
      public function §'!G§(param1:Number, param2:Number, param3:Number, param4:Number = 0.5) : void
      {
         if(this.§1Y§ != null)
         {
            this.§1Y§.stop();
         }
         this.§1Y§ = §';§.§%!O§.§set §(this.§8!4§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§1Y§.play();
      }
      
      public function §6!Y§(param1:Number) : void
      {
         this.mAlpha = param1;
         alpha = param1;
      }
      
      public function §#R§(param1:Number, param2:Number = 0.5) : void
      {
         if(this.§1Y§ != null)
         {
            this.§1Y§.stop();
         }
         this.§1Y§ = §';§.§%!O§.§set §(this,{"mAlpha":param1},null,param2);
         this.§1Y§.onComplete = this.§^Z§;
         this.§1Y§.play();
      }
      
      private function §^Z§() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§[!H§));
      }
      
      private function § v§(param1:Event) : void
      {
         transform.colorTransform = this.§8!4§;
         alpha = this.mAlpha;
      }
      
      public function clean() : void
      {
         removeEventListener(Event.ENTER_FRAME,this.§ v§);
      }
   }
}
