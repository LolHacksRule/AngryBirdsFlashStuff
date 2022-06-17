package §-#R§
{
   import com.rovio.assets.§2"O§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class GlitterParticle extends Sprite
   {
      
      private static var §`!>§:Class;
      
      public static var §&u§:Number = 1;
      
      public static var §7R§:Number = 1;
      
      public static var §9!z§:Number = 0.9;
      
      public static var §@#`§:Number = 800;
      
      public static var §8#p§:Number = 2;
       
      
      private var §+!'§:MovieClip;
      
      private var §'!B§:Point;
      
      private var §="U§:Number;
      
      private var §<"g§:Number = 2;
      
      private var §'"Q§:Number = 1000;
      
      private var §+"0§:Number;
      
      public function GlitterParticle(param1:Number, param2:Number)
      {
         super();
         this.§`"0§();
         this.§'!B§ = new Point(Math.random() * §&u§ * (Math.random() < 0.5 ? -1 : 1),Math.random() * §7R§ * (Math.random() < 0.5 ? -1 : 1));
         this.§="U§ = §9!z§;
         addEventListener(Event.ENTER_FRAME,this.§?R§);
         this.§'"Q§ = §@#`§;
         this.x = param1;
         this.y = param2;
      }
      
      private function §`"0§() : void
      {
         if(!§`!>§)
         {
            §`!>§ = §2"O§.§`>§("GlitterParticle");
         }
         this.§+!'§ = new §`!>§();
         addChild(this.§+!'§);
         this.§+!'§.gotoAndStop(1 + Math.round(Math.random() * (this.§+!'§.totalFrames - 1)));
      }
      
      private function §?R§(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§+"0§;
         this.§+"0§ = getTimer();
         if(isNaN(_loc2_))
         {
            return;
         }
         x += this.§'!B§.x;
         y += this.§'!B§.y;
         rotation += §9!z§;
         this.§="U§ *= §9!z§;
         this.§'!B§.y += 1 / 60 * §8#p§;
         this.§'"Q§ -= _loc2_;
         alpha = Math.min(1,this.§<"g§ = this.§<"g§ - 0.05);
         if(this.§'"Q§ <= 0)
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
