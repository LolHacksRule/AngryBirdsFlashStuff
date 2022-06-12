package §`#?§
{
   import com.rovio.assets.§@`§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Point;
   
   public class GiftParticle extends Sprite
   {
      
      private static var §'!j§:Class;
       
      
      private var §2#y§:MovieClip;
      
      private var §9"&§:Point;
      
      private var §&"6§:Number;
      
      private var §=$1§:Number = 2;
      
      public function GiftParticle(param1:Number, param2:Number)
      {
         super();
         this.§!!k§();
         this.§9"&§ = new Point(Math.random() * 8 - 4,Math.random() * 8 - 5);
         this.§&"6§ = Math.random() * 16 - 8;
         addEventListener(Event.ENTER_FRAME,this.§^$§);
         this.x = param1;
         this.y = param2;
      }
      
      private function §!!k§() : void
      {
         if(!§'!j§)
         {
            §'!j§ = §@`§.§4!i§("GiftParticle");
         }
         this.§2#y§ = new §'!j§();
         addChild(this.§2#y§);
         this.§2#y§.gotoAndStop(1 + Math.round(Math.random() * (this.§2#y§.totalFrames - 1)));
      }
      
      private function §^$§(param1:Event) : void
      {
         x += this.§9"&§.x;
         y += this.§9"&§.y;
         rotation += this.§&"6§;
         this.§&"6§ *= 0.95;
         this.§9"&§.y += 1 / 60 * 9.8;
         alpha = Math.min(1,this.§=$1§ = this.§=$1§ - 0.05);
         if(alpha <= 0)
         {
            removeEventListener(Event.ENTER_FRAME,this.§^$§);
            if(parent)
            {
               parent.removeChild(this);
            }
         }
      }
   }
}
