package §&$!§
{
   import com.rovio.assets.§!"f§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class GlitterParticle extends Sprite
   {
      
      private static var §<!S§:Class;
      
      public static var §#!V§:Number = 1;
      
      public static var §-!Z§:Number = 1;
      
      public static var §#<§:Number = 0.9;
      
      public static var §`!^§:Number = 800;
      
      public static var §>Y§:Number = 2;
       
      
      private var §1#p§:MovieClip;
      
      private var §>#2§:Point;
      
      private var §3!i§:Number;
      
      private var §8"^§:Number = 2;
      
      private var §"!>§:Number = 1000;
      
      private var §["v§:Number;
      
      public function GlitterParticle(param1:Number, param2:Number)
      {
         super();
         this.§^#a§();
         this.§>#2§ = new Point(Math.random() * §#!V§ * (Math.random() < 0.5 ? -1 : 1),Math.random() * §-!Z§ * (Math.random() < 0.5 ? -1 : 1));
         this.§3!i§ = §#<§;
         addEventListener(Event.ENTER_FRAME,this.§9]§);
         this.§"!>§ = §`!^§;
         this.x = param1;
         this.y = param2;
      }
      
      private function §^#a§() : void
      {
         if(!§<!S§)
         {
            §<!S§ = §!"f§.§##?§("GlitterParticle");
         }
         this.§1#p§ = new §<!S§();
         addChild(this.§1#p§);
         this.§1#p§.gotoAndStop(1 + Math.round(Math.random() * (this.§1#p§.totalFrames - 1)));
      }
      
      private function §9]§(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§["v§;
         this.§["v§ = getTimer();
         if(isNaN(_loc2_))
         {
            return;
         }
         x += this.§>#2§.x;
         y += this.§>#2§.y;
         rotation += §#<§;
         this.§3!i§ *= §#<§;
         this.§>#2§.y += 1 / 60 * §>Y§;
         this.§"!>§ -= _loc2_;
         alpha = Math.min(1,this.§8"^§ = this.§8"^§ - 0.05);
         if(this.§"!>§ <= 0)
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
