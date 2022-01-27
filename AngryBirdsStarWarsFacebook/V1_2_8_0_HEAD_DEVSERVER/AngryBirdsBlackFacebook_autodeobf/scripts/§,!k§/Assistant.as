package §,!k§
{
   import §!!c§.§]# §;
   import §"!t§.§5"U§;
   import §+!J§.§""A§;
   import §1"b§.§7",§;
   import com.furusystems.dconsole2.§!!%§;
   import com.furusystems.dconsole2.core.strings.§2!Q§;
   import com.furusystems.dconsole2.core.style.§6!x§;
   import com.furusystems.dconsole2.core.style.§>"!§;
   import com.furusystems.dconsole2.core.style.§?#O§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.utils.getTimer;
   
   public class Assistant extends Sprite implements §5"U§, §]# §
   {
       
      
      private var §1n§:TextField;
      
      private var §!!S§:Boolean = true;
      
      private var §2C§:BitmapData;
      
      private var §<;§:Bitmap;
      
      private var §@#>§:Number = 0;
      
      private var §9!8§:Number = 0;
      
      private var §]"p§:§7#<§;
      
      public function Assistant(param1:§!!%§)
      {
         this.§<;§ = new Bitmap();
         super();
         this.§]"p§ = new §7#<§(param1);
         this.§1n§ = new TextField();
         this.§1n§.background = true;
         this.§1n§.tabEnabled = false;
         this.§1n§.embedFonts = §6!x§.§9!_§.charAt(0) != "_";
         this.§1n§.mouseEnabled = false;
         this.§1n§.selectable = true;
         this.§1n§.defaultTextFormat = §6!x§.§]!M§;
         addChild(this.§1n§);
         addChild(this.§<;§);
         this.§<;§.visible = false;
         param1.§]"z§.addCallback(§""A§.§4#I§,this.§-!B§);
         param1.§]"z§.addCallback(§""A§.§1!$§,this.§@"H§);
         param1.§]"z§.addCallback(§""A§.§'N§,this.§,"Z§);
         param1.§]"z§.addCallback(§""A§.§9"u§,this.§4R§);
         this.§1n§.text = "Assistant";
         addChild(this.§]"p§).visible = false;
      }
      
      private function §4R§(param1:§7",§) : void
      {
         if(this.text == "")
         {
            return;
         }
         if(this.§1n§.maxScrollH > 0)
         {
            this.§@#>§ += getTimer() - this.§9!8§;
            this.§1n§.scrollH = (Math.sin(this.§@#>§ / 1000) + 1) / 2 * this.§1n§.maxScrollH;
            this.§9!8§ = getTimer();
         }
         else
         {
            this.§9!8§ = 0;
            this.§@#>§ = 0;
         }
      }
      
      private function §,"Z§(param1:§7",§) : void
      {
         this.clear();
      }
      
      private function §@"H§(param1:§7",§) : void
      {
         this.text = param1.data.toString();
      }
      
      private function §[!&§(param1:MouseEvent) : void
      {
         stage.addEventListener(MouseEvent.MOUSE_UP,this.§@#H§);
         this.§2C§ = new BitmapData(this.§1n§.width,this.§1n§.height,false,0);
         this.§2C§.draw(this.§1n§);
         this.§<;§.bitmapData = this.§2C§;
         this.§<;§.visible = true;
         this.§1n§.visible = false;
      }
      
      private function §@#H§(param1:MouseEvent) : void
      {
         stage.removeEventListener(MouseEvent.MOUSE_UP,this.§@#H§);
         this.§2C§.dispose();
         this.§<;§.visible = false;
         this.§1n§.visible = true;
      }
      
      public function get text() : String
      {
         return this.§1n§.text;
      }
      
      public function set text(param1:String) : void
      {
         this.§1n§.text = param1;
         this.§1n§.scrollH = 0;
         this.§9!8§ = 0;
         this.§@#>§ = 0;
         this.§!!S§ = false;
      }
      
      public function §3!W§(param1:String) : void
      {
         this.§1n§.text = param1;
         this.§!!S§ = true;
      }
      
      public function clear() : void
      {
         this.§3!W§(§2!Q§.§&#"§.get(§2!Q§.§&#"§.§;#$§));
         this.§!!S§ = true;
      }
      
      public function onParentUpdate(param1:Rectangle) : void
      {
         y = param1.y;
         x = param1.x;
         this.§1n§.height = §>"!§.§6R§;
         this.§1n§.width = param1.width;
         this.§]"p§.x = param1.width - this.§]"p§.width;
      }
      
      public function §-!B§(param1:§7",§) : void
      {
         this.§1n§.backgroundColor = §?#O§.§`!p§;
         this.§1n§.textColor = §?#O§.§3"r§;
      }
      
      public function get rect() : Rectangle
      {
         return getRect(parent);
      }
      
      public function get §9#$§() : Number
      {
         return 0;
      }
      
      public function get §>"Z§() : Number
      {
         return 0;
      }
      
      public function get §7W§() : Boolean
      {
         return this.§!!S§;
      }
      
      public function get §,!J§() : §7#<§
      {
         return this.§]"p§;
      }
   }
}
