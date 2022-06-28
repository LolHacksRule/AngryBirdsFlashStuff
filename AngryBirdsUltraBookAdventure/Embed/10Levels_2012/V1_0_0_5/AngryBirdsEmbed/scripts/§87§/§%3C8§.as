package §87§
{
   import §`F§.§,B§;
   import §`F§.§?!3§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §<8§ extends MovieClip
   {
       
      
      private var §0!=§:§?!3§;
      
      private var §=J§:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var §9j§:Boolean = false;
      
      public function §<8§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         param5 = Number(param5) || Number(AngryBirdsFP11.§,s§.getAppWidth());
         param6 = Number(param6) || Number(AngryBirdsFP11.§,s§.getAppHeight());
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
         AngryBirdsFP11.§,s§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      public function §+J§(param1:Number, param2:Number, param3:Number, param4:Number = 0.3) : void
      {
         if(this.§9j§)
         {
            return;
         }
         if(this.§0!=§)
         {
            this.§0!=§.stop();
         }
         this.§=J§ = new ColorTransform();
         this.§=J§.redOffset = transform.colorTransform.redOffset;
         this.§=J§.greenOffset = transform.colorTransform.greenOffset;
         this.§=J§.blueOffset = transform.colorTransform.blueOffset;
         this.§0!=§ = §,B§.§^n§.§2E§(this.§=J§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§0!=§.onComplete = this.§4!9§;
         this.§0!=§.play();
         this.§9j§ = true;
      }
      
      public function §?n§(param1:Number) : void
      {
         this.mNewAlpha = param1;
         alpha = param1;
      }
      
      public function §4J§(param1:Number, param2:Number = 0.5) : void
      {
         if(this.§0!=§ != null)
         {
            this.§0!=§.stop();
         }
         this.§0!=§ = §,B§.§^n§.§2E§(this,{"mNewAlpha":param1},null,param2);
         this.§0!=§.onComplete = this.§+A§;
         this.§0!=§.§?!+§ = false;
         this.§0!=§.play();
      }
      
      private function §+A§() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§9a§));
      }
      
      private function §4!9§() : void
      {
         this.§9j§ = false;
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§=J§)
         {
            transform.colorTransform = this.§=J§;
            if(!this.§9j§)
            {
               this.§=J§ = null;
            }
         }
         if(alpha != this.mNewAlpha)
         {
            alpha = this.mNewAlpha;
         }
      }
      
      public function clean() : void
      {
         AngryBirdsFP11.§,s§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         if(this.§0!=§)
         {
            this.§0!=§.stop();
            this.§0!=§ = null;
         }
      }
   }
}
