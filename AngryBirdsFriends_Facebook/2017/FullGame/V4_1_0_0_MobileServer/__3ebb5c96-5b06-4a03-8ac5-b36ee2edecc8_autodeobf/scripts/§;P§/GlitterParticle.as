package §;P§
{
   import com.rovio.assets.§+$#§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class GlitterParticle extends Sprite
   {
      
      private static var §1"D§:Class;
      
      public static var §^+§:Number = 1;
      
      public static var § #h§:Number = 1;
      
      public static var §-"h§:Number = 0.9;
      
      public static var §;!y§:Number = 800;
      
      public static var § t§:Number = 2;
       
      
      private var §;!+§:MovieClip;
      
      private var §3"c§:Point;
      
      private var §&"B§:Number;
      
      private var §!s§:Number = 2;
      
      private var §+_§:Number = 1000;
      
      private var §0!k§:Number;
      
      public function GlitterParticle(param1:Number, param2:Number)
      {
         super();
         this.§^#O§();
         this.§3"c§ = new Point(Math.random() * §^+§ * (Math.random() < 0.5 ? -1 : 1),Math.random() * § #h§ * (Math.random() < 0.5 ? -1 : 1));
         this.§&"B§ = §-"h§;
         addEventListener(Event.ENTER_FRAME,this.§4!V§);
         this.§+_§ = §;!y§;
         this.x = param1;
         this.y = param2;
      }
      
      private function §^#O§() : void
      {
         if(!§1"D§)
         {
            §1"D§ = §+$#§.§["`§("GlitterParticle");
         }
         this.§;!+§ = new §1"D§();
         addChild(this.§;!+§);
         this.§;!+§.gotoAndStop(1 + Math.round(Math.random() * (this.§;!+§.totalFrames - 1)));
      }
      
      private function §4!V§(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§0!k§;
         this.§0!k§ = getTimer();
         if(isNaN(_loc2_))
         {
            return;
         }
         x += this.§3"c§.x;
         y += this.§3"c§.y;
         rotation += §-"h§;
         this.§&"B§ *= §-"h§;
         this.§3"c§.y += 1 / 60 * § t§;
         this.§+_§ -= _loc2_;
         alpha = Math.min(1,this.§!s§ = this.§!s§ - 0.05);
         if(this.§+_§ <= 0)
         {
            removeEventListener(Event.ENTER_FRAME,this.§4!V§);
            if(parent)
            {
               parent.removeChild(this);
            }
         }
      }
   }
}
