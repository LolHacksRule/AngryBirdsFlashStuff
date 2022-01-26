package §_-7F§
{
   import §_-Kj§.§_-8u§;
   import §_-XK§.§_-tC§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   import §in §.§_-tX§;
   
   public class §_-Ip§ extends MovieClip
   {
       
      
      private var §_-TN§:§_-8u§;
      
      private var §_-Lh§:ColorTransform;
      
      public var mAlpha:Number;
      
      public function §_-Ip§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         param5 = Number(param5) || Number(§_-5e§.§_-ZL§);
         param6 = Number(param6) || Number(§_-5e§.§_-Uw§);
         super();
         this.§_-Lh§ = new ColorTransform();
         this.§_-Lh§.redOffset = param1;
         this.§_-Lh§.greenOffset = param2;
         this.§_-Lh§.blueOffset = param3;
         graphics.beginFill(0,1);
         graphics.drawRect(-param5,-param6,param5 * 2,param6 * 2);
         scaleX = 100;
         scaleY = 100;
         graphics.endFill();
         this.mAlpha = param4;
         alpha = param4;
         addEventListener(Event.ENTER_FRAME,this.onUpdate);
      }
      
      public function §_-3a§(param1:Number, param2:Number, param3:Number, param4:Number = 0.5) : void
      {
         if(this.§_-TN§ != null)
         {
            this.§_-TN§.stop();
         }
         this.§_-TN§ = §_-tX§.§finally§(this.§_-Lh§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§_-TN§.play();
      }
      
      public function §_-gv§(param1:Number) : void
      {
         this.mAlpha = param1;
         alpha = param1;
      }
      
      public function §_-Do§(param1:Number, param2:Number = 0.5) : void
      {
         if(this.§_-TN§ != null)
         {
            this.§_-TN§.stop();
         }
         this.§_-TN§ = §_-tX§.§finally§(this,{"mAlpha":param1},null,param2);
         this.§_-TN§.addEventListener(§_-tC§.COMPLETE,this.§_-Nx§);
         this.§_-TN§.play();
      }
      
      private function §_-Nx§(param1:§_-tC§) : void
      {
         this.§_-TN§.removeEventListener(§_-tC§.COMPLETE,this.§_-Nx§);
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§_-eE§));
      }
      
      private function onUpdate(param1:Event) : void
      {
         transform.colorTransform = this.§_-Lh§;
         alpha = this.mAlpha;
      }
      
      public function clean() : void
      {
         removeEventListener(Event.ENTER_FRAME,this.onUpdate);
      }
   }
}
