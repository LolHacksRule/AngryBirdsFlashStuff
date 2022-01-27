package §]!x§
{
   import §-!r§.§'!h§;
   import §-!r§.§>§;
   import §26§.§3v§;
   import §4u§.§!H§;
   import §7!6§.§@Y§;
   import §="<§.§#`§;
   import §[z§.§;§;
   import §[z§.§;H§;
   import §`!w§.§?!U§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextLineMetrics;
   import flash.ui.Keyboard;
   
   public class §&!"§ extends §5!O§
   {
      
      private static var §0N§:Class = §6T§;
       
      
      private var §<"#§:String = "";
      
      private var §6"4§:String = "";
      
      private var §>!v§:§;H§;
      
      public function §&!"§()
      {
         §<"5§ = true;
         §8!X§ = true;
         super(§>§.§"!B§,§'!h§.§3"4§,§?!U§.§3!c§(§0N§));
         this.§>!v§ = new §;H§();
      }
      
      override protected function init() : void
      {
         super.init();
         this.updateTextFields();
         this.§@@§();
         (§3!a§.getItemByName("TextField_TypeCodeHere") as §#`§).§';§.maxChars = 12;
         this.§>!v§.addEventListener(§;§.§&!C§,this.§"!h§);
         this.§>!v§.addEventListener(§;§.§2!R§,this.§[X§);
         this.§>!v§.addEventListener(§;§.§?"-§,this.§ x§);
         this.§>!v§.addEventListener(§;§.§=S§,this.§5"8§);
         (§3!a§.getItemByName("TextField_TypeCodeHere") as §#`§).§';§.addEventListener(KeyboardEvent.KEY_DOWN,this.§`!d§);
         (§2&§.§6o§ as §@T§).§56§.§&"C§(false);
         §3!L§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§`L§);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§@Y§) : void
      {
         switch(param2)
         {
            case "CLOSE":
               close();
               break;
            case "SUBMIT_CODE":
               this.§+!L§();
               break;
            case "CODE_FAQ":
               §3v§.§0!Z§("displayFAQ");
         }
      }
      
      private function §+!L§() : void
      {
         var _loc1_:String = (§3!a§.getItemByName("TextField_TypeCodeHere") as §#`§).§';§.text;
         this.§>!v§.§+!L§(_loc1_);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         this.§>!v§.removeEventListener(§;§.§&!C§,this.§"!h§);
         this.§>!v§.removeEventListener(§;§.§2!R§,this.§[X§);
         this.§>!v§.removeEventListener(§;§.§?"-§,this.§ x§);
         this.§>!v§.removeEventListener(§;§.§=S§,this.§5"8§);
         (§3!a§.getItemByName("TextField_TypeCodeHere") as §#`§).§';§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§`!d§);
         §3!L§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§`L§);
         (§2&§.§6o§ as §@T§).§56§.§&"C§(true);
         super.hide(param1,param2);
      }
      
      override public function updateTextFields() : void
      {
         if(this.§6"4§ == this.§<"#§)
         {
            this.§6"4§ = "";
         }
         §!H§.§3R§.updateTextFields(§3!a§,"EnterCode_Popup");
         if(!(§3!a§.getItemByName("TextField_TypeCodeHere") as §#`§).§';§.hasEventListener(MouseEvent.MOUSE_DOWN))
         {
            (§3!a§.getItemByName("TextField_TypeCodeHere") as §#`§).§';§.addEventListener(MouseEvent.MOUSE_DOWN,this.§,!O§);
         }
         this.§<"#§ = (§3!a§.getItemByName("TextField_TypeCodeHere") as §#`§).§';§.text;
         this.§@@§();
      }
      
      private function §<!#§(param1:String) : void
      {
         this.§6"4§ = (§3!a§.getItemByName("TextField_TypeCodeHere") as §#`§).§';§.text;
         (§3!a§.getItemByName("TextField_TypeCodeHere") as §#`§).§';§.text = param1;
         if(param1 != "")
         {
            §3!a§.setText(param1,"TextField_TypeCodeHere");
            (§3!a§.getItemByName("TextField_TypeCodeHere") as §#`§).§';§.setSelection(0,param1.length);
            (§3!a§.getItemByName("TextField_TypeCodeHere") as §#`§).§';§.addEventListener(MouseEvent.MOUSE_DOWN,this.§,!O§);
         }
      }
      
      private function §"!h§(param1:§;§) : void
      {
         dispatchEvent(new §;§(§;§.§&!C§));
         close();
      }
      
      private function §[X§(param1:§;§) : void
      {
         if(§!H§.§3R§.§6"-§() == "en")
         {
            this.§<!#§("Code already used");
         }
         else
         {
            this.§<!#§("Código ya utilizado");
         }
      }
      
      private function § x§(param1:§;§) : void
      {
         if(§!H§.§3R§.§6"-§() == "en")
         {
            this.§<!#§("Incorrect code");
         }
         else
         {
            this.§<!#§("Código incorrecto");
         }
      }
      
      private function §5"8§(param1:§;§) : void
      {
         this.§<!#§(this.§<"#§);
      }
      
      private function §,!O§(param1:MouseEvent) : void
      {
         (§3!a§.getItemByName("TextField_TypeCodeHere") as §#`§).§';§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§,!O§);
         if(this.§6"4§ == this.§<"#§ || this.§6"4§ == "Incorrect code" || this.§6"4§ == "Código incorrecto" || this.§6"4§ == "Code already used" || this.§6"4§ == "Código ya utilizado")
         {
            this.§6"4§ = "";
         }
         §3!a§.setText(this.§6"4§,"TextField_TypeCodeHere");
      }
      
      private function §'5§(param1:TextField) : Number
      {
         var _loc2_:TextLineMetrics = param1.getLineMetrics(0);
         return _loc2_.width;
      }
      
      public function §@@§() : void
      {
         var _loc1_:TextField = §3!a§.getItemByName("Button_CodeInstructions").mClip.text;
         var _loc2_:MovieClip = §3!a§.getItemByName("Button_CodeInstructions").mClip.MovieClip_Code_Underline;
         var _loc3_:MovieClip = §3!a§.getItemByName("Button_CodeInstructions").mClip.MouseHitArea;
         _loc2_.width = this.§'5§(_loc1_);
         _loc3_.width = _loc2_.width;
         this.§-"C§(_loc1_);
      }
      
      private function §-"C§(param1:TextField) : void
      {
         var _loc2_:TextFormat = new TextFormat();
         _loc2_.italic = true;
         param1.setTextFormat(_loc2_);
      }
      
      private function §`L§(param1:MouseEvent) : void
      {
         var _loc2_:String = (§3!a§.getItemByName("TextField_TypeCodeHere") as §#`§).§';§.text;
         var _loc3_:TextField = (§3!a§.getItemByName("TextField_TypeCodeHere") as §#`§).§';§;
         if(_loc2_ == "" && param1.target != _loc3_)
         {
            this.§<!#§(this.§<"#§);
         }
      }
      
      public function §`!d§(param1:KeyboardEvent) : void
      {
         switch(param1.keyCode)
         {
            case Keyboard.ENTER:
               this.§+!L§();
         }
      }
   }
}
