package §"!H§
{
   import com.rovio.assets.§%!Z§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Point;
   
   public class §"!=§ extends Sprite
   {
      
      private static var §>!?§:Class = §%!Z§.§;",§("GiftBox_Particles");
       
      
      private var §=!c§:MovieClip;
      
      private var §"!-§:Point;
      
      private var §,T§:Number;
      
      private var §#! §:Number = 2;
      
      public function §"!=§(param1:Number, param2:Number)
      {
         super();
         this.§=!c§ = new §>!?§();
         addChild(this.§=!c§);
         this.§=!c§.gotoAndStop(1 + Math.round(Math.random() * (this.§=!c§.totalFrames - 1)));
         this.§"!-§ = new Point(Math.random() * 8 - 4,Math.random() * 8 - 5);
         this.§,T§ = Math.random() * 16 - 8;
         addEventListener(Event.ENTER_FRAME,this.§^!<§);
         this.x = param1;
         this.y = param2;
      }
      
      private function §^!<§(param1:Event) : void
      {
         x += this.§"!-§.x;
         y += this.§"!-§.y;
         rotation += this.§,T§;
         this.§,T§ *= 0.95;
         this.§"!-§.y += 1 / 60 * 9.8;
         alpha = Math.min(1,this.§#! § = this.§#! § - 0.05);
         if(alpha <= 0)
         {
            removeEventListener(Event.ENTER_FRAME,this.§^!<§);
            if(parent)
            {
               parent.removeChild(this);
            }
         }
      }
   }
}
