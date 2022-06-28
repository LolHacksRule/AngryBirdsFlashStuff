package §0,§
{
   import §#P§.§ !=§;
   import §#P§.§@7§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §4V§ extends MovieClip
   {
       
      
      private var §?9§:§ !=§;
      
      private var §,-§:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var §"C§:Boolean = false;
      
      public function §4V§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         param5 = Number(param5) || Number(AngryBirdsFP11.§ y§.getAppWidth());
         param6 = Number(param6) || Number(AngryBirdsFP11.§ y§.getAppHeight());
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
         AngryBirdsFP11.§ y§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      public function §@!?§(param1:Number, param2:Number, param3:Number, param4:Number = 0.3) : void
      {
         if(this.§"C§)
         {
            return;
         }
         if(this.§?9§)
         {
            this.§?9§.stop();
         }
         this.§,-§ = new ColorTransform();
         this.§,-§.redOffset = transform.colorTransform.redOffset;
         this.§,-§.greenOffset = transform.colorTransform.greenOffset;
         this.§,-§.blueOffset = transform.colorTransform.blueOffset;
         this.§?9§ = §@7§.§@6§.§3!%§(this.§,-§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§?9§.onComplete = this.§5<§;
         this.§?9§.play();
         this.§"C§ = true;
      }
      
      public function §0z§(param1:Number) : void
      {
         this.mNewAlpha = param1;
         alpha = param1;
      }
      
      public function §[!'§(param1:Number, param2:Number = 0.5) : void
      {
         if(this.§?9§ != null)
         {
            this.§?9§.stop();
         }
         this.§?9§ = §@7§.§@6§.§3!%§(this,{"mNewAlpha":param1},null,param2);
         this.§?9§.onComplete = this.§ M§;
         this.§?9§.§'%§ = false;
         this.§?9§.play();
      }
      
      private function § M§() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§?!5§));
      }
      
      private function §5<§() : void
      {
         this.§"C§ = false;
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§,-§)
         {
            transform.colorTransform = this.§,-§;
            if(!this.§"C§)
            {
               this.§,-§ = null;
            }
         }
         if(alpha != this.mNewAlpha)
         {
            alpha = this.mNewAlpha;
         }
      }
      
      public function clean() : void
      {
         AngryBirdsFP11.§ y§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         if(this.§?9§)
         {
            this.§?9§.stop();
            this.§?9§ = null;
         }
      }
   }
}
