package §<!b§
{
   import §8Z§.§-#C§;
   import §8Z§.§6"w§;
   import §<o§.§7"P§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §&!i§ extends MovieClip
   {
       
      
      private var §]!f§:§-#C§;
      
      private var §]^§:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var native:Boolean = false;
      
      public function §&!i§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
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
         AngryBirdsBase.singleton.addEventListener(§7"P§.§,"!§,this.onEnterFrame);
      }
      
      public function §[#u§(param1:Number, param2:Number, param3:Number, param4:Number = 0.3) : void
      {
         if(this.native)
         {
            return;
         }
         if(this.§]!f§)
         {
            this.§]!f§.stop();
         }
         this.§]^§ = new ColorTransform();
         this.§]^§.redOffset = transform.colorTransform.redOffset;
         this.§]^§.greenOffset = transform.colorTransform.greenOffset;
         this.§]^§.blueOffset = transform.colorTransform.blueOffset;
         this.§]!f§ = §6"w§.§ "D§.§""3§(this.§]^§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§]!f§.onComplete = this.§@!M§;
         this.§]!f§.play();
         this.native = true;
      }
      
      public function §+$2§(param1:Number) : void
      {
         this.mNewAlpha = param1;
         alpha = param1;
      }
      
      public function §4!>§(param1:Number, param2:Number = 0.5) : void
      {
         if(this.§]!f§ != null)
         {
            this.§]!f§.stop();
         }
         this.§]!f§ = §6"w§.§ "D§.§""3§(this,{"mNewAlpha":param1},null,param2);
         this.§]!f§.onComplete = this.§#"I§;
         this.§]!f§.§+"+§ = false;
         this.§]!f§.play();
      }
      
      private function §#"I§() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§[,§));
      }
      
      private function §@!M§() : void
      {
         this.native = false;
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§]^§)
         {
            transform.colorTransform = this.§]^§;
            if(!this.native)
            {
               this.§]^§ = null;
            }
         }
         if(alpha != this.mNewAlpha)
         {
            alpha = this.mNewAlpha;
         }
      }
      
      public function §;!?§() : void
      {
         AngryBirdsBase.singleton.removeEventListener(§7"P§.§,"!§,this.onEnterFrame);
         if(this.§]!f§)
         {
            this.§]!f§.stop();
            this.§]!f§ = null;
         }
      }
   }
}
