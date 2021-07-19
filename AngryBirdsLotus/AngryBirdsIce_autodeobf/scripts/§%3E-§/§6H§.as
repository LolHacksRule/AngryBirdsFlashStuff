package §>-§
{
   import §2!5§.§";§;
   import §2!5§.§?A§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §6H§ extends MovieClip
   {
       
      
      private var §6!>§:§?A§;
      
      private var §<q§:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var §<0§:Boolean = false;
      
      public function §6H§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         param5 = Number(param5) || Number(AngryBirdsFP11.§?L§.getAppWidth());
         param6 = Number(param6) || Number(AngryBirdsFP11.§?L§.getAppHeight());
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
         AngryBirdsFP11.§?L§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      public function § !%§(param1:Number, param2:Number, param3:Number, param4:Number = 0.3) : void
      {
         if(this.§<0§)
         {
            return;
         }
         if(this.§6!>§)
         {
            this.§6!>§.stop();
         }
         this.§<q§ = new ColorTransform();
         this.§<q§.redOffset = transform.colorTransform.redOffset;
         this.§<q§.greenOffset = transform.colorTransform.greenOffset;
         this.§<q§.blueOffset = transform.colorTransform.blueOffset;
         this.§6!>§ = §";§.§[8§.§6!$§(this.§<q§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§6!>§.onComplete = this.§`0§;
         this.§6!>§.play();
         this.§<0§ = true;
      }
      
      public function §,`§(param1:Number) : void
      {
         this.mNewAlpha = param1;
         alpha = param1;
      }
      
      public function §@2§(param1:Number, param2:Number = 0.5) : void
      {
         if(this.§6!>§ != null)
         {
            this.§6!>§.stop();
         }
         this.§6!>§ = §";§.§[8§.§6!$§(this,{"mNewAlpha":param1},null,param2);
         this.§6!>§.onComplete = this.§4z§;
         this.§6!>§.§+&§ = false;
         this.§6!>§.play();
      }
      
      private function §4z§() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§+!>§));
      }
      
      private function §`0§() : void
      {
         this.§<0§ = false;
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§<q§)
         {
            transform.colorTransform = this.§<q§;
            if(!this.§<0§)
            {
               this.§<q§ = null;
            }
         }
         if(alpha != this.mNewAlpha)
         {
            alpha = this.mNewAlpha;
         }
      }
      
      public function clean() : void
      {
         AngryBirdsFP11.§?L§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         if(this.§6!>§)
         {
            this.§6!>§.stop();
            this.§6!>§ = null;
         }
      }
   }
}
