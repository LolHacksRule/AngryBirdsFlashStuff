package §_-ZQ§
{
   import §_-hx§.§_-Z0§;
   import §_-hx§.§_-lq§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §_-my§ extends MovieClip
   {
       
      
      private var §_-Yh§:§_-Z0§;
      
      private var §_-yp§:ColorTransform;
      
      public var mAlpha:Number;
      
      public function §_-my§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         param5 = Number(param5) || Number(§_-Vc§.§_-jC§);
         param6 = Number(param6) || Number(§_-Vc§.§_-0-3§);
         super();
         this.§_-yp§ = new ColorTransform();
         this.§_-yp§.redOffset = param1;
         this.§_-yp§.greenOffset = param2;
         this.§_-yp§.blueOffset = param3;
         graphics.beginFill(0,1);
         graphics.drawRect(-param5,-param6,param5 * 2,param6 * 2);
         scaleX = 100;
         scaleY = 100;
         graphics.endFill();
         this.mAlpha = param4;
         alpha = param4;
         addEventListener(Event.ENTER_FRAME,this.§_-IU§);
      }
      
      public function §_-zU§(param1:Number, param2:Number, param3:Number, param4:Number = 0.5) : void
      {
         if(this.§_-Yh§ != null)
         {
            this.§_-Yh§.stop();
         }
         this.§_-Yh§ = §_-lq§.§var §.§_-OC§(this.§_-yp§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§_-Yh§.play();
      }
      
      public function §_-vP§(param1:Number) : void
      {
         this.mAlpha = param1;
         alpha = param1;
      }
      
      public function §_-Y0§(param1:Number, param2:Number = 0.5) : void
      {
         if(this.§_-Yh§ != null)
         {
            this.§_-Yh§.stop();
         }
         this.§_-Yh§ = §_-lq§.§var §.§_-OC§(this,{"mAlpha":param1},null,param2);
         this.§_-Yh§.onComplete = this.§_-lz§;
         this.§_-Yh§.play();
      }
      
      private function §_-lz§() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§_-AD§));
      }
      
      private function §_-IU§(param1:Event) : void
      {
         transform.colorTransform = this.§_-yp§;
         alpha = this.mAlpha;
      }
      
      public function clean() : void
      {
         removeEventListener(Event.ENTER_FRAME,this.§_-IU§);
      }
   }
}
