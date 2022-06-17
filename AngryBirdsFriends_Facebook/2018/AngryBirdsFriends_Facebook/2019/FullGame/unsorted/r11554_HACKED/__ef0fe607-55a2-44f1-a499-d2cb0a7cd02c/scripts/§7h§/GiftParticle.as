package §7h§
{
   import com.rovio.assets.§2"O§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Point;
   
   public class GiftParticle extends Sprite
   {
      
      private static var §`!>§:Class;
       
      
      private var §+!'§:MovieClip;
      
      private var §'!B§:Point;
      
      private var §="U§:Number;
      
      private var §<"g§:Number = 2;
      
      public function GiftParticle(param1:Number, param2:Number)
      {
         super();
         this.§`"0§();
         this.§'!B§ = new Point(Math.random() * 8 - 4,Math.random() * 8 - 5);
         this.§="U§ = Math.random() * 16 - 8;
         addEventListener(Event.ENTER_FRAME,this.§?R§);
         this.x = param1;
         this.y = param2;
      }
      
      private function §`"0§() : void
      {
         if(!§`!>§)
         {
            §`!>§ = §2"O§.§`>§("GiftParticle");
         }
         this.§+!'§ = new §`!>§();
         addChild(this.§+!'§);
         this.§+!'§.gotoAndStop(1 + Math.round(Math.random() * (this.§+!'§.totalFrames - 1)));
      }
      
      private function §?R§(param1:Event) : void
      {
         x += this.§'!B§.x;
         y += this.§'!B§.y;
         rotation += this.§="U§;
         this.§="U§ *= 0.95;
         this.§'!B§.y += 1 / 60 * 9.8;
         alpha = Math.min(1,this.§<"g§ = this.§<"g§ - 0.05);
         if(alpha <= 0)
         {
            removeEventListener(Event.ENTER_FRAME,this.§?R§);
            if(parent)
            {
               parent.removeChild(this);
            }
         }
      }
   }
}
