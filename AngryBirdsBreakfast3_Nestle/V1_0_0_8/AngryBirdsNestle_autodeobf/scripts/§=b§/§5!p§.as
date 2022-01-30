package §=b§
{
   import §53§.§6!u§;
   import §53§.§["$§;
   import §<" §.§@!H§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §5!p§ extends MovieClip
   {
       
      
      private var §-!v§:§["$§;
      
      private var §,!]§:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var §?!M§:Boolean = false;
      
      public function §5!p§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         param5 = Number(param5) || Number(§-O§.§5!1§.getAppWidth());
         param6 = Number(param6) || Number(§-O§.§5!1§.getAppHeight());
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
         §-O§.§5!1§.addEventListener(§@!H§.§;I§,this.onEnterFrame);
      }
      
      public function §,!#§(param1:Number, param2:Number, param3:Number, param4:Number = 0.3) : void
      {
         if(this.§?!M§)
         {
            return;
         }
         if(this.§-!v§)
         {
            this.§-!v§.stop();
         }
         this.§,!]§ = new ColorTransform();
         this.§,!]§.redOffset = transform.colorTransform.redOffset;
         this.§,!]§.greenOffset = transform.colorTransform.greenOffset;
         this.§,!]§.blueOffset = transform.colorTransform.blueOffset;
         this.§-!v§ = §6!u§.§"e§.§0!O§(this.§,!]§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§-!v§.onComplete = this.§67§;
         this.§-!v§.play();
         this.§?!M§ = true;
      }
      
      public function §+b§(param1:Number) : void
      {
         this.mNewAlpha = param1;
         alpha = param1;
      }
      
      public function §<!9§(param1:Number, param2:Number = 0.5) : void
      {
         if(this.§-!v§ != null)
         {
            this.§-!v§.stop();
         }
         this.§-!v§ = §6!u§.§"e§.§0!O§(this,{"mNewAlpha":param1},null,param2);
         this.§-!v§.onComplete = this.§^!t§;
         this.§-!v§.§>#§ = false;
         this.§-!v§.play();
      }
      
      private function §^!t§() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§4!U§));
      }
      
      private function §67§() : void
      {
         this.§?!M§ = false;
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§,!]§)
         {
            transform.colorTransform = this.§,!]§;
            if(!this.§?!M§)
            {
               this.§,!]§ = null;
            }
         }
         if(alpha != this.mNewAlpha)
         {
            alpha = this.mNewAlpha;
         }
      }
      
      public function §6T§() : void
      {
         §-O§.§5!1§.removeEventListener(§@!H§.§;I§,this.onEnterFrame);
         if(this.§-!v§)
         {
            this.§-!v§.stop();
            this.§-!v§ = null;
         }
      }
   }
}
