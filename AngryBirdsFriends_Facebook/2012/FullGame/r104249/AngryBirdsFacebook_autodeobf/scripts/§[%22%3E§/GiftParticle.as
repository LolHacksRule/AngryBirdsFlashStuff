package §[">§
{
   import com.rovio.assets.§>"5§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Point;
   
   public class GiftParticle extends Sprite
   {
      
      private static var §<!3§:Class = §>"5§.§6s§("GiftParticle");
       
      
      private var §8"E§:MovieClip;
      
      private var §[!$§:Point;
      
      private var §]!T§:Number;
      
      private var §[g§:Number = 2;
      
      public function GiftParticle(param1:Number, param2:Number)
      {
         super();
         this.§8"E§ = new §<!3§();
         addChild(this.§8"E§);
         this.§8"E§.gotoAndStop(1 + Math.round(Math.random() * (this.§8"E§.totalFrames - 1)));
         this.§[!$§ = new Point(Math.random() * 8 - 4,Math.random() * 8 - 5);
         this.§]!T§ = Math.random() * 16 - 8;
         addEventListener(Event.ENTER_FRAME,this.§#!2§);
         this.x = param1;
         this.y = param2;
      }
      
      private function §#!2§(param1:Event) : void
      {
         x += this.§[!$§.x;
         y += this.§[!$§.y;
         rotation += this.§]!T§;
         this.§]!T§ *= 0.95;
         this.§[!$§.y += 1 / 60 * 9.8;
         alpha = Math.min(1,this.§[g§ = this.§[g§ - 0.05);
         if(alpha <= 0)
         {
            removeEventListener(Event.ENTER_FRAME,this.§#!2§);
            if(parent)
            {
               parent.removeChild(this);
            }
         }
      }
   }
}
