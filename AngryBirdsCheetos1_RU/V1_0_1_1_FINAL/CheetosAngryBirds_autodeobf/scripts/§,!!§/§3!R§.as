package §,!!§
{
   import §6!S§.§!<§;
   import §6!S§.§,!9§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §3!R§ extends MovieClip
   {
       
      
      private var §7!0§:§,!9§;
      
      private var §+&§:ColorTransform;
      
      public var mAlpha:Number;
      
      public function §3!R§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         param5 = Number(param5) || Number(§7d§.§=!#§);
         param6 = Number(param6) || Number(§7d§.§,n§);
         super();
         this.§+&§ = new ColorTransform();
         this.§+&§.redOffset = param1;
         this.§+&§.greenOffset = param2;
         this.§+&§.blueOffset = param3;
         graphics.beginFill(0,1);
         graphics.drawRect(-param5,-param6,param5 * 2,param6 * 2);
         scaleX = 100;
         scaleY = 100;
         graphics.endFill();
         this.mAlpha = param4;
         alpha = param4;
         addEventListener(Event.ENTER_FRAME,this.§4!?§);
      }
      
      public function §6C§(param1:Number, param2:Number, param3:Number, param4:Number = 0.5) : void
      {
         if(this.§7!0§ != null)
         {
            this.§7!0§.stop();
         }
         this.§7!0§ = §!<§.§%b§.§9!!§(this.§+&§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§7!0§.play();
      }
      
      public function §&!J§(param1:Number) : void
      {
         this.mAlpha = param1;
         alpha = param1;
      }
      
      public function §6!c§(param1:Number, param2:Number = 0.5) : void
      {
         if(this.§7!0§ != null)
         {
            this.§7!0§.stop();
         }
         this.§7!0§ = §!<§.§%b§.§9!!§(this,{"mAlpha":param1},null,param2);
         this.§7!0§.onComplete = this.§[q§;
         this.§7!0§.play();
      }
      
      private function §[q§() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§7!=§));
      }
      
      private function §4!?§(param1:Event) : void
      {
         transform.colorTransform = this.§+&§;
         alpha = this.mAlpha;
      }
      
      public function clean() : void
      {
         removeEventListener(Event.ENTER_FRAME,this.§4!?§);
      }
   }
}
