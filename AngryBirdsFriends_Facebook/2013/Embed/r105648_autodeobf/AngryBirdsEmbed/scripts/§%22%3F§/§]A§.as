package §"?§
{
   import §@q§.§+!B§;
   import §@q§.§6;§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §]A§ extends MovieClip
   {
       
      
      private var §+&§:§+!B§;
      
      private var §3=§:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var §0X§:Boolean = false;
      
      public function §]A§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         param5 = Number(param5) || Number(AngryBirdsFP11.§^!<§.getAppWidth());
         param6 = Number(param6) || Number(AngryBirdsFP11.§^!<§.getAppHeight());
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
         AngryBirdsFP11.§^!<§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      public function §1!9§(param1:Number, param2:Number, param3:Number, param4:Number = 0.3) : void
      {
         if(this.§0X§)
         {
            return;
         }
         if(this.§+&§)
         {
            this.§+&§.stop();
         }
         this.§3=§ = new ColorTransform();
         this.§3=§.redOffset = transform.colorTransform.redOffset;
         this.§3=§.greenOffset = transform.colorTransform.greenOffset;
         this.§3=§.blueOffset = transform.colorTransform.blueOffset;
         this.§+&§ = §6;§.§&e§.§42§(this.§3=§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§+&§.onComplete = this.§]X§;
         this.§+&§.play();
         this.§0X§ = true;
      }
      
      public function §#!,§(param1:Number) : void
      {
         this.mNewAlpha = param1;
         alpha = param1;
      }
      
      public function §%H§(param1:Number, param2:Number = 0.5) : void
      {
         if(this.§+&§ != null)
         {
            this.§+&§.stop();
         }
         this.§+&§ = §6;§.§&e§.§42§(this,{"mNewAlpha":param1},null,param2);
         this.§+&§.onComplete = this.§8P§;
         this.§+&§.§]!9§ = false;
         this.§+&§.play();
      }
      
      private function §8P§() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§[%§));
      }
      
      private function §]X§() : void
      {
         this.§0X§ = false;
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§3=§)
         {
            transform.colorTransform = this.§3=§;
            if(!this.§0X§)
            {
               this.§3=§ = null;
            }
         }
         if(alpha != this.mNewAlpha)
         {
            alpha = this.mNewAlpha;
         }
      }
      
      public function clean() : void
      {
         AngryBirdsFP11.§^!<§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         if(this.§+&§)
         {
            this.§+&§.stop();
            this.§+&§ = null;
         }
      }
   }
}
