package §06§
{
   import § !x§.§4F§;
   import § !x§.§5+§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §9!b§ extends MovieClip
   {
       
      
      private var §#!+§:§4F§;
      
      private var §`!L§:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var §>!N§:Boolean = false;
      
      public function §9!b§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         param5 = Number(param5) || Number(AngryBirdsFP11.§`!c§.getAppWidth());
         param6 = Number(param6) || Number(AngryBirdsFP11.§`!c§.getAppHeight());
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
         AngryBirdsFP11.§`!c§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      public function §?!u§(param1:Number, param2:Number, param3:Number, param4:Number = 0.3) : void
      {
         if(this.§>!N§)
         {
            return;
         }
         if(this.§#!+§)
         {
            this.§#!+§.stop();
         }
         this.§`!L§ = new ColorTransform();
         this.§`!L§.redOffset = transform.colorTransform.redOffset;
         this.§`!L§.greenOffset = transform.colorTransform.greenOffset;
         this.§`!L§.blueOffset = transform.colorTransform.blueOffset;
         this.§#!+§ = §5+§.§^Z§.§=!a§(this.§`!L§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§#!+§.onComplete = this.§[!r§;
         this.§#!+§.play();
         this.§>!N§ = true;
      }
      
      public function §]q§(param1:Number) : void
      {
         this.mNewAlpha = param1;
         alpha = param1;
      }
      
      public function §&!f§(param1:Number, param2:Number = 0.5) : void
      {
         if(this.§#!+§ != null)
         {
            this.§#!+§.stop();
         }
         this.§#!+§ = §5+§.§^Z§.§=!a§(this,{"mNewAlpha":param1},null,param2);
         this.§#!+§.onComplete = this.§;3§;
         this.§#!+§.§+!^§ = false;
         this.§#!+§.play();
      }
      
      private function §;3§() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§<B§));
      }
      
      private function §[!r§() : void
      {
         this.§>!N§ = false;
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§`!L§)
         {
            transform.colorTransform = this.§`!L§;
            if(!this.§>!N§)
            {
               this.§`!L§ = null;
            }
         }
         if(alpha != this.mNewAlpha)
         {
            alpha = this.mNewAlpha;
         }
      }
      
      public function clean() : void
      {
         AngryBirdsFP11.§`!c§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         if(this.§#!+§)
         {
            this.§#!+§.stop();
            this.§#!+§ = null;
         }
      }
   }
}
