package §5",§
{
   import §#!k§.§`L§;
   import §'! §.§4!Q§;
   import §'! §.§41§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §`#+§ extends MovieClip
   {
       
      
      private var §1^§:§4!Q§;
      
      private var §5"B§:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var §1"!§:Boolean = false;
      
      public function §`#+§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         param5 = Number(param5) || Number(§;"@§.singleton.getAppWidth());
         param6 = Number(param6) || Number(§;"@§.singleton.getAppHeight());
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
         §;"@§.singleton.addEventListener(§`L§.§4f§,this.onEnterFrame);
      }
      
      public function §<#0§(param1:Number, param2:Number, param3:Number, param4:Number = 0.3) : void
      {
         if(this.§1"!§)
         {
            return;
         }
         if(this.§1^§)
         {
            this.§1^§.stop();
         }
         this.§5"B§ = new ColorTransform();
         this.§5"B§.redOffset = transform.colorTransform.redOffset;
         this.§5"B§.greenOffset = transform.colorTransform.greenOffset;
         this.§5"B§.blueOffset = transform.colorTransform.blueOffset;
         this.§1^§ = §41§.§-G§.§&#'§(this.§5"B§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§1^§.onComplete = this.§2"<§;
         this.§1^§.play();
         this.§1"!§ = true;
      }
      
      public function §#!h§(param1:Number) : void
      {
         this.mNewAlpha = param1;
         alpha = param1;
      }
      
      public function §'!9§(param1:Number, param2:Number = 0.5) : void
      {
         if(this.§1^§ != null)
         {
            this.§1^§.stop();
         }
         this.§1^§ = §41§.§-G§.§&#'§(this,{"mNewAlpha":param1},null,param2);
         this.§1^§.onComplete = this.§!!<§;
         this.§1^§.§7!b§ = false;
         this.§1^§.play();
      }
      
      private function §!!<§() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§-"u§));
      }
      
      private function §2"<§() : void
      {
         this.§1"!§ = false;
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§5"B§)
         {
            transform.colorTransform = this.§5"B§;
            if(!this.§1"!§)
            {
               this.§5"B§ = null;
            }
         }
         if(alpha != this.mNewAlpha)
         {
            alpha = this.mNewAlpha;
         }
      }
      
      public function §;!k§() : void
      {
         §;"@§.singleton.removeEventListener(§`L§.§4f§,this.onEnterFrame);
         if(this.§1^§)
         {
            this.§1^§.stop();
            this.§1^§ = null;
         }
      }
   }
}
