package §-"Y§
{
   import § null§.§5"<§;
   import § null§.§@§;
   import §=X§.§`#x§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §"!1§ extends MovieClip
   {
       
      
      private var §^#A§:§@#5§;
      
      private var §?!5§:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var §'"g§:Boolean = false;
      
      public function §"!1§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         param5 = Number(param5) || Number(AngryBirdsBase.singleton.getAppWidth());
         param6 = Number(param6) || Number(AngryBirdsBase.singleton.getAppHeight());
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
         AngryBirdsBase.singleton.addEventListener(§`#x§.§2"F§,this.onEnterFrame);
      }
      
      public function §-#-§(param1:Number, param2:Number, param3:Number, param4:Number = 0.3) : void
      {
         if(this.§'"g§)
         {
            return;
         }
         if(this.§^#A§)
         {
            this.§^#A§.stop();
         }
         this.§?!5§ = new ColorTransform();
         this.§?!5§.redOffset = transform.colorTransform.redOffset;
         this.§?!5§.greenOffset = transform.colorTransform.greenOffset;
         this.§?!5§.blueOffset = transform.colorTransform.blueOffset;
         this.§^#A§ = §5"<§.§3"1§.§3#§(this.§?!5§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§^#A§.onComplete = this.§@S§;
         this.§^#A§.play();
         this.§'"g§ = true;
      }
      
      public function §>f§(param1:Number) : void
      {
         this.mNewAlpha = param1;
         alpha = param1;
      }
      
      public function §5d§(param1:Number, param2:Number = 0.5) : void
      {
         if(this.§^#A§ != null)
         {
            this.§^#A§.stop();
         }
         this.§^#A§ = §5"<§.§3"1§.§3#§(this,{"mNewAlpha":param1},null,param2);
         this.§^#A§.onComplete = this.§6#C§;
         this.§^#A§.§7!z§ = false;
         this.§^#A§.play();
      }
      
      private function §6#C§() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§3!&§));
      }
      
      private function §@S§() : void
      {
         this.§'"g§ = false;
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§?!5§)
         {
            transform.colorTransform = this.§?!5§;
            if(!this.§'"g§)
            {
               this.§?!5§ = null;
            }
         }
         if(alpha != this.mNewAlpha)
         {
            alpha = this.mNewAlpha;
         }
      }
      
      public function § !1§() : void
      {
         AngryBirdsBase.singleton.removeEventListener(§`#x§.§2"F§,this.onEnterFrame);
         if(this.§^#A§)
         {
            this.§^#A§.stop();
            this.§^#A§ = null;
         }
      }
   }
}
