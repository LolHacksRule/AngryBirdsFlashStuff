package §_-sT§
{
   import §_-20§.§_-j5§;
   import §_-6v§.§_-In§;
   import §_-mD§.§_-29§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §_-Da§ extends MovieClip
   {
       
      
      private var §_-R3§:§_-j5§;
      
      private var §_-yx§:ColorTransform;
      
      public var mAlpha:Number;
      
      public function §_-Da§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         param5 = Number(param5) || Number(§_-Qu§.§_-1q§);
         param6 = Number(param6) || Number(§_-Qu§.§_-SP§);
         super();
         this.§_-yx§ = new ColorTransform();
         this.§_-yx§.redOffset = param1;
         this.§_-yx§.greenOffset = param2;
         this.§_-yx§.blueOffset = param3;
         graphics.beginFill(0,1);
         graphics.drawRect(0,0,param5,param6);
         graphics.endFill();
         this.mAlpha = param4;
         alpha = param4;
         addEventListener(Event.ENTER_FRAME,this.onUpdate);
      }
      
      public function §_-z8§(param1:Number, param2:Number, param3:Number, param4:Number = 0.5) : void
      {
         if(this.§_-R3§ != null)
         {
            this.§_-R3§.stop();
         }
         this.§_-R3§ = §_-29§.§_-NW§(this.§_-yx§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§_-R3§.play();
      }
      
      public function §_-wk§(param1:Number) : void
      {
         this.mAlpha = param1;
         alpha = param1;
      }
      
      public function §_-Mv§(param1:Number, param2:Number = 0.5) : void
      {
         if(this.§_-R3§ != null)
         {
            this.§_-R3§.stop();
         }
         this.§_-R3§ = §_-29§.§_-NW§(this,{"mAlpha":param1},null,param2);
         this.§_-R3§.addEventListener(§_-In§.COMPLETE,this.§_-E8§);
         this.§_-R3§.play();
      }
      
      private function §_-E8§(param1:§_-In§) : void
      {
         this.§_-R3§.removeEventListener(§_-In§.COMPLETE,this.§_-E8§);
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§_-F9§));
      }
      
      private function onUpdate(param1:Event) : void
      {
         transform.colorTransform = this.§_-yx§;
         alpha = this.mAlpha;
      }
      
      public function clean() : void
      {
         removeEventListener(Event.ENTER_FRAME,this.onUpdate);
      }
   }
}
