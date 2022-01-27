package §3p§
{
   import §1!#§.§<t§;
   import §1!#§.§]H§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §4;§ extends MovieClip
   {
       
      
      private var §>A§:§]H§;
      
      private var §'!L§:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var §0!=§:Boolean = false;
      
      public function §4;§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         param5 = Number(param5) || Number(AngryBirdsFP11.§<2§.getAppWidth());
         param6 = Number(param6) || Number(AngryBirdsFP11.§<2§.getAppHeight());
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
         AngryBirdsFP11.§<2§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      public function §6!@§(param1:Number, param2:Number, param3:Number, param4:Number = 0.3) : void
      {
         if(this.§0!=§)
         {
            return;
         }
         if(this.§>A§)
         {
            this.§>A§.stop();
         }
         this.§'!L§ = new ColorTransform();
         this.§'!L§.redOffset = transform.colorTransform.redOffset;
         this.§'!L§.greenOffset = transform.colorTransform.greenOffset;
         this.§'!L§.blueOffset = transform.colorTransform.blueOffset;
         this.§>A§ = §<t§.§4J§.§#q§(this.§'!L§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§>A§.onComplete = this.§;!6§;
         this.§>A§.play();
         this.§0!=§ = true;
      }
      
      public function §[!7§(param1:Number) : void
      {
         this.mNewAlpha = param1;
         alpha = param1;
      }
      
      public function fadeToAlpha(param1:Number, param2:Number = 0.5) : void
      {
         if(this.§>A§ != null)
         {
            this.§>A§.stop();
         }
         this.§>A§ = §<t§.§4J§.§#q§(this,{"mNewAlpha":param1},null,param2);
         this.§>A§.onComplete = this.§<M§;
         this.§>A§.§@3§ = false;
         this.§>A§.play();
      }
      
      private function §<M§() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§#!%§));
      }
      
      private function §;!6§() : void
      {
         this.§0!=§ = false;
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§'!L§)
         {
            transform.colorTransform = this.§'!L§;
            if(!this.§0!=§)
            {
               this.§'!L§ = null;
            }
         }
         if(alpha != this.mNewAlpha)
         {
            alpha = this.mNewAlpha;
         }
      }
      
      public function clean() : void
      {
         AngryBirdsFP11.§<2§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         if(this.§>A§)
         {
            this.§>A§.stop();
            this.§>A§ = null;
         }
      }
   }
}
