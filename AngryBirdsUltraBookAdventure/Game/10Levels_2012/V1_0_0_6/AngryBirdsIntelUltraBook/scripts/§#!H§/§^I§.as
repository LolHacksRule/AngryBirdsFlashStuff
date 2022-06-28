package §#!H§
{
   import §2!H§.§!q§;
   import §2!H§.§-!,§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §^I§ extends MovieClip
   {
       
      
      private var §6!f§:§!q§;
      
      private var §+F§:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var §0!c§:Boolean = false;
      
      public function §^I§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         param5 = Number(param5) || Number(AngryBirdsFP11.§3l§.getAppWidth());
         param6 = Number(param6) || Number(AngryBirdsFP11.§3l§.getAppHeight());
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
         AngryBirdsFP11.§3l§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      public function §7K§(param1:Number, param2:Number, param3:Number, param4:Number = 0.3) : void
      {
         if(this.§0!c§)
         {
            return;
         }
         if(this.§6!f§)
         {
            this.§6!f§.stop();
         }
         this.§+F§ = new ColorTransform();
         this.§+F§.redOffset = transform.colorTransform.redOffset;
         this.§+F§.greenOffset = transform.colorTransform.greenOffset;
         this.§+F§.blueOffset = transform.colorTransform.blueOffset;
         this.§6!f§ = §-!,§.§7!j§.§,!`§(this.§+F§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§6!f§.onComplete = this.§@q§;
         this.§6!f§.play();
         this.§0!c§ = true;
      }
      
      public function §%$§(param1:Number) : void
      {
         this.mNewAlpha = param1;
         alpha = param1;
      }
      
      public function §;'§(param1:Number, param2:Number = 0.5) : void
      {
         if(this.§6!f§ != null)
         {
            this.§6!f§.stop();
         }
         this.§6!f§ = §-!,§.§7!j§.§,!`§(this,{"mNewAlpha":param1},null,param2);
         this.§6!f§.onComplete = this.§[V§;
         this.§6!f§.§]! § = false;
         this.§6!f§.play();
      }
      
      private function §[V§() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§^#§));
      }
      
      private function §@q§() : void
      {
         this.§0!c§ = false;
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§+F§)
         {
            transform.colorTransform = this.§+F§;
            if(!this.§0!c§)
            {
               this.§+F§ = null;
            }
         }
         if(alpha != this.mNewAlpha)
         {
            alpha = this.mNewAlpha;
         }
      }
      
      public function clean() : void
      {
         AngryBirdsFP11.§3l§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         if(this.§6!f§)
         {
            this.§6!f§.stop();
            this.§6!f§ = null;
         }
      }
   }
}
