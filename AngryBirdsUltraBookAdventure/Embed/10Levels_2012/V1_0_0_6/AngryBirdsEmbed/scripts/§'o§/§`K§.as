package §'o§
{
   import §?!+§.§,!G§;
   import §?!+§.§3_§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §`K§ extends MovieClip
   {
       
      
      private var §#O§:§3_§;
      
      private var §+o§:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var §,j§:Boolean = false;
      
      public function §`K§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         param5 = Number(param5) || Number(AngryBirdsFP11.§0P§.getAppWidth());
         param6 = Number(param6) || Number(AngryBirdsFP11.§0P§.getAppHeight());
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
         AngryBirdsFP11.§0P§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      public function §69§(param1:Number, param2:Number, param3:Number, param4:Number = 0.3) : void
      {
         if(this.§,j§)
         {
            return;
         }
         if(this.§#O§)
         {
            this.§#O§.stop();
         }
         this.§+o§ = new ColorTransform();
         this.§+o§.redOffset = transform.colorTransform.redOffset;
         this.§+o§.greenOffset = transform.colorTransform.greenOffset;
         this.§+o§.blueOffset = transform.colorTransform.blueOffset;
         this.§#O§ = §,!G§.§@j§.§47§(this.§+o§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§#O§.onComplete = this.§-3§;
         this.§#O§.play();
         this.§,j§ = true;
      }
      
      public function §!!6§(param1:Number) : void
      {
         this.mNewAlpha = param1;
         alpha = param1;
      }
      
      public function §?`§(param1:Number, param2:Number = 0.5) : void
      {
         if(this.§#O§ != null)
         {
            this.§#O§.stop();
         }
         this.§#O§ = §,!G§.§@j§.§47§(this,{"mNewAlpha":param1},null,param2);
         this.§#O§.onComplete = this.§=!<§;
         this.§#O§.§'<§ = false;
         this.§#O§.play();
      }
      
      private function §=!<§() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§&Y§));
      }
      
      private function §-3§() : void
      {
         this.§,j§ = false;
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§+o§)
         {
            transform.colorTransform = this.§+o§;
            if(!this.§,j§)
            {
               this.§+o§ = null;
            }
         }
         if(alpha != this.mNewAlpha)
         {
            alpha = this.mNewAlpha;
         }
      }
      
      public function clean() : void
      {
         AngryBirdsFP11.§0P§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         if(this.§#O§)
         {
            this.§#O§.stop();
            this.§#O§ = null;
         }
      }
   }
}
