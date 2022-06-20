package §#""§
{
   import §0r§.§-!F§;
   import §0r§.§7!b§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §+!J§ extends MovieClip
   {
       
      
      private var §""§:§-!F§;
      
      private var §#`§:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var §`§:Boolean = false;
      
      public function §+!J§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         param5 = Number(param5) || Number(AngryBirdsFP11.§`"B§.getAppWidth());
         param6 = Number(param6) || Number(AngryBirdsFP11.§`"B§.getAppHeight());
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
         AngryBirdsFP11.§`"B§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      public function §4!e§(param1:Number, param2:Number, param3:Number, param4:Number = 0.3) : void
      {
         if(this.§`§)
         {
            return;
         }
         if(this.§""§)
         {
            this.§""§.stop();
         }
         this.§#`§ = new ColorTransform();
         this.§#`§.redOffset = transform.colorTransform.redOffset;
         this.§#`§.greenOffset = transform.colorTransform.greenOffset;
         this.§#`§.blueOffset = transform.colorTransform.blueOffset;
         this.§""§ = §7!b§.§8c§.§4&§(this.§#`§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§""§.onComplete = this.§;l§;
         this.§""§.play();
         this.§`§ = true;
      }
      
      public function §>!!§(param1:Number) : void
      {
         this.mNewAlpha = param1;
         alpha = param1;
      }
      
      public function § !2§(param1:Number, param2:Number = 0.5) : void
      {
         if(this.§""§ != null)
         {
            this.§""§.stop();
         }
         this.§""§ = §7!b§.§8c§.§4&§(this,{"mNewAlpha":param1},null,param2);
         this.§""§.onComplete = this.§4"!§;
         this.§""§.§?"+§ = false;
         this.§""§.play();
      }
      
      private function §4"!§() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§>&§));
      }
      
      private function §;l§() : void
      {
         this.§`§ = false;
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§#`§)
         {
            transform.colorTransform = this.§#`§;
            if(!this.§`§)
            {
               this.§#`§ = null;
            }
         }
         if(alpha != this.mNewAlpha)
         {
            alpha = this.mNewAlpha;
         }
      }
      
      public function clean() : void
      {
         AngryBirdsFP11.§`"B§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         if(this.§""§)
         {
            this.§""§.stop();
            this.§""§ = null;
         }
      }
   }
}
