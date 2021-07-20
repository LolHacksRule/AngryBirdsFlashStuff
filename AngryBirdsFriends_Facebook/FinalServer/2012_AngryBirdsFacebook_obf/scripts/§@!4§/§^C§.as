package §@!4§
{
   import §2E§.§!"&§;
   import §2E§.§&p§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §^C§ extends MovieClip
   {
       
      
      private var §9H§:§!"&§;
      
      private var § "G§:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var §;k§:Boolean = false;
      
      public function §^C§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         param5 = Number(param5) || Number(AngryBirdsFP11.§#!4§.getAppWidth());
         param6 = Number(param6) || Number(AngryBirdsFP11.§#!4§.getAppHeight());
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
         AngryBirdsFP11.§#!4§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      public function §%!a§(param1:Number, param2:Number, param3:Number, param4:Number = 0.3) : void
      {
         if(this.§;k§)
         {
            return;
         }
         if(this.§9H§)
         {
            this.§9H§.stop();
         }
         this.§ "G§ = new ColorTransform();
         this.§ "G§.redOffset = transform.colorTransform.redOffset;
         this.§ "G§.greenOffset = transform.colorTransform.greenOffset;
         this.§ "G§.blueOffset = transform.colorTransform.blueOffset;
         this.§9H§ = §&p§.§1[§.§7!3§(this.§ "G§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§9H§.onComplete = this.§2=§;
         this.§9H§.play();
         this.§;k§ = true;
      }
      
      public function §[_§(param1:Number) : void
      {
         this.mNewAlpha = param1;
         alpha = param1;
      }
      
      public function §%"K§(param1:Number, param2:Number = 0.5) : void
      {
         if(this.§9H§ != null)
         {
            this.§9H§.stop();
         }
         this.§9H§ = §&p§.§1[§.§7!3§(this,{"mNewAlpha":param1},null,param2);
         this.§9H§.onComplete = this.§?"J§;
         this.§9H§.§=!h§ = false;
         this.§9H§.play();
      }
      
      private function §?"J§() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§'!?§));
      }
      
      private function §2=§() : void
      {
         this.§;k§ = false;
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§ "G§)
         {
            transform.colorTransform = this.§ "G§;
            if(!this.§;k§)
            {
               this.§ "G§ = null;
            }
         }
         if(alpha != this.mNewAlpha)
         {
            alpha = this.mNewAlpha;
         }
      }
      
      public function clean() : void
      {
         AngryBirdsFP11.§#!4§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         if(this.§9H§)
         {
            this.§9H§.stop();
            this.§9H§ = null;
         }
      }
   }
}
