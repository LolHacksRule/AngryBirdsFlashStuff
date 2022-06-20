package §9&§
{
   import com.rovio.assets.§#!J§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Point;
   
   public class GiftParticle extends Sprite
   {
      
      private static var §0!]§:Class = §#!J§.§1!Y§("GiftParticle");
       
      
      private var §`"A§:MovieClip;
      
      private var §8y§:Point;
      
      private var §!"@§:Number;
      
      private var §^!m§:Number = 2;
      
      public function GiftParticle(param1:Number, param2:Number)
      {
         super();
         this.§`"A§ = new §0!]§();
         addChild(this.§`"A§);
         this.§`"A§.gotoAndStop(1 + Math.round(Math.random() * (this.§`"A§.totalFrames - 1)));
         this.§8y§ = new Point(Math.random() * 8 - 4,Math.random() * 8 - 5);
         this.§!"@§ = Math.random() * 16 - 8;
         addEventListener(Event.ENTER_FRAME,this.§]!3§);
         this.x = param1;
         this.y = param2;
      }
      
      private function §]!3§(param1:Event) : void
      {
         x += this.§8y§.x;
         y += this.§8y§.y;
         rotation += this.§!"@§;
         this.§!"@§ *= 0.95;
         this.§8y§.y += 1 / 60 * 9.8;
         alpha = Math.min(1,this.§^!m§ = this.§^!m§ - 0.05);
         if(alpha <= 0)
         {
            removeEventListener(Event.ENTER_FRAME,this.§]!3§);
            if(parent)
            {
               parent.removeChild(this);
            }
         }
      }
   }
}
