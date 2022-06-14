package §1p§
{
   import com.rovio.assets.§8B§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Point;
   
   public class GiftParticle extends Sprite
   {
      
      private static var §=!5§:Class = §8B§.§6"C§("GiftParticle");
       
      
      private var §^D§:MovieClip;
      
      private var §-"-§:Point;
      
      private var §2"8§:Number;
      
      private var §+!]§:Number = 2;
      
      public function GiftParticle(param1:Number, param2:Number)
      {
         super();
         this.§^D§ = new §=!5§();
         addChild(this.§^D§);
         this.§^D§.gotoAndStop(1 + Math.round(Math.random() * (this.§^D§.totalFrames - 1)));
         this.§-"-§ = new Point(Math.random() * 8 - 4,Math.random() * 8 - 5);
         this.§2"8§ = Math.random() * 16 - 8;
         addEventListener(Event.ENTER_FRAME,this.§-T§);
         this.x = param1;
         this.y = param2;
      }
      
      private function §-T§(param1:Event) : void
      {
         x += this.§-"-§.x;
         y += this.§-"-§.y;
         rotation += this.§2"8§;
         this.§2"8§ *= 0.95;
         this.§-"-§.y += 1 / 60 * 9.8;
         alpha = Math.min(1,this.§+!]§ = this.§+!]§ - 0.05);
         if(alpha <= 0)
         {
            removeEventListener(Event.ENTER_FRAME,this.§-T§);
            if(parent)
            {
               parent.removeChild(this);
            }
         }
      }
   }
}
