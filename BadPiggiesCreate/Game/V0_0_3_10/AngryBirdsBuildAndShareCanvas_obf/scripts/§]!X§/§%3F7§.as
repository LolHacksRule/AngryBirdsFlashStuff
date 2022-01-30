package §]!X§
{
   import §>"2§.§<y§;
   import §>"2§.§^F§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §?7§ extends MovieClip
   {
       
      
      private var §]Q§:§^F§;
      
      private var §@!+§:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var §@!X§:Boolean = false;
      
      public function §?7§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         param5 = Number(param5) || Number(AngryBirdsFP11.§'"0§.getAppWidth());
         param6 = Number(param6) || Number(AngryBirdsFP11.§'"0§.getAppHeight());
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
         AngryBirdsFP11.§'"0§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      public function §+3§(param1:Number, param2:Number, param3:Number, param4:Number = 0.3) : void
      {
         if(this.§@!X§)
         {
            return;
         }
         if(this.§]Q§)
         {
            this.§]Q§.stop();
         }
         this.§@!+§ = new ColorTransform();
         this.§@!+§.redOffset = transform.colorTransform.redOffset;
         this.§@!+§.greenOffset = transform.colorTransform.greenOffset;
         this.§@!+§.blueOffset = transform.colorTransform.blueOffset;
         this.§]Q§ = §<y§.§,l§.§]!C§(this.§@!+§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§]Q§.onComplete = this.§^!g§;
         this.§]Q§.play();
         this.§@!X§ = true;
      }
      
      public function §8s§(param1:Number) : void
      {
         this.mNewAlpha = param1;
         alpha = param1;
      }
      
      public function §%H§(param1:Number, param2:Number = 0.5) : void
      {
         if(this.§]Q§ != null)
         {
            this.§]Q§.stop();
         }
         this.§]Q§ = §<y§.§,l§.§]!C§(this,{"mNewAlpha":param1},null,param2);
         this.§]Q§.onComplete = this.§9"&§;
         this.§]Q§.§6!§ = false;
         this.§]Q§.play();
      }
      
      private function §9"&§() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§]"&§));
      }
      
      private function §^!g§() : void
      {
         this.§@!X§ = false;
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§@!+§)
         {
            transform.colorTransform = this.§@!+§;
            if(!this.§@!X§)
            {
               this.§@!+§ = null;
            }
         }
         if(alpha != this.mNewAlpha)
         {
            alpha = this.mNewAlpha;
         }
      }
      
      public function clean() : void
      {
         AngryBirdsFP11.§'"0§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         if(this.§]Q§)
         {
            this.§]Q§.stop();
            this.§]Q§ = null;
         }
      }
   }
}
