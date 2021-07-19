package §^"#§
{
   import §<W§.§!!u§;
   import §=u§.§!D§;
   import §=u§.§5!9§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §&"$§ extends MovieClip
   {
       
      
      private var §&!c§:§5!9§;
      
      private var §0!f§:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var § var§:Boolean = false;
      
      public function §&"$§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         param5 = Number(param5) || Number(§ !g§.§;!'§.getAppWidth());
         param6 = Number(param6) || Number(§ !g§.§;!'§.getAppHeight());
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
         § !g§.§;!'§.addEventListener(§!!u§.§8!Q§,this.onEnterFrame);
      }
      
      public function §>"9§(param1:Number, param2:Number, param3:Number, param4:Number = 0.3) : void
      {
         if(this.§ var§)
         {
            return;
         }
         if(this.§&!c§)
         {
            this.§&!c§.stop();
         }
         this.§0!f§ = new ColorTransform();
         this.§0!f§.redOffset = transform.colorTransform.redOffset;
         this.§0!f§.greenOffset = transform.colorTransform.greenOffset;
         this.§0!f§.blueOffset = transform.colorTransform.blueOffset;
         this.§&!c§ = §!D§.§[!1§.§1"<§(this.§0!f§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§&!c§.onComplete = this.§;!8§;
         this.§&!c§.play();
         this.§ var§ = true;
      }
      
      public function §24§(param1:Number) : void
      {
         this.mNewAlpha = param1;
         alpha = param1;
      }
      
      public function §7t§(param1:Number, param2:Number = 0.5) : void
      {
         if(this.§&!c§ != null)
         {
            this.§&!c§.stop();
         }
         this.§&!c§ = §!D§.§[!1§.§1"<§(this,{"mNewAlpha":param1},null,param2);
         this.§&!c§.onComplete = this.§"!^§;
         this.§&!c§.§%S§ = false;
         this.§&!c§.play();
      }
      
      private function §"!^§() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§;Y§));
      }
      
      private function §;!8§() : void
      {
         this.§ var§ = false;
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§0!f§)
         {
            transform.colorTransform = this.§0!f§;
            if(!this.§ var§)
            {
               this.§0!f§ = null;
            }
         }
         if(alpha != this.mNewAlpha)
         {
            alpha = this.mNewAlpha;
         }
      }
      
      public function §;"F§() : void
      {
         § !g§.§;!'§.removeEventListener(§!!u§.§8!Q§,this.onEnterFrame);
         if(this.§&!c§)
         {
            this.§&!c§.stop();
            this.§&!c§ = null;
         }
      }
   }
}
