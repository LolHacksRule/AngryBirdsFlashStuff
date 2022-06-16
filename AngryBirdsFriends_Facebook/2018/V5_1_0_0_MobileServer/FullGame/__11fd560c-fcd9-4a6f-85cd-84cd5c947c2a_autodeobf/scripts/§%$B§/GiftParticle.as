package §%$B§
{
   import com.rovio.assets.§!"f§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Point;
   
   public class GiftParticle extends Sprite
   {
      
      private static var §<!S§:Class;
       
      
      private var §1#p§:MovieClip;
      
      private var §>#2§:Point;
      
      private var §3!i§:Number;
      
      private var §8"^§:Number = 2;
      
      public function GiftParticle(param1:Number, param2:Number)
      {
         super();
         this.§^#a§();
         this.§>#2§ = new Point(Math.random() * 8 - 4,Math.random() * 8 - 5);
         this.§3!i§ = Math.random() * 16 - 8;
         addEventListener(Event.ENTER_FRAME,this.§9]§);
         this.x = param1;
         this.y = param2;
      }
      
      private function §^#a§() : void
      {
         if(!§<!S§)
         {
            §<!S§ = §!"f§.§##?§("GiftParticle");
         }
         this.§1#p§ = new §<!S§();
         addChild(this.§1#p§);
         this.§1#p§.gotoAndStop(1 + Math.round(Math.random() * (this.§1#p§.totalFrames - 1)));
      }
      
      private function §9]§(param1:Event) : void
      {
         x += this.§>#2§.x;
         y += this.§>#2§.y;
         rotation += this.§3!i§;
         this.§3!i§ *= 0.95;
         this.§>#2§.y += 1 / 60 * 9.8;
         alpha = Math.min(1,this.§8"^§ = this.§8"^§ - 0.05);
         if(alpha <= 0)
         {
            removeEventListener(Event.ENTER_FRAME,this.§9]§);
            if(parent)
            {
               parent.removeChild(this);
            }
         }
      }
   }
}
