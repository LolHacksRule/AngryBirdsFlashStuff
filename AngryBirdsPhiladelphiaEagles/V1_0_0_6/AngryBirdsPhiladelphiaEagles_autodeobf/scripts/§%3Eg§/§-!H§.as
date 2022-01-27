package §>g§
{
   import §]$§.§5^§;
   import §]$§.§<Q§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §-!H§ extends MovieClip
   {
       
      
      private var §4s§:§<Q§;
      
      private var §3@§:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var §]z§:Boolean = false;
      
      public function §-!H§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         param5 = Number(param5) || Number(AngryBirdsFP11.§^F§.getAppWidth());
         param6 = Number(param6) || Number(AngryBirdsFP11.§^F§.getAppHeight());
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
         AngryBirdsFP11.§^F§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      public function §0!A§(param1:Number, param2:Number, param3:Number, param4:Number = 0.3) : void
      {
         if(this.§]z§)
         {
            return;
         }
         if(this.§4s§)
         {
            this.§4s§.stop();
         }
         this.§3@§ = new ColorTransform();
         this.§3@§.redOffset = transform.colorTransform.redOffset;
         this.§3@§.greenOffset = transform.colorTransform.greenOffset;
         this.§3@§.blueOffset = transform.colorTransform.blueOffset;
         this.§4s§ = §5^§.§<"§.§^g§(this.§3@§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§4s§.onComplete = this.§6W§;
         this.§4s§.play();
         this.§]z§ = true;
      }
      
      public function §0!§(param1:Number) : void
      {
         this.mNewAlpha = param1;
         alpha = param1;
      }
      
      public function fadeToAlpha(param1:Number, param2:Number = 0.5) : void
      {
         if(this.§4s§ != null)
         {
            this.§4s§.stop();
         }
         this.§4s§ = §5^§.§<"§.§^g§(this,{"mNewAlpha":param1},null,param2);
         this.§4s§.onComplete = this.§5N§;
         this.§4s§.§;!8§ = false;
         this.§4s§.play();
      }
      
      private function §5N§() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§6!O§));
      }
      
      private function §6W§() : void
      {
         this.§]z§ = false;
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§3@§)
         {
            transform.colorTransform = this.§3@§;
            if(!this.§]z§)
            {
               this.§3@§ = null;
            }
         }
         if(alpha != this.mNewAlpha)
         {
            alpha = this.mNewAlpha;
         }
      }
      
      public function clean() : void
      {
         AngryBirdsFP11.§^F§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         if(this.§4s§)
         {
            this.§4s§.stop();
            this.§4s§ = null;
         }
      }
   }
}
