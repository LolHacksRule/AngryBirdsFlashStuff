package §3§#7
{
   import §6"G§.§-#C§;
   import §6"G§.§[#R§;
   import §<w§.§^!q§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §4! § extends MovieClip
   {
       
      
      private var §7!l§:§[#R§;
      
      private var §^"K§:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var §#!7§:Boolean = false;
      
      public function §4! §(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         param5 = Number(param5) || Number(§4#;§.singleton.getAppWidth());
         param6 = Number(param6) || Number(§4#;§.singleton.getAppHeight());
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
         §4#;§.singleton.addEventListener(§^!q§.§1c§,this.onEnterFrame);
      }
      
      public function §?s§(param1:Number, param2:Number, param3:Number, param4:Number = 0.3) : void
      {
         if(this.§#!7§)
         {
            return;
         }
         if(this.§7!l§)
         {
            this.§7!l§.stop();
         }
         this.§^"K§ = new ColorTransform();
         this.§^"K§.redOffset = transform.colorTransform.redOffset;
         this.§^"K§.greenOffset = transform.colorTransform.greenOffset;
         this.§^"K§.blueOffset = transform.colorTransform.blueOffset;
         this.§7!l§ = §-#C§.§%!E§.§^!H§(this.§^"K§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§7!l§.onComplete = this.§1"S§;
         this.§7!l§.play();
         this.§#!7§ = true;
      }
      
      public function §+h§(param1:Number) : void
      {
         this.mNewAlpha = param1;
         alpha = param1;
      }
      
      public function §""a§(param1:Number, param2:Number = 0.5) : void
      {
         if(this.§7!l§ != null)
         {
            this.§7!l§.stop();
         }
         this.§7!l§ = §-#C§.§%!E§.§^!H§(this,{"mNewAlpha":param1},null,param2);
         this.§7!l§.onComplete = this.§5!A§;
         this.§7!l§.§>h§ = false;
         this.§7!l§.play();
      }
      
      private function §5!A§() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§&"h§));
      }
      
      private function §1"S§() : void
      {
         this.§#!7§ = false;
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§^"K§)
         {
            transform.colorTransform = this.§^"K§;
            if(!this.§#!7§)
            {
               this.§^"K§ = null;
            }
         }
         if(alpha != this.mNewAlpha)
         {
            alpha = this.mNewAlpha;
         }
      }
      
      public function §%!G§() : void
      {
         §4#;§.singleton.removeEventListener(§^!q§.§1c§,this.onEnterFrame);
         if(this.§7!l§)
         {
            this.§7!l§.stop();
            this.§7!l§ = null;
         }
      }
   }
}
