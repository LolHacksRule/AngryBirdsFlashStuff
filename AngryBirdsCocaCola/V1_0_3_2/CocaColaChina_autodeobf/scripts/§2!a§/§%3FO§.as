package §2!a§
{
   import §3!`§.§8h§;
   import §3!`§.§]&§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §?O§ extends MovieClip
   {
       
      
      private var §,!I§:§]&§;
      
      private var §+!-§:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var §=!B§:Boolean = false;
      
      public function §?O§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Boolean = true, param6:Number = NaN, param7:Number = NaN)
      {
         param6 = Number(param6) || Number(§=i§.§'0§ * 2);
         param7 = Number(param7) || Number(§=i§.§8-§ * 2);
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
            param6 = §=i§.§'0§;
            param7 = §=i§.§8-§;
            graphics.beginFill(0,1);
            graphics.drawRect(-param6 / 2,-param7 / 2,param6,param7);
            graphics.endFill();
         }
         this.mNewAlpha = param4;
         alpha = param4;
         this.mouseEnabled = true;
         addEventListener(Event.ENTER_FRAME,this.§!a§);
      }
      
      public function §!Z§(param1:Number, param2:Number, param3:Number, param4:Number = 0.3) : void
      {
         if(this.§=!B§)
         {
            return;
         }
         if(this.§,!I§)
         {
            this.§,!I§.stop();
         }
         this.§+!-§ = new ColorTransform();
         this.§+!-§.redOffset = transform.colorTransform.redOffset;
         this.§+!-§.greenOffset = transform.colorTransform.greenOffset;
         this.§+!-§.blueOffset = transform.colorTransform.blueOffset;
         this.§,!I§ = §8h§.§`G§.§[O§(this.§+!-§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§,!I§.onComplete = this.§,3§;
         this.§,!I§.play();
         this.§=!B§ = true;
      }
      
      public function §<#§(param1:Number) : void
      {
         this.mNewAlpha = param1;
         alpha = param1;
      }
      
      public function §<!S§(param1:Number, param2:Number = 0.5, param3:String = "linear") : void
      {
         if(this.§,!I§ != null)
         {
            this.§,!I§.stop();
         }
         this.§,!I§ = §8h§.§`G§.§[O§(this,{"mNewAlpha":param1},null,param2,param3);
         this.§,!I§.onComplete = this.§3!a§;
         this.§,!I§.§ o§ = false;
         this.§,!I§.play();
      }
      
      private function §3!a§() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§?!Q§));
      }
      
      private function §,3§() : void
      {
         this.§=!B§ = false;
      }
      
      private function §!a§(param1:Event) : void
      {
         if(this.§+!-§)
         {
            transform.colorTransform = this.§+!-§;
            if(!this.§=!B§)
            {
               this.§+!-§ = null;
            }
         }
         if(alpha != this.mNewAlpha)
         {
            alpha = this.mNewAlpha;
         }
      }
      
      public function clean() : void
      {
         removeEventListener(Event.ENTER_FRAME,this.§!a§);
         if(this.§,!I§)
         {
            this.§,!I§.stop();
            this.§,!I§ = null;
         }
      }
   }
}
