package § 7§
{
   import com.rovio.assets.§?q§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Point;
   
   public class GiftParticle extends Sprite
   {
      
      private static var §,!0§:Class = §?q§.§ q§("GiftParticle");
       
      
      private var §@%§:MovieClip;
      
      private var §5U§:Point;
      
      private var §@!W§:Number;
      
      private var §&"?§:Number = 2;
      
      public function GiftParticle(param1:Number, param2:Number)
      {
         super();
         this.§@%§ = new §,!0§();
         addChild(this.§@%§);
         this.§@%§.gotoAndStop(1 + Math.round(Math.random() * (this.§@%§.totalFrames - 1)));
         this.§5U§ = new Point(Math.random() * 8 - 4,Math.random() * 8 - 5);
         this.§@!W§ = Math.random() * 16 - 8;
         addEventListener(Event.ENTER_FRAME,this.§["R§);
         this.x = param1;
         this.y = param2;
      }
      
      private function §["R§(param1:Event) : void
      {
         x += this.§5U§.x;
         y += this.§5U§.y;
         rotation += this.§@!W§;
         this.§@!W§ *= 0.95;
         this.§5U§.y += 1 / 60 * 9.8;
         alpha = Math.min(1,this.§&"?§ = this.§&"?§ - 0.05);
         if(alpha <= 0)
         {
            removeEventListener(Event.ENTER_FRAME,this.§["R§);
            if(parent)
            {
               parent.removeChild(this);
            }
         }
      }
   }
}
