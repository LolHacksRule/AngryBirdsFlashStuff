package §-;§
{
   import com.rovio.assets.§6$A§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class GlitterParticle extends Sprite
   {
      
      private static var §^!K§:Class;
      
      public static var §'#x§:Number = 1;
      
      public static var §+B§:Number = 1;
      
      public static var §7!f§:Number = 0.9;
      
      public static var §;#q§:Number = 800;
      
      public static var §<#8§:Number = 2;
       
      
      private var §'$$§:MovieClip;
      
      private var §8"H§:Point;
      
      private var §""t§:Number;
      
      private var §>!0§:Number = 2;
      
      private var §&$!§:Number = 1000;
      
      private var §;!6§:Number;
      
      public function GlitterParticle(param1:Number, param2:Number)
      {
         super();
         this.§=6§();
         this.§8"H§ = new Point(Math.random() * §'#x§ * (Math.random() < 0.5 ? -1 : 1),Math.random() * §+B§ * (Math.random() < 0.5 ? -1 : 1));
         this.§""t§ = §7!f§;
         addEventListener(Event.ENTER_FRAME,this.§9#t§);
         this.§&$!§ = §;#q§;
         this.x = param1;
         this.y = param2;
      }
      
      private function §=6§() : void
      {
         if(!§^!K§)
         {
            §^!K§ = §6$A§.§1!m§("GlitterParticle");
         }
         this.§'$$§ = new §^!K§();
         addChild(this.§'$$§);
         this.§'$$§.gotoAndStop(1 + Math.round(Math.random() * (this.§'$$§.totalFrames - 1)));
      }
      
      private function §9#t§(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§;!6§;
         this.§;!6§ = getTimer();
         if(isNaN(_loc2_))
         {
            return;
         }
         x += this.§8"H§.x;
         y += this.§8"H§.y;
         rotation += §7!f§;
         this.§""t§ *= §7!f§;
         this.§8"H§.y += 1 / 60 * §<#8§;
         this.§&$!§ -= _loc2_;
         alpha = Math.min(1,this.§>!0§ = this.§>!0§ - 0.05);
         if(this.§&$!§ <= 0)
         {
            removeEventListener(Event.ENTER_FRAME,this.§9#t§);
            if(parent)
            {
               parent.removeChild(this);
            }
         }
      }
   }
}
