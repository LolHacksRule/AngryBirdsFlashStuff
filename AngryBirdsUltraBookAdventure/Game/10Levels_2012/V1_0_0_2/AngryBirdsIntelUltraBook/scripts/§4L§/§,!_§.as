package §4L§
{
   import §57§.§,!b§;
   import §57§.§4!Z§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §,!_§ extends MovieClip
   {
       
      
      private var get:§4!Z§;
      
      private var §]u§:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var §-<§:Boolean = false;
      
      public function §,!_§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         param5 = Number(param5) || Number(AngryBirdsFP11.§3!a§.getAppWidth());
         param6 = Number(param6) || Number(AngryBirdsFP11.§3!a§.getAppHeight());
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
         AngryBirdsFP11.§3!a§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      public function §"!h§(param1:Number, param2:Number, param3:Number, param4:Number = 0.3) : void
      {
         if(this.§-<§)
         {
            return;
         }
         if(this.get)
         {
            this.get.stop();
         }
         this.§]u§ = new ColorTransform();
         this.§]u§.redOffset = transform.colorTransform.redOffset;
         this.§]u§.greenOffset = transform.colorTransform.greenOffset;
         this.§]u§.blueOffset = transform.colorTransform.blueOffset;
         this.get = §,!b§.§<d§.§>a§(this.§]u§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.get.onComplete = this.§4d§;
         this.get.play();
         this.§-<§ = true;
      }
      
      public function §]f§(param1:Number) : void
      {
         this.mNewAlpha = param1;
         alpha = param1;
      }
      
      public function §7!+§(param1:Number, param2:Number = 0.5) : void
      {
         if(this.get != null)
         {
            this.get.stop();
         }
         this.get = §,!b§.§<d§.§>a§(this,{"mNewAlpha":param1},null,param2);
         this.get.onComplete = this.§-!t§;
         this.get.§-3§ = false;
         this.get.play();
      }
      
      private function §-!t§() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§5!t§));
      }
      
      private function §4d§() : void
      {
         this.§-<§ = false;
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§]u§)
         {
            transform.colorTransform = this.§]u§;
            if(!this.§-<§)
            {
               this.§]u§ = null;
            }
         }
         if(alpha != this.mNewAlpha)
         {
            alpha = this.mNewAlpha;
         }
      }
      
      public function clean() : void
      {
         AngryBirdsFP11.§3!a§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         if(this.get)
         {
            this.get.stop();
            this.get = null;
         }
      }
   }
}
