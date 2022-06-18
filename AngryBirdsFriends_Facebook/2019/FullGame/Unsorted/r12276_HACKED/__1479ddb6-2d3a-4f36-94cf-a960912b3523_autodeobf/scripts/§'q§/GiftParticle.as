package §'q§
{
   import com.rovio.assets.§=@§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Point;
   
   public class GiftParticle extends Sprite
   {
      
      private static var § #l§:Class;
       
      
      private var §5!s§:MovieClip;
      
      private var §`#j§:Point;
      
      private var §;+§:Number;
      
      private var §=!O§:Number = 2;
      
      public function GiftParticle(param1:Number, param2:Number)
      {
         super();
         this.§,#=§();
         this.§`#j§ = new Point(Math.random() * 8 - 4,Math.random() * 8 - 5);
         this.§;+§ = Math.random() * 16 - 8;
         addEventListener(Event.ENTER_FRAME,this.§@"u§);
         this.x = param1;
         this.y = param2;
      }
      
      private function §,#=§() : void
      {
         if(!§ #l§)
         {
            § #l§ = §=@§.§9!x§("GiftParticle");
         }
         this.§5!s§ = new § #l§();
         addChild(this.§5!s§);
         this.§5!s§.gotoAndStop(1 + Math.round(Math.random() * (this.§5!s§.totalFrames - 1)));
      }
      
      private function §@"u§(param1:Event) : void
      {
         x += this.§`#j§.x;
         y += this.§`#j§.y;
         rotation += this.§;+§;
         this.§;+§ *= 0.95;
         this.§`#j§.y += 1 / 60 * 9.8;
         alpha = Math.min(1,this.§=!O§ = this.§=!O§ - 0.05);
         if(alpha <= 0)
         {
            removeEventListener(Event.ENTER_FRAME,this.§@"u§);
            if(parent)
            {
               parent.removeChild(this);
            }
         }
      }
   }
}
