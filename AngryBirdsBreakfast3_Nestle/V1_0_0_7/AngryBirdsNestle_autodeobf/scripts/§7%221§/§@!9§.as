package §7"1§
{
   import §"V§.§0"#§;
   import §-b§.§"!d§;
   import §-b§.§4`§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §@!9§ extends MovieClip
   {
       
      
      private var §2M§:§4`§;
      
      private var §34§:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var §"3§:Boolean = false;
      
      public function §@!9§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         param5 = Number(param5) || Number(§,!X§.§>!G§.getAppWidth());
         param6 = Number(param6) || Number(§,!X§.§>!G§.getAppHeight());
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
         §,!X§.§>!G§.addEventListener(§0"#§.§2;§,this.onEnterFrame);
      }
      
      public function §3!"§(param1:Number, param2:Number, param3:Number, param4:Number = 0.3) : void
      {
         if(this.§"3§)
         {
            return;
         }
         if(this.§2M§)
         {
            this.§2M§.stop();
         }
         this.§34§ = new ColorTransform();
         this.§34§.redOffset = transform.colorTransform.redOffset;
         this.§34§.greenOffset = transform.colorTransform.greenOffset;
         this.§34§.blueOffset = transform.colorTransform.blueOffset;
         this.§2M§ = §"!d§.§>!P§.§7R§(this.§34§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§2M§.onComplete = this.§=b§;
         this.§2M§.play();
         this.§"3§ = true;
      }
      
      public function §0a§(param1:Number) : void
      {
         this.mNewAlpha = param1;
         alpha = param1;
      }
      
      public function §;!$§(param1:Number, param2:Number = 0.5) : void
      {
         if(this.§2M§ != null)
         {
            this.§2M§.stop();
         }
         this.§2M§ = §"!d§.§>!P§.§7R§(this,{"mNewAlpha":param1},null,param2);
         this.§2M§.onComplete = this.§2U§;
         this.§2M§.§?!b§ = false;
         this.§2M§.play();
      }
      
      private function §2U§() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§+!t§));
      }
      
      private function §=b§() : void
      {
         this.§"3§ = false;
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§34§)
         {
            transform.colorTransform = this.§34§;
            if(!this.§"3§)
            {
               this.§34§ = null;
            }
         }
         if(alpha != this.mNewAlpha)
         {
            alpha = this.mNewAlpha;
         }
      }
      
      public function §^!%§() : void
      {
         §,!X§.§>!G§.removeEventListener(§0"#§.§2;§,this.onEnterFrame);
         if(this.§2M§)
         {
            this.§2M§.stop();
            this.§2M§ = null;
         }
      }
   }
}
