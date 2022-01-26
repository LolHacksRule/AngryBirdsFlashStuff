package §<0§
{
   import § ;§.§3!$§;
   import § ;§.§4N§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §?#§ extends MovieClip
   {
       
      
      private var §<U§:§3!$§;
      
      private var §%!,§:ColorTransform;
      
      public var mAlpha:Number;
      
      public function §?#§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         param5 = Number(param5) || Number(§,l§.§"L§);
         param6 = Number(param6) || Number(§,l§.§#S§);
         super();
         this.§%!,§ = new ColorTransform();
         this.§%!,§.redOffset = param1;
         this.§%!,§.greenOffset = param2;
         this.§%!,§.blueOffset = param3;
         graphics.beginFill(0,1);
         graphics.drawRect(-param5,-param6,param5 * 2,param6 * 2);
         scaleX = 100;
         scaleY = 100;
         graphics.endFill();
         this.mAlpha = param4;
         alpha = param4;
         addEventListener(Event.ENTER_FRAME,this.§&!K§);
      }
      
      public function §0!-§(param1:Number, param2:Number, param3:Number, param4:Number = 0.5) : void
      {
         if(this.§<U§ != null)
         {
            this.§<U§.stop();
         }
         this.§<U§ = §4N§.§-!U§.§5!N§(this.§%!,§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§<U§.play();
      }
      
      public function §5!<§(param1:Number) : void
      {
         this.mAlpha = param1;
         alpha = param1;
      }
      
      public function §]N§(param1:Number, param2:Number = 0.5) : void
      {
         if(this.§<U§ != null)
         {
            this.§<U§.stop();
         }
         this.§<U§ = §4N§.§-!U§.§5!N§(this,{"mAlpha":param1},null,param2);
         this.§<U§.onComplete = this.§9>§;
         this.§<U§.play();
      }
      
      private function §9>§() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§8D§));
      }
      
      private function §&!K§(param1:Event) : void
      {
         transform.colorTransform = this.§%!,§;
         alpha = this.mAlpha;
      }
      
      public function clean() : void
      {
         removeEventListener(Event.ENTER_FRAME,this.§&!K§);
      }
   }
}
