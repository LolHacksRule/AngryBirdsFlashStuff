package §+!5§
{
   import §6t§.§3`§;
   import §6t§.§<!'§;
   import §8,§.§?J§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §2O§ extends MovieClip
   {
       
      
      private var §^P§:§<!'§;
      
      private var § o§:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var §9<§:Boolean = false;
      
      public function §2O§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         param5 = Number(param5) || Number(§-!I§.§[f§.getAppWidth());
         param6 = Number(param6) || Number(§-!I§.§[f§.getAppHeight());
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
         §-!I§.§[f§.addEventListener(§?J§.§0H§,this.onEnterFrame);
      }
      
      public function §,6§(param1:Number, param2:Number, param3:Number, param4:Number = 0.3) : void
      {
         if(this.§9<§)
         {
            return;
         }
         if(this.§^P§)
         {
            this.§^P§.stop();
         }
         this.§ o§ = new ColorTransform();
         this.§ o§.redOffset = transform.colorTransform.redOffset;
         this.§ o§.greenOffset = transform.colorTransform.greenOffset;
         this.§ o§.blueOffset = transform.colorTransform.blueOffset;
         this.§^P§ = §3`§.§<"5§.§^g§(this.§ o§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§^P§.onComplete = this.§&4§;
         this.§^P§.play();
         this.§9<§ = true;
      }
      
      public function §6!L§(param1:Number) : void
      {
         this.mNewAlpha = param1;
         alpha = param1;
      }
      
      public function §5!F§(param1:Number, param2:Number = 0.5) : void
      {
         if(this.§^P§ != null)
         {
            this.§^P§.stop();
         }
         this.§^P§ = §3`§.§<"5§.§^g§(this,{"mNewAlpha":param1},null,param2);
         this.§^P§.onComplete = this.§]M§;
         this.§^P§.§0"1§ = false;
         this.§^P§.play();
      }
      
      private function §]M§() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§@!?§));
      }
      
      private function §&4§() : void
      {
         this.§9<§ = false;
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§ o§)
         {
            transform.colorTransform = this.§ o§;
            if(!this.§9<§)
            {
               this.§ o§ = null;
            }
         }
         if(alpha != this.mNewAlpha)
         {
            alpha = this.mNewAlpha;
         }
      }
      
      public function §[!R§() : void
      {
         §-!I§.§[f§.removeEventListener(§?J§.§0H§,this.onEnterFrame);
         if(this.§^P§)
         {
            this.§^P§.stop();
            this.§^P§ = null;
         }
      }
   }
}
