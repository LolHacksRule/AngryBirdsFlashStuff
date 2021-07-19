package §2"§
{
   import com.rovio.assets.§5_§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Point;
   
   public class §"!F§ extends Sprite
   {
      
      private static var §'!r§:Class = §5_§.§`"G§("GiftBox_Particles");
       
      
      private var §=7§:MovieClip;
      
      private var §5"L§:Point;
      
      private var §-!N§:Number;
      
      private var § #H§:Number = 2;
      
      public function §"!F§(param1:Number, param2:Number)
      {
         super();
         this.§=7§ = new §'!r§();
         addChild(this.§=7§);
         this.§=7§.gotoAndStop(1 + Math.round(Math.random() * (this.§=7§.totalFrames - 1)));
         this.§5"L§ = new Point(Math.random() * 8 - 4,Math.random() * 8 - 5);
         this.§-!N§ = Math.random() * 16 - 8;
         addEventListener(Event.ENTER_FRAME,this.§-!u§);
         this.x = param1;
         this.y = param2;
      }
      
      private function §-!u§(param1:Event) : void
      {
         x += this.§5"L§.x;
         y += this.§5"L§.y;
         rotation += this.§-!N§;
         this.§-!N§ *= 0.95;
         this.§5"L§.y += 1 / 60 * 9.8;
         alpha = Math.min(1,this.§ #H§ = this.§ #H§ - 0.05);
         if(alpha <= 0)
         {
            removeEventListener(Event.ENTER_FRAME,this.§-!u§);
            if(parent)
            {
               parent.removeChild(this);
            }
         }
      }
   }
}
