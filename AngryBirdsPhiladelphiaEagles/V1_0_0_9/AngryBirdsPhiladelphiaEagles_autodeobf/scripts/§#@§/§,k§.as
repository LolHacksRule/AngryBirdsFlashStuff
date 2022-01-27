package §#@§
{
   import §@!M§.§!l§;
   import §@!M§.§5!&§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §,k§ extends MovieClip
   {
       
      
      private var §^`§:§!l§;
      
      private var §6!;§:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var §1!E§:Boolean = false;
      
      public function §,k§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         param5 = Number(param5) || Number(AngryBirdsFP11.§;!@§.getAppWidth());
         param6 = Number(param6) || Number(AngryBirdsFP11.§;!@§.getAppHeight());
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
         AngryBirdsFP11.§;!@§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      public function §?=§(param1:Number, param2:Number, param3:Number, param4:Number = 0.3) : void
      {
         if(this.§1!E§)
         {
            return;
         }
         if(this.§^`§)
         {
            this.§^`§.stop();
         }
         this.§6!;§ = new ColorTransform();
         this.§6!;§.redOffset = transform.colorTransform.redOffset;
         this.§6!;§.greenOffset = transform.colorTransform.greenOffset;
         this.§6!;§.blueOffset = transform.colorTransform.blueOffset;
         this.§^`§ = §5!&§.§@!&§.§9!4§(this.§6!;§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§^`§.onComplete = this.§6!§;
         this.§^`§.play();
         this.§1!E§ = true;
      }
      
      public function §@k§(param1:Number) : void
      {
         this.mNewAlpha = param1;
         alpha = param1;
      }
      
      public function fadeToAlpha(param1:Number, param2:Number = 0.5) : void
      {
         if(this.§^`§ != null)
         {
            this.§^`§.stop();
         }
         this.§^`§ = §5!&§.§@!&§.§9!4§(this,{"mNewAlpha":param1},null,param2);
         this.§^`§.onComplete = this.§7!I§;
         this.§^`§.§2]§ = false;
         this.§^`§.play();
      }
      
      private function §7!I§() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§`S§));
      }
      
      private function §6!§() : void
      {
         this.§1!E§ = false;
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§6!;§)
         {
            transform.colorTransform = this.§6!;§;
            if(!this.§1!E§)
            {
               this.§6!;§ = null;
            }
         }
         if(alpha != this.mNewAlpha)
         {
            alpha = this.mNewAlpha;
         }
      }
      
      public function clean() : void
      {
         AngryBirdsFP11.§;!@§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         if(this.§^`§)
         {
            this.§^`§.stop();
            this.§^`§ = null;
         }
      }
   }
}
