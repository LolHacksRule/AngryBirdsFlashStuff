package §<!=§
{
   import §&#S§.§""Z§;
   import §&#S§.§+,§;
   import §3!T§.§5"8§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §;#1§ extends MovieClip
   {
       
      
      private var §?$6§:§+,§;
      
      private var §8#c§:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var §7#V§:Boolean = false;
      
      public function §;#1§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
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
         AngryBirdsBase.singleton.addEventListener(§5"8§.§>#x§,this.onEnterFrame);
      }
      
      public function §6!=§(param1:Number, param2:Number, param3:Number, param4:Number = 0.3) : void
      {
         if(this.§7#V§)
         {
            return;
         }
         if(this.§?$6§)
         {
            this.§?$6§.stop();
         }
         this.§8#c§ = new ColorTransform();
         this.§8#c§.redOffset = transform.colorTransform.redOffset;
         this.§8#c§.greenOffset = transform.colorTransform.greenOffset;
         this.§8#c§.blueOffset = transform.colorTransform.blueOffset;
         this.§?$6§ = §""Z§.§3!]§.§5"0§(this.§8#c§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§?$6§.onComplete = this.§ "g§;
         this.§?$6§.play();
         this.§7#V§ = true;
      }
      
      public function §@u§(param1:Number) : void
      {
         this.mNewAlpha = param1;
         alpha = param1;
      }
      
      public function §@!z§(param1:Number, param2:Number = 0.5) : void
      {
         if(this.§?$6§ != null)
         {
            this.§?$6§.stop();
         }
         this.§?$6§ = §""Z§.§3!]§.§5"0§(this,{"mNewAlpha":param1},null,param2);
         this.§?$6§.onComplete = this.§&r§;
         this.§?$6§.§#"V§ = false;
         this.§?$6§.play();
      }
      
      private function §&r§() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§ '§));
      }
      
      private function § "g§() : void
      {
         this.§7#V§ = false;
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§8#c§)
         {
            transform.colorTransform = this.§8#c§;
            if(!this.§7#V§)
            {
               this.§8#c§ = null;
            }
         }
         if(alpha != this.mNewAlpha)
         {
            alpha = this.mNewAlpha;
         }
      }
      
      public function §4#1§() : void
      {
         AngryBirdsBase.singleton.removeEventListener(§5"8§.§>#x§,this.onEnterFrame);
         if(this.§?$6§)
         {
            this.§?$6§.stop();
            this.§?$6§ = null;
         }
      }
   }
}
