package §!&§
{
   import §-!;§.§4^§;
   import §-!;§.§^!,§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §]o§ extends MovieClip
   {
       
      
      private var §!![§:§4^§;
      
      private var §'P§:ColorTransform;
      
      public var mAlpha:Number;
      
      public function §]o§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         param5 = Number(param5) || Number(§@!!§.§34§);
         param6 = Number(param6) || Number(§@!!§.§!=§);
         super();
         this.§'P§ = new ColorTransform();
         this.§'P§.redOffset = param1;
         this.§'P§.greenOffset = param2;
         this.§'P§.blueOffset = param3;
         graphics.beginFill(0,1);
         graphics.drawRect(-param5,-param6,param5 * 2,param6 * 2);
         scaleX = 100;
         scaleY = 100;
         graphics.endFill();
         this.mAlpha = param4;
         alpha = param4;
         addEventListener(Event.ENTER_FRAME,this.§7!7§);
      }
      
      public function §&!7§(param1:Number, param2:Number, param3:Number, param4:Number = 0.5) : void
      {
         if(this.§!![§ != null)
         {
            this.§!![§.stop();
         }
         this.§!![§ = §^!,§.§0!S§.§3n§(this.§'P§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§!![§.play();
      }
      
      public function §4!§(param1:Number) : void
      {
         this.mAlpha = param1;
         alpha = param1;
      }
      
      public function §9$§(param1:Number, param2:Number = 0.5) : void
      {
         if(this.§!![§ != null)
         {
            this.§!![§.stop();
         }
         this.§!![§ = §^!,§.§0!S§.§3n§(this,{"mAlpha":param1},null,param2);
         this.§!![§.onComplete = this.§"+§;
         this.§!![§.play();
      }
      
      private function §"+§() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§+A§));
      }
      
      private function §7!7§(param1:Event) : void
      {
         transform.colorTransform = this.§'P§;
         alpha = this.mAlpha;
      }
      
      public function clean() : void
      {
         removeEventListener(Event.ENTER_FRAME,this.§7!7§);
      }
   }
}
