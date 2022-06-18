package §,!$§
{
   import §6[§.§;q§;
   import §6[§.§`!-§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §8O§ extends MovieClip
   {
       
      
      private var §;m§:§`!-§;
      
      private var §!k§:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var §!Z§:Boolean = false;
      
      public function §8O§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         param5 = Number(param5) || Number(AngryBirdsFP11.§"h§.getAppWidth());
         param6 = Number(param6) || Number(AngryBirdsFP11.§"h§.getAppHeight());
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
         AngryBirdsFP11.§"h§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      public function §?!&§(param1:Number, param2:Number, param3:Number, param4:Number = 0.3) : void
      {
         if(this.§!Z§)
         {
            return;
         }
         if(this.§;m§)
         {
            this.§;m§.stop();
         }
         this.§!k§ = new ColorTransform();
         this.§!k§.redOffset = transform.colorTransform.redOffset;
         this.§!k§.greenOffset = transform.colorTransform.greenOffset;
         this.§!k§.blueOffset = transform.colorTransform.blueOffset;
         this.§;m§ = §;q§.§9r§.§%!#§(this.§!k§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§;m§.onComplete = this.§>`§;
         this.§;m§.play();
         this.§!Z§ = true;
      }
      
      public function §=;§(param1:Number) : void
      {
         this.mNewAlpha = param1;
         alpha = param1;
      }
      
      public function §'l§(param1:Number, param2:Number = 0.5) : void
      {
         if(this.§;m§ != null)
         {
            this.§;m§.stop();
         }
         this.§;m§ = §;q§.§9r§.§%!#§(this,{"mNewAlpha":param1},null,param2);
         this.§;m§.onComplete = this.§%!%§;
         this.§;m§.§]!&§ = false;
         this.§;m§.play();
      }
      
      private function §%!%§() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§#!9§));
      }
      
      private function §>`§() : void
      {
         this.§!Z§ = false;
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§!k§)
         {
            transform.colorTransform = this.§!k§;
            if(!this.§!Z§)
            {
               this.§!k§ = null;
            }
         }
         if(alpha != this.mNewAlpha)
         {
            alpha = this.mNewAlpha;
         }
      }
      
      public function clean() : void
      {
         AngryBirdsFP11.§"h§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         if(this.§;m§)
         {
            this.§;m§.stop();
            this.§;m§ = null;
         }
      }
   }
}
