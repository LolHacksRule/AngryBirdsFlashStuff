package §>0§
{
   import §2"'§.§0W§;
   import §2"'§.§6!K§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §3"K§ extends MovieClip
   {
       
      
      private var §+"H§:§6!K§;
      
      private var §?!G§:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var §?P§:Boolean = false;
      
      public function §3"K§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         param5 = Number(param5) || Number(AngryBirdsFP11.§>m§.getAppWidth());
         param6 = Number(param6) || Number(AngryBirdsFP11.§>m§.getAppHeight());
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
         AngryBirdsFP11.§>m§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      public function §'W§(param1:Number, param2:Number, param3:Number, param4:Number = 0.3) : void
      {
         if(this.§?P§)
         {
            return;
         }
         if(this.§+"H§)
         {
            this.§+"H§.stop();
         }
         this.§?!G§ = new ColorTransform();
         this.§?!G§.redOffset = transform.colorTransform.redOffset;
         this.§?!G§.greenOffset = transform.colorTransform.greenOffset;
         this.§?!G§.blueOffset = transform.colorTransform.blueOffset;
         this.§+"H§ = §0W§.§&"5§.§]!r§(this.§?!G§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§+"H§.onComplete = this.§>"M§;
         this.§+"H§.play();
         this.§?P§ = true;
      }
      
      public function §^!0§(param1:Number) : void
      {
         this.mNewAlpha = param1;
         alpha = param1;
      }
      
      public function §!!4§(param1:Number, param2:Number = 0.5) : void
      {
         if(this.§+"H§ != null)
         {
            this.§+"H§.stop();
         }
         this.§+"H§ = §0W§.§&"5§.§]!r§(this,{"mNewAlpha":param1},null,param2);
         this.§+"H§.onComplete = this.§+Q§;
         this.§+"H§.§="6§ = false;
         this.§+"H§.play();
      }
      
      private function §+Q§() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§>!u§));
      }
      
      private function §>"M§() : void
      {
         this.§?P§ = false;
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§?!G§)
         {
            transform.colorTransform = this.§?!G§;
            if(!this.§?P§)
            {
               this.§?!G§ = null;
            }
         }
         if(alpha != this.mNewAlpha)
         {
            alpha = this.mNewAlpha;
         }
      }
      
      public function clean() : void
      {
         AngryBirdsFP11.§>m§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         if(this.§+"H§)
         {
            this.§+"H§.stop();
            this.§+"H§ = null;
         }
      }
   }
}
