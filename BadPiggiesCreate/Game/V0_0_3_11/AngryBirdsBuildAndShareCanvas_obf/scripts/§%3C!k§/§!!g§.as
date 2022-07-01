package §<!k§
{
   import §?h§.§%!Z§;
   import §?h§.§8!K§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §!!g§ extends MovieClip
   {
       
      
      private var §@c§:§8!K§;
      
      private var §1!Z§:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var §9"6§:Boolean = false;
      
      public function §!!g§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         param5 = Number(param5) || Number(AngryBirdsFP11.§@!N§.getAppWidth());
         param6 = Number(param6) || Number(AngryBirdsFP11.§@!N§.getAppHeight());
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
         AngryBirdsFP11.§@!N§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      public function §3!!§(param1:Number, param2:Number, param3:Number, param4:Number = 0.3) : void
      {
         if(this.§9"6§)
         {
            return;
         }
         if(this.§@c§)
         {
            this.§@c§.stop();
         }
         this.§1!Z§ = new ColorTransform();
         this.§1!Z§.redOffset = transform.colorTransform.redOffset;
         this.§1!Z§.greenOffset = transform.colorTransform.greenOffset;
         this.§1!Z§.blueOffset = transform.colorTransform.blueOffset;
         this.§@c§ = §%!Z§.§if §.§"<§(this.§1!Z§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§@c§.onComplete = this.§7"8§;
         this.§@c§.play();
         this.§9"6§ = true;
      }
      
      public function §;8§(param1:Number) : void
      {
         this.mNewAlpha = param1;
         alpha = param1;
      }
      
      public function §6"+§(param1:Number, param2:Number = 0.5) : void
      {
         if(this.§@c§ != null)
         {
            this.§@c§.stop();
         }
         this.§@c§ = §%!Z§.§if §.§"<§(this,{"mNewAlpha":param1},null,param2);
         this.§@c§.onComplete = this.§^!<§;
         this.§@c§.§>"0§ = false;
         this.§@c§.play();
      }
      
      private function §^!<§() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§#"-§));
      }
      
      private function §7"8§() : void
      {
         this.§9"6§ = false;
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§1!Z§)
         {
            transform.colorTransform = this.§1!Z§;
            if(!this.§9"6§)
            {
               this.§1!Z§ = null;
            }
         }
         if(alpha != this.mNewAlpha)
         {
            alpha = this.mNewAlpha;
         }
      }
      
      public function clean() : void
      {
         AngryBirdsFP11.§@!N§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         if(this.§@c§)
         {
            this.§@c§.stop();
            this.§@c§ = null;
         }
      }
   }
}
