package §5!5§
{
   import §2!D§.§&9§;
   import §2!D§.§'!7§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §1!4§ extends MovieClip
   {
       
      
      private var §50§:§&9§;
      
      private var §>9§:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var §'!c§:Boolean = false;
      
      public function §1!4§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Boolean = true, param6:Number = NaN, param7:Number = NaN)
      {
         param6 = Number(param6) || Number(§2!S§.§0!+§ * 2);
         param7 = Number(param7) || Number(§2!S§.§>!?§ * 2);
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
            param6 = §2!S§.§0!+§;
            param7 = §2!S§.§>!?§;
            graphics.beginFill(0,1);
            graphics.drawRect(-param6 / 2,-param7 / 2,param6,param7);
            graphics.endFill();
         }
         this.mNewAlpha = param4;
         alpha = param4;
         this.mouseEnabled = true;
         addEventListener(Event.ENTER_FRAME,this.§]@§);
      }
      
      public function §-#§(param1:Number, param2:Number, param3:Number, param4:Number = 0.3) : void
      {
         if(this.§'!c§)
         {
            return;
         }
         if(this.§50§)
         {
            this.§50§.stop();
         }
         this.§>9§ = new ColorTransform();
         this.§>9§.redOffset = transform.colorTransform.redOffset;
         this.§>9§.greenOffset = transform.colorTransform.greenOffset;
         this.§>9§.blueOffset = transform.colorTransform.blueOffset;
         this.§50§ = §'!7§.§=,§.§5Z§(this.§>9§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§50§.onComplete = this.§-@§;
         this.§50§.play();
         this.§'!c§ = true;
      }
      
      public function §[m§(param1:Number) : void
      {
         this.mNewAlpha = param1;
         alpha = param1;
      }
      
      public function §?!%§(param1:Number, param2:Number = 0.5, param3:String = "linear") : void
      {
         if(this.§50§ != null)
         {
            this.§50§.stop();
         }
         this.§50§ = §'!7§.§=,§.§5Z§(this,{"mNewAlpha":param1},null,param2,param3);
         this.§50§.onComplete = this.§"k§;
         this.§50§.§='§ = false;
         this.§50§.play();
      }
      
      private function §"k§() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§4=§));
      }
      
      private function §-@§() : void
      {
         this.§'!c§ = false;
      }
      
      private function §]@§(param1:Event) : void
      {
         if(this.§>9§)
         {
            transform.colorTransform = this.§>9§;
            if(!this.§'!c§)
            {
               this.§>9§ = null;
            }
         }
         if(alpha != this.mNewAlpha)
         {
            alpha = this.mNewAlpha;
         }
      }
      
      public function clean() : void
      {
         removeEventListener(Event.ENTER_FRAME,this.§]@§);
         if(this.§50§)
         {
            this.§50§.stop();
            this.§50§ = null;
         }
      }
   }
}
