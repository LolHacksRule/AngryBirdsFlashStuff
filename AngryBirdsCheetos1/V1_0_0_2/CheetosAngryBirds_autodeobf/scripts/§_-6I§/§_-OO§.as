package §_-6I§
{
   import §_-jV§.§_-GL§;
   import §_-jV§.§_-mI§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §_-OO§ extends MovieClip
   {
       
      
      private var §_-3§:§_-GL§;
      
      private var §_-tZ§:ColorTransform;
      
      public var mAlpha:Number;
      
      public function §_-OO§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         param5 = Number(param5) || Number(§_-rs§.§_-dI§);
         param6 = Number(param6) || Number(§_-rs§.§_-0R§);
         super();
         this.§_-tZ§ = new ColorTransform();
         this.§_-tZ§.redOffset = param1;
         this.§_-tZ§.greenOffset = param2;
         this.§_-tZ§.blueOffset = param3;
         graphics.beginFill(0,1);
         graphics.drawRect(-param5,-param6,param5 * 2,param6 * 2);
         scaleX = 100;
         scaleY = 100;
         graphics.endFill();
         this.mAlpha = param4;
         alpha = param4;
         addEventListener(Event.ENTER_FRAME,this.§_-h9§);
      }
      
      public function §_-yA§(param1:Number, param2:Number, param3:Number, param4:Number = 0.5) : void
      {
         if(this.§_-3§ != null)
         {
            this.§_-3§.stop();
         }
         this.§_-3§ = §_-mI§.§_-0H§.§_-cb§(this.§_-tZ§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§_-3§.play();
      }
      
      public function §_-lZ§(param1:Number) : void
      {
         this.mAlpha = param1;
         alpha = param1;
      }
      
      public function §_-pv§(param1:Number, param2:Number = 0.5) : void
      {
         if(this.§_-3§ != null)
         {
            this.§_-3§.stop();
         }
         this.§_-3§ = §_-mI§.§_-0H§.§_-cb§(this,{"mAlpha":param1},null,param2);
         this.§_-3§.onComplete = this.§_-gR§;
         this.§_-3§.play();
      }
      
      private function §_-gR§() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§_-vA§));
      }
      
      private function §_-h9§(param1:Event) : void
      {
         transform.colorTransform = this.§_-tZ§;
         alpha = this.mAlpha;
      }
      
      public function clean() : void
      {
         removeEventListener(Event.ENTER_FRAME,this.§_-h9§);
      }
   }
}
