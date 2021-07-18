package § !B§
{
   import §'K§.§3C§;
   import §'K§.§[!9§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §-#§ extends MovieClip
   {
       
      
      private var §"!M§:§[!9§;
      
      private var §@d§:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var §5A§:Boolean = false;
      
      public function §-#§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         param5 = Number(param5) || Number(AngryBirdsFP11.§`y§.getAppWidth());
         param6 = Number(param6) || Number(AngryBirdsFP11.§`y§.getAppHeight());
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
         AngryBirdsFP11.§`y§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      public function § !,§(param1:Number, param2:Number, param3:Number, param4:Number = 0.3) : void
      {
         if(this.§5A§)
         {
            return;
         }
         if(this.§"!M§)
         {
            this.§"!M§.stop();
         }
         this.§@d§ = new ColorTransform();
         this.§@d§.redOffset = transform.colorTransform.redOffset;
         this.§@d§.greenOffset = transform.colorTransform.greenOffset;
         this.§@d§.blueOffset = transform.colorTransform.blueOffset;
         this.§"!M§ = §3C§.§>o§.§<t§(this.§@d§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§"!M§.onComplete = this.§9R§;
         this.§"!M§.play();
         this.§5A§ = true;
      }
      
      public function §3!@§(param1:Number) : void
      {
         this.mNewAlpha = param1;
         alpha = param1;
      }
      
      public function fadeToAlpha(param1:Number, param2:Number = 0.5) : void
      {
         if(this.§"!M§ != null)
         {
            this.§"!M§.stop();
         }
         this.§"!M§ = §3C§.§>o§.§<t§(this,{"mNewAlpha":param1},null,param2);
         this.§"!M§.onComplete = this.§!!;§;
         this.§"!M§.§`j§ = false;
         this.§"!M§.play();
      }
      
      private function §!!;§() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§3n§));
      }
      
      private function §9R§() : void
      {
         this.§5A§ = false;
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§@d§)
         {
            transform.colorTransform = this.§@d§;
            if(!this.§5A§)
            {
               this.§@d§ = null;
            }
         }
         if(alpha != this.mNewAlpha)
         {
            alpha = this.mNewAlpha;
         }
      }
      
      public function clean() : void
      {
         AngryBirdsFP11.§`y§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         if(this.§"!M§)
         {
            this.§"!M§.stop();
            this.§"!M§ = null;
         }
      }
   }
}
