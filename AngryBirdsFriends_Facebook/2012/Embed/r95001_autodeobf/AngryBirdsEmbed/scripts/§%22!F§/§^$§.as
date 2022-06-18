package §"!F§
{
   import §]5§.§,G§;
   import §]5§.§1^§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §^$§ extends MovieClip
   {
       
      
      private var §6K§:§1^§;
      
      private var §"!#§:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var §6E§:Boolean = false;
      
      public function §^$§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         param5 = Number(param5) || Number(AngryBirdsFP11.§?,§.getAppWidth());
         param6 = Number(param6) || Number(AngryBirdsFP11.§?,§.getAppHeight());
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
         AngryBirdsFP11.§?,§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      public function §+!;§(param1:Number, param2:Number, param3:Number, param4:Number = 0.3) : void
      {
         if(this.§6E§)
         {
            return;
         }
         if(this.§6K§)
         {
            this.§6K§.stop();
         }
         this.§"!#§ = new ColorTransform();
         this.§"!#§.redOffset = transform.colorTransform.redOffset;
         this.§"!#§.greenOffset = transform.colorTransform.greenOffset;
         this.§"!#§.blueOffset = transform.colorTransform.blueOffset;
         this.§6K§ = §,G§.§+S§.§1u§(this.§"!#§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§6K§.onComplete = this.§7[§;
         this.§6K§.play();
         this.§6E§ = true;
      }
      
      public function §`>§(param1:Number) : void
      {
         this.mNewAlpha = param1;
         alpha = param1;
      }
      
      public function §3t§(param1:Number, param2:Number = 0.5) : void
      {
         if(this.§6K§ != null)
         {
            this.§6K§.stop();
         }
         this.§6K§ = §,G§.§+S§.§1u§(this,{"mNewAlpha":param1},null,param2);
         this.§6K§.onComplete = this.§&!3§;
         this.§6K§.§#a§ = false;
         this.§6K§.play();
      }
      
      private function §&!3§() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§3M§));
      }
      
      private function §7[§() : void
      {
         this.§6E§ = false;
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§"!#§)
         {
            transform.colorTransform = this.§"!#§;
            if(!this.§6E§)
            {
               this.§"!#§ = null;
            }
         }
         if(alpha != this.mNewAlpha)
         {
            alpha = this.mNewAlpha;
         }
      }
      
      public function clean() : void
      {
         AngryBirdsFP11.§?,§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         if(this.§6K§)
         {
            this.§6K§.stop();
            this.§6K§ = null;
         }
      }
   }
}
