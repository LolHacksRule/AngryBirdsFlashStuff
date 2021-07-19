package §'"-§
{
   import com.rovio.assets.§@`§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class GlitterParticle extends Sprite
   {
      
      private static var §'!j§:Class;
      
      public static var §`#Z§:Number = 1;
      
      public static var §^!+§:Number = 1;
      
      public static var §"!'§:Number = 0.9;
      
      public static var §]#B§:Number = 800;
      
      public static var §>#^§:Number = 2;
       
      
      private var §2#y§:MovieClip;
      
      private var §9"&§:Point;
      
      private var §&"6§:Number;
      
      private var §=$1§:Number = 2;
      
      private var §'# §:Number = 1000;
      
      private var §8!]§:Number;
      
      public function GlitterParticle(param1:Number, param2:Number)
      {
         super();
         this.§!!k§();
         this.§9"&§ = new Point(Math.random() * §`#Z§ * (Math.random() < 0.5 ? -1 : 1),Math.random() * §^!+§ * (Math.random() < 0.5 ? -1 : 1));
         this.§&"6§ = §"!'§;
         addEventListener(Event.ENTER_FRAME,this.§^$§);
         this.§'# § = §]#B§;
         this.x = param1;
         this.y = param2;
      }
      
      private function §!!k§() : void
      {
         if(!§'!j§)
         {
            §'!j§ = §@`§.§4!i§("GlitterParticle");
         }
         this.§2#y§ = new §'!j§();
         addChild(this.§2#y§);
         this.§2#y§.gotoAndStop(1 + Math.round(Math.random() * (this.§2#y§.totalFrames - 1)));
      }
      
      private function §^$§(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§8!]§;
         this.§8!]§ = getTimer();
         if(isNaN(_loc2_))
         {
            return;
         }
         x += this.§9"&§.x;
         y += this.§9"&§.y;
         rotation += §"!'§;
         this.§&"6§ *= §"!'§;
         this.§9"&§.y += 1 / 60 * §>#^§;
         this.§'# § -= _loc2_;
         alpha = Math.min(1,this.§=$1§ = this.§=$1§ - 0.05);
         if(this.§'# § <= 0)
         {
            removeEventListener(Event.ENTER_FRAME,this.§^$§);
            if(parent)
            {
               parent.removeChild(this);
            }
         }
      }
   }
}
