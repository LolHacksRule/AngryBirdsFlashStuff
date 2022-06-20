package §9T§
{
   import com.rovio.assets.§[a§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class GlitterParticle extends Sprite
   {
      
      private static var §3$8§:Class;
      
      public static var §'"c§:Number = 1;
      
      public static var § t§:Number = 1;
      
      public static var §9$!§:Number = 0.9;
      
      public static var §;^§:Number = 800;
      
      public static var §^"2§:Number = 2;
       
      
      private var §3!y§:MovieClip;
      
      private var §3v§:Point;
      
      private var §'#>§:Number;
      
      private var §7O§:Number = 2;
      
      private var §@"s§:Number = 1000;
      
      private var §finally§:Number;
      
      public function GlitterParticle(param1:Number, param2:Number)
      {
         super();
         this.§3#<§();
         this.§3v§ = new Point(Math.random() * §'"c§ * (Math.random() < 0.5 ? -1 : 1),Math.random() * § t§ * (Math.random() < 0.5 ? -1 : 1));
         this.§'#>§ = §9$!§;
         addEventListener(Event.ENTER_FRAME,this.§<!>§);
         this.§@"s§ = §;^§;
         this.x = param1;
         this.y = param2;
      }
      
      private function §3#<§() : void
      {
         if(!§3$8§)
         {
            §3$8§ = §[a§.§8#k§("GlitterParticle");
         }
         this.§3!y§ = new §3$8§();
         addChild(this.§3!y§);
         this.§3!y§.gotoAndStop(1 + Math.round(Math.random() * (this.§3!y§.totalFrames - 1)));
      }
      
      private function §<!>§(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§finally§;
         this.§finally§ = getTimer();
         if(isNaN(_loc2_))
         {
            return;
         }
         x += this.§3v§.x;
         y += this.§3v§.y;
         rotation += §9$!§;
         this.§'#>§ *= §9$!§;
         this.§3v§.y += 1 / 60 * §^"2§;
         this.§@"s§ -= _loc2_;
         alpha = Math.min(1,this.§7O§ = this.§7O§ - 0.05);
         if(this.§@"s§ <= 0)
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
