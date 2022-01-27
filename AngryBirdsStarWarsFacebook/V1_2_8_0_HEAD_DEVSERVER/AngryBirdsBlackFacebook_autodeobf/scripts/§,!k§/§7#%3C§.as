package §,!k§
{
   import §+!J§.§""A§;
   import §1"b§.§>l§;
   import com.furusystems.dconsole2.§!!%§;
   import com.furusystems.dconsole2.core.strings.§2!Q§;
   import com.furusystems.dconsole2.core.style.§>"!§;
   import com.furusystems.dconsole2.core.style.§?#O§;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §7#<§ extends Sprite
   {
       
      
      private var §4!z§:Point;
      
      private var §#"Y§:Point;
      
      private var §5"d§:§>l§;
      
      public function §7#<§(param1:§!!%§)
      {
         this.§4!z§ = new Point();
         this.§#"Y§ = new Point();
         super();
         this.§5"d§ = param1.§]"z§;
         alpha = 0.8;
         graphics.beginFill(0,0);
         graphics.drawRect(0,0,§>"!§.§6R§,§>"!§.§6R§);
         graphics.beginFill(§?#O§.§,"-§);
         graphics.moveTo(§>"!§.§6R§,0);
         graphics.lineTo(§>"!§.§6R§,§>"!§.§6R§);
         graphics.lineTo(0,§>"!§.§6R§);
         buttonMode = true;
         addEventListener(MouseEvent.MOUSE_DOWN,this.§[!&§);
         addEventListener(MouseEvent.MOUSE_OVER,this.§!!8§);
         addEventListener(MouseEvent.MOUSE_OUT,this.§3"d§);
      }
      
      private function §3"d§(param1:MouseEvent) : void
      {
         this.§5"d§.§#!"§(§""A§.§'N§);
      }
      
      private function §!!8§(param1:MouseEvent) : void
      {
         this.§5"d§.§#!"§(§""A§.§1!$§,§2!Q§.§&#"§.get(§2!Q§.§&#"§.§!!4§),this);
      }
      
      private function §[!&§(param1:MouseEvent) : void
      {
         alpha = 1;
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§[#8§);
         stage.addEventListener(MouseEvent.MOUSE_UP,this.§@#H§);
         this.§#"Y§.x = stage.mouseX;
         this.§#"Y§.y = stage.mouseY;
         this.§5"d§.§#!"§(§""A§.§;"B§,this.§#"Y§,this);
      }
      
      private function §[#8§(param1:MouseEvent) : void
      {
         this.§4!z§.x = stage.mouseX - this.§#"Y§.x;
         this.§4!z§.y = stage.mouseY - this.§#"Y§.y;
         this.§#"Y§.x = stage.mouseX;
         this.§#"Y§.y = stage.mouseY;
         this.§5"d§.§#!"§(§""A§.§`#D§,this.§4!z§,this);
      }
      
      private function §@#H§(param1:MouseEvent) : void
      {
         alpha = 0.8;
         this.§4!z§.x = stage.mouseX - this.§#"Y§.x;
         this.§4!z§.y = stage.mouseY - this.§#"Y§.y;
         this.§#"Y§.x = stage.mouseX;
         this.§#"Y§.y = stage.mouseY;
         stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§[#8§);
         stage.removeEventListener(MouseEvent.MOUSE_UP,this.§@#H§);
         this.§5"d§.§#!"§(§""A§.§""C§,this.§4!z§,this);
      }
   }
}
