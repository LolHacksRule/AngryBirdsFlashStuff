package §]!2§
{
   import §+k§.§+!&§;
   import §+k§.§=! §;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §8D§ extends MovieClip
   {
       
      
      private var §]!0§:§=! §;
      
      private var §8@§:ColorTransform;
      
      public var mAlpha:Number;
      
      public function §8D§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         param5 = Number(param5) || Number(§3§.§'R§);
         param6 = Number(param6) || Number(§3§.§'Z§);
         super();
         this.§8@§ = new ColorTransform();
         this.§8@§.redOffset = param1;
         this.§8@§.greenOffset = param2;
         this.§8@§.blueOffset = param3;
         graphics.beginFill(0,1);
         graphics.drawRect(-param5,-param6,param5 * 2,param6 * 2);
         scaleX = 100;
         scaleY = 100;
         graphics.endFill();
         this.mAlpha = param4;
         alpha = param4;
         addEventListener(Event.ENTER_FRAME,this.§&!6§);
      }
      
      public function §4,§(param1:Number, param2:Number, param3:Number, param4:Number = 0.5) : void
      {
         if(this.§]!0§ != null)
         {
            this.§]!0§.stop();
         }
         this.§]!0§ = §+!&§.§,§.§9x§(this.§8@§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§]!0§.play();
      }
      
      public function §@g§(param1:Number) : void
      {
         this.mAlpha = param1;
         alpha = param1;
      }
      
      public function §"s§(param1:Number, param2:Number = 0.5) : void
      {
         if(this.§]!0§ != null)
         {
            this.§]!0§.stop();
         }
         this.§]!0§ = §+!&§.§,§.§9x§(this,{"mAlpha":param1},null,param2);
         this.§]!0§.onComplete = this.§@'§;
         this.§]!0§.play();
      }
      
      private function §@'§() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§61§));
      }
      
      private function §&!6§(param1:Event) : void
      {
         transform.colorTransform = this.§8@§;
         alpha = this.mAlpha;
      }
      
      public function clean() : void
      {
         removeEventListener(Event.ENTER_FRAME,this.§&!6§);
      }
   }
}
