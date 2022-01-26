package §2U§
{
   import §+N§.§!j§;
   import §+N§.§]G§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §'0§ extends MovieClip
   {
       
      
      private var §]%§:§]G§;
      
      private var §=1§:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var §;!;§:Boolean = false;
      
      public function §'0§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         param5 = Number(param5) || Number(AngryBirdsFP11.§`H§.getAppWidth());
         param6 = Number(param6) || Number(AngryBirdsFP11.§`H§.getAppHeight());
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
         AngryBirdsFP11.§`H§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      public function get(param1:Number, param2:Number, param3:Number, param4:Number = 0.3) : void
      {
         if(this.§;!;§)
         {
            return;
         }
         if(this.§]%§)
         {
            this.§]%§.stop();
         }
         this.§=1§ = new ColorTransform();
         this.§=1§.redOffset = transform.colorTransform.redOffset;
         this.§=1§.greenOffset = transform.colorTransform.greenOffset;
         this.§=1§.blueOffset = transform.colorTransform.blueOffset;
         this.§]%§ = §!j§.§5!B§.§+I§(this.§=1§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§]%§.onComplete = this.§]7§;
         this.§]%§.play();
         this.§;!;§ = true;
      }
      
      public function §3L§(param1:Number) : void
      {
         this.mNewAlpha = param1;
         alpha = param1;
      }
      
      public function §!y§(param1:Number, param2:Number = 0.5) : void
      {
         if(this.§]%§ != null)
         {
            this.§]%§.stop();
         }
         this.§]%§ = §!j§.§5!B§.§+I§(this,{"mNewAlpha":param1},null,param2);
         this.§]%§.onComplete = this.§8"§;
         this.§]%§.§&l§ = false;
         this.§]%§.play();
      }
      
      private function §8"§() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§78§));
      }
      
      private function §]7§() : void
      {
         this.§;!;§ = false;
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§=1§)
         {
            transform.colorTransform = this.§=1§;
            if(!this.§;!;§)
            {
               this.§=1§ = null;
            }
         }
         if(alpha != this.mNewAlpha)
         {
            alpha = this.mNewAlpha;
         }
      }
      
      public function clean() : void
      {
         AngryBirdsFP11.§`H§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         if(this.§]%§)
         {
            this.§]%§.stop();
            this.§]%§ = null;
         }
      }
   }
}
