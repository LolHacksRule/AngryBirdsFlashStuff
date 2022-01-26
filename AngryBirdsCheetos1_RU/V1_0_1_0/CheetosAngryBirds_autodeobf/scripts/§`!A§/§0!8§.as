package §`!A§
{
   import §4x§.§"!X§;
   import §4x§.§?R§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §0!8§ extends MovieClip
   {
       
      
      private var §#u§:§?R§;
      
      private var §;3§:ColorTransform;
      
      public var mAlpha:Number;
      
      public function §0!8§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         param5 = Number(param5) || Number(§2!-§.§]!`§);
         param6 = Number(param6) || Number(§2!-§.§-$§);
         super();
         this.§;3§ = new ColorTransform();
         this.§;3§.redOffset = param1;
         this.§;3§.greenOffset = param2;
         this.§;3§.blueOffset = param3;
         graphics.beginFill(0,1);
         graphics.drawRect(-param5,-param6,param5 * 2,param6 * 2);
         scaleX = 100;
         scaleY = 100;
         graphics.endFill();
         this.mAlpha = param4;
         alpha = param4;
         addEventListener(Event.ENTER_FRAME,this.§"9§);
      }
      
      public function §?!&§(param1:Number, param2:Number, param3:Number, param4:Number = 0.5) : void
      {
         if(this.§#u§ != null)
         {
            this.§#u§.stop();
         }
         this.§#u§ = §"!X§.§0E§.§5`§(this.§;3§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§#u§.play();
      }
      
      public function §8H§(param1:Number) : void
      {
         this.mAlpha = param1;
         alpha = param1;
      }
      
      public function §?§(param1:Number, param2:Number = 0.5) : void
      {
         if(this.§#u§ != null)
         {
            this.§#u§.stop();
         }
         this.§#u§ = §"!X§.§0E§.§5`§(this,{"mAlpha":param1},null,param2);
         this.§#u§.onComplete = this.§#!T§;
         this.§#u§.play();
      }
      
      private function §#!T§() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§%!M§));
      }
      
      private function §"9§(param1:Event) : void
      {
         transform.colorTransform = this.§;3§;
         alpha = this.mAlpha;
      }
      
      public function clean() : void
      {
         removeEventListener(Event.ENTER_FRAME,this.§"9§);
      }
   }
}
