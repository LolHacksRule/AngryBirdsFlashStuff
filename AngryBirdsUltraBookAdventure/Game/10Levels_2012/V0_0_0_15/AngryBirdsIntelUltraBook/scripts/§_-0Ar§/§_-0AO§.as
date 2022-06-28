package §_-0Ar§
{
   import §_-0AB§.§_-cx§;
   import §_-0AB§.§_-dd§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §_-0AO§ extends MovieClip
   {
       
      
      private var §_-rx§:§_-dd§;
      
      private var §_-09y§:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var §_-OF§:Boolean = false;
      
      public function §_-0AO§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         param5 = Number(param5) || Number(AngryBirdsFP11.§_-07§.getAppWidth());
         param6 = Number(param6) || Number(AngryBirdsFP11.§_-07§.getAppHeight());
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
         AngryBirdsFP11.§_-07§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      public function §_-A2§(param1:Number, param2:Number, param3:Number, param4:Number = 0.3) : void
      {
         if(this.§_-OF§)
         {
            return;
         }
         if(this.§_-rx§)
         {
            this.§_-rx§.stop();
         }
         this.§_-09y§ = new ColorTransform();
         this.§_-09y§.redOffset = transform.colorTransform.redOffset;
         this.§_-09y§.greenOffset = transform.colorTransform.greenOffset;
         this.§_-09y§.blueOffset = transform.colorTransform.blueOffset;
         this.§_-rx§ = §_-cx§.§_-3S§.§_-Wf§(this.§_-09y§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§_-rx§.onComplete = this.§_-00§;
         this.§_-rx§.play();
         this.§_-OF§ = true;
      }
      
      public function §_-it§(param1:Number) : void
      {
         this.mNewAlpha = param1;
         alpha = param1;
      }
      
      public function §_-Zs§(param1:Number, param2:Number = 0.5) : void
      {
         if(this.§_-rx§ != null)
         {
            this.§_-rx§.stop();
         }
         this.§_-rx§ = §_-cx§.§_-3S§.§_-Wf§(this,{"mNewAlpha":param1},null,param2);
         this.§_-rx§.onComplete = this.§_-yH§;
         this.§_-rx§.§_-04E§ = false;
         this.§_-rx§.play();
      }
      
      private function §_-yH§() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§_-SC§));
      }
      
      private function §_-00§() : void
      {
         this.§_-OF§ = false;
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§_-09y§)
         {
            transform.colorTransform = this.§_-09y§;
            if(!this.§_-OF§)
            {
               this.§_-09y§ = null;
            }
         }
         if(alpha != this.mNewAlpha)
         {
            alpha = this.mNewAlpha;
         }
      }
      
      public function clean() : void
      {
         AngryBirdsFP11.§_-07§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         if(this.§_-rx§)
         {
            this.§_-rx§.stop();
            this.§_-rx§ = null;
         }
      }
   }
}
