package §&q§
{
   import §8!v§.§"m§;
   import §8!v§.§>!+§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §%1§ extends MovieClip
   {
       
      
      private var §^W§:§"m§;
      
      private var §9Z§:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var §7!&§:Boolean = false;
      
      public function §%1§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         param5 = Number(param5) || Number(AngryBirdsFP11.§@<§.getAppWidth());
         param6 = Number(param6) || Number(AngryBirdsFP11.§@<§.getAppHeight());
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
         AngryBirdsFP11.§@<§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      public function §[!A§(param1:Number, param2:Number, param3:Number, param4:Number = 0.3) : void
      {
         if(this.§7!&§)
         {
            return;
         }
         if(this.§^W§)
         {
            this.§^W§.stop();
         }
         this.§9Z§ = new ColorTransform();
         this.§9Z§.redOffset = transform.colorTransform.redOffset;
         this.§9Z§.greenOffset = transform.colorTransform.greenOffset;
         this.§9Z§.blueOffset = transform.colorTransform.blueOffset;
         this.§^W§ = §>!+§.§;"§.§^!K§(this.§9Z§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§^W§.onComplete = this.§0U§;
         this.§^W§.play();
         this.§7!&§ = true;
      }
      
      public function §6!8§(param1:Number) : void
      {
         this.mNewAlpha = param1;
         alpha = param1;
      }
      
      public function §?!,§(param1:Number, param2:Number = 0.5) : void
      {
         if(this.§^W§ != null)
         {
            this.§^W§.stop();
         }
         this.§^W§ = §>!+§.§;"§.§^!K§(this,{"mNewAlpha":param1},null,param2);
         this.§^W§.onComplete = this.§!#§;
         this.§^W§.§'l§ = false;
         this.§^W§.play();
      }
      
      private function §!#§() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§"![§));
      }
      
      private function §0U§() : void
      {
         this.§7!&§ = false;
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§9Z§)
         {
            transform.colorTransform = this.§9Z§;
            if(!this.§7!&§)
            {
               this.§9Z§ = null;
            }
         }
         if(alpha != this.mNewAlpha)
         {
            alpha = this.mNewAlpha;
         }
      }
      
      public function clean() : void
      {
         AngryBirdsFP11.§@<§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         if(this.§^W§)
         {
            this.§^W§.stop();
            this.§^W§ = null;
         }
      }
   }
}
