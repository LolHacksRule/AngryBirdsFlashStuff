package §+3§
{
   import §%q§.§'!A§;
   import §%q§.§9;§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §8O§ extends MovieClip
   {
       
      
      private var §0=§:§9;§;
      
      private var §^g§:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var §4_§:Boolean = false;
      
      public function §8O§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         param5 = Number(param5) || Number(AngryBirdsFP11.§6C§.getAppWidth());
         param6 = Number(param6) || Number(AngryBirdsFP11.§6C§.getAppHeight());
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
         AngryBirdsFP11.§6C§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      public function §%!4§(param1:Number, param2:Number, param3:Number, param4:Number = 0.3) : void
      {
         if(this.§4_§)
         {
            return;
         }
         if(this.§0=§)
         {
            this.§0=§.stop();
         }
         this.§^g§ = new ColorTransform();
         this.§^g§.redOffset = transform.colorTransform.redOffset;
         this.§^g§.greenOffset = transform.colorTransform.greenOffset;
         this.§^g§.blueOffset = transform.colorTransform.blueOffset;
         this.§0=§ = §'!A§.§5+§.§;h§(this.§^g§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§0=§.onComplete = this.§&!=§;
         this.§0=§.play();
         this.§4_§ = true;
      }
      
      public function §'`§(param1:Number) : void
      {
         this.mNewAlpha = param1;
         alpha = param1;
      }
      
      public function §&<§(param1:Number, param2:Number = 0.5) : void
      {
         if(this.§0=§ != null)
         {
            this.§0=§.stop();
         }
         this.§0=§ = §'!A§.§5+§.§;h§(this,{"mNewAlpha":param1},null,param2);
         this.§0=§.onComplete = this.§^>§;
         this.§0=§.§8n§ = false;
         this.§0=§.play();
      }
      
      private function §^>§() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§%K§));
      }
      
      private function §&!=§() : void
      {
         this.§4_§ = false;
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§^g§)
         {
            transform.colorTransform = this.§^g§;
            if(!this.§4_§)
            {
               this.§^g§ = null;
            }
         }
         if(alpha != this.mNewAlpha)
         {
            alpha = this.mNewAlpha;
         }
      }
      
      public function clean() : void
      {
         AngryBirdsFP11.§6C§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         if(this.§0=§)
         {
            this.§0=§.stop();
            this.§0=§ = null;
         }
      }
   }
}
