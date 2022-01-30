package §=!Y§
{
   import §&<§.§@j§;
   import §&_§.§6!z§;
   import §'-§.§9u§;
   import §2W§.§+!d§;
   import §5u§.§^!=§;
   import §63§.LoginHandlerEvent;
   import §[!F§.§1c§;
   import §[!F§.§3j§;
   import §const§.§!!`§;
   import flash.events.FocusEvent;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   
   public class §7!p§
   {
       
      
      private var §,u§:§3j§;
      
      private var §7"!§:§!!`§;
      
      private var §^Z§:§6!z§;
      
      public function §7!p§(param1:§3j§, param2:§!!`§)
      {
         super();
         this.§,u§ = param1;
         this.§7"!§ = param2;
      }
      
      public function §4x§() : void
      {
         var _loc1_:§@j§ = this.§,u§.getItemByName("Checkbox_RememberMe_Register") as §@j§;
         if(this.§7"!§.rememberMeToggled)
         {
            _loc1_.setComponentState(§@j§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc1_.setComponentState(§@j§.§]P§);
         }
         (this.§,u§.getItemByName("TextField_PasswordField_Register") as §1c§).§ e§.addEventListener(MouseEvent.MOUSE_DOWN,this.§8"4§);
         (this.§,u§.getItemByName("TextField_PasswordFieldRepeat_Register") as §1c§).§ e§.addEventListener(MouseEvent.MOUSE_DOWN,this.§8"4§);
         (this.§,u§.getItemByName("TextField_NickNameField_Register") as §1c§).§ e§.addEventListener(MouseEvent.MOUSE_DOWN,this.§8"4§);
      }
      
      public function updateTextFields() : void
      {
      }
      
      public function deActivate() : void
      {
         (this.§,u§.getItemByName("TextField_PasswordField_Register") as §1c§).§ e§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§]!^§);
         (this.§,u§.getItemByName("TextField_PasswordFieldRepeat_Register") as §1c§).§ e§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§]!^§);
         this.§7"!§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§2v§);
         this.§7"!§.stage.removeEventListener(FocusEvent.KEY_FOCUS_CHANGE,this.§+o§);
         this.§7"!§.stage.removeEventListener(FocusEvent.MOUSE_FOCUS_CHANGE,this.§6!§);
      }
      
      public function dispose() : void
      {
         this.deActivate();
         this.§7"!§.§;"-§.removeEventListener(LoginHandlerEvent.ERROR,this.§<R§);
         this.§7"!§.§;"-§.removeEventListener(LoginHandlerEvent.§9!Y§,this.§08§);
         (this.§,u§.getItemByName("TextField_PasswordField_Register") as §1c§).§ e§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§8"4§);
         (this.§,u§.getItemByName("TextField_PasswordFieldRepeat_Register") as §1c§).§ e§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§8"4§);
         (this.§,u§.getItemByName("TextField_NickNameField_Register") as §1c§).§ e§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§8"4§);
         this.§7"!§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§2v§);
      }
      
      private function §8"4§(param1:MouseEvent) : void
      {
         this.§,u§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         this.§,u§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         this.§,u§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
      }
      
      public function activate() : void
      {
         this.§,u§.setObjectToFront(this.§,u§.getItemByName("Container_Register_Tab"));
         this.§7"!§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§2v§);
         this.§,u§.getItemByName("TextField_UserNameField").setVisibility(false);
         this.§,u§.getItemByName("TextField_PasswordField").setVisibility(false);
         this.§,u§.getItemByName("Button_Submit").setVisibility(false);
         this.§,u§.getItemByName("Checkbox_RememberMe").setVisibility(false);
         this.§,u§.getItemByName("TextField_PasswordField_Register").setVisibility(true);
         this.§,u§.getItemByName("TextField_PasswordFieldRepeat_Register").setVisibility(true);
         this.§,u§.getItemByName("TextField_NickNameField_Register").setVisibility(true);
         this.§,u§.getItemByName("Checkbox_RememberMe_Register").setVisibility(true);
         this.§,u§.getItemByName("Button_Submit_Register").setVisibility(true);
         var _loc1_:§1c§ = this.§,u§.getItemByName("TextField_NickNameField_Register") as §1c§;
         var _loc2_:§1c§ = this.§,u§.getItemByName("TextField_PasswordField_Register") as §1c§;
         var _loc3_:§1c§ = this.§,u§.getItemByName("TextField_PasswordFieldRepeat_Register") as §1c§;
         _loc1_.§ e§.restrict = §!!`§.§?f§;
         _loc1_.§ e§.maxChars = §!!`§.§?!e§;
         _loc2_.§ e§.maxChars = §!!`§.§7u§;
         _loc3_.§ e§.maxChars = §!!`§.§7u§;
         _loc1_.§ e§.tabIndex = 1;
         _loc2_.§ e§.tabIndex = 2;
         _loc3_.§ e§.tabIndex = 3;
         _loc1_.§ e§.addEventListener(KeyboardEvent.KEY_DOWN,this.§&`§);
         _loc2_.§ e§.addEventListener(KeyboardEvent.KEY_DOWN,this.§]!^§);
         _loc3_.§ e§.addEventListener(KeyboardEvent.KEY_DOWN,this.§]!^§);
         this.§7"!§.§8M§();
      }
      
      public function §+!,§() : void
      {
         var _loc2_:String = (this.§,u§.getItemByName("TextField_NickNameField_Register") as §1c§).§ e§.text;
         var _loc3_:String = (this.§,u§.getItemByName("TextField_PasswordField_Register") as §1c§).§ e§.text;
         var _loc4_:String = (this.§,u§.getItemByName("TextField_PasswordFieldRepeat_Register") as §1c§).§ e§.text;
         var _loc5_:String = §+!d§.§<"5§.§,!;§();
         var _loc6_:String = §+!d§.§<"5§.§'!G§();
         this.§4'§();
         this.§7"!§.§use § = _loc2_;
         this.§7"!§.§>y§ = _loc3_;
         var _loc7_:int = 5;
         if(_loc2_.length == 0)
         {
            this.reportError(§9u§.NICKNAME_MISSING);
            return;
         }
         if(_loc2_.length < _loc7_)
         {
            this.reportError(§9u§.NICKNAME_LENGTH);
            return;
         }
         if(!isNaN(Number(_loc2_)))
         {
            this.reportError(§9u§.NOT_ALLOWED_TO_PUT_ONLY_NUMBERS_IN_NICKNAME);
            return;
         }
         if(_loc3_.length == 0)
         {
            this.reportError(§9u§.PASSWORD_MISSING);
            return;
         }
         if(_loc3_.length < 5)
         {
            this.reportError(§9u§.PASSWORD_LENGTH);
            return;
         }
         if(_loc4_.length < 5)
         {
            this.reportError(§9u§.PASSWORDS_DONT_MATCH);
            return;
         }
         if(_loc3_ != _loc4_)
         {
            this.reportError(§9u§.PASSWORDS_DONT_MATCH);
            return;
         }
         var _loc10_:Object = {
            "nickName":_loc2_,
            "password":_loc3_,
            "locale":_loc6_,
            "language":_loc5_
         };
         this.§7"!§.§;"-§.addEventListener(LoginHandlerEvent.§9!Y§,this.§08§);
         this.§7"!§.§;"-§.addEventListener(LoginHandlerEvent.ERROR,this.§<R§);
         this.§7"!§.§;"-§.§]o§(_loc10_);
      }
      
      private function §08§(param1:LoginHandlerEvent) : void
      {
         this.§7"!§.§;"-§.removeEventListener(LoginHandlerEvent.ERROR,this.§<R§);
         this.§7"!§.§;"-§.removeEventListener(LoginHandlerEvent.§9!Y§,this.§08§);
         this.§7"!§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§2v§);
         this.§7"!§.§6_§();
         (§-!I§.§[f§ as AngryBirdsCustom).§=! §.§ !%§ = true;
         this.§7"!§.close();
         (§-!I§.§[f§ as AngryBirdsCustom).§=!F§.§%7§();
      }
      
      private function §<R§(param1:LoginHandlerEvent) : void
      {
         this.§7"!§.§;"-§.removeEventListener(LoginHandlerEvent.ERROR,this.§<R§);
         this.§7"!§.§;"-§.removeEventListener(LoginHandlerEvent.§9!Y§,this.§08§);
         if(param1.§;>§ == §9u§.PLAYER_ID_USED && param1.field.length > 0)
         {
            this.§;!f§(param1.field);
         }
         else
         {
            this.reportError(param1.§;>§);
         }
      }
      
      private function §;!f§(param1:String) : void
      {
         var _loc2_:TextField = (this.§,u§.getItemByName("TextField_NickNameField_Register") as §1c§).§ e§ as TextField;
         this.§7"!§.stage.focus = _loc2_;
         _loc2_.setSelection(_loc2_.text.length,_loc2_.text.length);
         this.§,u§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
         (§-!I§.§[f§ as AngryBirdsCustom).§@!C§.closePopup(§^!=§.§^"!§);
         this.§^Z§ = new §6!z§(§9u§.PLAYER_ID_USED_SUGGESTION,§6!z§.§%p§,true);
         §-!I§.§[f§.§@!C§.openPopup(this.§^Z§);
         (this.§^Z§.container.getItemByName("TextField_NicknameSuggestion") as §1c§).setText(param1);
         this.§^Z§.container.getItemByName("TextField_NicknameSuggestion").visible = true;
         this.§7"!§.stage.addEventListener(FocusEvent.KEY_FOCUS_CHANGE,this.§+o§);
         this.§7"!§.stage.addEventListener(FocusEvent.MOUSE_FOCUS_CHANGE,this.§6!§);
      }
      
      private function §+o§(param1:FocusEvent) : void
      {
         if(this.§^Z§)
         {
            this.§^Z§.§5D§();
            this.§7"!§.stage.removeEventListener(FocusEvent.KEY_FOCUS_CHANGE,this.§+o§);
            this.§7"!§.stage.removeEventListener(FocusEvent.MOUSE_FOCUS_CHANGE,this.§6!§);
         }
      }
      
      private function §6!§(param1:FocusEvent) : void
      {
         var _loc2_:TextField = (this.§,u§.getItemByName("TextField_PasswordField_Register") as §1c§).§ e§ as TextField;
         var _loc3_:TextField = (this.§,u§.getItemByName("TextField_PasswordFieldRepeat_Register") as §1c§).§ e§ as TextField;
         if(this.§^Z§ && (param1.relatedObject == _loc2_ || param1.relatedObject == _loc3_))
         {
            this.§^Z§.§5D§();
            this.§7"!§.stage.removeEventListener(FocusEvent.KEY_FOCUS_CHANGE,this.§+o§);
            this.§7"!§.stage.removeEventListener(FocusEvent.MOUSE_FOCUS_CHANGE,this.§6!§);
         }
      }
      
      private function reportError(param1:String) : void
      {
         switch(param1)
         {
            case §9u§.CONNECTION_ERROR_RETRY:
               this.§,u§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               this.§,u§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(true);
               this.§,u§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            case §9u§.NICKNAME_LENGTH:
            case §9u§.NOT_ALLOWED_TO_PUT_ONLY_NUMBERS_IN_NICKNAME:
               this.§,u§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            case §9u§.PASSWORD_LENGTH:
            case §9u§.PASSWORD_MISSING:
               this.§,u§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               break;
            case §9u§.PASSWORDS_DONT_MATCH:
               this.§,u§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               this.§,u§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(true);
               break;
            case §9u§.FIELD_LENGTH:
               this.§,u§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            case §9u§.FIELD_NOT_VALID:
               this.§,u§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            default:
               this.§,u§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               this.§,u§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(true);
               this.§,u§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
         }
         §-!I§.§[f§.§@!C§.openPopup(new §6!z§(param1,§6!z§.§%p§));
      }
      
      private function §4'§() : void
      {
         this.§,u§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         this.§,u§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         this.§,u§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
      }
      
      private function §>!T§(param1:uint, param2:uint, param3:RegExp, param4:String) : void
      {
         var _loc5_:String = String.fromCharCode(param1);
         if(param2 == Keyboard.BACKSPACE || param2 == Keyboard.SHIFT || param2 == Keyboard.CAPS_LOCK || param2 == Keyboard.TAB || param2 == Keyboard.LEFT || param2 == Keyboard.RIGHT || param2 == Keyboard.ENTER)
         {
            return;
         }
         if(!_loc5_.match(param3) && param4)
         {
            (§-!I§.§[f§ as AngryBirdsCustom).§@!C§.openPopup(new §6!z§(param4,§6!z§.§%p§));
         }
      }
      
      private function §&`§(param1:KeyboardEvent) : void
      {
         var _loc2_:uint = param1.charCode;
         var _loc3_:uint = param1.keyCode;
         var _loc4_:RegExp = /[A-Za-z0-9]/;
         this.§>!T§(_loc2_,_loc3_,_loc4_,§9u§.ONLY_LETTERS_AND_NUMBERS_ALLOWED);
      }
      
      private function §]!^§(param1:KeyboardEvent) : void
      {
         var _loc2_:uint = param1.charCode;
         var _loc3_:uint = param1.keyCode;
         var _loc4_:RegExp = /[*]/;
         this.§>!T§(_loc2_,_loc3_,_loc4_,null);
      }
      
      private function §2v§(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.ENTER)
         {
            (§-!I§.§[f§ as AngryBirdsCustom).§@!C§.closePopup(§^!=§.§^"!§);
            this.§7"!§.stage.removeEventListener(FocusEvent.KEY_FOCUS_CHANGE,this.§+o§);
            this.§7"!§.stage.removeEventListener(FocusEvent.MOUSE_FOCUS_CHANGE,this.§6!§);
            this.§+!,§();
            return;
         }
      }
   }
}
