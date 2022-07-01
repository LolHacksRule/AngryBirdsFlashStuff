package §2I§
{
   import §0Z§.§+I§;
   import §0Z§.§-!M§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §,"+§ extends MovieClip
   {
       
      
      private var §^l§:§+I§;
      
      private var §>3§:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var §;!k§:Boolean = false;
      
      public function §,"+§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         param5 = Number(param5) || Number(AngryBirdsFP11.§"!V§.getAppWidth());
         param6 = Number(param6) || Number(AngryBirdsFP11.§"!V§.getAppHeight());
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
         AngryBirdsFP11.§"!V§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      public function §8!2§(param1:Number, param2:Number, param3:Number, param4:Number = 0.3) : void
      {
         if(this.§;!k§)
         {
            return;
         }
         if(this.§^l§)
         {
            this.§^l§.stop();
         }
         this.§>3§ = new ColorTransform();
         this.§>3§.redOffset = transform.colorTransform.redOffset;
         this.§>3§.greenOffset = transform.colorTransform.greenOffset;
         this.§>3§.blueOffset = transform.colorTransform.blueOffset;
         this.§^l§ = §-!M§.§ "!§.§+d§(this.§>3§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§^l§.onComplete = this.§1T§;
         this.§^l§.play();
         this.§;!k§ = true;
      }
      
      public function §3!W§(param1:Number) : void
      {
         this.mNewAlpha = param1;
         alpha = param1;
      }
      
      public function §%r§(param1:Number, param2:Number = 0.5) : void
      {
         if(this.§^l§ != null)
         {
            this.§^l§.stop();
         }
         this.§^l§ = §-!M§.§ "!§.§+d§(this,{"mNewAlpha":param1},null,param2);
         this.§^l§.onComplete = this.§6!;§;
         this.§^l§.§>!S§ = false;
         this.§^l§.play();
      }
      
      private function §6!;§() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§;!x§));
      }
      
      private function §1T§() : void
      {
         this.§;!k§ = false;
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§>3§)
         {
            transform.colorTransform = this.§>3§;
            if(!this.§;!k§)
            {
               this.§>3§ = null;
            }
         }
         if(alpha != this.mNewAlpha)
         {
            alpha = this.mNewAlpha;
         }
      }
      
      public function clean() : void
      {
         AngryBirdsFP11.§"!V§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         if(this.§^l§)
         {
            this.§^l§.stop();
            this.§^l§ = null;
         }
      }
   }
}
