package §1!k§
{
   import §#!O§.§"!t§;
   import §#!O§.§,4§;
   import §#R§.§0<§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §2!^§ extends MovieClip
   {
       
      
      private var §>!>§:§,4§;
      
      private var §1h§:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var §""7§:Boolean = false;
      
      public function §2!^§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         param5 = Number(param5) || Number(§2&§.§6o§.getAppWidth());
         param6 = Number(param6) || Number(§2&§.§6o§.getAppHeight());
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
         §2&§.§6o§.addEventListener(§0<§.§?"8§,this.onEnterFrame);
      }
      
      public function §=n§(param1:Number, param2:Number, param3:Number, param4:Number = 0.3) : void
      {
         if(this.§""7§)
         {
            return;
         }
         if(this.§>!>§)
         {
            this.§>!>§.stop();
         }
         this.§1h§ = new ColorTransform();
         this.§1h§.redOffset = transform.colorTransform.redOffset;
         this.§1h§.greenOffset = transform.colorTransform.greenOffset;
         this.§1h§.blueOffset = transform.colorTransform.blueOffset;
         this.§>!>§ = §"!t§.§3R§.§2m§(this.§1h§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§>!>§.onComplete = this.§!!g§;
         this.§>!>§.play();
         this.§""7§ = true;
      }
      
      public function §6f§(param1:Number) : void
      {
         this.mNewAlpha = param1;
         alpha = param1;
      }
      
      public function §[!1§(param1:Number, param2:Number = 0.5) : void
      {
         if(this.§>!>§ != null)
         {
            this.§>!>§.stop();
         }
         this.§>!>§ = §"!t§.§3R§.§2m§(this,{"mNewAlpha":param1},null,param2);
         this.§>!>§.onComplete = this.§!h§;
         this.§>!>§.§3"&§ = false;
         this.§>!>§.play();
      }
      
      private function §!h§() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§4,§));
      }
      
      private function §!!g§() : void
      {
         this.§""7§ = false;
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§1h§)
         {
            transform.colorTransform = this.§1h§;
            if(!this.§""7§)
            {
               this.§1h§ = null;
            }
         }
         if(alpha != this.mNewAlpha)
         {
            alpha = this.mNewAlpha;
         }
      }
      
      public function §&"#§() : void
      {
         §2&§.§6o§.removeEventListener(§0<§.§?"8§,this.onEnterFrame);
         if(this.§>!>§)
         {
            this.§>!>§.stop();
            this.§>!>§ = null;
         }
      }
   }
}
