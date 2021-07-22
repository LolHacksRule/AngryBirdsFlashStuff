package §;"W§
{
   import com.rovio.assets.§6$A§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Point;
   
   public class GiftParticle extends Sprite
   {
      
      private static var §^!K§:Class;
       
      
      private var §'$$§:MovieClip;
      
      private var §8"H§:Point;
      
      private var §""t§:Number;
      
      private var §>!0§:Number = 2;
      
      public function GiftParticle(param1:Number, param2:Number)
      {
         super();
         this.§=6§();
         this.§8"H§ = new Point(Math.random() * 8 - 4,Math.random() * 8 - 5);
         this.§""t§ = Math.random() * 16 - 8;
         addEventListener(Event.ENTER_FRAME,this.§9#t§);
         this.x = param1;
         this.y = param2;
      }
      
      private function §=6§() : void
      {
         if(!§^!K§)
         {
            §^!K§ = §6$A§.§1!m§("GiftParticle");
         }
         this.§'$$§ = new §^!K§();
         addChild(this.§'$$§);
         this.§'$$§.gotoAndStop(1 + Math.round(Math.random() * (this.§'$$§.totalFrames - 1)));
      }
      
      private function §9#t§(param1:Event) : void
      {
         x += this.§8"H§.x;
         y += this.§8"H§.y;
         rotation += this.§""t§;
         this.§""t§ *= 0.95;
         this.§8"H§.y += 1 / 60 * 9.8;
         alpha = Math.min(1,this.§>!0§ = this.§>!0§ - 0.05);
         if(alpha <= 0)
         {
            removeEventListener(Event.ENTER_FRAME,this.§9#t§);
            if(parent)
            {
               parent.removeChild(this);
            }
         }
      }
   }
}
