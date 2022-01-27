package §>!2§
{
   import com.rovio.assets.§5"]§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Point;
   
   public class §4!u§ extends Sprite
   {
      
      private static var §-"'§:Class = §5"]§.§4!K§("GiftBox_Particles");
       
      
      private var §]!<§:MovieClip;
      
      private var §#"3§:Point;
      
      private var §'!z§:Number;
      
      private var § do§:Number = 2;
      
      public function §4!u§(param1:Number, param2:Number)
      {
         super();
         this.§]!<§ = new §-"'§();
         addChild(this.§]!<§);
         this.§]!<§.gotoAndStop(1 + Math.round(Math.random() * (this.§]!<§.totalFrames - 1)));
         this.§#"3§ = new Point(Math.random() * 8 - 4,Math.random() * 8 - 5);
         this.§'!z§ = Math.random() * 16 - 8;
         addEventListener(Event.ENTER_FRAME,this.§`_§);
         this.x = param1;
         this.y = param2;
      }
      
      private function §`_§(param1:Event) : void
      {
         x += this.§#"3§.x;
         y += this.§#"3§.y;
         rotation += this.§'!z§;
         this.§'!z§ *= 0.95;
         this.§#"3§.y += 1 / 60 * 9.8;
         alpha = Math.min(1,this.§ do§ = this.§ do§ - 0.05);
         if(alpha <= 0)
         {
            removeEventListener(Event.ENTER_FRAME,this.§`_§);
            if(parent)
            {
               parent.removeChild(this);
            }
         }
      }
   }
}
