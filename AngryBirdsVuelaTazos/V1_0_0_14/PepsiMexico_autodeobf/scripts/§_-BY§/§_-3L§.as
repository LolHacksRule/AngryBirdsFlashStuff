package §_-BY§
{
   import §_-12§.§_-7l§;
   import §_-3P§.§_-os§;
   import §_-Qn§.§_-AG§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §_-3L§ extends MovieClip
   {
       
      
      private var §_-Nb§:§_-7l§;
      
      private var §_-Ai§:ColorTransform;
      
      public var mAlpha:Number;
      
      public function §_-3L§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         param5 = Number(param5) || Number(§_-Tj§.§_-4r§);
         param6 = Number(param6) || Number(§_-Tj§.§_-ho§);
         super();
         this.§_-Ai§ = new ColorTransform();
         this.§_-Ai§.redOffset = param1;
         this.§_-Ai§.greenOffset = param2;
         this.§_-Ai§.blueOffset = param3;
         graphics.beginFill(0,1);
         graphics.drawRect(-param5,-param6,param5 * 2,param6 * 2);
         scaleX = 100;
         scaleY = 100;
         graphics.endFill();
         this.mAlpha = param4;
         alpha = param4;
         addEventListener(Event.ENTER_FRAME,this.onUpdate);
      }
      
      public function §_-KI§(param1:Number, param2:Number, param3:Number, param4:Number = 0.5) : void
      {
         if(this.§_-Nb§ != null)
         {
            this.§_-Nb§.stop();
         }
         this.§_-Nb§ = §_-AG§.§_-aI§(this.§_-Ai§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§_-Nb§.play();
      }
      
      public function §_-7P§(param1:Number) : void
      {
         this.mAlpha = param1;
         alpha = param1;
      }
      
      public function §_-xX§(param1:Number, param2:Number = 0.5) : void
      {
         if(this.§_-Nb§ != null)
         {
            this.§_-Nb§.stop();
         }
         this.§_-Nb§ = §_-AG§.§_-aI§(this,{"mAlpha":param1},null,param2);
         this.§_-Nb§.addEventListener(§_-os§.COMPLETE,this.§_-s9§);
         this.§_-Nb§.play();
      }
      
      private function §_-s9§(param1:§_-os§) : void
      {
         this.§_-Nb§.removeEventListener(§_-os§.COMPLETE,this.§_-s9§);
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§_-4i§));
      }
      
      private function onUpdate(param1:Event) : void
      {
         transform.colorTransform = this.§_-Ai§;
         alpha = this.mAlpha;
      }
      
      public function clean() : void
      {
         removeEventListener(Event.ENTER_FRAME,this.onUpdate);
      }
   }
}
