package §-!_§
{
   import com.rovio.assets.§+$#§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Point;
   
   public class GiftParticle extends Sprite
   {
      
      private static var §1"D§:Class;
       
      
      private var §;!+§:MovieClip;
      
      private var §3"c§:Point;
      
      private var §&"B§:Number;
      
      private var §!s§:Number = 2;
      
      public function GiftParticle(param1:Number, param2:Number)
      {
         super();
         this.§^#O§();
         this.§3"c§ = new Point(Math.random() * 8 - 4,Math.random() * 8 - 5);
         this.§&"B§ = Math.random() * 16 - 8;
         addEventListener(Event.ENTER_FRAME,this.§4!V§);
         this.x = param1;
         this.y = param2;
      }
      
      private function §^#O§() : void
      {
         if(!§1"D§)
         {
            §1"D§ = §+$#§.§["`§("GiftParticle");
         }
         this.§;!+§ = new §1"D§();
         addChild(this.§;!+§);
         this.§;!+§.gotoAndStop(1 + Math.round(Math.random() * (this.§;!+§.totalFrames - 1)));
      }
      
      private function §4!V§(param1:Event) : void
      {
         x += this.§3"c§.x;
         y += this.§3"c§.y;
         rotation += this.§&"B§;
         this.§&"B§ *= 0.95;
         this.§3"c§.y += 1 / 60 * 9.8;
         alpha = Math.min(1,this.§!s§ = this.§!s§ - 0.05);
         if(alpha <= 0)
         {
            removeEventListener(Event.ENTER_FRAME,this.§4!V§);
            if(parent)
            {
               parent.removeChild(this);
            }
         }
      }
   }
}
