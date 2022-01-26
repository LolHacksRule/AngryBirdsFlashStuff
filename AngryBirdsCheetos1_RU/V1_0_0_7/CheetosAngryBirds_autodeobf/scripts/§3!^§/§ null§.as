package §3!^§
{
   import §!7§.§!>§;
   import §!7§.§`R§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class § null§ extends MovieClip
   {
       
      
      private var §!m§:§!>§;
      
      private var § case§:ColorTransform;
      
      public var mAlpha:Number;
      
      public function § null§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         param5 = Number(param5) || Number(§1R§.§`!N§);
         param6 = Number(param6) || Number(§1R§.§1!9§);
         super();
         this.§ case§ = new ColorTransform();
         this.§ case§.redOffset = param1;
         this.§ case§.greenOffset = param2;
         this.§ case§.blueOffset = param3;
         graphics.beginFill(0,1);
         graphics.drawRect(-param5,-param6,param5 * 2,param6 * 2);
         scaleX = 100;
         scaleY = 100;
         graphics.endFill();
         this.mAlpha = param4;
         alpha = param4;
         addEventListener(Event.ENTER_FRAME,this.§?!Q§);
      }
      
      public function §]!M§(param1:Number, param2:Number, param3:Number, param4:Number = 0.5) : void
      {
         if(this.§!m§ != null)
         {
            this.§!m§.stop();
         }
         this.§!m§ = §`R§.§!!8§.§ B§(this.§ case§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§!m§.play();
      }
      
      public function §6!B§(param1:Number) : void
      {
         this.mAlpha = param1;
         alpha = param1;
      }
      
      public function §,l§(param1:Number, param2:Number = 0.5) : void
      {
         if(this.§!m§ != null)
         {
            this.§!m§.stop();
         }
         this.§!m§ = §`R§.§!!8§.§ B§(this,{"mAlpha":param1},null,param2);
         this.§!m§.onComplete = this.§8!Y§;
         this.§!m§.play();
      }
      
      private function §8!Y§() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§99§));
      }
      
      private function §?!Q§(param1:Event) : void
      {
         transform.colorTransform = this.§ case§;
         alpha = this.mAlpha;
      }
      
      public function clean() : void
      {
         removeEventListener(Event.ENTER_FRAME,this.§?!Q§);
      }
   }
}
