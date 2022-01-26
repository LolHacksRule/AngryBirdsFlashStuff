package §_-vp§
{
   import §_-bg§.§_-xF§;
   import §_-rb§.§_-2Q§;
   import §_-uz§.§_-wX§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §_-8-§ extends MovieClip
   {
       
      
      private var §_-Dn§:§_-wX§;
      
      private var §_-7s§:ColorTransform;
      
      public var mAlpha:Number;
      
      public function §_-8-§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         param5 = Number(param5) || Number(§_-I8§.§_-iX§);
         param6 = Number(param6) || Number(§_-I8§.§_-q§);
         super();
         this.§_-7s§ = new ColorTransform();
         this.§_-7s§.redOffset = param1;
         this.§_-7s§.greenOffset = param2;
         this.§_-7s§.blueOffset = param3;
         graphics.beginFill(0,1);
         graphics.drawRect(-param5,-param6,param5 * 2,param6 * 2);
         scaleX = 100;
         scaleY = 100;
         graphics.endFill();
         this.mAlpha = param4;
         alpha = param4;
         addEventListener(Event.ENTER_FRAME,this.onUpdate);
      }
      
      public function §_-J-§(param1:Number, param2:Number, param3:Number, param4:Number = 0.5) : void
      {
         if(this.§_-Dn§ != null)
         {
            this.§_-Dn§.stop();
         }
         this.§_-Dn§ = §_-xF§.§_-JE§(this.§_-7s§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§_-Dn§.play();
      }
      
      public function §_-2G§(param1:Number) : void
      {
         this.mAlpha = param1;
         alpha = param1;
      }
      
      public function §_-Ai§(param1:Number, param2:Number = 0.5) : void
      {
         if(this.§_-Dn§ != null)
         {
            this.§_-Dn§.stop();
         }
         this.§_-Dn§ = §_-xF§.§_-JE§(this,{"mAlpha":param1},null,param2);
         this.§_-Dn§.addEventListener(§_-2Q§.COMPLETE,this.§_-ir§);
         this.§_-Dn§.play();
      }
      
      private function §_-ir§(param1:§_-2Q§) : void
      {
         this.§_-Dn§.removeEventListener(§_-2Q§.COMPLETE,this.§_-ir§);
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§_-wY§));
      }
      
      private function onUpdate(param1:Event) : void
      {
         transform.colorTransform = this.§_-7s§;
         alpha = this.mAlpha;
      }
      
      public function clean() : void
      {
         removeEventListener(Event.ENTER_FRAME,this.onUpdate);
      }
   }
}
