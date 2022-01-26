package §_-MC§
{
   import §_-He§.§_-05§;
   import §_-LP§.§_-PH§;
   import §_-NB§.§_-mj§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §_-l§ extends MovieClip
   {
       
      
      private var §_-47§:§_-PH§;
      
      private var §_-3y§:ColorTransform;
      
      public var mAlpha:Number;
      
      public function §_-l§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         param5 = Number(param5) || Number(§_-2U§.§_-EK§);
         param6 = Number(param6) || Number(§_-2U§.§_-UU§);
         super();
         this.§_-3y§ = new ColorTransform();
         this.§_-3y§.redOffset = param1;
         this.§_-3y§.greenOffset = param2;
         this.§_-3y§.blueOffset = param3;
         graphics.beginFill(0,1);
         graphics.drawRect(-param5,-param6,param5 * 2,param6 * 2);
         scaleX = 100;
         scaleY = 100;
         graphics.endFill();
         this.mAlpha = param4;
         alpha = param4;
         addEventListener(Event.ENTER_FRAME,this.onUpdate);
      }
      
      public function §_-Gj§(param1:Number, param2:Number, param3:Number, param4:Number = 0.5) : void
      {
         if(this.§_-47§ != null)
         {
            this.§_-47§.stop();
         }
         this.§_-47§ = §_-05§.§_-Yr§(this.§_-3y§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§_-47§.play();
      }
      
      public function §_-Om§(param1:Number) : void
      {
         this.mAlpha = param1;
         alpha = param1;
      }
      
      public function §_-OT§(param1:Number, param2:Number = 0.5) : void
      {
         if(this.§_-47§ != null)
         {
            this.§_-47§.stop();
         }
         this.§_-47§ = §_-05§.§_-Yr§(this,{"mAlpha":param1},null,param2);
         this.§_-47§.addEventListener(§_-mj§.COMPLETE,this.§_-9O§);
         this.§_-47§.play();
      }
      
      private function §_-9O§(param1:§_-mj§) : void
      {
         this.§_-47§.removeEventListener(§_-mj§.COMPLETE,this.§_-9O§);
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§_-ET§));
      }
      
      private function onUpdate(param1:Event) : void
      {
         transform.colorTransform = this.§_-3y§;
         alpha = this.mAlpha;
      }
      
      public function clean() : void
      {
         removeEventListener(Event.ENTER_FRAME,this.onUpdate);
      }
   }
}
