package §`!_§
{
   import §><§.§0!M§;
   import §><§.§4!N§;
   import §?!4§.§6"&§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §[!q§ extends MovieClip
   {
       
      
      private var §@?§:§4!N§;
      
      private var §-!A§:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var § !A§:Boolean = false;
      
      public function §[!q§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         param5 = Number(param5) || Number(§-!l§.§"x§.getAppWidth());
         param6 = Number(param6) || Number(§-!l§.§"x§.getAppHeight());
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
         §-!l§.§"x§.addEventListener(§6"&§.§"!w§,this.onEnterFrame);
      }
      
      public function §0!s§(param1:Number, param2:Number, param3:Number, param4:Number = 0.3) : void
      {
         if(this.§ !A§)
         {
            return;
         }
         if(this.§@?§)
         {
            this.§@?§.stop();
         }
         this.§-!A§ = new ColorTransform();
         this.§-!A§.redOffset = transform.colorTransform.redOffset;
         this.§-!A§.greenOffset = transform.colorTransform.greenOffset;
         this.§-!A§.blueOffset = transform.colorTransform.blueOffset;
         this.§@?§ = §0!M§.§?!+§.§3d§(this.§-!A§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§@?§.onComplete = this.§]!§;
         this.§@?§.play();
         this.§ !A§ = true;
      }
      
      public function §7!B§(param1:Number) : void
      {
         this.mNewAlpha = param1;
         alpha = param1;
      }
      
      public function §,>§(param1:Number, param2:Number = 0.5) : void
      {
         if(this.§@?§ != null)
         {
            this.§@?§.stop();
         }
         this.§@?§ = §0!M§.§?!+§.§3d§(this,{"mNewAlpha":param1},null,param2);
         this.§@?§.onComplete = this.§'I§;
         this.§@?§.§0!m§ = false;
         this.§@?§.play();
      }
      
      private function §'I§() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§"!^§));
      }
      
      private function §]!§() : void
      {
         this.§ !A§ = false;
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§-!A§)
         {
            transform.colorTransform = this.§-!A§;
            if(!this.§ !A§)
            {
               this.§-!A§ = null;
            }
         }
         if(alpha != this.mNewAlpha)
         {
            alpha = this.mNewAlpha;
         }
      }
      
      public function §=!I§() : void
      {
         §-!l§.§"x§.removeEventListener(§6"&§.§"!w§,this.onEnterFrame);
         if(this.§@?§)
         {
            this.§@?§.stop();
            this.§@?§ = null;
         }
      }
   }
}
