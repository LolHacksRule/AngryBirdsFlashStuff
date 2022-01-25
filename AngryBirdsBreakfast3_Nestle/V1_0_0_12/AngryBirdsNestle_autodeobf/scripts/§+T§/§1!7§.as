package §+T§
{
   import §&!I§.§8!@§;
   import §@!0§.§%"!§;
   import §@!0§.§^!T§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §1!7§ extends MovieClip
   {
       
      
      private var §[2§:§^!T§;
      
      private var §1K§:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var §[^§:Boolean = false;
      
      public function §1!7§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         param5 = Number(param5) || Number(§-!2§.§7O§.getAppWidth());
         param6 = Number(param6) || Number(§-!2§.§7O§.getAppHeight());
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
         §-!2§.§7O§.addEventListener(§8!@§.§-!P§,this.onEnterFrame);
      }
      
      public function §`!T§(param1:Number, param2:Number, param3:Number, param4:Number = 0.3) : void
      {
         if(this.§[^§)
         {
            return;
         }
         if(this.§[2§)
         {
            this.§[2§.stop();
         }
         this.§1K§ = new ColorTransform();
         this.§1K§.redOffset = transform.colorTransform.redOffset;
         this.§1K§.greenOffset = transform.colorTransform.greenOffset;
         this.§1K§.blueOffset = transform.colorTransform.blueOffset;
         this.§[2§ = §%"!§.§&!;§.§"!]§(this.§1K§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§[2§.onComplete = this.§^!I§;
         this.§[2§.play();
         this.§[^§ = true;
      }
      
      public function §&'§(param1:Number) : void
      {
         this.mNewAlpha = param1;
         alpha = param1;
      }
      
      public function §2u§(param1:Number, param2:Number = 0.5) : void
      {
         if(this.§[2§ != null)
         {
            this.§[2§.stop();
         }
         this.§[2§ = §%"!§.§&!;§.§"!]§(this,{"mNewAlpha":param1},null,param2);
         this.§[2§.onComplete = this.§`6§;
         this.§[2§.§]!g§ = false;
         this.§[2§.play();
      }
      
      private function §`6§() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§7! §));
      }
      
      private function §^!I§() : void
      {
         this.§[^§ = false;
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§1K§)
         {
            transform.colorTransform = this.§1K§;
            if(!this.§[^§)
            {
               this.§1K§ = null;
            }
         }
         if(alpha != this.mNewAlpha)
         {
            alpha = this.mNewAlpha;
         }
      }
      
      public function §6!h§() : void
      {
         §-!2§.§7O§.removeEventListener(§8!@§.§-!P§,this.onEnterFrame);
         if(this.§[2§)
         {
            this.§[2§.stop();
            this.§[2§ = null;
         }
      }
   }
}
