package §-#;§
{
   import §;"5§.§6"W§;
   import §;"5§.§@$-§;
   import §`§.§?$B§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §5#J§ extends MovieClip
   {
       
      
      private var §`6§:§@$-§;
      
      private var §"!I§:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var §@!1§:Boolean = false;
      
      public function §5#J§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         param5 = Number(param5) || Number(AngryBirdsBase.singleton.getAppWidth());
         param6 = Number(param6) || Number(AngryBirdsBase.singleton.getAppHeight());
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
         AngryBirdsBase.singleton.addEventListener(§?$B§.§^"%§,this.onEnterFrame);
      }
      
      public function §-#-§(param1:Number, param2:Number, param3:Number, param4:Number = 0.3) : void
      {
         if(this.§@!1§)
         {
            return;
         }
         if(this.§`6§)
         {
            this.§`6§.stop();
         }
         this.§"!I§ = new ColorTransform();
         this.§"!I§.redOffset = transform.colorTransform.redOffset;
         this.§"!I§.greenOffset = transform.colorTransform.greenOffset;
         this.§"!I§.blueOffset = transform.colorTransform.blueOffset;
         this.§`6§ = §6"W§.§+!,§.§9!n§(this.§"!I§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§`6§.onComplete = this.§5!2§;
         this.§`6§.play();
         this.§@!1§ = true;
      }
      
      public function §="<§(param1:Number) : void
      {
         this.mNewAlpha = param1;
         alpha = param1;
      }
      
      public function §?!4§(param1:Number, param2:Number = 0.5) : void
      {
         if(this.§`6§ != null)
         {
            this.§`6§.stop();
         }
         this.§`6§ = §6"W§.§+!,§.§9!n§(this,{"mNewAlpha":param1},null,param2);
         this.§`6§.onComplete = this.§?;§;
         this.§`6§.§5z§ = false;
         this.§`6§.play();
      }
      
      private function §?;§() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§>#[§));
      }
      
      private function §5!2§() : void
      {
         this.§@!1§ = false;
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§"!I§)
         {
            transform.colorTransform = this.§"!I§;
            if(!this.§@!1§)
            {
               this.§"!I§ = null;
            }
         }
         if(alpha != this.mNewAlpha)
         {
            alpha = this.mNewAlpha;
         }
      }
      
      public function §<![§() : void
      {
         AngryBirdsBase.singleton.removeEventListener(§?$B§.§^"%§,this.onEnterFrame);
         if(this.§`6§)
         {
            this.§`6§.stop();
            this.§`6§ = null;
         }
      }
   }
}
