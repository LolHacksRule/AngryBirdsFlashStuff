package §3j§
{
   import §+!J§.§""A§;
   import §6§.§%I§;
   import com.furusystems.dconsole2.§!!%§;
   import com.furusystems.dconsole2.core.strings.§2!Q§;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §0"h§ extends §9#'§
   {
       
      
      public var dynamic:§%I§;
      
      private var §4!z§:Point;
      
      private var §#"Y§:Point;
      
      private var §#L§:§!!%§;
      
      public function §0"h§(param1:§!!%§)
      {
         this.§4!z§ = new Point();
         this.§#"Y§ = new Point();
         super();
         this.§#L§ = param1;
         this.dynamic = new §%I§(param1);
         addChild(this.dynamic);
         buttonMode = true;
         addEventListener(MouseEvent.MOUSE_DOWN,this.§[!&§);
         addEventListener(MouseEvent.MOUSE_OVER,this.§!!8§);
         addEventListener(MouseEvent.MOUSE_OUT,this.§3"d§);
      }
      
      private function §3"d§(param1:MouseEvent) : void
      {
         this.§#L§.§]"z§.§#!"§(§""A§.§'N§);
      }
      
      private function §!!8§(param1:MouseEvent) : void
      {
         this.§#L§.§]"z§.§#!"§(§""A§.§1!$§,§2!Q§.§&#"§.get(§2!Q§.§&#"§.§"z§),this);
      }
      
      private function §[!&§(param1:MouseEvent) : void
      {
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§[#8§);
         stage.addEventListener(MouseEvent.MOUSE_UP,this.§@#H§);
         this.§#"Y§.x = stage.mouseX;
         this.§#"Y§.y = stage.mouseY;
         this.§#L§.§]"z§.§#!"§(§""A§.§+K§,this.§#"Y§,this);
      }
      
      private function §[#8§(param1:MouseEvent) : void
      {
         this.§4!z§.x = stage.mouseX - this.§#"Y§.x;
         this.§4!z§.y = stage.mouseY - this.§#"Y§.y;
         this.§#"Y§.x = stage.mouseX;
         this.§#"Y§.y = stage.mouseY;
         this.§#L§.§]"z§.§#!"§(§""A§.§+#@§,this.§4!z§,this);
      }
      
      private function §@#H§(param1:MouseEvent) : void
      {
         this.§4!z§.x = stage.mouseX - this.§#"Y§.x;
         this.§4!z§.y = stage.mouseY - this.§#"Y§.y;
         this.§#"Y§.x = stage.mouseX;
         this.§#"Y§.y = stage.mouseY;
         stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§[#8§);
         stage.removeEventListener(MouseEvent.MOUSE_UP,this.§@#H§);
         this.§#L§.§]"z§.§#!"§(§""A§.§'#W§,this.§4!z§,this);
      }
      
      override public function onParentUpdate(param1:Rectangle) : void
      {
         visible = param1.height >= 80;
         this.dynamic.onParentUpdate(param1);
      }
   }
}
