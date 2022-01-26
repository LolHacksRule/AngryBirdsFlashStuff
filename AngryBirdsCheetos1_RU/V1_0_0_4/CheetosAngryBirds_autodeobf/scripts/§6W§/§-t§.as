package §6W§
{
   import §6!P§.§88§;
   import §6!P§.§^!>§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §-t§ extends MovieClip
   {
       
      
      private var §%!A§:§88§;
      
      private var §@!0§:ColorTransform;
      
      public var mAlpha:Number;
      
      public function §-t§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         param5 = Number(param5) || Number(§4+§.§1=§);
         param6 = Number(param6) || Number(§4+§.§@!#§);
         super();
         this.§@!0§ = new ColorTransform();
         this.§@!0§.redOffset = param1;
         this.§@!0§.greenOffset = param2;
         this.§@!0§.blueOffset = param3;
         graphics.beginFill(0,1);
         graphics.drawRect(-param5,-param6,param5 * 2,param6 * 2);
         scaleX = 100;
         scaleY = 100;
         graphics.endFill();
         this.mAlpha = param4;
         alpha = param4;
         addEventListener(Event.ENTER_FRAME,this.§<!0§);
      }
      
      public function §-I§(param1:Number, param2:Number, param3:Number, param4:Number = 0.5) : void
      {
         if(this.§%!A§ != null)
         {
            this.§%!A§.stop();
         }
         this.§%!A§ = §^!>§.§[P§.§@m§(this.§@!0§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§%!A§.play();
      }
      
      public function §7&§(param1:Number) : void
      {
         this.mAlpha = param1;
         alpha = param1;
      }
      
      public function §'!N§(param1:Number, param2:Number = 0.5) : void
      {
         if(this.§%!A§ != null)
         {
            this.§%!A§.stop();
         }
         this.§%!A§ = §^!>§.§[P§.§@m§(this,{"mAlpha":param1},null,param2);
         this.§%!A§.onComplete = this.§,5§;
         this.§%!A§.play();
      }
      
      private function §,5§() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§8!>§));
      }
      
      private function §<!0§(param1:Event) : void
      {
         transform.colorTransform = this.§@!0§;
         alpha = this.mAlpha;
      }
      
      public function clean() : void
      {
         removeEventListener(Event.ENTER_FRAME,this.§<!0§);
      }
   }
}
