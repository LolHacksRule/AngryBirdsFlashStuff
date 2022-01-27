package §+"C§
{
   import §!!r§.§ !N§;
   import §!!r§.§<l§;
   import §'!n§.§[!I§;
   import §+"2§.§?d§;
   import §+"2§.§`B§;
   import §,!7§.§2a§;
   import §4!Z§.§%^§;
   import §6!C§.§7[§;
   import §6B§.§?"2§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextLineMetrics;
   import flash.ui.Keyboard;
   
   public class §'Z§ extends §^"4§
   {
      
      private static var §9!<§:Class = §&h§;
       
      
      private var §7E§:String = "";
      
      private var §?";§:String = "";
      
      private var §7-§:§ !N§;
      
      public function §'Z§()
      {
         §^">§ = true;
         §6"B§ = true;
         super(§?d§.§=!7§,§`B§.§-! §,§7[§.§[!n§(§9!<§));
         this.§7-§ = new § !N§();
      }
      
      override protected function init() : void
      {
         super.init();
         this.updateTextFields();
         this.§0!k§();
         (§ 1§.getItemByName("TextField_TypeCodeHere") as §2a§).§%!%§.maxChars = 12;
         this.§7-§.addEventListener(§<l§.§'"#§,this.§6Z§);
         this.§7-§.addEventListener(§<l§.§7#§,this.§`!V§);
         this.§7-§.addEventListener(§<l§.§0y§,this.§?T§);
         this.§7-§.addEventListener(§<l§.§9!E§,this.§0!d§);
         (§ 1§.getItemByName("TextField_TypeCodeHere") as §2a§).§%!%§.addEventListener(KeyboardEvent.KEY_DOWN,this.§8!b§);
         (§&"<§.§<!7§ as §["!§).§^"<§.§@R§(false);
         §1s§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§3!u§);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§?"2§) : void
      {
         switch(param2)
         {
            case "CLOSE":
               close();
               break;
            case "SUBMIT_CODE":
               this.§ ";§();
               break;
            case "CODE_FAQ":
               §%^§.§]"3§("displayFAQ");
         }
      }
      
      private function § ";§() : void
      {
         var _loc1_:String = (§ 1§.getItemByName("TextField_TypeCodeHere") as §2a§).§%!%§.text;
         this.§7-§.§ ";§(_loc1_);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         this.§7-§.removeEventListener(§<l§.§'"#§,this.§6Z§);
         this.§7-§.removeEventListener(§<l§.§7#§,this.§`!V§);
         this.§7-§.removeEventListener(§<l§.§0y§,this.§?T§);
         this.§7-§.removeEventListener(§<l§.§9!E§,this.§0!d§);
         (§ 1§.getItemByName("TextField_TypeCodeHere") as §2a§).§%!%§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§8!b§);
         §1s§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§3!u§);
         (§&"<§.§<!7§ as §["!§).§^"<§.§@R§(true);
         super.hide(param1,param2);
      }
      
      override public function updateTextFields() : void
      {
         if(this.§?";§ == this.§7E§)
         {
            this.§?";§ = "";
         }
         §[!I§.§8!J§.updateTextFields(§ 1§,"EnterCode_Popup");
         if(!(§ 1§.getItemByName("TextField_TypeCodeHere") as §2a§).§%!%§.hasEventListener(MouseEvent.MOUSE_DOWN))
         {
            (§ 1§.getItemByName("TextField_TypeCodeHere") as §2a§).§%!%§.addEventListener(MouseEvent.MOUSE_DOWN,this.§"v§);
         }
         this.§7E§ = (§ 1§.getItemByName("TextField_TypeCodeHere") as §2a§).§%!%§.text;
         this.§0!k§();
      }
      
      private function §!+§(param1:String) : void
      {
         this.§?";§ = (§ 1§.getItemByName("TextField_TypeCodeHere") as §2a§).§%!%§.text;
         (§ 1§.getItemByName("TextField_TypeCodeHere") as §2a§).§%!%§.text = param1;
         if(param1 != "")
         {
            § 1§.setText(param1,"TextField_TypeCodeHere");
            (§ 1§.getItemByName("TextField_TypeCodeHere") as §2a§).§%!%§.setSelection(0,param1.length);
            (§ 1§.getItemByName("TextField_TypeCodeHere") as §2a§).§%!%§.addEventListener(MouseEvent.MOUSE_DOWN,this.§"v§);
         }
      }
      
      private function §6Z§(param1:§<l§) : void
      {
         dispatchEvent(new §<l§(§<l§.§'"#§));
         close();
      }
      
      private function §`!V§(param1:§<l§) : void
      {
         if(§[!I§.§8!J§.§,"+§() == "en")
         {
            this.§!+§("Code already used");
         }
         else
         {
            this.§!+§("Código ya utilizado");
         }
      }
      
      private function §?T§(param1:§<l§) : void
      {
         if(§[!I§.§8!J§.§,"+§() == "en")
         {
            this.§!+§("Incorrect code");
         }
         else
         {
            this.§!+§("Código incorrecto");
         }
      }
      
      private function §0!d§(param1:§<l§) : void
      {
         this.§!+§(this.§7E§);
      }
      
      private function §"v§(param1:MouseEvent) : void
      {
         (§ 1§.getItemByName("TextField_TypeCodeHere") as §2a§).§%!%§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§"v§);
         if(this.§?";§ == this.§7E§ || this.§?";§ == "Incorrect code" || this.§?";§ == "Código incorrecto" || this.§?";§ == "Code already used" || this.§?";§ == "Código ya utilizado")
         {
            this.§?";§ = "";
         }
         § 1§.setText(this.§?";§,"TextField_TypeCodeHere");
      }
      
      private function §@3§(param1:TextField) : Number
      {
         var _loc2_:TextLineMetrics = param1.getLineMetrics(0);
         return _loc2_.width;
      }
      
      public function §0!k§() : void
      {
         var _loc1_:TextField = § 1§.getItemByName("Button_CodeInstructions").mClip.text;
         var _loc2_:MovieClip = § 1§.getItemByName("Button_CodeInstructions").mClip.MovieClip_Code_Underline;
         var _loc3_:MovieClip = § 1§.getItemByName("Button_CodeInstructions").mClip.MouseHitArea;
         _loc2_.width = this.§@3§(_loc1_);
         _loc3_.width = _loc2_.width;
         this.§=m§(_loc1_);
      }
      
      private function §=m§(param1:TextField) : void
      {
         var _loc2_:TextFormat = new TextFormat();
         _loc2_.italic = true;
         param1.setTextFormat(_loc2_);
      }
      
      private function §3!u§(param1:MouseEvent) : void
      {
         var _loc2_:String = (§ 1§.getItemByName("TextField_TypeCodeHere") as §2a§).§%!%§.text;
         var _loc3_:TextField = (§ 1§.getItemByName("TextField_TypeCodeHere") as §2a§).§%!%§;
         if(_loc2_ == "" && param1.target != _loc3_)
         {
            this.§!+§(this.§7E§);
         }
      }
      
      public function §8!b§(param1:KeyboardEvent) : void
      {
         switch(param1.keyCode)
         {
            case Keyboard.ENTER:
               this.§ ";§();
         }
      }
   }
}
