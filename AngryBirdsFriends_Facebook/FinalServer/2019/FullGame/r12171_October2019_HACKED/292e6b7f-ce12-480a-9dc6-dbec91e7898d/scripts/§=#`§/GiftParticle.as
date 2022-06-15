package §=#`§
{
   import com.rovio.assets.§[a§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Point;
   
   public class GiftParticle extends Sprite
   {
      
      private static var §3$8§:Class;
       
      
      private var §3!y§:MovieClip;
      
      private var §3v§:Point;
      
      private var §'#>§:Number;
      
      private var §7O§:Number = 2;
      
      public function GiftParticle(param1:Number, param2:Number)
      {
         super();
         this.§3#<§();
         this.§3v§ = new Point(Math.random() * 8 - 4,Math.random() * 8 - 5);
         this.§'#>§ = Math.random() * 16 - 8;
         addEventListener(Event.ENTER_FRAME,this.§<!>§);
         this.x = param1;
         this.y = param2;
      }
      
      private function §3#<§() : void
      {
         if(!§3$8§)
         {
            §3$8§ = §[a§.§8#k§("GiftParticle");
         }
         this.§3!y§ = new §3$8§();
         addChild(this.§3!y§);
         this.§3!y§.gotoAndStop(1 + Math.round(Math.random() * (this.§3!y§.totalFrames - 1)));
      }
      
      private function §<!>§(param1:Event) : void
      {
         x += this.§3v§.x;
         y += this.§3v§.y;
         rotation += this.§'#>§;
         this.§'#>§ *= 0.95;
         this.§3v§.y += 1 / 60 * 9.8;
         alpha = Math.min(1,this.§7O§ = this.§7O§ - 0.05);
         if(alpha <= 0)
         {
            removeEventListener(Event.ENTER_FRAME,this.§<!>§);
            if(parent)
            {
               parent.removeChild(this);
            }
         }
      }
   }
}
