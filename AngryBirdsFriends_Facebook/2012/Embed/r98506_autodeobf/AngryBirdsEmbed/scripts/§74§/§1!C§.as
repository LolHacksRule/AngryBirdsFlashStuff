package §74§
{
   import §;=§.§7I§;
   import §;=§.§>!2§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §1!C§ extends MovieClip
   {
       
      
      private var §#§:§7I§;
      
      private var §1Q§:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var §-;§:Boolean = false;
      
      public function §1!C§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         param5 = Number(param5) || Number(AngryBirdsFP11.§5W§.getAppWidth());
         param6 = Number(param6) || Number(AngryBirdsFP11.§5W§.getAppHeight());
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
         AngryBirdsFP11.§5W§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      public function §2b§(param1:Number, param2:Number, param3:Number, param4:Number = 0.3) : void
      {
         if(this.§-;§)
         {
            return;
         }
         if(this.§#§)
         {
            this.§#§.stop();
         }
         this.§1Q§ = new ColorTransform();
         this.§1Q§.redOffset = transform.colorTransform.redOffset;
         this.§1Q§.greenOffset = transform.colorTransform.greenOffset;
         this.§1Q§.blueOffset = transform.colorTransform.blueOffset;
         this.§#§ = §>!2§.§72§.§-z§(this.§1Q§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§#§.onComplete = this.§3M§;
         this.§#§.play();
         this.§-;§ = true;
      }
      
      public function §?!5§(param1:Number) : void
      {
         this.mNewAlpha = param1;
         alpha = param1;
      }
      
      public function §>w§(param1:Number, param2:Number = 0.5) : void
      {
         if(this.§#§ != null)
         {
            this.§#§.stop();
         }
         this.§#§ = §>!2§.§72§.§-z§(this,{"mNewAlpha":param1},null,param2);
         this.§#§.onComplete = this.§#7§;
         this.§#§.§4!-§ = false;
         this.§#§.play();
      }
      
      private function §#7§() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§#!F§));
      }
      
      private function §3M§() : void
      {
         this.§-;§ = false;
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§1Q§)
         {
            transform.colorTransform = this.§1Q§;
            if(!this.§-;§)
            {
               this.§1Q§ = null;
            }
         }
         if(alpha != this.mNewAlpha)
         {
            alpha = this.mNewAlpha;
         }
      }
      
      public function clean() : void
      {
         AngryBirdsFP11.§5W§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         if(this.§#§)
         {
            this.§#§.stop();
            this.§#§ = null;
         }
      }
   }
}
