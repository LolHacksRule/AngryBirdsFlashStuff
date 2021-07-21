package §[!w§
{
   import §&"'§.§3^§;
   import §&"'§.§7!E§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §4!i§ extends MovieClip
   {
       
      
      private var §1!d§:§3^§;
      
      private var § q§:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var §1Z§:Boolean = false;
      
      public function §4!i§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         param5 = Number(param5) || Number(AngryBirdsFP11.§%d§.getAppWidth());
         param6 = Number(param6) || Number(AngryBirdsFP11.§%d§.getAppHeight());
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
         AngryBirdsFP11.§%d§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      public function §`<§(param1:Number, param2:Number, param3:Number, param4:Number = 0.3) : void
      {
         if(this.§1Z§)
         {
            return;
         }
         if(this.§1!d§)
         {
            this.§1!d§.stop();
         }
         this.§ q§ = new ColorTransform();
         this.§ q§.redOffset = transform.colorTransform.redOffset;
         this.§ q§.greenOffset = transform.colorTransform.greenOffset;
         this.§ q§.blueOffset = transform.colorTransform.blueOffset;
         this.§1!d§ = §7!E§.§2=§.§<!C§(this.§ q§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§1!d§.onComplete = this.§1"-§;
         this.§1!d§.play();
         this.§1Z§ = true;
      }
      
      public function §]!G§(param1:Number) : void
      {
         this.mNewAlpha = param1;
         alpha = param1;
      }
      
      public function §>=§(param1:Number, param2:Number = 0.5) : void
      {
         if(this.§1!d§ != null)
         {
            this.§1!d§.stop();
         }
         this.§1!d§ = §7!E§.§2=§.§<!C§(this,{"mNewAlpha":param1},null,param2);
         this.§1!d§.onComplete = this.§7!o§;
         this.§1!d§.§?V§ = false;
         this.§1!d§.play();
      }
      
      private function §7!o§() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§-2§));
      }
      
      private function §1"-§() : void
      {
         this.§1Z§ = false;
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§ q§)
         {
            transform.colorTransform = this.§ q§;
            if(!this.§1Z§)
            {
               this.§ q§ = null;
            }
         }
         if(alpha != this.mNewAlpha)
         {
            alpha = this.mNewAlpha;
         }
      }
      
      public function clean() : void
      {
         AngryBirdsFP11.§%d§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         if(this.§1!d§)
         {
            this.§1!d§.stop();
            this.§1!d§ = null;
         }
      }
   }
}
