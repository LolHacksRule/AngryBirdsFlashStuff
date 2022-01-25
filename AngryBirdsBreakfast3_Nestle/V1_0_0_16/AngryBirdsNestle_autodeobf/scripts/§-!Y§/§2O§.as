package §-!Y§
{
   import §&!y§.§14§;
   import §'!3§.§ !3§;
   import §'"!§.§-!g§;
   import §1!i§.§`!t§;
   import §2u§.§,6§;
   import §2u§.§7!&§;
   import §4!i§.§@"#§;
   import §4[§.LoginHandlerEvent;
   import §[!5§.§2p§;
   import flash.events.FocusEvent;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.events.TextEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   
   public class §2O§
   {
       
      
      private var §;"7§:§,6§;
      
      private var §8!"§:§14§;
      
      private var §@&§:§ !3§;
      
      public function §2O§(param1:§,6§, param2:§14§)
      {
         super();
         this.§;"7§ = param1;
         this.§8!"§ = param2;
      }
      
      public function §'!u§() : void
      {
         var _loc1_:§-!g§ = this.§;"7§.getItemByName("Checkbox_RememberMe_Register") as §-!g§;
         if(this.§8!"§.rememberMeToggled)
         {
            _loc1_.setComponentState(§-!g§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc1_.setComponentState(§-!g§.§+O§);
         }
         (this.§;"7§.getItemByName("TextField_PasswordField_Register") as §7!&§).§'!"§.addEventListener(MouseEvent.MOUSE_DOWN,this.§7N§);
         (this.§;"7§.getItemByName("TextField_PasswordFieldRepeat_Register") as §7!&§).§'!"§.addEventListener(MouseEvent.MOUSE_DOWN,this.§7N§);
         (this.§;"7§.getItemByName("TextField_NickNameField_Register") as §7!&§).§'!"§.addEventListener(MouseEvent.MOUSE_DOWN,this.§7N§);
      }
      
      public function updateTextFields() : void
      {
      }
      
      public function deActivate() : void
      {
         (this.§;"7§.getItemByName("TextField_NickNameField_Register") as §7!&§).§'!"§.removeEventListener(TextEvent.TEXT_INPUT,this.§ W§);
         (this.§;"7§.getItemByName("TextField_PasswordField_Register") as §7!&§).§'!"§.removeEventListener(TextEvent.TEXT_INPUT,this.§%g§);
         (this.§;"7§.getItemByName("TextField_PasswordFieldRepeat_Register") as §7!&§).§'!"§.removeEventListener(TextEvent.TEXT_INPUT,this.§%g§);
         this.§8!"§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§!!d§);
         this.§8!"§.stage.removeEventListener(FocusEvent.KEY_FOCUS_CHANGE,this.§51§);
         this.§8!"§.stage.removeEventListener(FocusEvent.MOUSE_FOCUS_CHANGE,this.§"o§);
      }
      
      public function dispose() : void
      {
         this.deActivate();
         this.§8!"§.§6!"§.removeEventListener(LoginHandlerEvent.ERROR,this.§`"#§);
         this.§8!"§.§6!"§.removeEventListener(LoginHandlerEvent.§`!B§,this.§=?§);
         (this.§;"7§.getItemByName("TextField_PasswordField_Register") as §7!&§).§'!"§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§7N§);
         (this.§;"7§.getItemByName("TextField_PasswordFieldRepeat_Register") as §7!&§).§'!"§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§7N§);
         (this.§;"7§.getItemByName("TextField_NickNameField_Register") as §7!&§).§'!"§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§7N§);
         this.§8!"§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§!!d§);
      }
      
      private function §7N§(param1:MouseEvent) : void
      {
         this.§;"7§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         this.§;"7§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         this.§;"7§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
      }
      
      public function activate() : void
      {
         this.§;"7§.setObjectToFront(this.§;"7§.getItemByName("Container_Register_Tab"));
         this.§8!"§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§!!d§);
         this.§;"7§.getItemByName("TextField_UserNameField").setVisibility(false);
         this.§;"7§.getItemByName("TextField_PasswordField").setVisibility(false);
         this.§;"7§.getItemByName("Button_Submit").setVisibility(false);
         this.§;"7§.getItemByName("Checkbox_RememberMe").setVisibility(false);
         this.§;"7§.getItemByName("TextField_PasswordField_Register").setVisibility(true);
         this.§;"7§.getItemByName("TextField_PasswordFieldRepeat_Register").setVisibility(true);
         this.§;"7§.getItemByName("TextField_NickNameField_Register").setVisibility(true);
         this.§;"7§.getItemByName("Checkbox_RememberMe_Register").setVisibility(true);
         this.§;"7§.getItemByName("Button_Submit_Register").setVisibility(true);
         var _loc1_:§7!&§ = this.§;"7§.getItemByName("TextField_NickNameField_Register") as §7!&§;
         var _loc2_:§7!&§ = this.§;"7§.getItemByName("TextField_PasswordField_Register") as §7!&§;
         var _loc3_:§7!&§ = this.§;"7§.getItemByName("TextField_PasswordFieldRepeat_Register") as §7!&§;
         _loc1_.§'!"§.restrict = §14§.§4i§;
         _loc1_.§'!"§.maxChars = §14§.§@u§;
         _loc2_.§'!"§.maxChars = §14§.§+]§;
         _loc3_.§'!"§.maxChars = §14§.§+]§;
         _loc1_.§'!"§.tabIndex = 1;
         _loc2_.§'!"§.tabIndex = 2;
         _loc3_.§'!"§.tabIndex = 3;
         _loc1_.§'!"§.addEventListener(TextEvent.TEXT_INPUT,this.§ W§);
         _loc2_.§'!"§.addEventListener(TextEvent.TEXT_INPUT,this.§%g§);
         _loc3_.§'!"§.addEventListener(TextEvent.TEXT_INPUT,this.§%g§);
         this.§8!"§.§^o§();
      }
      
      private function § W§(param1:TextEvent) : void
      {
         var _loc2_:RegExp = /[A-Za-z0-9]/;
         var _loc3_:String = §2p§.ONLY_LETTERS_AND_NUMBERS_ALLOWED;
         if(!param1.text.match(_loc2_) && _loc3_)
         {
            (§ !4§.§%"7§ as AngryBirdsCustom).§+!J§.openPopup(new § !3§(_loc3_,§ !3§.§0!3§));
         }
      }
      
      private function §%g§(param1:TextEvent) : void
      {
         var _loc2_:RegExp = /[*]/;
         if(!param1.text.match(_loc2_) && null)
         {
            (§ !4§.§%"7§ as AngryBirdsCustom).§+!J§.openPopup(new § !3§(null,§ !3§.§0!3§));
         }
      }
      
      public function §>!m§() : void
      {
         var _loc2_:String = (this.§;"7§.getItemByName("TextField_NickNameField_Register") as §7!&§).§'!"§.text;
         var _loc3_:String = (this.§;"7§.getItemByName("TextField_PasswordField_Register") as §7!&§).§'!"§.text;
         var _loc4_:String = (this.§;"7§.getItemByName("TextField_PasswordFieldRepeat_Register") as §7!&§).§'!"§.text;
         var _loc5_:String = §@"#§.§,2§.§2"2§();
         var _loc6_:String = §@"#§.§,2§.§0!x§();
         this.§9<§();
         this.§8!"§.§=!%§ = _loc2_;
         this.§8!"§.§-!6§ = _loc3_;
         var _loc7_:int = 5;
         if(_loc2_.length == 0)
         {
            this.reportError(§2p§.NICKNAME_MISSING);
            return;
         }
         if(_loc2_.length < _loc7_)
         {
            this.reportError(§2p§.NICKNAME_LENGTH);
            return;
         }
         if(!isNaN(Number(_loc2_)))
         {
            this.reportError(§2p§.NOT_ALLOWED_TO_PUT_ONLY_NUMBERS_IN_NICKNAME);
            return;
         }
         if(_loc3_.length == 0)
         {
            this.reportError(§2p§.PASSWORD_MISSING);
            return;
         }
         if(_loc3_.length < 5)
         {
            this.reportError(§2p§.PASSWORD_LENGTH);
            return;
         }
         if(_loc4_.length < 5)
         {
            this.reportError(§2p§.PASSWORDS_DONT_MATCH);
            return;
         }
         if(_loc3_ != _loc4_)
         {
            this.reportError(§2p§.PASSWORDS_DONT_MATCH);
            return;
         }
         var _loc10_:Object = {
            "nickName":_loc2_,
            "password":_loc3_,
            "locale":_loc6_,
            "language":_loc5_
         };
         this.§8!"§.§6!"§.addEventListener(LoginHandlerEvent.§`!B§,this.§=?§);
         this.§8!"§.§6!"§.addEventListener(LoginHandlerEvent.ERROR,this.§`"#§);
         this.§8!"§.§6!"§.§^!h§(_loc10_);
      }
      
      private function §=?§(param1:LoginHandlerEvent) : void
      {
         this.§8!"§.§6!"§.removeEventListener(LoginHandlerEvent.ERROR,this.§`"#§);
         this.§8!"§.§6!"§.removeEventListener(LoginHandlerEvent.§`!B§,this.§=?§);
         this.§8!"§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§!!d§);
         this.§8!"§.§-<§();
         (§ !4§.§%"7§ as AngryBirdsCustom).§+Y§.§5!z§ = true;
         this.§8!"§.close();
         (§ !4§.§%"7§ as AngryBirdsCustom).§<=§.§@!0§();
      }
      
      private function §`"#§(param1:LoginHandlerEvent) : void
      {
         this.§8!"§.§6!"§.removeEventListener(LoginHandlerEvent.ERROR,this.§`"#§);
         this.§8!"§.§6!"§.removeEventListener(LoginHandlerEvent.§`!B§,this.§=?§);
         if(param1.§1X§ == §2p§.PLAYER_ID_USED && param1.field.length > 0)
         {
            this.§12§(param1.field);
         }
         else
         {
            this.reportError(param1.§1X§);
         }
      }
      
      private function §12§(param1:String) : void
      {
         var _loc2_:TextField = (this.§;"7§.getItemByName("TextField_NickNameField_Register") as §7!&§).§'!"§ as TextField;
         this.§8!"§.stage.focus = _loc2_;
         _loc2_.setSelection(_loc2_.text.length,_loc2_.text.length);
         this.§;"7§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
         (§ !4§.§%"7§ as AngryBirdsCustom).§+!J§.closePopup(§`!t§.§9r§);
         this.§@&§ = new § !3§(§2p§.PLAYER_ID_USED_SUGGESTION,§ !3§.§0!3§,true);
         § !4§.§%"7§.§+!J§.openPopup(this.§@&§);
         (this.§@&§.container.getItemByName("TextField_NicknameSuggestion") as §7!&§).setText(param1);
         this.§@&§.container.getItemByName("TextField_NicknameSuggestion").visible = true;
         this.§8!"§.stage.addEventListener(FocusEvent.KEY_FOCUS_CHANGE,this.§51§);
         this.§8!"§.stage.addEventListener(FocusEvent.MOUSE_FOCUS_CHANGE,this.§"o§);
      }
      
      private function §51§(param1:FocusEvent) : void
      {
         if(this.§@&§)
         {
            this.§@&§.§2!l§();
            this.§8!"§.stage.removeEventListener(FocusEvent.KEY_FOCUS_CHANGE,this.§51§);
            this.§8!"§.stage.removeEventListener(FocusEvent.MOUSE_FOCUS_CHANGE,this.§"o§);
         }
      }
      
      private function §"o§(param1:FocusEvent) : void
      {
         var _loc2_:TextField = (this.§;"7§.getItemByName("TextField_PasswordField_Register") as §7!&§).§'!"§ as TextField;
         var _loc3_:TextField = (this.§;"7§.getItemByName("TextField_PasswordFieldRepeat_Register") as §7!&§).§'!"§ as TextField;
         if(this.§@&§ && (param1.relatedObject == _loc2_ || param1.relatedObject == _loc3_))
         {
            this.§@&§.§2!l§();
            this.§8!"§.stage.removeEventListener(FocusEvent.KEY_FOCUS_CHANGE,this.§51§);
            this.§8!"§.stage.removeEventListener(FocusEvent.MOUSE_FOCUS_CHANGE,this.§"o§);
         }
      }
      
      private function reportError(param1:String) : void
      {
         switch(param1)
         {
            case §2p§.CONNECTION_ERROR_RETRY:
               this.§;"7§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               this.§;"7§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(true);
               this.§;"7§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            case §2p§.NICKNAME_LENGTH:
            case §2p§.NOT_ALLOWED_TO_PUT_ONLY_NUMBERS_IN_NICKNAME:
               this.§;"7§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            case §2p§.PASSWORD_LENGTH:
            case §2p§.PASSWORD_MISSING:
               this.§;"7§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               break;
            case §2p§.PASSWORDS_DONT_MATCH:
               this.§;"7§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               this.§;"7§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(true);
               break;
            case §2p§.FIELD_LENGTH:
               this.§;"7§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            case §2p§.FIELD_NOT_VALID:
               this.§;"7§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            default:
               this.§;"7§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               this.§;"7§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(true);
               this.§;"7§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
         }
         § !4§.§%"7§.§+!J§.openPopup(new § !3§(param1,§ !3§.§0!3§));
      }
      
      private function §9<§() : void
      {
         this.§;"7§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         this.§;"7§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         this.§;"7§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
      }
      
      private function §!!d§(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.ENTER)
         {
            (§ !4§.§%"7§ as AngryBirdsCustom).§+!J§.closePopup(§`!t§.§9r§);
            this.§8!"§.stage.removeEventListener(FocusEvent.KEY_FOCUS_CHANGE,this.§51§);
            this.§8!"§.stage.removeEventListener(FocusEvent.MOUSE_FOCUS_CHANGE,this.§"o§);
            this.§>!m§();
            return;
         }
      }
   }
}
