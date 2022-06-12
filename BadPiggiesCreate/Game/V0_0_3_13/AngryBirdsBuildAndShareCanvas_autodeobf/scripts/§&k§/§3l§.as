package §&k§
{
   import §catch§.§"L§;
   import §catch§.§-!m§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §3l§ extends MovieClip
   {
       
      
      private var §1!1§:§-!m§;
      
      private var §<m§:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var §]n§:Boolean = false;
      
      public function §3l§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         param5 = Number(param5) || Number(AngryBirdsFP11.§2p§.getAppWidth());
         param6 = Number(param6) || Number(AngryBirdsFP11.§2p§.getAppHeight());
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
         AngryBirdsFP11.§2p§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      public function §+!T§(param1:Number, param2:Number, param3:Number, param4:Number = 0.3) : void
      {
         if(this.§]n§)
         {
            return;
         }
         if(this.§1!1§)
         {
            this.§1!1§.stop();
         }
         this.§<m§ = new ColorTransform();
         this.§<m§.redOffset = transform.colorTransform.redOffset;
         this.§<m§.greenOffset = transform.colorTransform.greenOffset;
         this.§<m§.blueOffset = transform.colorTransform.blueOffset;
         this.§1!1§ = §"L§.§7!?§.§4!P§(this.§<m§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§1!1§.onComplete = this.§3+§;
         this.§1!1§.play();
         this.§]n§ = true;
      }
      
      public function § !`§(param1:Number) : void
      {
         this.mNewAlpha = param1;
         alpha = param1;
      }
      
      public function §[5§(param1:Number, param2:Number = 0.5) : void
      {
         if(this.§1!1§ != null)
         {
            this.§1!1§.stop();
         }
         this.§1!1§ = §"L§.§7!?§.§4!P§(this,{"mNewAlpha":param1},null,param2);
         this.§1!1§.onComplete = this.§7!=§;
         this.§1!1§.§;v§ = false;
         this.§1!1§.play();
      }
      
      private function §7!=§() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§?g§));
      }
      
      private function §3+§() : void
      {
         this.§]n§ = false;
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§<m§)
         {
            transform.colorTransform = this.§<m§;
            if(!this.§]n§)
            {
               this.§<m§ = null;
            }
         }
         if(alpha != this.mNewAlpha)
         {
            alpha = this.mNewAlpha;
         }
      }
      
      public function clean() : void
      {
         AngryBirdsFP11.§2p§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         if(this.§1!1§)
         {
            this.§1!1§.stop();
            this.§1!1§ = null;
         }
      }
   }
}
