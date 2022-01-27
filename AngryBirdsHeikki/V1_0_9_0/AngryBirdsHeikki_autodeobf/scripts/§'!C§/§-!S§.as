package §'!C§
{
   import §8!-§.§1R§;
   import §8!-§.§2!B§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §-!S§ extends MovieClip
   {
       
      
      private var §4"§:§1R§;
      
      private var §+8§:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var §7!+§:Boolean = false;
      
      public function §-!S§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Boolean = true, param6:Number = NaN, param7:Number = NaN)
      {
         param6 = Number(param6) || Number(§"H§.§38§ * 2);
         param7 = Number(param7) || Number(§"H§.§5§ * 2);
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
            param6 = §"H§.§38§;
            param7 = §"H§.§5§;
            graphics.beginFill(0,1);
            graphics.drawRect(-param6 / 2,-param7 / 2,param6,param7);
            graphics.endFill();
         }
         this.mNewAlpha = param4;
         alpha = param4;
         this.mouseEnabled = true;
         addEventListener(Event.ENTER_FRAME,this.§<9§);
      }
      
      public function §#5§(param1:Number, param2:Number, param3:Number, param4:Number = 0.3) : void
      {
         if(this.§7!+§)
         {
            return;
         }
         if(this.§4"§)
         {
            this.§4"§.stop();
         }
         this.§+8§ = new ColorTransform();
         this.§+8§.redOffset = transform.colorTransform.redOffset;
         this.§+8§.greenOffset = transform.colorTransform.greenOffset;
         this.§+8§.blueOffset = transform.colorTransform.blueOffset;
         this.§4"§ = §2!B§.§,!U§.§%!K§(this.§+8§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§4"§.onComplete = this.§&G§;
         this.§4"§.play();
         this.§7!+§ = true;
      }
      
      public function §5=§(param1:Number) : void
      {
         this.mNewAlpha = param1;
         alpha = param1;
      }
      
      public function §5J§(param1:Number, param2:Number = 0.5, param3:Function = null) : void
      {
         if(this.§4"§ != null)
         {
            this.§4"§.stop();
         }
         this.§4"§ = §2!B§.§,!U§.§%!K§(this,{"mNewAlpha":param1},null,param2,param3);
         this.§4"§.onComplete = this.§9F§;
         this.§4"§.§;!b§ = false;
         this.§4"§.play();
      }
      
      private function §9F§() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§+!Y§));
      }
      
      private function §&G§() : void
      {
         this.§7!+§ = false;
      }
      
      private function §<9§(param1:Event) : void
      {
         if(this.§+8§)
         {
            transform.colorTransform = this.§+8§;
            if(!this.§7!+§)
            {
               this.§+8§ = null;
            }
         }
         if(alpha != this.mNewAlpha)
         {
            alpha = this.mNewAlpha;
         }
      }
      
      public function clean() : void
      {
         removeEventListener(Event.ENTER_FRAME,this.§<9§);
         if(this.§4"§)
         {
            this.§4"§.stop();
            this.§4"§ = null;
         }
      }
   }
}
