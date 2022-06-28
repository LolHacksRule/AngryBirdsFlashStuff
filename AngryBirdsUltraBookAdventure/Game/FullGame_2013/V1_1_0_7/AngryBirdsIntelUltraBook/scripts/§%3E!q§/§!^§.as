package §>!q§
{
   import §]F§.§^v§;
   import §]F§.§`!G§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §!^§ extends MovieClip
   {
       
      
      private var §1!n§:§^v§;
      
      private var §?f§:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var §'!R§:Boolean = false;
      
      public function §!^§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         param5 = Number(param5) || Number(AngryBirdsFP11.§'!g§.getAppWidth());
         param6 = Number(param6) || Number(AngryBirdsFP11.§'!g§.getAppHeight());
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
         AngryBirdsFP11.§'!g§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      public function §,n§(param1:Number, param2:Number, param3:Number, param4:Number = 0.3) : void
      {
         if(this.§'!R§)
         {
            return;
         }
         if(this.§1!n§)
         {
            this.§1!n§.stop();
         }
         this.§?f§ = new ColorTransform();
         this.§?f§.redOffset = transform.colorTransform.redOffset;
         this.§?f§.greenOffset = transform.colorTransform.greenOffset;
         this.§?f§.blueOffset = transform.colorTransform.blueOffset;
         this.§1!n§ = §`!G§.§[U§.§-]§(this.§?f§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§1!n§.onComplete = this.§=!d§;
         this.§1!n§.play();
         this.§'!R§ = true;
      }
      
      public function §!0§(param1:Number) : void
      {
         this.mNewAlpha = param1;
         alpha = param1;
      }
      
      public function §^p§(param1:Number, param2:Number = 0.5) : void
      {
         if(this.§1!n§ != null)
         {
            this.§1!n§.stop();
         }
         this.§1!n§ = §`!G§.§[U§.§-]§(this,{"mNewAlpha":param1},null,param2);
         this.§1!n§.onComplete = this.§-!P§;
         this.§1!n§.§^!5§ = false;
         this.§1!n§.play();
      }
      
      private function §-!P§() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§&G§));
      }
      
      private function §=!d§() : void
      {
         this.§'!R§ = false;
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§?f§)
         {
            transform.colorTransform = this.§?f§;
            if(!this.§'!R§)
            {
               this.§?f§ = null;
            }
         }
         if(alpha != this.mNewAlpha)
         {
            alpha = this.mNewAlpha;
         }
      }
      
      public function clean() : void
      {
         AngryBirdsFP11.§'!g§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         if(this.§1!n§)
         {
            this.§1!n§.stop();
            this.§1!n§ = null;
         }
      }
   }
}
