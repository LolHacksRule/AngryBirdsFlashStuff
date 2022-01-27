package §1!]§
{
   import §!i§.§?"%§;
   import §""<§.§=Q§;
   import §"_§.§&r§;
   import §"_§.§3o§;
   import §'#§.§^4§;
   import §4!t§.§95§;
   import §4!x§.§&!=§;
   import §4!x§.§<W§;
   import §<l§.§#r§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class §,9§ extends §%"%§
   {
      
      private static var §'!3§:Class = §`M§;
       
      
      private var §=!@§:String = "";
      
      private var §"!k§:String = "";
      
      private var §!c§:§<W§;
      
      public function §,9§()
      {
         §&"<§ = true;
         § !z§ = true;
         super(§&r§.§2B§,§3o§.§0!n§,§=Q§.§%!g§(§'!3§));
         this.§!c§ = new §<W§();
      }
      
      override protected function init() : void
      {
         super.init();
         this.updateTextFields();
         this.§`2§();
         (§&#§.getItemByName("TextField_TypeCodeHere") as §?"%§).§8!o§.maxChars = 12;
         this.§!c§.addEventListener(§&!=§.§^!H§,this.§&"0§);
         this.§!c§.addEventListener(§&!=§.§>!8§,this.§^!U§);
         this.§!c§.addEventListener(§&!=§.§7w§,this.§&6§);
         this.§!c§.addEventListener(§&!=§.§5"$§,this.§<9§);
         (§&!h§.§ u§ as §^"=§).§?P§.§@!k§(false);
         §+!#§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§9!C§);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§95§) : void
      {
         var _loc4_:String = null;
         switch(param2)
         {
            case "CLOSE":
               close();
               break;
            case "SUBMIT_CODE":
               _loc4_ = (§&#§.getItemByName("TextField_TypeCodeHere") as §?"%§).§8!o§.text;
               this.§!c§.§%!%§(_loc4_);
               break;
            case "CODE_FAQ":
               §#r§.§#!2§("displayFAQ");
         }
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         this.§!c§.removeEventListener(§&!=§.§^!H§,this.§&"0§);
         this.§!c§.removeEventListener(§&!=§.§>!8§,this.§^!U§);
         this.§!c§.removeEventListener(§&!=§.§7w§,this.§&6§);
         this.§!c§.removeEventListener(§&!=§.§5"$§,this.§<9§);
         §+!#§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§9!C§);
         (§&!h§.§ u§ as §^"=§).§?P§.§@!k§(true);
         super.hide(param1,param2);
      }
      
      override public function updateTextFields() : void
      {
         if(this.§"!k§ == this.§=!@§)
         {
            this.§"!k§ = "";
         }
         §^4§.§<"B§.updateTextFields(§&#§,"EnterCode_Popup");
         if(!(§&#§.getItemByName("TextField_TypeCodeHere") as §?"%§).§8!o§.hasEventListener(MouseEvent.MOUSE_DOWN))
         {
            (§&#§.getItemByName("TextField_TypeCodeHere") as §?"%§).§8!o§.addEventListener(MouseEvent.MOUSE_DOWN,this.§0!;§);
         }
         this.§=!@§ = (§&#§.getItemByName("TextField_TypeCodeHere") as §?"%§).§8!o§.text;
         this.§`2§();
      }
      
      private function §[!o§(param1:String) : void
      {
         this.§"!k§ = (§&#§.getItemByName("TextField_TypeCodeHere") as §?"%§).§8!o§.text;
         (§&#§.getItemByName("TextField_TypeCodeHere") as §?"%§).§8!o§.text = param1;
         if(param1 != "")
         {
            §&#§.setText(param1,"TextField_TypeCodeHere");
            (§&#§.getItemByName("TextField_TypeCodeHere") as §?"%§).§8!o§.setSelection(0,param1.length);
            (§&#§.getItemByName("TextField_TypeCodeHere") as §?"%§).§8!o§.addEventListener(MouseEvent.MOUSE_DOWN,this.§0!;§);
         }
      }
      
      private function §&"0§(param1:§&!=§) : void
      {
         dispatchEvent(new §&!=§(§&!=§.§^!H§));
         close();
      }
      
      private function §^!U§(param1:§&!=§) : void
      {
         if(§^4§.§<"B§.§+!P§() == "en")
         {
            this.§[!o§("Code already used");
         }
         else
         {
            this.§[!o§("Código ya utilizado");
         }
      }
      
      private function §&6§(param1:§&!=§) : void
      {
         if(§^4§.§<"B§.§+!P§() == "en")
         {
            this.§[!o§("Incorrect code");
         }
         else
         {
            this.§[!o§("Código incorrecto");
         }
      }
      
      private function §<9§(param1:§&!=§) : void
      {
         this.§[!o§(this.§=!@§);
      }
      
      private function §0!;§(param1:MouseEvent) : void
      {
         (§&#§.getItemByName("TextField_TypeCodeHere") as §?"%§).§8!o§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§0!;§);
         if(this.§"!k§ == this.§=!@§ || this.§"!k§ == "Incorrect code" || this.§"!k§ == "Código incorrecto" || this.§"!k§ == "Code already used" || this.§"!k§ == "Código ya utilizado")
         {
            this.§"!k§ = "";
         }
         §&#§.setText(this.§"!k§,"TextField_TypeCodeHere");
      }
      
      private function §3!M§(param1:TextField) : Number
      {
         var _loc2_:Rectangle = param1.getCharBoundaries(0);
         var _loc3_:Rectangle = param1.getCharBoundaries(param1.length - 1);
         return _loc3_.x + _loc3_.width - _loc2_.x + _loc2_.width / 2;
      }
      
      public function §`2§() : void
      {
         var _loc1_:TextField = §&#§.getItemByName("Button_CodeInstructions").mClip.text;
         var _loc2_:MovieClip = §&#§.getItemByName("Button_CodeInstructions").mClip.MovieClip_Code_Underline;
         var _loc3_:MovieClip = §&#§.getItemByName("Button_CodeInstructions").mClip.MouseHitArea;
         _loc2_.width = this.§3!M§(_loc1_);
         _loc3_.width = _loc2_.width;
         this.§=3§(_loc1_);
      }
      
      private function §=3§(param1:TextField) : void
      {
         var _loc2_:TextFormat = new TextFormat();
         _loc2_.italic = true;
         param1.setTextFormat(_loc2_);
      }
      
      private function §9!C§(param1:MouseEvent) : void
      {
         var _loc2_:String = (§&#§.getItemByName("TextField_TypeCodeHere") as §?"%§).§8!o§.text;
         var _loc3_:TextField = (§&#§.getItemByName("TextField_TypeCodeHere") as §?"%§).§8!o§;
         if(_loc2_ == "" && param1.target != _loc3_)
         {
            this.§[!o§(this.§=!@§);
         }
      }
   }
}
