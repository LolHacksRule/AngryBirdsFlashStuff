package §>#O§
{
   import §5"G§.§^"&§;
   import §6§.§'#n§;
   import §6§.§]%§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §]U§ extends MovieClip
   {
       
      
      private var §-!H§:§]%§;
      
      private var §3$ §:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var §!#j§:Boolean = false;
      
      public function §]U§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
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
         AngryBirdsBase.singleton.addEventListener(§^"&§.§>"q§,this.onEnterFrame);
      }
      
      public function §1#,§(param1:Number, param2:Number, param3:Number, param4:Number = 0.3) : void
      {
         if(this.§!#j§)
         {
            return;
         }
         if(this.§-!H§)
         {
            this.§-!H§.stop();
         }
         this.§3$ § = new ColorTransform();
         this.§3$ §.redOffset = transform.colorTransform.redOffset;
         this.§3$ §.greenOffset = transform.colorTransform.greenOffset;
         this.§3$ §.blueOffset = transform.colorTransform.blueOffset;
         this.§-!H§ = §'#n§.§?q§.§9!N§(this.§3$ §,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§-!H§.onComplete = this.§=#h§;
         this.§-!H§.play();
         this.§!#j§ = true;
      }
      
      public function §@!^§(param1:Number) : void
      {
         this.mNewAlpha = param1;
         alpha = param1;
      }
      
      public function §3#q§(param1:Number, param2:Number = 0.5) : void
      {
         if(this.§-!H§ != null)
         {
            this.§-!H§.stop();
         }
         this.§-!H§ = §'#n§.§?q§.§9!N§(this,{"mNewAlpha":param1},null,param2);
         this.§-!H§.onComplete = this.§?!X§;
         this.§-!H§.§-#u§ = false;
         this.§-!H§.play();
      }
      
      private function §?!X§() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§6$>§));
      }
      
      private function §=#h§() : void
      {
         this.§!#j§ = false;
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§3$ §)
         {
            transform.colorTransform = this.§3$ §;
            if(!this.§!#j§)
            {
               this.§3$ § = null;
            }
         }
         if(alpha != this.mNewAlpha)
         {
            alpha = this.mNewAlpha;
         }
      }
      
      public function §4#y§() : void
      {
         AngryBirdsBase.singleton.removeEventListener(§^"&§.§>"q§,this.onEnterFrame);
         if(this.§-!H§)
         {
            this.§-!H§.stop();
            this.§-!H§ = null;
         }
      }
   }
}
