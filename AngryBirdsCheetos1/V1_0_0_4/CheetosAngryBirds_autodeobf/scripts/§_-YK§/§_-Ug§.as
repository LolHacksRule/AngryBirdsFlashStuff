package §_-YK§
{
   import §_-9s§.§_-Vc§;
   import §_-9s§.§_-db§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §_-Ug§ extends MovieClip
   {
       
      
      private var §_-KQ§:§_-Vc§;
      
      private var §_-tl§:ColorTransform;
      
      public var mAlpha:Number;
      
      public function §_-Ug§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         param5 = Number(param5) || Number(§_-WX§.§_-I0§);
         param6 = Number(param6) || Number(§_-WX§.§_-ZV§);
         super();
         this.§_-tl§ = new ColorTransform();
         this.§_-tl§.redOffset = param1;
         this.§_-tl§.greenOffset = param2;
         this.§_-tl§.blueOffset = param3;
         graphics.beginFill(0,1);
         graphics.drawRect(-param5,-param6,param5 * 2,param6 * 2);
         scaleX = 100;
         scaleY = 100;
         graphics.endFill();
         this.mAlpha = param4;
         alpha = param4;
         addEventListener(Event.ENTER_FRAME,this.§_-R§);
      }
      
      public function §_-Tt§(param1:Number, param2:Number, param3:Number, param4:Number = 0.5) : void
      {
         if(this.§_-KQ§ != null)
         {
            this.§_-KQ§.stop();
         }
         this.§_-KQ§ = §_-db§.§_-yU§.§_-mZ§(this.§_-tl§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§_-KQ§.play();
      }
      
      public function §_-Hi§(param1:Number) : void
      {
         this.mAlpha = param1;
         alpha = param1;
      }
      
      public function §_-EU§(param1:Number, param2:Number = 0.5) : void
      {
         if(this.§_-KQ§ != null)
         {
            this.§_-KQ§.stop();
         }
         this.§_-KQ§ = §_-db§.§_-yU§.§_-mZ§(this,{"mAlpha":param1},null,param2);
         this.§_-KQ§.onComplete = this.§_-xa§;
         this.§_-KQ§.play();
      }
      
      private function §_-xa§() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§_-ea§));
      }
      
      private function §_-R§(param1:Event) : void
      {
         transform.colorTransform = this.§_-tl§;
         alpha = this.mAlpha;
      }
      
      public function clean() : void
      {
         removeEventListener(Event.ENTER_FRAME,this.§_-R§);
      }
   }
}
