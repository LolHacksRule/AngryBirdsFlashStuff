package §+!<§
{
   import §!"§.LoginHandlerEvent;
   import §!R§.§-!T§;
   import §1!s§.§8!f§;
   import §2!,§.§>!F§;
   import §4"!§.§?!#§;
   import §4Y§.§%n§;
   import §4Y§.§&0§;
   import §^>§.§2"&§;
   import §`!s§.§^2§;
   import flash.events.FocusEvent;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   
   public class §4",§
   {
       
      
      private var §=e§:§%n§;
      
      private var §#"7§:§?!#§;
      
      private var §,E§:§>!F§;
      
      public function §4",§(param1:§%n§, param2:§?!#§)
      {
         super();
         this.§=e§ = param1;
         this.§#"7§ = param2;
      }
      
      public function §%3§() : void
      {
         var _loc1_:§-!T§ = this.§=e§.getItemByName("Checkbox_RememberMe_Register") as §-!T§;
         if(this.§#"7§.rememberMeToggled)
         {
            _loc1_.setComponentState(§-!T§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc1_.setComponentState(§-!T§.§,!H§);
         }
         (this.§=e§.getItemByName("TextField_PasswordField_Register") as §&0§).§"S§.addEventListener(MouseEvent.MOUSE_DOWN,this.§9?§);
         (this.§=e§.getItemByName("TextField_PasswordFieldRepeat_Register") as §&0§).§"S§.addEventListener(MouseEvent.MOUSE_DOWN,this.§9?§);
         (this.§=e§.getItemByName("TextField_NickNameField_Register") as §&0§).§"S§.addEventListener(MouseEvent.MOUSE_DOWN,this.§9?§);
      }
      
      public function updateTextFields() : void
      {
      }
      
      public function deActivate() : void
      {
         (this.§=e§.getItemByName("TextField_PasswordField_Register") as §&0§).§"S§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§1!^§);
         (this.§=e§.getItemByName("TextField_PasswordFieldRepeat_Register") as §&0§).§"S§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§1!^§);
         this.§#"7§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§'!U§);
         this.§#"7§.stage.removeEventListener(FocusEvent.KEY_FOCUS_CHANGE,this.§+"2§);
         this.§#"7§.stage.removeEventListener(FocusEvent.MOUSE_FOCUS_CHANGE,this.§+3§);
      }
      
      public function dispose() : void
      {
         this.deActivate();
         this.§#"7§.§'2§.removeEventListener(LoginHandlerEvent.ERROR,this.§#!y§);
         this.§#"7§.§'2§.removeEventListener(LoginHandlerEvent.§["6§,this.§3"-§);
         (this.§=e§.getItemByName("TextField_PasswordField_Register") as §&0§).§"S§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§9?§);
         (this.§=e§.getItemByName("TextField_PasswordFieldRepeat_Register") as §&0§).§"S§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§9?§);
         (this.§=e§.getItemByName("TextField_NickNameField_Register") as §&0§).§"S§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§9?§);
         this.§#"7§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§'!U§);
      }
      
      private function §9?§(param1:MouseEvent) : void
      {
         this.§=e§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         this.§=e§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         this.§=e§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
      }
      
      public function activate() : void
      {
         this.§=e§.setObjectToFront(this.§=e§.getItemByName("Container_Register_Tab"));
         this.§#"7§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§'!U§);
         this.§=e§.getItemByName("TextField_UserNameField").setVisibility(false);
         this.§=e§.getItemByName("TextField_PasswordField").setVisibility(false);
         this.§=e§.getItemByName("Button_Submit").setVisibility(false);
         this.§=e§.getItemByName("Checkbox_RememberMe").setVisibility(false);
         this.§=e§.getItemByName("TextField_PasswordField_Register").setVisibility(true);
         this.§=e§.getItemByName("TextField_PasswordFieldRepeat_Register").setVisibility(true);
         this.§=e§.getItemByName("TextField_NickNameField_Register").setVisibility(true);
         this.§=e§.getItemByName("Checkbox_RememberMe_Register").setVisibility(true);
         this.§=e§.getItemByName("Button_Submit_Register").setVisibility(true);
         var _loc1_:§&0§ = this.§=e§.getItemByName("TextField_NickNameField_Register") as §&0§;
         var _loc2_:§&0§ = this.§=e§.getItemByName("TextField_PasswordField_Register") as §&0§;
         var _loc3_:§&0§ = this.§=e§.getItemByName("TextField_PasswordFieldRepeat_Register") as §&0§;
         _loc1_.§"S§.restrict = §?!#§.§5!9§;
         _loc1_.§"S§.maxChars = §?!#§.§ !v§;
         _loc2_.§"S§.maxChars = §?!#§.§#+§;
         _loc3_.§"S§.maxChars = §?!#§.§#+§;
         _loc1_.§"S§.tabIndex = 1;
         _loc2_.§"S§.tabIndex = 2;
         _loc3_.§"S§.tabIndex = 3;
         _loc1_.§"S§.addEventListener(KeyboardEvent.KEY_DOWN,this.§%r§);
         _loc2_.§"S§.addEventListener(KeyboardEvent.KEY_DOWN,this.§1!^§);
         _loc3_.§"S§.addEventListener(KeyboardEvent.KEY_DOWN,this.§1!^§);
         this.§#"7§.§ N§();
      }
      
      public function §?!i§() : void
      {
         var _loc2_:String = (this.§=e§.getItemByName("TextField_NickNameField_Register") as §&0§).§"S§.text;
         var _loc3_:String = (this.§=e§.getItemByName("TextField_PasswordField_Register") as §&0§).§"S§.text;
         var _loc4_:String = (this.§=e§.getItemByName("TextField_PasswordFieldRepeat_Register") as §&0§).§"S§.text;
         var _loc5_:String = §^2§.§&!;§.§1!a§();
         var _loc6_:String = §^2§.§&!;§.§]T§();
         this.§<"2§();
         this.§#"7§.§3b§ = _loc2_;
         this.§#"7§.§[!j§ = _loc3_;
         var _loc7_:int = 5;
         if(_loc2_.length == 0)
         {
            this.reportError(§2"&§.NICKNAME_MISSING);
            return;
         }
         if(_loc2_.length < _loc7_)
         {
            this.reportError(§2"&§.NICKNAME_LENGTH);
            return;
         }
         if(!isNaN(Number(_loc2_)))
         {
            this.reportError(§2"&§.NOT_ALLOWED_TO_PUT_ONLY_NUMBERS_IN_NICKNAME);
            return;
         }
         if(_loc3_.length == 0)
         {
            this.reportError(§2"&§.PASSWORD_MISSING);
            return;
         }
         if(_loc3_.length < 5)
         {
            this.reportError(§2"&§.PASSWORD_LENGTH);
            return;
         }
         if(_loc4_.length < 5)
         {
            this.reportError(§2"&§.PASSWORDS_DONT_MATCH);
            return;
         }
         if(_loc3_ != _loc4_)
         {
            this.reportError(§2"&§.PASSWORDS_DONT_MATCH);
            return;
         }
         var _loc10_:Object = {
            "nickName":_loc2_,
            "password":_loc3_,
            "locale":_loc6_,
            "language":_loc5_
         };
         this.§#"7§.§'2§.addEventListener(LoginHandlerEvent.§["6§,this.§3"-§);
         this.§#"7§.§'2§.addEventListener(LoginHandlerEvent.ERROR,this.§#!y§);
         this.§#"7§.§'2§.§1a§(_loc10_);
      }
      
      private function §3"-§(param1:LoginHandlerEvent) : void
      {
         this.§#"7§.§'2§.removeEventListener(LoginHandlerEvent.ERROR,this.§#!y§);
         this.§#"7§.§'2§.removeEventListener(LoginHandlerEvent.§["6§,this.§3"-§);
         this.§#"7§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§'!U§);
         this.§#"7§.§4V§();
         (§-!2§.§7O§ as AngryBirdsCustom).§,"5§.§'R§ = true;
         this.§#"7§.close();
         (§-!2§.§7O§ as AngryBirdsCustom).§6!<§.§-!w§();
      }
      
      private function §#!y§(param1:LoginHandlerEvent) : void
      {
         this.§#"7§.§'2§.removeEventListener(LoginHandlerEvent.ERROR,this.§#!y§);
         this.§#"7§.§'2§.removeEventListener(LoginHandlerEvent.§["6§,this.§3"-§);
         if(param1.§@I§ == §2"&§.PLAYER_ID_USED && param1.field.length > 0)
         {
            this.§?^§(param1.field);
         }
         else
         {
            this.reportError(param1.§@I§);
         }
      }
      
      private function §?^§(param1:String) : void
      {
         var _loc2_:TextField = (this.§=e§.getItemByName("TextField_NickNameField_Register") as §&0§).§"S§ as TextField;
         this.§#"7§.stage.focus = _loc2_;
         _loc2_.setSelection(_loc2_.text.length,_loc2_.text.length);
         this.§=e§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
         (§-!2§.§7O§ as AngryBirdsCustom).§0!l§.closePopup(§8!f§.§3!G§);
         this.§,E§ = new §>!F§(§2"&§.PLAYER_ID_USED_SUGGESTION,§>!F§.§6H§,true);
         §-!2§.§7O§.§0!l§.openPopup(this.§,E§);
         (this.§,E§.container.getItemByName("TextField_NicknameSuggestion") as §&0§).setText(param1);
         this.§,E§.container.getItemByName("TextField_NicknameSuggestion").visible = true;
         this.§#"7§.stage.addEventListener(FocusEvent.KEY_FOCUS_CHANGE,this.§+"2§);
         this.§#"7§.stage.addEventListener(FocusEvent.MOUSE_FOCUS_CHANGE,this.§+3§);
      }
      
      private function §+"2§(param1:FocusEvent) : void
      {
         if(this.§,E§)
         {
            this.§,E§.§,;§();
            this.§#"7§.stage.removeEventListener(FocusEvent.KEY_FOCUS_CHANGE,this.§+"2§);
            this.§#"7§.stage.removeEventListener(FocusEvent.MOUSE_FOCUS_CHANGE,this.§+3§);
         }
      }
      
      private function §+3§(param1:FocusEvent) : void
      {
         var _loc2_:TextField = (this.§=e§.getItemByName("TextField_PasswordField_Register") as §&0§).§"S§ as TextField;
         var _loc3_:TextField = (this.§=e§.getItemByName("TextField_PasswordFieldRepeat_Register") as §&0§).§"S§ as TextField;
         if(this.§,E§ && (param1.relatedObject == _loc2_ || param1.relatedObject == _loc3_))
         {
            this.§,E§.§,;§();
            this.§#"7§.stage.removeEventListener(FocusEvent.KEY_FOCUS_CHANGE,this.§+"2§);
            this.§#"7§.stage.removeEventListener(FocusEvent.MOUSE_FOCUS_CHANGE,this.§+3§);
         }
      }
      
      private function reportError(param1:String) : void
      {
         switch(param1)
         {
            case §2"&§.CONNECTION_ERROR_RETRY:
               this.§=e§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               this.§=e§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(true);
               this.§=e§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            case §2"&§.NICKNAME_LENGTH:
            case §2"&§.NOT_ALLOWED_TO_PUT_ONLY_NUMBERS_IN_NICKNAME:
               this.§=e§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            case §2"&§.PASSWORD_LENGTH:
            case §2"&§.PASSWORD_MISSING:
               this.§=e§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               break;
            case §2"&§.PASSWORDS_DONT_MATCH:
               this.§=e§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               this.§=e§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(true);
               break;
            case §2"&§.FIELD_LENGTH:
               this.§=e§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            case §2"&§.FIELD_NOT_VALID:
               this.§=e§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            default:
               this.§=e§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               this.§=e§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(true);
               this.§=e§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
         }
         §-!2§.§7O§.§0!l§.openPopup(new §>!F§(param1,§>!F§.§6H§));
      }
      
      private function §<"2§() : void
      {
         this.§=e§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         this.§=e§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         this.§=e§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
      }
      
      private function §>4§(param1:uint, param2:uint, param3:RegExp, param4:String) : void
      {
         var _loc5_:String = String.fromCharCode(param1);
         if(param2 == Keyboard.BACKSPACE || param2 == Keyboard.SHIFT || param2 == Keyboard.CAPS_LOCK || param2 == Keyboard.TAB || param2 == Keyboard.LEFT || param2 == Keyboard.RIGHT || param2 == Keyboard.ENTER)
         {
            return;
         }
         if(!_loc5_.match(param3) && param4)
         {
            (§-!2§.§7O§ as AngryBirdsCustom).§0!l§.openPopup(new §>!F§(param4,§>!F§.§6H§));
         }
      }
      
      private function §%r§(param1:KeyboardEvent) : void
      {
         var _loc2_:uint = param1.charCode;
         var _loc3_:uint = param1.keyCode;
         var _loc4_:RegExp = /[A-Za-z0-9]/;
         this.§>4§(_loc2_,_loc3_,_loc4_,§2"&§.ONLY_LETTERS_AND_NUMBERS_ALLOWED);
      }
      
      private function §1!^§(param1:KeyboardEvent) : void
      {
         var _loc2_:uint = param1.charCode;
         var _loc3_:uint = param1.keyCode;
         var _loc4_:RegExp = /[*]/;
         this.§>4§(_loc2_,_loc3_,_loc4_,null);
      }
      
      private function §'!U§(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.ENTER)
         {
            (§-!2§.§7O§ as AngryBirdsCustom).§0!l§.closePopup(§8!f§.§3!G§);
            this.§#"7§.stage.removeEventListener(FocusEvent.KEY_FOCUS_CHANGE,this.§+"2§);
            this.§#"7§.stage.removeEventListener(FocusEvent.MOUSE_FOCUS_CHANGE,this.§+3§);
            this.§?!i§();
            return;
         }
      }
   }
}
