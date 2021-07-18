package §9!@§
{
   import §5!1§.§"!X§;
   import §5!1§.§&[§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §-k§ extends MovieClip
   {
       
      
      private var §'V§:§&[§;
      
      private var §3!4§:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var §@!'§:Boolean = false;
      
      public function §-k§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Boolean = true, param6:Number = NaN, param7:Number = NaN)
      {
         param6 = Number(param6) || Number(§,L§.§1'§ * 2);
         param7 = Number(param7) || Number(§,L§.§!!d§ * 2);
         super();
         var _loc8_:ColorTransform;
         (_loc8_ = new ColorTransform()).redOffset = param1;
         _loc8_.greenOffset = param2;
         _loc8_.blueOffset = param3;
         transform.colorTransform = _loc8_;
         if(param5)
         {
            graphics.beginFill(0,1);
            graphics.drawRect(-param6,-param7,param6 * 2,param7 * 2);
            scaleX = 100;
            scaleY = 100;
            graphics.endFill();
         }
         else
         {
            param6 = §,L§.§1'§;
            param7 = §,L§.§!!d§;
            graphics.beginFill(0,1);
            graphics.drawRect(-param6 / 2,-param7 / 2,param6,param7);
            graphics.endFill();
         }
         this.mNewAlpha = param4;
         alpha = param4;
         this.mouseEnabled = true;
         addEventListener(Event.ENTER_FRAME,this.§&!7§);
      }
      
      public function §'3§(param1:Number, param2:Number, param3:Number, param4:Number = 0.3) : void
      {
         if(this.§@!'§)
         {
            return;
         }
         if(this.§'V§)
         {
            this.§'V§.stop();
         }
         this.§3!4§ = new ColorTransform();
         this.§3!4§.redOffset = transform.colorTransform.redOffset;
         this.§3!4§.greenOffset = transform.colorTransform.greenOffset;
         this.§3!4§.blueOffset = transform.colorTransform.blueOffset;
         this.§'V§ = §"!X§.§ s§.§%!;§(this.§3!4§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§'V§.onComplete = this.§2@§;
         this.§'V§.play();
         this.§@!'§ = true;
      }
      
      public function §import§(param1:Number) : void
      {
         this.mNewAlpha = param1;
         alpha = param1;
      }
      
      public function §4!?§(param1:Number, param2:Number = 0.5, param3:Function = null) : void
      {
         if(this.§'V§ != null)
         {
            this.§'V§.stop();
         }
         this.§'V§ = §"!X§.§ s§.§%!;§(this,{"mNewAlpha":param1},null,param2,param3);
         this.§'V§.onComplete = this.§;<§;
         this.§'V§.§<!-§ = false;
         this.§'V§.play();
      }
      
      private function §;<§() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.override));
      }
      
      private function §2@§() : void
      {
         this.§@!'§ = false;
      }
      
      private function §&!7§(param1:Event) : void
      {
         if(this.§3!4§)
         {
            transform.colorTransform = this.§3!4§;
            if(!this.§@!'§)
            {
               this.§3!4§ = null;
            }
         }
         if(alpha != this.mNewAlpha)
         {
            alpha = this.mNewAlpha;
         }
      }
      
      public function clean() : void
      {
         removeEventListener(Event.ENTER_FRAME,this.§&!7§);
         if(this.§'V§)
         {
            this.§'V§.stop();
            this.§'V§ = null;
         }
      }
   }
}
