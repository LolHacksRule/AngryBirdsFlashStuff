package §<!B§
{
   import §!!&§.§`!$§;
   import §!!`§.§>!&§;
   import §"q§.LoginHandlerEvent;
   import §%r§.§ L§;
   import §;!y§.§4![§;
   import §<!0§.§3!W§;
   import §>P§.§%`§;
   import §>P§.§]"4§;
   import §@!l§.§,!D§;
   import flash.events.FocusEvent;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   
   public class §66§
   {
       
      
      private var §5!^§:§]"4§;
      
      private var §^!5§:§ L§;
      
      private var §%"-§:§,!D§;
      
      public function §66§(param1:§]"4§, param2:§ L§)
      {
         super();
         this.§5!^§ = param1;
         this.§^!5§ = param2;
      }
      
      public function § !r§() : void
      {
         var _loc1_:§3!W§ = this.§5!^§.getItemByName("Checkbox_RememberMe_Register") as §3!W§;
         if(this.§^!5§.rememberMeToggled)
         {
            _loc1_.setComponentState(§3!W§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc1_.setComponentState(§3!W§.§9k§);
         }
         (this.§5!^§.getItemByName("TextField_PasswordField_Register") as §%`§).§=!=§.addEventListener(MouseEvent.MOUSE_DOWN,this.§'Y§);
         (this.§5!^§.getItemByName("TextField_PasswordFieldRepeat_Register") as §%`§).§=!=§.addEventListener(MouseEvent.MOUSE_DOWN,this.§'Y§);
         (this.§5!^§.getItemByName("TextField_NickNameField_Register") as §%`§).§=!=§.addEventListener(MouseEvent.MOUSE_DOWN,this.§'Y§);
      }
      
      public function updateTextFields() : void
      {
      }
      
      public function deActivate() : void
      {
         (this.§5!^§.getItemByName("TextField_PasswordField_Register") as §%`§).§=!=§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§8U§);
         (this.§5!^§.getItemByName("TextField_PasswordFieldRepeat_Register") as §%`§).§=!=§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§8U§);
         this.§^!5§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§&M§);
         this.§^!5§.stage.removeEventListener(FocusEvent.KEY_FOCUS_CHANGE,this.§"S§);
         this.§^!5§.stage.removeEventListener(FocusEvent.MOUSE_FOCUS_CHANGE,this.§>!@§);
      }
      
      public function dispose() : void
      {
         this.deActivate();
         this.§^!5§.§@!&§.removeEventListener(LoginHandlerEvent.ERROR,this.§#!<§);
         this.§^!5§.§@!&§.removeEventListener(LoginHandlerEvent.§<9§,this.§;!t§);
         (this.§5!^§.getItemByName("TextField_PasswordField_Register") as §%`§).§=!=§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§'Y§);
         (this.§5!^§.getItemByName("TextField_PasswordFieldRepeat_Register") as §%`§).§=!=§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§'Y§);
         (this.§5!^§.getItemByName("TextField_NickNameField_Register") as §%`§).§=!=§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§'Y§);
         this.§^!5§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§&M§);
      }
      
      private function §'Y§(param1:MouseEvent) : void
      {
         this.§5!^§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         this.§5!^§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         this.§5!^§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
      }
      
      public function activate() : void
      {
         this.§5!^§.setObjectToFront(this.§5!^§.getItemByName("Container_Register_Tab"));
         this.§^!5§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§&M§);
         this.§5!^§.getItemByName("TextField_UserNameField").setVisibility(false);
         this.§5!^§.getItemByName("TextField_PasswordField").setVisibility(false);
         this.§5!^§.getItemByName("Button_Submit").setVisibility(false);
         this.§5!^§.getItemByName("Checkbox_RememberMe").setVisibility(false);
         this.§5!^§.getItemByName("TextField_PasswordField_Register").setVisibility(true);
         this.§5!^§.getItemByName("TextField_PasswordFieldRepeat_Register").setVisibility(true);
         this.§5!^§.getItemByName("TextField_NickNameField_Register").setVisibility(true);
         this.§5!^§.getItemByName("Checkbox_RememberMe_Register").setVisibility(true);
         this.§5!^§.getItemByName("Button_Submit_Register").setVisibility(true);
         var _loc1_:§%`§ = this.§5!^§.getItemByName("TextField_NickNameField_Register") as §%`§;
         var _loc2_:§%`§ = this.§5!^§.getItemByName("TextField_PasswordField_Register") as §%`§;
         var _loc3_:§%`§ = this.§5!^§.getItemByName("TextField_PasswordFieldRepeat_Register") as §%`§;
         _loc1_.§=!=§.restrict = § L§.§-"§;
         _loc1_.§=!=§.maxChars = § L§.§1y§;
         _loc2_.§=!=§.maxChars = § L§.§3!=§;
         _loc3_.§=!=§.maxChars = § L§.§3!=§;
         _loc1_.§=!=§.tabIndex = 1;
         _loc2_.§=!=§.tabIndex = 2;
         _loc3_.§=!=§.tabIndex = 3;
         _loc1_.§=!=§.addEventListener(KeyboardEvent.KEY_DOWN,this.§[!c§);
         _loc2_.§=!=§.addEventListener(KeyboardEvent.KEY_DOWN,this.§8U§);
         _loc3_.§=!=§.addEventListener(KeyboardEvent.KEY_DOWN,this.§8U§);
         this.§^!5§.§4[§();
      }
      
      public function §+M§() : void
      {
         var _loc2_:String = (this.§5!^§.getItemByName("TextField_NickNameField_Register") as §%`§).§=!=§.text;
         var _loc3_:String = (this.§5!^§.getItemByName("TextField_PasswordField_Register") as §%`§).§=!=§.text;
         var _loc4_:String = (this.§5!^§.getItemByName("TextField_PasswordFieldRepeat_Register") as §%`§).§=!=§.text;
         var _loc5_:String = §`!$§.§>!P§.§?!2§();
         var _loc6_:String = §`!$§.§>!P§.§?""§();
         this.§&3§();
         this.§^!5§.§0p§ = _loc2_;
         this.§^!5§.§@J§ = _loc3_;
         var _loc7_:int = 5;
         if(_loc2_.length == 0)
         {
            this.reportError(§4![§.NICKNAME_MISSING);
            return;
         }
         if(_loc2_.length < _loc7_)
         {
            this.reportError(§4![§.NICKNAME_LENGTH);
            return;
         }
         if(!isNaN(Number(_loc2_)))
         {
            this.reportError(§4![§.NOT_ALLOWED_TO_PUT_ONLY_NUMBERS_IN_NICKNAME);
            return;
         }
         if(_loc3_.length == 0)
         {
            this.reportError(§4![§.PASSWORD_MISSING);
            return;
         }
         if(_loc3_.length < 5)
         {
            this.reportError(§4![§.PASSWORD_LENGTH);
            return;
         }
         if(_loc4_.length < 5)
         {
            this.reportError(§4![§.PASSWORDS_DONT_MATCH);
            return;
         }
         if(_loc3_ != _loc4_)
         {
            this.reportError(§4![§.PASSWORDS_DONT_MATCH);
            return;
         }
         var _loc10_:Object = {
            "nickName":_loc2_,
            "password":_loc3_,
            "locale":_loc6_,
            "language":_loc5_
         };
         this.§^!5§.§@!&§.addEventListener(LoginHandlerEvent.§<9§,this.§;!t§);
         this.§^!5§.§@!&§.addEventListener(LoginHandlerEvent.ERROR,this.§#!<§);
         this.§^!5§.§@!&§.§`!Z§(_loc10_);
      }
      
      private function §;!t§(param1:LoginHandlerEvent) : void
      {
         this.§^!5§.§@!&§.removeEventListener(LoginHandlerEvent.ERROR,this.§#!<§);
         this.§^!5§.§@!&§.removeEventListener(LoginHandlerEvent.§<9§,this.§;!t§);
         this.§^!5§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§&M§);
         this.§^!5§.§+"&§();
         (§,!X§.§>!G§ as AngryBirdsCustom).§<0§.§2!?§ = true;
         this.§^!5§.close();
         (§,!X§.§>!G§ as AngryBirdsCustom).§@b§.§#!r§();
      }
      
      private function §#!<§(param1:LoginHandlerEvent) : void
      {
         this.§^!5§.§@!&§.removeEventListener(LoginHandlerEvent.ERROR,this.§#!<§);
         this.§^!5§.§@!&§.removeEventListener(LoginHandlerEvent.§<9§,this.§;!t§);
         if(param1.§;P§ == §4![§.PLAYER_ID_USED && param1.field.length > 0)
         {
            this.§1!C§(param1.field);
         }
         else
         {
            this.reportError(param1.§;P§);
         }
      }
      
      private function §1!C§(param1:String) : void
      {
         var _loc2_:TextField = (this.§5!^§.getItemByName("TextField_NickNameField_Register") as §%`§).§=!=§ as TextField;
         this.§^!5§.stage.focus = _loc2_;
         _loc2_.setSelection(_loc2_.text.length,_loc2_.text.length);
         this.§5!^§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
         (§,!X§.§>!G§ as AngryBirdsCustom).§5!K§.closePopup(§>!&§.§0?§);
         this.§%"-§ = new §,!D§(§4![§.PLAYER_ID_USED_SUGGESTION,§,!D§.§+]§,true);
         §,!X§.§>!G§.§5!K§.openPopup(this.§%"-§);
         (this.§%"-§.container.getItemByName("TextField_NicknameSuggestion") as §%`§).setText(param1);
         this.§%"-§.container.getItemByName("TextField_NicknameSuggestion").visible = true;
         this.§^!5§.stage.addEventListener(FocusEvent.KEY_FOCUS_CHANGE,this.§"S§);
         this.§^!5§.stage.addEventListener(FocusEvent.MOUSE_FOCUS_CHANGE,this.§>!@§);
      }
      
      private function §"S§(param1:FocusEvent) : void
      {
         if(this.§%"-§)
         {
            this.§%"-§.§8k§();
            this.§^!5§.stage.removeEventListener(FocusEvent.KEY_FOCUS_CHANGE,this.§"S§);
            this.§^!5§.stage.removeEventListener(FocusEvent.MOUSE_FOCUS_CHANGE,this.§>!@§);
         }
      }
      
      private function §>!@§(param1:FocusEvent) : void
      {
         var _loc2_:TextField = (this.§5!^§.getItemByName("TextField_PasswordField_Register") as §%`§).§=!=§ as TextField;
         var _loc3_:TextField = (this.§5!^§.getItemByName("TextField_PasswordFieldRepeat_Register") as §%`§).§=!=§ as TextField;
         if(this.§%"-§ && (param1.relatedObject == _loc2_ || param1.relatedObject == _loc3_))
         {
            this.§%"-§.§8k§();
            this.§^!5§.stage.removeEventListener(FocusEvent.KEY_FOCUS_CHANGE,this.§"S§);
            this.§^!5§.stage.removeEventListener(FocusEvent.MOUSE_FOCUS_CHANGE,this.§>!@§);
         }
      }
      
      private function reportError(param1:String) : void
      {
         switch(param1)
         {
            case §4![§.CONNECTION_ERROR_RETRY:
               this.§5!^§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               this.§5!^§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(true);
               this.§5!^§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            case §4![§.NICKNAME_LENGTH:
            case §4![§.NOT_ALLOWED_TO_PUT_ONLY_NUMBERS_IN_NICKNAME:
               this.§5!^§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            case §4![§.PASSWORD_LENGTH:
            case §4![§.PASSWORD_MISSING:
               this.§5!^§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               break;
            case §4![§.PASSWORDS_DONT_MATCH:
               this.§5!^§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               this.§5!^§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(true);
               break;
            case §4![§.FIELD_LENGTH:
               this.§5!^§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            case §4![§.FIELD_NOT_VALID:
               this.§5!^§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            default:
               this.§5!^§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               this.§5!^§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(true);
               this.§5!^§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
         }
         §,!X§.§>!G§.§5!K§.openPopup(new §,!D§(param1,§,!D§.§+]§));
      }
      
      private function §&3§() : void
      {
         this.§5!^§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         this.§5!^§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         this.§5!^§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
      }
      
      private function §]e§(param1:uint, param2:uint, param3:RegExp, param4:String) : void
      {
         var _loc5_:String = String.fromCharCode(param1);
         if(param2 == Keyboard.BACKSPACE || param2 == Keyboard.SHIFT || param2 == Keyboard.CAPS_LOCK || param2 == Keyboard.TAB || param2 == Keyboard.LEFT || param2 == Keyboard.RIGHT || param2 == Keyboard.ENTER)
         {
            return;
         }
         if(!_loc5_.match(param3) && param4)
         {
            (§,!X§.§>!G§ as AngryBirdsCustom).§5!K§.openPopup(new §,!D§(param4,§,!D§.§+]§));
         }
      }
      
      private function §[!c§(param1:KeyboardEvent) : void
      {
         var _loc2_:uint = param1.charCode;
         var _loc3_:uint = param1.keyCode;
         var _loc4_:RegExp = /[A-Za-z0-9]/;
         this.§]e§(_loc2_,_loc3_,_loc4_,§4![§.ONLY_LETTERS_AND_NUMBERS_ALLOWED);
      }
      
      private function §8U§(param1:KeyboardEvent) : void
      {
         var _loc2_:uint = param1.charCode;
         var _loc3_:uint = param1.keyCode;
         var _loc4_:RegExp = /[*]/;
         this.§]e§(_loc2_,_loc3_,_loc4_,null);
      }
      
      private function §&M§(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.ENTER)
         {
            (§,!X§.§>!G§ as AngryBirdsCustom).§5!K§.closePopup(§>!&§.§0?§);
            this.§^!5§.stage.removeEventListener(FocusEvent.KEY_FOCUS_CHANGE,this.§"S§);
            this.§^!5§.stage.removeEventListener(FocusEvent.MOUSE_FOCUS_CHANGE,this.§>!@§);
            this.§+M§();
            return;
         }
      }
   }
}
