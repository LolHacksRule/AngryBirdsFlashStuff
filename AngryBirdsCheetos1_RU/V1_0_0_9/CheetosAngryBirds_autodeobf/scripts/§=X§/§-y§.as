package §=X§
{
   import §!>§.§!#§;
   import §!>§.§5!$§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §-y§ extends MovieClip
   {
       
      
      private var §#!?§:§5!$§;
      
      private var §'k§:ColorTransform;
      
      public var mAlpha:Number;
      
      public function §-y§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         param5 = Number(param5) || Number(§+§.§'s§);
         param6 = Number(param6) || Number(§+§.§&!8§);
         super();
         this.§'k§ = new ColorTransform();
         this.§'k§.redOffset = param1;
         this.§'k§.greenOffset = param2;
         this.§'k§.blueOffset = param3;
         graphics.beginFill(0,1);
         graphics.drawRect(-param5,-param6,param5 * 2,param6 * 2);
         scaleX = 100;
         scaleY = 100;
         graphics.endFill();
         this.mAlpha = param4;
         alpha = param4;
         addEventListener(Event.ENTER_FRAME,this.§+!K§);
      }
      
      public function §[1§(param1:Number, param2:Number, param3:Number, param4:Number = 0.5) : void
      {
         if(this.§#!?§ != null)
         {
            this.§#!?§.stop();
         }
         this.§#!?§ = §!#§.§!5§.§&![§(this.§'k§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§#!?§.play();
      }
      
      public function §'!^§(param1:Number) : void
      {
         this.mAlpha = param1;
         alpha = param1;
      }
      
      public function §%&§(param1:Number, param2:Number = 0.5) : void
      {
         if(this.§#!?§ != null)
         {
            this.§#!?§.stop();
         }
         this.§#!?§ = §!#§.§!5§.§&![§(this,{"mAlpha":param1},null,param2);
         this.§#!?§.onComplete = this.§5!#§;
         this.§#!?§.play();
      }
      
      private function §5!#§() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§8F§));
      }
      
      private function §+!K§(param1:Event) : void
      {
         transform.colorTransform = this.§'k§;
         alpha = this.mAlpha;
      }
      
      public function clean() : void
      {
         removeEventListener(Event.ENTER_FRAME,this.§+!K§);
      }
   }
}
