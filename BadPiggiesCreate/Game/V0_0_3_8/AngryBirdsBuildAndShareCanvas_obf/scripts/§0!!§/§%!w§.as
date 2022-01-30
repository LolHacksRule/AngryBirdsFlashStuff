package §0!!§
{
   import §"!0§.§"!5§;
   import §"!0§.§;!5§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §%!w§ extends MovieClip
   {
       
      
      private var §+l§:§;!5§;
      
      private var §@+§:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var §!!`§:Boolean = false;
      
      public function §%!w§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         param5 = Number(param5) || Number(AngryBirdsFP11.§"!U§.getAppWidth());
         param6 = Number(param6) || Number(AngryBirdsFP11.§"!U§.getAppHeight());
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
         AngryBirdsFP11.§"!U§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      public function §=8§(param1:Number, param2:Number, param3:Number, param4:Number = 0.3) : void
      {
         if(this.§!!`§)
         {
            return;
         }
         if(this.§+l§)
         {
            this.§+l§.stop();
         }
         this.§@+§ = new ColorTransform();
         this.§@+§.redOffset = transform.colorTransform.redOffset;
         this.§@+§.greenOffset = transform.colorTransform.greenOffset;
         this.§@+§.blueOffset = transform.colorTransform.blueOffset;
         this.§+l§ = §"!5§.§9j§.§4!p§(this.§@+§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§+l§.onComplete = this.§^!U§;
         this.§+l§.play();
         this.§!!`§ = true;
      }
      
      public function §1$§(param1:Number) : void
      {
         this.mNewAlpha = param1;
         alpha = param1;
      }
      
      public function §4g§(param1:Number, param2:Number = 0.5) : void
      {
         if(this.§+l§ != null)
         {
            this.§+l§.stop();
         }
         this.§+l§ = §"!5§.§9j§.§4!p§(this,{"mNewAlpha":param1},null,param2);
         this.§+l§.onComplete = this.§@!!§;
         this.§+l§.§0!k§ = false;
         this.§+l§.play();
      }
      
      private function §@!!§() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§'2§));
      }
      
      private function §^!U§() : void
      {
         this.§!!`§ = false;
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§@+§)
         {
            transform.colorTransform = this.§@+§;
            if(!this.§!!`§)
            {
               this.§@+§ = null;
            }
         }
         if(alpha != this.mNewAlpha)
         {
            alpha = this.mNewAlpha;
         }
      }
      
      public function clean() : void
      {
         AngryBirdsFP11.§"!U§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         if(this.§+l§)
         {
            this.§+l§.stop();
            this.§+l§ = null;
         }
      }
   }
}
