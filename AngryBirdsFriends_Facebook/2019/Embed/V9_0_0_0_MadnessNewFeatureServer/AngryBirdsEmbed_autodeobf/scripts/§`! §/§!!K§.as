package §`! §
{
   import §`!1§.§'a§;
   import §`!1§.§-!&§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §!!K§ extends MovieClip
   {
       
      
      private var §#@§:§'a§;
      
      private var §7p§:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var §=_§:Boolean = false;
      
      public function §!!K§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         param5 = Number(param5) || Number(AngryBirdsFP11.§6Z§.getAppWidth());
         param6 = Number(param6) || Number(AngryBirdsFP11.§6Z§.getAppHeight());
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
         AngryBirdsFP11.§6Z§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      public function §^O§(param1:Number, param2:Number, param3:Number, param4:Number = 0.3) : void
      {
         if(this.§=_§)
         {
            return;
         }
         if(this.§#@§)
         {
            this.§#@§.stop();
         }
         this.§7p§ = new ColorTransform();
         this.§7p§.redOffset = transform.colorTransform.redOffset;
         this.§7p§.greenOffset = transform.colorTransform.greenOffset;
         this.§7p§.blueOffset = transform.colorTransform.blueOffset;
         this.§#@§ = §-!&§.§;R§.§2w§(this.§7p§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§#@§.onComplete = this.§3p§;
         this.§#@§.play();
         this.§=_§ = true;
      }
      
      public function §0!O§(param1:Number) : void
      {
         this.mNewAlpha = param1;
         alpha = param1;
      }
      
      public function §3h§(param1:Number, param2:Number = 0.5) : void
      {
         if(this.§#@§ != null)
         {
            this.§#@§.stop();
         }
         this.§#@§ = §-!&§.§;R§.§2w§(this,{"mNewAlpha":param1},null,param2);
         this.§#@§.onComplete = this.§54§;
         this.§#@§.§1C§ = false;
         this.§#@§.play();
      }
      
      private function §54§() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§4$§));
      }
      
      private function §3p§() : void
      {
         this.§=_§ = false;
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§7p§)
         {
            transform.colorTransform = this.§7p§;
            if(!this.§=_§)
            {
               this.§7p§ = null;
            }
         }
         if(alpha != this.mNewAlpha)
         {
            alpha = this.mNewAlpha;
         }
      }
      
      public function clean() : void
      {
         AngryBirdsFP11.§6Z§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         if(this.§#@§)
         {
            this.§#@§.stop();
            this.§#@§ = null;
         }
      }
   }
}
