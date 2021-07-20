package §,K§
{
   import §"!&§.§ !5§;
   import §"!&§.§%!>§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §-!$§ extends MovieClip
   {
       
      
      private var §+!7§:§ !5§;
      
      private var §%I§:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var §=O§:Boolean = false;
      
      public function §-!$§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         param5 = Number(param5) || Number(AngryBirdsFP11.§@t§.getAppWidth());
         param6 = Number(param6) || Number(AngryBirdsFP11.§@t§.getAppHeight());
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
         AngryBirdsFP11.§@t§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      public function §%c§(param1:Number, param2:Number, param3:Number, param4:Number = 0.3) : void
      {
         if(this.§=O§)
         {
            return;
         }
         if(this.§+!7§)
         {
            this.§+!7§.stop();
         }
         this.§%I§ = new ColorTransform();
         this.§%I§.redOffset = transform.colorTransform.redOffset;
         this.§%I§.greenOffset = transform.colorTransform.greenOffset;
         this.§%I§.blueOffset = transform.colorTransform.blueOffset;
         this.§+!7§ = §%!>§.§-]§.§?U§(this.§%I§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§+!7§.onComplete = this.§4!!§;
         this.§+!7§.play();
         this.§=O§ = true;
      }
      
      public function §`!'§(param1:Number) : void
      {
         this.mNewAlpha = param1;
         alpha = param1;
      }
      
      public function §0C§(param1:Number, param2:Number = 0.5) : void
      {
         if(this.§+!7§ != null)
         {
            this.§+!7§.stop();
         }
         this.§+!7§ = §%!>§.§-]§.§?U§(this,{"mNewAlpha":param1},null,param2);
         this.§+!7§.onComplete = this.§%S§;
         this.§+!7§.§ D§ = false;
         this.§+!7§.play();
      }
      
      private function §%S§() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§"%§));
      }
      
      private function §4!!§() : void
      {
         this.§=O§ = false;
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§%I§)
         {
            transform.colorTransform = this.§%I§;
            if(!this.§=O§)
            {
               this.§%I§ = null;
            }
         }
         if(alpha != this.mNewAlpha)
         {
            alpha = this.mNewAlpha;
         }
      }
      
      public function clean() : void
      {
         AngryBirdsFP11.§@t§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         if(this.§+!7§)
         {
            this.§+!7§.stop();
            this.§+!7§ = null;
         }
      }
   }
}
