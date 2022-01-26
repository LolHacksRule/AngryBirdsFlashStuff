package §1'§
{
   import §!""§.§1=§;
   import §;g§.§0!o§;
   import §;g§.§]W§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §?>§ extends MovieClip
   {
       
      
      private var §5!U§:§]W§;
      
      private var §=8§:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var §!!a§:Boolean = false;
      
      public function §?>§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         param5 = Number(param5) || Number(§ !4§.§%"7§.getAppWidth());
         param6 = Number(param6) || Number(§ !4§.§%"7§.getAppHeight());
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
         § !4§.§%"7§.addEventListener(§1=§.§]!l§,this.onEnterFrame);
      }
      
      public function §5c§(param1:Number, param2:Number, param3:Number, param4:Number = 0.3) : void
      {
         if(this.§!!a§)
         {
            return;
         }
         if(this.§5!U§)
         {
            this.§5!U§.stop();
         }
         this.§=8§ = new ColorTransform();
         this.§=8§.redOffset = transform.colorTransform.redOffset;
         this.§=8§.greenOffset = transform.colorTransform.greenOffset;
         this.§=8§.blueOffset = transform.colorTransform.blueOffset;
         this.§5!U§ = §0!o§.§,2§.§4!t§(this.§=8§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§5!U§.onComplete = this.§#K§;
         this.§5!U§.play();
         this.§!!a§ = true;
      }
      
      public function §'7§(param1:Number) : void
      {
         this.mNewAlpha = param1;
         alpha = param1;
      }
      
      public function §!!p§(param1:Number, param2:Number = 0.5) : void
      {
         if(this.§5!U§ != null)
         {
            this.§5!U§.stop();
         }
         this.§5!U§ = §0!o§.§,2§.§4!t§(this,{"mNewAlpha":param1},null,param2);
         this.§5!U§.onComplete = this.§`-§;
         this.§5!U§.§7y§ = false;
         this.§5!U§.play();
      }
      
      private function §`-§() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§#!9§));
      }
      
      private function §#K§() : void
      {
         this.§!!a§ = false;
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§=8§)
         {
            transform.colorTransform = this.§=8§;
            if(!this.§!!a§)
            {
               this.§=8§ = null;
            }
         }
         if(alpha != this.mNewAlpha)
         {
            alpha = this.mNewAlpha;
         }
      }
      
      public function §,!#§() : void
      {
         § !4§.§%"7§.removeEventListener(§1=§.§]!l§,this.onEnterFrame);
         if(this.§5!U§)
         {
            this.§5!U§.stop();
            this.§5!U§ = null;
         }
      }
   }
}
