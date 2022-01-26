package §_-Ts§
{
   import §_-UQ§.§_-QZ§;
   import §_-ZI§.§_-Vu§;
   import §_-c7§.§_-m8§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §_-pl§ extends MovieClip
   {
       
      
      private var §_-EI§:§_-Vu§;
      
      private var §_-80§:ColorTransform;
      
      public var mAlpha:Number;
      
      public function §_-pl§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         param5 = Number(param5) || Number(§_-0Y§.§_-dN§);
         param6 = Number(param6) || Number(§_-0Y§.§_-mI§);
         super();
         this.§_-80§ = new ColorTransform();
         this.§_-80§.redOffset = param1;
         this.§_-80§.greenOffset = param2;
         this.§_-80§.blueOffset = param3;
         graphics.beginFill(0,1);
         graphics.drawRect(0,0,param5,param6);
         graphics.endFill();
         this.mAlpha = param4;
         alpha = param4;
         addEventListener(Event.ENTER_FRAME,this.onUpdate);
      }
      
      public function §_-Ka§(param1:Number, param2:Number, param3:Number, param4:Number = 0.5) : void
      {
         if(this.§_-EI§ != null)
         {
            this.§_-EI§.stop();
         }
         this.§_-EI§ = §_-m8§.§_-Y8§(this.§_-80§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§_-EI§.play();
      }
      
      public function §_-Jw§(param1:Number) : void
      {
         this.mAlpha = param1;
         alpha = param1;
      }
      
      public function §_-BE§(param1:Number, param2:Number = 0.5) : void
      {
         if(this.§_-EI§ != null)
         {
            this.§_-EI§.stop();
         }
         this.§_-EI§ = §_-m8§.§_-Y8§(this,{"mAlpha":param1},null,param2);
         this.§_-EI§.addEventListener(§_-QZ§.COMPLETE,this.§_-Ae§);
         this.§_-EI§.play();
      }
      
      private function §_-Ae§(param1:§_-QZ§) : void
      {
         this.§_-EI§.removeEventListener(§_-QZ§.COMPLETE,this.§_-Ae§);
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§_-7b§));
      }
      
      private function onUpdate(param1:Event) : void
      {
         transform.colorTransform = this.§_-80§;
         alpha = this.mAlpha;
      }
      
      public function clean() : void
      {
         removeEventListener(Event.ENTER_FRAME,this.onUpdate);
      }
   }
}
