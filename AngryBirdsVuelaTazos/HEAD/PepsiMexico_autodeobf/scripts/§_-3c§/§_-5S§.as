package §_-3c§
{
   import §_-cJ§.§_-WM§;
   import §_-cJ§.§_-xx§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §_-5S§ extends MovieClip
   {
       
      
      private var §_-M5§:§_-WM§;
      
      private var §_-Wo§:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var §_-v2§:Boolean = false;
      
      public function §_-5S§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         param5 = Number(param5) || Number(§_-q0§.§ null§);
         param6 = Number(param6) || Number(§_-q0§.§_-aD§);
         super();
         var _loc7_:ColorTransform;
         (_loc7_ = new ColorTransform()).redOffset = param1;
         _loc7_.greenOffset = param2;
         _loc7_.blueOffset = param3;
         transform.colorTransform = _loc7_;
         graphics.beginFill(0,1);
         graphics.drawRect(-param5,-param6,param5 * 2,param6 * 2);
         scaleX = 100;
         scaleY = 100;
         graphics.endFill();
         this.mNewAlpha = param4;
         alpha = param4;
         this.mouseEnabled = true;
         addEventListener(Event.ENTER_FRAME,this.§_-Yl§);
      }
      
      public function §_-D7§(param1:Number, param2:Number, param3:Number, param4:Number = 0.3) : void
      {
         if(this.§_-v2§)
         {
            return;
         }
         if(this.§_-M5§)
         {
            this.§_-M5§.stop();
         }
         this.§_-Wo§ = new ColorTransform();
         this.§_-Wo§.redOffset = transform.colorTransform.redOffset;
         this.§_-Wo§.greenOffset = transform.colorTransform.greenOffset;
         this.§_-Wo§.blueOffset = transform.colorTransform.blueOffset;
         this.§_-M5§ = §_-xx§.§_-uP§.§_-Vb§(this.§_-Wo§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§_-M5§.onComplete = this.§_-Bm§;
         this.§_-M5§.play();
         this.§_-v2§ = true;
      }
      
      public function §_-fr§(param1:Number) : void
      {
         this.mNewAlpha = param1;
         alpha = param1;
      }
      
      public function §_-AV§(param1:Number, param2:Number = 0.5) : void
      {
         if(this.§_-M5§ != null)
         {
            this.§_-M5§.stop();
         }
         this.§_-M5§ = §_-xx§.§_-uP§.§_-Vb§(this,{"mNewAlpha":param1},null,param2);
         this.§_-M5§.onComplete = this.§_-SF§;
         this.§_-M5§.§_-Mi§ = false;
         this.§_-M5§.play();
      }
      
      private function §_-SF§() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§_-6x§));
      }
      
      private function §_-Bm§() : void
      {
         this.§_-v2§ = false;
      }
      
      private function §_-Yl§(param1:Event) : void
      {
         if(this.§_-Wo§)
         {
            transform.colorTransform = this.§_-Wo§;
            if(!this.§_-v2§)
            {
               this.§_-Wo§ = null;
            }
         }
         if(alpha != this.mNewAlpha)
         {
            alpha = this.mNewAlpha;
         }
      }
      
      public function clean() : void
      {
         removeEventListener(Event.ENTER_FRAME,this.§_-Yl§);
         if(this.§_-M5§)
         {
            this.§_-M5§.stop();
            this.§_-M5§ = null;
         }
      }
   }
}
