package §9!a§
{
   import §0"g§.§%b§;
   import §0"g§.§5!%§;
   import §=!4§.§7!@§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §&c§ extends MovieClip
   {
       
      
      private var §4!1§:§%b§;
      
      private var §4F§:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var §0f§:Boolean = false;
      
      public function §&c§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         param5 = Number(param5) || Number(§4"#§.singleton.getAppWidth());
         param6 = Number(param6) || Number(§4"#§.singleton.getAppHeight());
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
         §4"#§.singleton.addEventListener(§7!@§.§6,§,this.onEnterFrame);
      }
      
      public function §["o§(param1:Number, param2:Number, param3:Number, param4:Number = 0.3) : void
      {
         if(this.§0f§)
         {
            return;
         }
         if(this.§4!1§)
         {
            this.§4!1§.stop();
         }
         this.§4F§ = new ColorTransform();
         this.§4F§.redOffset = transform.colorTransform.redOffset;
         this.§4F§.greenOffset = transform.colorTransform.greenOffset;
         this.§4F§.blueOffset = transform.colorTransform.blueOffset;
         this.§4!1§ = §5!%§.§!6§.§4!M§(this.§4F§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§4!1§.onComplete = this.§3"R§;
         this.§4!1§.play();
         this.§0f§ = true;
      }
      
      public function §#"B§(param1:Number) : void
      {
         this.mNewAlpha = param1;
         alpha = param1;
      }
      
      public function §8m§(param1:Number, param2:Number = 0.5) : void
      {
         if(this.§4!1§ != null)
         {
            this.§4!1§.stop();
         }
         this.§4!1§ = §5!%§.§!6§.§4!M§(this,{"mNewAlpha":param1},null,param2);
         this.§4!1§.onComplete = this.§0[§;
         this.§4!1§.§@%§ = false;
         this.§4!1§.play();
      }
      
      private function §0[§() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§+!u§));
      }
      
      private function §3"R§() : void
      {
         this.§0f§ = false;
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§4F§)
         {
            transform.colorTransform = this.§4F§;
            if(!this.§0f§)
            {
               this.§4F§ = null;
            }
         }
         if(alpha != this.mNewAlpha)
         {
            alpha = this.mNewAlpha;
         }
      }
      
      public function § "!§() : void
      {
         §4"#§.singleton.removeEventListener(§7!@§.§6,§,this.onEnterFrame);
         if(this.§4!1§)
         {
            this.§4!1§.stop();
            this.§4!1§ = null;
         }
      }
   }
}
