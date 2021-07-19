package §]"r§
{
   import §!!c§.§]# §;
   import §+!J§.§""A§;
   import §1"b§.§7",§;
   import §;!h§.§&"z§;
   import com.furusystems.dconsole2.§!!%§;
   import com.furusystems.dconsole2.core.style.§>"!§;
   import com.furusystems.dconsole2.core.style.§?#O§;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   
   public class §7v§ extends Sprite implements §]# §
   {
       
      
      private var §;#S§:TextField;
      
      private var §#L§:§!!%§;
      
      public function §7v§(param1:§!!%§)
      {
         super();
         this.§#L§ = param1;
         mouseChildren = false;
         mouseEnabled = false;
         this.§;#S§ = §@D§.§3!x§("Help");
         this.§;#S§.autoSize = TextFieldAutoSize.LEFT;
         this.§;#S§.height = §>"!§.§6R§;
         this.§;#S§.textColor = §?#O§.§3"!§;
         this.§;#S§.backgroundColor = §?#O§.§[!R§;
         filters = [§&"z§.§%;§];
         this.§;#S§.background = true;
         addChild(this.§;#S§).y = -§>"!§.§6R§ * 1.5;
         this.§#L§.§]"z§.addCallback(§""A§.§^#Y§,this.§4!4§);
         this.§#L§.§]"z§.addCallback(§""A§.§&@§,this.§0"G§);
         this.§#L§.§]"z§.addCallback(§""A§.§4#I§,this.§-!B§);
         visible = false;
      }
      
      private function §0"G§() : void
      {
         this.hide();
      }
      
      private function §4!4§(param1:§7",§) : void
      {
         this.§;!f§(String(param1.data),stage.mouseX,stage.mouseY);
      }
      
      public function §;!f§(param1:String, param2:Number, param3:Number) : void
      {
         if(param1.length < 1 || param1 == " ")
         {
            return;
         }
         this.§;#S§.text = param1;
         visible = true;
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§[#8§);
         this.§[#8§();
      }
      
      private function §[#8§(param1:MouseEvent = null) : void
      {
         x = stage.mouseX + §>"!§.§6R§;
         y = stage.mouseY;
      }
      
      public function hide() : void
      {
         visible = false;
         stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§[#8§);
      }
      
      public function §-!B§(param1:§7",§) : void
      {
         this.§;#S§.textColor = §?#O§.§3"!§;
         this.§;#S§.backgroundColor = §?#O§.§[!R§;
      }
   }
}
