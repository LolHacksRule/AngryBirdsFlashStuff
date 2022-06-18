package §?u§
{
   import §?!%§.§ l§;
   import §?!%§.§?!7§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §9&§ extends MovieClip
   {
       
      
      private var §4V§:§ l§;
      
      private var §%R§:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var §-B§:Boolean = false;
      
      public function §9&§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         param5 = Number(param5) || Number(AngryBirdsFP11.§ for§.getAppWidth());
         param6 = Number(param6) || Number(AngryBirdsFP11.§ for§.getAppHeight());
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
         AngryBirdsFP11.§ for§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      public function §2=§(param1:Number, param2:Number, param3:Number, param4:Number = 0.3) : void
      {
         if(this.§-B§)
         {
            return;
         }
         if(this.§4V§)
         {
            this.§4V§.stop();
         }
         this.§%R§ = new ColorTransform();
         this.§%R§.redOffset = transform.colorTransform.redOffset;
         this.§%R§.greenOffset = transform.colorTransform.greenOffset;
         this.§%R§.blueOffset = transform.colorTransform.blueOffset;
         this.§4V§ = §?!7§.§^7§.§^!0§(this.§%R§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§4V§.onComplete = this.§8!$§;
         this.§4V§.play();
         this.§-B§ = true;
      }
      
      public function §!]§(param1:Number) : void
      {
         this.mNewAlpha = param1;
         alpha = param1;
      }
      
      public function §%4§(param1:Number, param2:Number = 0.5) : void
      {
         if(this.§4V§ != null)
         {
            this.§4V§.stop();
         }
         this.§4V§ = §?!7§.§^7§.§^!0§(this,{"mNewAlpha":param1},null,param2);
         this.§4V§.onComplete = this.§=Q§;
         this.§4V§.§8!C§ = false;
         this.§4V§.play();
      }
      
      private function §=Q§() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§<L§));
      }
      
      private function §8!$§() : void
      {
         this.§-B§ = false;
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§%R§)
         {
            transform.colorTransform = this.§%R§;
            if(!this.§-B§)
            {
               this.§%R§ = null;
            }
         }
         if(alpha != this.mNewAlpha)
         {
            alpha = this.mNewAlpha;
         }
      }
      
      public function clean() : void
      {
         AngryBirdsFP11.§ for§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         if(this.§4V§)
         {
            this.§4V§.stop();
            this.§4V§ = null;
         }
      }
   }
}
