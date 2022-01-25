package §,@§
{
   import §[!=§.§!!K§;
   import §[!=§.§3!2§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §"!'§ extends MovieClip
   {
       
      
      private var §-!7§:§3!2§;
      
      private var §"!V§:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var §`D§:Boolean = false;
      
      public function §"!'§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Boolean = true, param6:Number = NaN, param7:Number = NaN)
      {
         param6 = Number(param6) || Number(§"!@§.§9<§ * 2);
         param7 = Number(param7) || Number(§"!@§.§7e§ * 2);
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
            param6 = §"!@§.§9<§;
            param7 = §"!@§.§7e§;
            graphics.beginFill(0,1);
            graphics.drawRect(-param6 / 2,-param7 / 2,param6,param7);
            graphics.endFill();
         }
         this.mNewAlpha = param4;
         alpha = param4;
         this.mouseEnabled = true;
         addEventListener(Event.ENTER_FRAME,this.§8A§);
      }
      
      public function §+7§(param1:Number, param2:Number, param3:Number, param4:Number = 0.3) : void
      {
         if(this.§`D§)
         {
            return;
         }
         if(this.§-!7§)
         {
            this.§-!7§.stop();
         }
         this.§"!V§ = new ColorTransform();
         this.§"!V§.redOffset = transform.colorTransform.redOffset;
         this.§"!V§.greenOffset = transform.colorTransform.greenOffset;
         this.§"!V§.blueOffset = transform.colorTransform.blueOffset;
         this.§-!7§ = §!!K§.§@!c§.§'!H§(this.§"!V§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§-!7§.onComplete = this.§45§;
         this.§-!7§.play();
         this.§`D§ = true;
      }
      
      public function §1K§(param1:Number) : void
      {
         this.mNewAlpha = param1;
         alpha = param1;
      }
      
      public function §3d§(param1:Number, param2:Number = 0.5, param3:String = "linear") : void
      {
         if(this.§-!7§ != null)
         {
            this.§-!7§.stop();
         }
         this.§-!7§ = §!!K§.§@!c§.§'!H§(this,{"mNewAlpha":param1},null,param2,param3);
         this.§-!7§.onComplete = this.§<C§;
         this.§-!7§.§1!1§ = false;
         this.§-!7§.play();
      }
      
      private function §<C§() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§>!'§));
      }
      
      private function §45§() : void
      {
         this.§`D§ = false;
      }
      
      private function §8A§(param1:Event) : void
      {
         if(this.§"!V§)
         {
            transform.colorTransform = this.§"!V§;
            if(!this.§`D§)
            {
               this.§"!V§ = null;
            }
         }
         if(alpha != this.mNewAlpha)
         {
            alpha = this.mNewAlpha;
         }
      }
      
      public function clean() : void
      {
         removeEventListener(Event.ENTER_FRAME,this.§8A§);
         if(this.§-!7§)
         {
            this.§-!7§.stop();
            this.§-!7§ = null;
         }
      }
   }
}
