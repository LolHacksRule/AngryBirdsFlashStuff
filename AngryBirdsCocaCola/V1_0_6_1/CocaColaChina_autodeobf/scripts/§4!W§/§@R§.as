package §4!W§
{
   import §6a§.§'!9§;
   import §6a§.§;!a§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §@R§ extends MovieClip
   {
       
      
      private var §?T§:§'!9§;
      
      private var §7!A§:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var §+!#§:Boolean = false;
      
      public function §@R§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Boolean = true, param6:Number = NaN, param7:Number = NaN)
      {
         param6 = Number(param6) || Number(§6T§.§,x§ * 2);
         param7 = Number(param7) || Number(§6T§.§+!U§ * 2);
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
            param6 = §6T§.§,x§;
            param7 = §6T§.§+!U§;
            graphics.beginFill(0,1);
            graphics.drawRect(-param6 / 2,-param7 / 2,param6,param7);
            graphics.endFill();
         }
         this.mNewAlpha = param4;
         alpha = param4;
         this.mouseEnabled = true;
         addEventListener(Event.ENTER_FRAME,this.§%F§);
      }
      
      public function §-!F§(param1:Number, param2:Number, param3:Number, param4:Number = 0.3) : void
      {
         if(this.§+!#§)
         {
            return;
         }
         if(this.§?T§)
         {
            this.§?T§.stop();
         }
         this.§7!A§ = new ColorTransform();
         this.§7!A§.redOffset = transform.colorTransform.redOffset;
         this.§7!A§.greenOffset = transform.colorTransform.greenOffset;
         this.§7!A§.blueOffset = transform.colorTransform.blueOffset;
         this.§?T§ = §;!a§.§0%§.§,w§(this.§7!A§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§?T§.onComplete = this.§1l§;
         this.§?T§.play();
         this.§+!#§ = true;
      }
      
      public function §9v§(param1:Number) : void
      {
         this.mNewAlpha = param1;
         alpha = param1;
      }
      
      public function §=@§(param1:Number, param2:Number = 0.5, param3:String = "linear") : void
      {
         if(this.§?T§ != null)
         {
            this.§?T§.stop();
         }
         this.§?T§ = §;!a§.§0%§.§,w§(this,{"mNewAlpha":param1},null,param2,param3);
         this.§?T§.onComplete = this.§`=§;
         this.§?T§.§'![§ = false;
         this.§?T§.play();
      }
      
      private function §`=§() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§1F§));
      }
      
      private function §1l§() : void
      {
         this.§+!#§ = false;
      }
      
      private function §%F§(param1:Event) : void
      {
         if(this.§7!A§)
         {
            transform.colorTransform = this.§7!A§;
            if(!this.§+!#§)
            {
               this.§7!A§ = null;
            }
         }
         if(alpha != this.mNewAlpha)
         {
            alpha = this.mNewAlpha;
         }
      }
      
      public function clean() : void
      {
         removeEventListener(Event.ENTER_FRAME,this.§%F§);
         if(this.§?T§)
         {
            this.§?T§.stop();
            this.§?T§ = null;
         }
      }
   }
}
