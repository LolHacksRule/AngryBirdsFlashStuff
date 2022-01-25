package §0!_§
{
   import §7H§.§'!Y§;
   import §7H§.§8Q§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §>!'§ extends MovieClip
   {
       
      
      private var §3e§:§'!Y§;
      
      private var §;&§:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var §`!<§:Boolean = false;
      
      public function §>!'§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Boolean = true, param6:Number = NaN, param7:Number = NaN)
      {
         param6 = Number(param6) || Number(§-!#§.§6`§ * 2);
         param7 = Number(param7) || Number(§-!#§.§?!E§ * 2);
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
            param6 = §-!#§.§6`§;
            param7 = §-!#§.§?!E§;
            graphics.beginFill(0,1);
            graphics.drawRect(-param6 / 2,-param7 / 2,param6,param7);
            graphics.endFill();
         }
         this.mNewAlpha = param4;
         alpha = param4;
         this.mouseEnabled = true;
         addEventListener(Event.ENTER_FRAME,this.§%>§);
      }
      
      public function §"§(param1:Number, param2:Number, param3:Number, param4:Number = 0.3) : void
      {
         if(this.§`!<§)
         {
            return;
         }
         if(this.§3e§)
         {
            this.§3e§.stop();
         }
         this.§;&§ = new ColorTransform();
         this.§;&§.redOffset = transform.colorTransform.redOffset;
         this.§;&§.greenOffset = transform.colorTransform.greenOffset;
         this.§;&§.blueOffset = transform.colorTransform.blueOffset;
         this.§3e§ = §8Q§.§]!D§.§^w§(this.§;&§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§3e§.onComplete = this.§8,§;
         this.§3e§.play();
         this.§`!<§ = true;
      }
      
      public function §;!E§(param1:Number) : void
      {
         this.mNewAlpha = param1;
         alpha = param1;
      }
      
      public function §6k§(param1:Number, param2:Number = 0.5, param3:String = "linear") : void
      {
         if(this.§3e§ != null)
         {
            this.§3e§.stop();
         }
         this.§3e§ = §8Q§.§]!D§.§^w§(this,{"mNewAlpha":param1},null,param2,param3);
         this.§3e§.onComplete = this.§,p§;
         this.§3e§.§%!5§ = false;
         this.§3e§.play();
      }
      
      private function §,p§() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§^S§));
      }
      
      private function §8,§() : void
      {
         this.§`!<§ = false;
      }
      
      private function §%>§(param1:Event) : void
      {
         if(this.§;&§)
         {
            transform.colorTransform = this.§;&§;
            if(!this.§`!<§)
            {
               this.§;&§ = null;
            }
         }
         if(alpha != this.mNewAlpha)
         {
            alpha = this.mNewAlpha;
         }
      }
      
      public function clean() : void
      {
         removeEventListener(Event.ENTER_FRAME,this.§%>§);
         if(this.§3e§)
         {
            this.§3e§.stop();
            this.§3e§ = null;
         }
      }
   }
}
