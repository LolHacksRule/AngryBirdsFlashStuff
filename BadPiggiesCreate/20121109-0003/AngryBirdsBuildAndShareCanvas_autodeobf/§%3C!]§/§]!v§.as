package §<!]§
{
   import §'V§.§7I§;
   import §'V§.§=!r§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §]!v§ extends MovieClip
   {
       
      
      private var §8"0§:§=!r§;
      
      private var §6!l§:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var §"!f§:Boolean = false;
      
      public function §]!v§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         param5 = Number(param5) || Number(AngryBirdsFP11.§@"7§.getAppWidth());
         param6 = Number(param6) || Number(AngryBirdsFP11.§@"7§.getAppHeight());
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
         AngryBirdsFP11.§@"7§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      public function §8"8§(param1:Number, param2:Number, param3:Number, param4:Number = 0.3) : void
      {
         if(this.§"!f§)
         {
            return;
         }
         if(this.§8"0§)
         {
            this.§8"0§.stop();
         }
         this.§6!l§ = new ColorTransform();
         this.§6!l§.redOffset = transform.colorTransform.redOffset;
         this.§6!l§.greenOffset = transform.colorTransform.greenOffset;
         this.§6!l§.blueOffset = transform.colorTransform.blueOffset;
         this.§8"0§ = §7I§.§[E§.§ ";§(this.§6!l§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§8"0§.onComplete = this.§#!R§;
         this.§8"0§.play();
         this.§"!f§ = true;
      }
      
      public function §0"+§(param1:Number) : void
      {
         this.mNewAlpha = param1;
         alpha = param1;
      }
      
      public function §[!r§(param1:Number, param2:Number = 0.5) : void
      {
         if(this.§8"0§ != null)
         {
            this.§8"0§.stop();
         }
         this.§8"0§ = §7I§.§[E§.§ ";§(this,{"mNewAlpha":param1},null,param2);
         this.§8"0§.onComplete = this.§0<§;
         this.§8"0§.§5"6§ = false;
         this.§8"0§.play();
      }
      
      private function §0<§() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§;x§));
      }
      
      private function §#!R§() : void
      {
         this.§"!f§ = false;
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§6!l§)
         {
            transform.colorTransform = this.§6!l§;
            if(!this.§"!f§)
            {
               this.§6!l§ = null;
            }
         }
         if(alpha != this.mNewAlpha)
         {
            alpha = this.mNewAlpha;
         }
      }
      
      public function clean() : void
      {
         AngryBirdsFP11.§@"7§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         if(this.§8"0§)
         {
            this.§8"0§.stop();
            this.§8"0§ = null;
         }
      }
   }
}
