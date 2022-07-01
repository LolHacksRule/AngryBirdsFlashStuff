package §&!'§
{
   import §=3§.§]!X§;
   import §=3§.§`!F§;
   import §>!L§.§-"#§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §]S§ extends MovieClip
   {
       
      
      private var §+K§:§]!X§;
      
      private var §3c§:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var §2!I§:Boolean = false;
      
      public function §]S§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         param5 = Number(param5) || Number(§&N§.§#Y§.getAppWidth());
         param6 = Number(param6) || Number(§&N§.§#Y§.getAppHeight());
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
         §&N§.§#Y§.addEventListener(§-"#§.§@!t§,this.onEnterFrame);
      }
      
      public function §=&§(param1:Number, param2:Number, param3:Number, param4:Number = 0.3) : void
      {
         if(this.§2!I§)
         {
            return;
         }
         if(this.§+K§)
         {
            this.§+K§.stop();
         }
         this.§3c§ = new ColorTransform();
         this.§3c§.redOffset = transform.colorTransform.redOffset;
         this.§3c§.greenOffset = transform.colorTransform.greenOffset;
         this.§3c§.blueOffset = transform.colorTransform.blueOffset;
         this.§+K§ = §`!F§.§=J§.§-r§(this.§3c§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§+K§.onComplete = this.§7"'§;
         this.§+K§.play();
         this.§2!I§ = true;
      }
      
      public function §["+§(param1:Number) : void
      {
         this.mNewAlpha = param1;
         alpha = param1;
      }
      
      public function §3"5§(param1:Number, param2:Number = 0.5) : void
      {
         if(this.§+K§ != null)
         {
            this.§+K§.stop();
         }
         this.§+K§ = §`!F§.§=J§.§-r§(this,{"mNewAlpha":param1},null,param2);
         this.§+K§.onComplete = this.§%!Q§;
         this.§+K§.§,@§ = false;
         this.§+K§.play();
      }
      
      private function §%!Q§() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§!D§));
      }
      
      private function §7"'§() : void
      {
         this.§2!I§ = false;
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§3c§)
         {
            transform.colorTransform = this.§3c§;
            if(!this.§2!I§)
            {
               this.§3c§ = null;
            }
         }
         if(alpha != this.mNewAlpha)
         {
            alpha = this.mNewAlpha;
         }
      }
      
      public function §3!<§() : void
      {
         §&N§.§#Y§.removeEventListener(§-"#§.§@!t§,this.onEnterFrame);
         if(this.§+K§)
         {
            this.§+K§.stop();
            this.§+K§ = null;
         }
      }
   }
}
