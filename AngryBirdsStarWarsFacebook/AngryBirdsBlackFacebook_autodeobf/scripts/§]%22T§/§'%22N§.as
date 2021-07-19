package §]"T§
{
   import §!!c§.§]# §;
   import §"!t§.§5"U§;
   import §#f§.§3@§;
   import §+!J§.§""A§;
   import §1"b§.§7",§;
   import com.furusystems.dconsole2.§!!%§;
   import com.furusystems.dconsole2.core.style.§6!x§;
   import com.furusystems.dconsole2.core.style.§>"!§;
   import com.furusystems.dconsole2.core.style.§?#O§;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFieldType;
   
   public class §'"N§ extends Sprite implements §5"U§, §]# §
   {
       
      
      private var §%#%§:TextField;
      
      private var §#L§:§!!%§;
      
      public function §'"N§(param1:§!!%§)
      {
         super();
         this.§#L§ = param1;
         tabChildren = false;
         tabEnabled = false;
         this.§%#%§ = new TextField();
         this.§%#%§.border = true;
         this.§%#%§.embedFonts = §6!x§.§9!_§.charAt(0) != "_";
         this.§%#%§.defaultTextFormat = §6!x§.§8"D§;
         this.§%#%§.multiline = false;
         this.§%#%§.type = TextFieldType.INPUT;
         this.§%#%§.background = true;
         this.§%#%§.borderColor = §?#O§.§5"k§;
         this.§%#%§.backgroundColor = §?#O§.§<#Z§;
         this.§%#%§.textColor = §?#O§.§!#9§;
         this.§%#%§.tabEnabled = false;
         this.§%#%§.text = "Input";
         this.§%#%§.addEventListener(Event.CHANGE,this.§0#%§);
         addChild(this.§%#%§);
         this.§#L§.§]"z§.addCallback(§""A§.§ !V§,this.§>I§);
         this.§#L§.§]"z§.addCallback(§""A§.§4#I§,this.§-!B§);
      }
      
      private function §>I§(param1:§7",§) : void
      {
         this.text = String(param1.data);
         dispatchEvent(new Event(Event.CHANGE));
      }
      
      private function §0#%§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      public function get text() : String
      {
         return this.§%#%§.text;
      }
      
      public function set text(param1:String) : void
      {
         this.§%#%§.text = param1;
         this.focus();
      }
      
      public function onParentUpdate(param1:Rectangle) : void
      {
         y = param1.y;
         x = param1.x;
         this.§%#%§.height = §>"!§.§6R§;
         this.§%#%§.width = param1.width - 1;
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
      
      public function §?#E§(param1:int = -1) : void
      {
         if(param1 == -1)
         {
            param1 = this.§`!N§.length;
         }
         this.§`!N§.setSelection(param1,param1);
      }
      
      public function get selectionBeginIndex() : int
      {
         return this.§%#%§.selectionBeginIndex;
      }
      
      public function get selectionEndIndex() : int
      {
         return this.§%#%§.selectionEndIndex;
      }
      
      public function §>!<§(param1:int) : String
      {
         return §3@§.§>!<§(this.§%#%§,param1);
      }
      
      public function get §%!Y§() : int
      {
         return §3@§.§3b§(this.§%#%§);
      }
      
      public function get §`"@§() : String
      {
         return this.§>!<§(0);
      }
      
      public function get §0C§() : String
      {
         return §3@§.§+"O§(this.§`!N§);
      }
      
      public function §0X§() : void
      {
         §3@§.§,s§(this.§%#%§);
      }
      
      public function §["7§() : void
      {
         this.§?#E§(-1);
      }
      
      public function §&#1§() : void
      {
         this.§?#E§(0);
      }
      
      public function focus() : void
      {
         if(stage.focus == this.§%#%§)
         {
            return;
         }
         stage.focus = this.§%#%§;
         this.§["7§();
      }
      
      public function §-!B§(param1:§7",§) : void
      {
         this.§%#%§.borderColor = §?#O§.§5"k§;
         this.§%#%§.backgroundColor = §?#O§.§<#Z§;
         this.§%#%§.textColor = §?#O§.§!#9§;
      }
      
      public function clear() : void
      {
         this.text = "";
      }
      
      public function §'&§(param1:String) : void
      {
         this.§@#M§();
         var _loc2_:String = this.text.substr(0,this.caretIndex);
         var _loc3_:String = this.text.substr(this.caretIndex);
         this.text = _loc2_ + param1 + _loc3_;
         this.§?#E§(_loc2_.length + param1.length);
      }
      
      public function §@#M§() : void
      {
         var _loc1_:String = this.text.substr(0,this.§%#%§.selectionBeginIndex);
         var _loc2_:String = this.text.substr(this.§%#%§.selectionEndIndex);
         this.§%#%§.text = _loc1_ + _loc2_;
      }
      
      public function get §`!s§() : Boolean
      {
         return this.§%#%§.selectedText != "";
      }
      
      public function get length() : int
      {
         return this.§%#%§.length;
      }
      
      public function get caretIndex() : int
      {
         return this.§%#%§.caretIndex;
      }
      
      public function get §`!N§() : TextField
      {
         return this.§%#%§;
      }
   }
}
