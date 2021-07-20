package §use §
{
   import §1!d§.§!![§;
   import §1!d§.§9m§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §;0§ extends MovieClip
   {
       
      
      private var §]!f§:§!![§;
      
      private var §`a§:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var §6!K§:Boolean = false;
      
      public function §;0§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Boolean = true, param6:Number = NaN, param7:Number = NaN)
      {
         param6 = Number(param6) || Number(§"!R§.§-m§ * 2);
         param7 = Number(param7) || Number(§"!R§.§1l§ * 2);
         super();
         var _loc8_:ColorTransform;
         (_loc8_ = new ColorTransform()).redOffset = param1;
         _loc8_.greenOffset = param2;
         _loc8_.blueOffset = param3;
         transform.colorTransform = _loc8_;
         if(param5)
         {
            graphics.beginFill(0,1);
            graphics.drawRect(-param6,-param7,param6 * 2,param7 * 2);
            scaleX = 100;
            scaleY = 100;
            graphics.endFill();
         }
         else
         {
            param6 = §"!R§.§-m§;
            param7 = §"!R§.§1l§;
            graphics.beginFill(0,1);
            graphics.drawRect(-param6 / 2,-param7 / 2,param6,param7);
            graphics.endFill();
         }
         this.mNewAlpha = param4;
         alpha = param4;
         this.mouseEnabled = true;
         addEventListener(Event.ENTER_FRAME,this.§case§);
      }
      
      public function §4P§(param1:Number, param2:Number, param3:Number, param4:Number = 0.3) : void
      {
         if(this.§6!K§)
         {
            return;
         }
         if(this.§]!f§)
         {
            this.§]!f§.stop();
         }
         this.§`a§ = new ColorTransform();
         this.§`a§.redOffset = transform.colorTransform.redOffset;
         this.§`a§.greenOffset = transform.colorTransform.greenOffset;
         this.§`a§.blueOffset = transform.colorTransform.blueOffset;
         this.§]!f§ = §9m§.§?! §.§]C§(this.§`a§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§]!f§.onComplete = this.§#!a§;
         this.§]!f§.play();
         this.§6!K§ = true;
      }
      
      public function §[!,§(param1:Number) : void
      {
         this.mNewAlpha = param1;
         alpha = param1;
      }
      
      public function §^;§(param1:Number, param2:Number = 0.5, param3:Function = null) : void
      {
         if(this.§]!f§ != null)
         {
            this.§]!f§.stop();
         }
         this.§]!f§ = §9m§.§?! §.§]C§(this,{"mNewAlpha":param1},null,param2,param3);
         this.§]!f§.onComplete = this.§;!O§;
         this.§]!f§.§92§ = false;
         this.§]!f§.play();
      }
      
      private function §;!O§() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§2b§));
      }
      
      private function §#!a§() : void
      {
         this.§6!K§ = false;
      }
      
      private function §case§(param1:Event) : void
      {
         if(this.§`a§)
         {
            transform.colorTransform = this.§`a§;
            if(!this.§6!K§)
            {
               this.§`a§ = null;
            }
         }
         if(alpha != this.mNewAlpha)
         {
            alpha = this.mNewAlpha;
         }
      }
      
      public function clean() : void
      {
         removeEventListener(Event.ENTER_FRAME,this.§case§);
         if(this.§]!f§)
         {
            this.§]!f§.stop();
            this.§]!f§ = null;
         }
      }
   }
}
