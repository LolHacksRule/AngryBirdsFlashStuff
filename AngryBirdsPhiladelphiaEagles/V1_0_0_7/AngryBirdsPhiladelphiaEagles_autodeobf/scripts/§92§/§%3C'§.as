package §92§
{
   import §?!C§.§6q§;
   import §?!C§.§[!-§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §<'§ extends MovieClip
   {
       
      
      private var §3t§:§6q§;
      
      private var §%!%§:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var §1"§:Boolean = false;
      
      public function §<'§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         param5 = Number(param5) || Number(AngryBirdsFP11.§ j§.getAppWidth());
         param6 = Number(param6) || Number(AngryBirdsFP11.§ j§.getAppHeight());
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
         AngryBirdsFP11.§ j§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      public function §2S§(param1:Number, param2:Number, param3:Number, param4:Number = 0.3) : void
      {
         if(this.§1"§)
         {
            return;
         }
         if(this.§3t§)
         {
            this.§3t§.stop();
         }
         this.§%!%§ = new ColorTransform();
         this.§%!%§.redOffset = transform.colorTransform.redOffset;
         this.§%!%§.greenOffset = transform.colorTransform.greenOffset;
         this.§%!%§.blueOffset = transform.colorTransform.blueOffset;
         this.§3t§ = §[!-§.§ set§.§6B§(this.§%!%§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§3t§.onComplete = this.§[!=§;
         this.§3t§.play();
         this.§1"§ = true;
      }
      
      public function §7T§(param1:Number) : void
      {
         this.mNewAlpha = param1;
         alpha = param1;
      }
      
      public function fadeToAlpha(param1:Number, param2:Number = 0.5) : void
      {
         if(this.§3t§ != null)
         {
            this.§3t§.stop();
         }
         this.§3t§ = §[!-§.§ set§.§6B§(this,{"mNewAlpha":param1},null,param2);
         this.§3t§.onComplete = this.§&$§;
         this.§3t§.§!D§ = false;
         this.§3t§.play();
      }
      
      private function §&$§() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§9!F§));
      }
      
      private function §[!=§() : void
      {
         this.§1"§ = false;
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§%!%§)
         {
            transform.colorTransform = this.§%!%§;
            if(!this.§1"§)
            {
               this.§%!%§ = null;
            }
         }
         if(alpha != this.mNewAlpha)
         {
            alpha = this.mNewAlpha;
         }
      }
      
      public function clean() : void
      {
         AngryBirdsFP11.§ j§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         if(this.§3t§)
         {
            this.§3t§.stop();
            this.§3t§ = null;
         }
      }
   }
}
