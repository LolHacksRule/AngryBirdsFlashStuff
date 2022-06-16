package §'",§
{
   import §!#"§.§&"H§;
   import §!#"§.§4[§;
   import §3"I§.§?#N§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §6#s§ extends MovieClip
   {
       
      
      private var §2#P§:§4[§;
      
      private var § #e§:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var §,B§:Boolean = false;
      
      public function §6#s§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         param5 = Number(param5) || Number(AngryBirdsBase.singleton.getAppWidth());
         param6 = Number(param6) || Number(AngryBirdsBase.singleton.getAppHeight());
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
         AngryBirdsBase.singleton.addEventListener(§?#N§.§1!I§,this.onEnterFrame);
      }
      
      public function §#$<§(param1:Number, param2:Number, param3:Number, param4:Number = 0.3) : void
      {
         if(this.§,B§)
         {
            return;
         }
         if(this.§2#P§)
         {
            this.§2#P§.stop();
         }
         this.§ #e§ = new ColorTransform();
         this.§ #e§.redOffset = transform.colorTransform.redOffset;
         this.§ #e§.greenOffset = transform.colorTransform.greenOffset;
         this.§ #e§.blueOffset = transform.colorTransform.blueOffset;
         this.§2#P§ = §&"H§.§6!§.§6C§(this.§ #e§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§2#P§.onComplete = this.§`#k§;
         this.§2#P§.play();
         this.§,B§ = true;
      }
      
      public function §1G§(param1:Number) : void
      {
         this.mNewAlpha = param1;
         alpha = param1;
      }
      
      public function §>$6§(param1:Number, param2:Number = 0.5) : void
      {
         if(this.§2#P§ != null)
         {
            this.§2#P§.stop();
         }
         this.§2#P§ = §&"H§.§6!§.§6C§(this,{"mNewAlpha":param1},null,param2);
         this.§2#P§.onComplete = this.§3!c§;
         this.§2#P§.§0! § = false;
         this.§2#P§.play();
      }
      
      private function §3!c§() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§!#n§));
      }
      
      private function §`#k§() : void
      {
         this.§,B§ = false;
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§ #e§)
         {
            transform.colorTransform = this.§ #e§;
            if(!this.§,B§)
            {
               this.§ #e§ = null;
            }
         }
         if(alpha != this.mNewAlpha)
         {
            alpha = this.mNewAlpha;
         }
      }
      
      public function §,"I§() : void
      {
         AngryBirdsBase.singleton.removeEventListener(§?#N§.§1!I§,this.onEnterFrame);
         if(this.§2#P§)
         {
            this.§2#P§.stop();
            this.§2#P§ = null;
         }
      }
   }
}
