package §<!F§
{
   import §-!;§.§^!!§;
   import §?@§.§'^§;
   import §?@§.§0]§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §,!e§ extends MovieClip
   {
       
      
      private var §6'§:§0]§;
      
      private var §>"§:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var §^"&§:Boolean = false;
      
      public function §,!e§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         param5 = Number(param5) || Number(§6!!§.singleton.getAppWidth());
         param6 = Number(param6) || Number(§6!!§.singleton.getAppHeight());
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
         §6!!§.singleton.addEventListener(§^!!§.§&o§,this.onEnterFrame);
      }
      
      public function §?!8§(param1:Number, param2:Number, param3:Number, param4:Number = 0.3) : void
      {
         if(this.§^"&§)
         {
            return;
         }
         if(this.§6'§)
         {
            this.§6'§.stop();
         }
         this.§>"§ = new ColorTransform();
         this.§>"§.redOffset = transform.colorTransform.redOffset;
         this.§>"§.greenOffset = transform.colorTransform.greenOffset;
         this.§>"§.blueOffset = transform.colorTransform.blueOffset;
         this.§6'§ = §'^§.§2Z§.§!!f§(this.§>"§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§6'§.onComplete = this.§ !N§;
         this.§6'§.play();
         this.§^"&§ = true;
      }
      
      public function §7z§(param1:Number) : void
      {
         this.mNewAlpha = param1;
         alpha = param1;
      }
      
      public function §=v§(param1:Number, param2:Number = 0.5) : void
      {
         if(this.§6'§ != null)
         {
            this.§6'§.stop();
         }
         this.§6'§ = §'^§.§2Z§.§!!f§(this,{"mNewAlpha":param1},null,param2);
         this.§6'§.onComplete = this.§[!J§;
         this.§6'§.§`F§ = false;
         this.§6'§.play();
      }
      
      private function §[!J§() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§9e§));
      }
      
      private function § !N§() : void
      {
         this.§^"&§ = false;
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§>"§)
         {
            transform.colorTransform = this.§>"§;
            if(!this.§^"&§)
            {
               this.§>"§ = null;
            }
         }
         if(alpha != this.mNewAlpha)
         {
            alpha = this.mNewAlpha;
         }
      }
      
      public function §9O§() : void
      {
         §6!!§.singleton.removeEventListener(§^!!§.§&o§,this.onEnterFrame);
         if(this.§6'§)
         {
            this.§6'§.stop();
            this.§6'§ = null;
         }
      }
   }
}
