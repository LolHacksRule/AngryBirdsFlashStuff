package § !W§
{
   import § ;§.§3!$§;
   import § ;§.§4N§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §<U§ extends MovieClip
   {
       
      
      private var §%!,§:§3!$§;
      
      private var §0!-§:ColorTransform;
      
      public var mAlpha:Number;
      
      public function §<U§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         param5 = Number(param5) || Number(§,l§.§"L§);
         param6 = Number(param6) || Number(§,l§.§#S§);
         super();
         this.§0!-§ = new ColorTransform();
         this.§0!-§.redOffset = param1;
         this.§0!-§.greenOffset = param2;
         this.§0!-§.blueOffset = param3;
         graphics.beginFill(0,1);
         graphics.drawRect(-param5,-param6,param5 * 2,param6 * 2);
         scaleX = 100;
         scaleY = 100;
         graphics.endFill();
         this.mAlpha = param4;
         alpha = param4;
         addEventListener(Event.ENTER_FRAME,this.§?'§);
      }
      
      public function §]N§(param1:Number, param2:Number, param3:Number, param4:Number = 0.5) : void
      {
         if(this.§%!,§ != null)
         {
            this.§%!,§.stop();
         }
         this.§%!,§ = §4N§.§!!L§.§5!N§(this.§0!-§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§%!,§.play();
      }
      
      public function §5!<§(param1:Number) : void
      {
         this.mAlpha = param1;
         alpha = param1;
      }
      
      public function §9>§(param1:Number, param2:Number = 0.5) : void
      {
         if(this.§%!,§ != null)
         {
            this.§%!,§.stop();
         }
         this.§%!,§ = §4N§.§!!L§.§5!N§(this,{"mAlpha":param1},null,param2);
         this.§%!,§.onComplete = this.§&!K§;
         this.§%!,§.play();
      }
      
      private function §&!K§() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§?#§));
      }
      
      private function §?'§(param1:Event) : void
      {
         transform.colorTransform = this.§0!-§;
         alpha = this.mAlpha;
      }
      
      public function clean() : void
      {
         removeEventListener(Event.ENTER_FRAME,this.§?'§);
      }
   }
}
