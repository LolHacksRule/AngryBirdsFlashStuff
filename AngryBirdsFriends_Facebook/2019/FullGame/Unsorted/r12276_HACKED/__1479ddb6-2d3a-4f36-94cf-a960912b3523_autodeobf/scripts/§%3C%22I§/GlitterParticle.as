package §<"I§
{
   import com.rovio.assets.§=@§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class GlitterParticle extends Sprite
   {
      
      private static var § #l§:Class;
      
      public static var §+§:Number = 1;
      
      public static var §@#b§:Number = 1;
      
      public static var § #F§:Number = 0.9;
      
      public static var § b§:Number = 800;
      
      public static var §3d§:Number = 2;
       
      
      private var §5!s§:MovieClip;
      
      private var §`#j§:Point;
      
      private var §;+§:Number;
      
      private var §=!O§:Number = 2;
      
      private var §=Z§:Number = 1000;
      
      private var §;##§:Number;
      
      public function GlitterParticle(param1:Number, param2:Number)
      {
         super();
         this.§,#=§();
         this.§`#j§ = new Point(Math.random() * §+§ * (Math.random() < 0.5 ? -1 : 1),Math.random() * §@#b§ * (Math.random() < 0.5 ? -1 : 1));
         this.§;+§ = § #F§;
         addEventListener(Event.ENTER_FRAME,this.§@"u§);
         this.§=Z§ = § b§;
         this.x = param1;
         this.y = param2;
      }
      
      private function §,#=§() : void
      {
         if(!§ #l§)
         {
            § #l§ = §=@§.§9!x§("GlitterParticle");
         }
         this.§5!s§ = new § #l§();
         addChild(this.§5!s§);
         this.§5!s§.gotoAndStop(1 + Math.round(Math.random() * (this.§5!s§.totalFrames - 1)));
      }
      
      private function §@"u§(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§;##§;
         this.§;##§ = getTimer();
         if(isNaN(_loc2_))
         {
            return;
         }
         x += this.§`#j§.x;
         y += this.§`#j§.y;
         rotation += § #F§;
         this.§;+§ *= § #F§;
         this.§`#j§.y += 1 / 60 * §3d§;
         this.§=Z§ -= _loc2_;
         alpha = Math.min(1,this.§=!O§ = this.§=!O§ - 0.05);
         if(this.§=Z§ <= 0)
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
