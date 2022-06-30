package §6!"§
{
   import §6-§.§"H§;
   import §6-§.§%1§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §<!+§ extends MovieClip
   {
       
      
      private var §8V§:§%1§;
      
      private var §#!`§:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var §&!,§:Boolean = false;
      
      public function §<!+§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Boolean = true, param6:Number = NaN, param7:Number = NaN)
      {
         param6 = Number(param6) || Number(§1F§.§-!I§ * 2);
         param7 = Number(param7) || Number(§1F§.§9!8§ * 2);
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
            param6 = §1F§.§-!I§;
            param7 = §1F§.§9!8§;
            graphics.beginFill(0,1);
            graphics.drawRect(-param6 / 2,-param7 / 2,param6,param7);
            graphics.endFill();
         }
         this.mNewAlpha = param4;
         alpha = param4;
         this.mouseEnabled = true;
         addEventListener(Event.ENTER_FRAME,this.§6J§);
      }
      
      public function §1!`§(param1:Number, param2:Number, param3:Number, param4:Number = 0.3) : void
      {
         if(this.§&!,§)
         {
            return;
         }
         if(this.§8V§)
         {
            this.§8V§.stop();
         }
         this.§#!`§ = new ColorTransform();
         this.§#!`§.redOffset = transform.colorTransform.redOffset;
         this.§#!`§.greenOffset = transform.colorTransform.greenOffset;
         this.§#!`§.blueOffset = transform.colorTransform.blueOffset;
         this.§8V§ = §"H§.§'![§.§8Y§(this.§#!`§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§8V§.onComplete = this.§8&§;
         this.§8V§.play();
         this.§&!,§ = true;
      }
      
      public function §'!4§(param1:Number) : void
      {
         this.mNewAlpha = param1;
         alpha = param1;
      }
      
      public function §+!>§(param1:Number, param2:Number = 0.5, param3:String = "linear") : void
      {
         if(this.§8V§ != null)
         {
            this.§8V§.stop();
         }
         this.§8V§ = §"H§.§'![§.§8Y§(this,{"mNewAlpha":param1},null,param2,param3);
         this.§8V§.onComplete = this.§4'§;
         this.§8V§.§1v§ = false;
         this.§8V§.play();
      }
      
      private function §4'§() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§++§));
      }
      
      private function §8&§() : void
      {
         this.§&!,§ = false;
      }
      
      private function §6J§(param1:Event) : void
      {
         if(this.§#!`§)
         {
            transform.colorTransform = this.§#!`§;
            if(!this.§&!,§)
            {
               this.§#!`§ = null;
            }
         }
         if(alpha != this.mNewAlpha)
         {
            alpha = this.mNewAlpha;
         }
      }
      
      public function clean() : void
      {
         removeEventListener(Event.ENTER_FRAME,this.§6J§);
         if(this.§8V§)
         {
            this.§8V§.stop();
            this.§8V§ = null;
         }
      }
   }
}
