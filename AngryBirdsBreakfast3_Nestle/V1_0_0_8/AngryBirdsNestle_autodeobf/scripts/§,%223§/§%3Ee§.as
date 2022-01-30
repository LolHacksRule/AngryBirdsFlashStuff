package §,"3§
{
   import § S§.§4&§;
   import §%f§.§[@§;
   import §&!>§.LoginHandlerEvent;
   import §'&§.§3W§;
   import §2!"§.§8K§;
   import §;"+§.§"!I§;
   import §;"+§.§^!i§;
   import §>P§.§-U§;
   import §?I§.§'!<§;
   import flash.events.FocusEvent;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   
   public class §>e§
   {
       
      
      private var §7P§:§^!i§;
      
      private var §]Q§:§3W§;
      
      private var §6!"§:§'!<§;
      
      public function §>e§(param1:§^!i§, param2:§3W§)
      {
         super();
         this.§7P§ = param1;
         this.§]Q§ = param2;
      }
      
      public function §=!s§() : void
      {
         var _loc1_:§-U§ = this.§7P§.getItemByName("Checkbox_RememberMe_Register") as §-U§;
         if(this.§]Q§.rememberMeToggled)
         {
            _loc1_.setComponentState(§-U§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc1_.setComponentState(§-U§.§;!G§);
         }
         (this.§7P§.getItemByName("TextField_PasswordField_Register") as §"!I§).§6s§.addEventListener(MouseEvent.MOUSE_DOWN,this.§""$§);
         (this.§7P§.getItemByName("TextField_PasswordFieldRepeat_Register") as §"!I§).§6s§.addEventListener(MouseEvent.MOUSE_DOWN,this.§""$§);
         (this.§7P§.getItemByName("TextField_NickNameField_Register") as §"!I§).§6s§.addEventListener(MouseEvent.MOUSE_DOWN,this.§""$§);
      }
      
      public function updateTextFields() : void
      {
      }
      
      public function deActivate() : void
      {
         (this.§7P§.getItemByName("TextField_PasswordField_Register") as §"!I§).§6s§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§@M§);
         (this.§7P§.getItemByName("TextField_PasswordFieldRepeat_Register") as §"!I§).§6s§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§@M§);
         this.§]Q§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§ !?§);
         this.§]Q§.stage.removeEventListener(FocusEvent.KEY_FOCUS_CHANGE,this.§'!a§);
         this.§]Q§.stage.removeEventListener(FocusEvent.MOUSE_FOCUS_CHANGE,this.§]!Q§);
      }
      
      public function dispose() : void
      {
         this.deActivate();
         this.§]Q§.§-""§.removeEventListener(LoginHandlerEvent.ERROR,this.§,i§);
         this.§]Q§.§-""§.removeEventListener(LoginHandlerEvent.§%P§,this.§%!s§);
         (this.§7P§.getItemByName("TextField_PasswordField_Register") as §"!I§).§6s§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§""$§);
         (this.§7P§.getItemByName("TextField_PasswordFieldRepeat_Register") as §"!I§).§6s§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§""$§);
         (this.§7P§.getItemByName("TextField_NickNameField_Register") as §"!I§).§6s§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§""$§);
         this.§]Q§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§ !?§);
      }
      
      private function §""$§(param1:MouseEvent) : void
      {
         this.§7P§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         this.§7P§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         this.§7P§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
      }
      
      public function activate() : void
      {
         this.§7P§.setObjectToFront(this.§7P§.getItemByName("Container_Register_Tab"));
         this.§]Q§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§ !?§);
         this.§7P§.getItemByName("TextField_UserNameField").setVisibility(false);
         this.§7P§.getItemByName("TextField_PasswordField").setVisibility(false);
         this.§7P§.getItemByName("Button_Submit").setVisibility(false);
         this.§7P§.getItemByName("Checkbox_RememberMe").setVisibility(false);
         this.§7P§.getItemByName("TextField_PasswordField_Register").setVisibility(true);
         this.§7P§.getItemByName("TextField_PasswordFieldRepeat_Register").setVisibility(true);
         this.§7P§.getItemByName("TextField_NickNameField_Register").setVisibility(true);
         this.§7P§.getItemByName("Checkbox_RememberMe_Register").setVisibility(true);
         this.§7P§.getItemByName("Button_Submit_Register").setVisibility(true);
         var _loc1_:§"!I§ = this.§7P§.getItemByName("TextField_NickNameField_Register") as §"!I§;
         var _loc2_:§"!I§ = this.§7P§.getItemByName("TextField_PasswordField_Register") as §"!I§;
         var _loc3_:§"!I§ = this.§7P§.getItemByName("TextField_PasswordFieldRepeat_Register") as §"!I§;
         _loc1_.§6s§.restrict = §3W§.§`0§;
         _loc1_.§6s§.maxChars = §3W§.§6!i§;
         _loc2_.§6s§.maxChars = §3W§.§0§;
         _loc3_.§6s§.maxChars = §3W§.§0§;
         _loc1_.§6s§.tabIndex = 1;
         _loc2_.§6s§.tabIndex = 2;
         _loc3_.§6s§.tabIndex = 3;
         _loc1_.§6s§.addEventListener(KeyboardEvent.KEY_DOWN,this.§!!#§);
         _loc2_.§6s§.addEventListener(KeyboardEvent.KEY_DOWN,this.§@M§);
         _loc3_.§6s§.addEventListener(KeyboardEvent.KEY_DOWN,this.§@M§);
         this.§]Q§.§1!Y§();
      }
      
      public function § use§() : void
      {
         var _loc2_:String = (this.§7P§.getItemByName("TextField_NickNameField_Register") as §"!I§).§6s§.text;
         var _loc3_:String = (this.§7P§.getItemByName("TextField_PasswordField_Register") as §"!I§).§6s§.text;
         var _loc4_:String = (this.§7P§.getItemByName("TextField_PasswordFieldRepeat_Register") as §"!I§).§6s§.text;
         var _loc5_:String = §[@§.§"e§.§1-§();
         var _loc6_:String = §[@§.§"e§.§]f§();
         this.§]"#§();
         this.§]Q§.§^"-§ = _loc2_;
         this.§]Q§.§"!W§ = _loc3_;
         var _loc7_:int = 5;
         if(_loc2_.length == 0)
         {
            this.reportError(§8K§.NICKNAME_MISSING);
            return;
         }
         if(_loc2_.length < _loc7_)
         {
            this.reportError(§8K§.NICKNAME_LENGTH);
            return;
         }
         if(!isNaN(Number(_loc2_)))
         {
            this.reportError(§8K§.NOT_ALLOWED_TO_PUT_ONLY_NUMBERS_IN_NICKNAME);
            return;
         }
         if(_loc3_.length == 0)
         {
            this.reportError(§8K§.PASSWORD_MISSING);
            return;
         }
         if(_loc3_.length < 5)
         {
            this.reportError(§8K§.PASSWORD_LENGTH);
            return;
         }
         if(_loc4_.length < 5)
         {
            this.reportError(§8K§.PASSWORDS_DONT_MATCH);
            return;
         }
         if(_loc3_ != _loc4_)
         {
            this.reportError(§8K§.PASSWORDS_DONT_MATCH);
            return;
         }
         var _loc10_:Object = {
            "nickName":_loc2_,
            "password":_loc3_,
            "locale":_loc6_,
            "language":_loc5_
         };
         this.§]Q§.§-""§.addEventListener(LoginHandlerEvent.§%P§,this.§%!s§);
         this.§]Q§.§-""§.addEventListener(LoginHandlerEvent.ERROR,this.§,i§);
         this.§]Q§.§-""§.§[!8§(_loc10_);
      }
      
      private function §%!s§(param1:LoginHandlerEvent) : void
      {
         this.§]Q§.§-""§.removeEventListener(LoginHandlerEvent.ERROR,this.§,i§);
         this.§]Q§.§-""§.removeEventListener(LoginHandlerEvent.§%P§,this.§%!s§);
         this.§]Q§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§ !?§);
         this.§]Q§.§in §();
         (§-O§.§5!1§ as AngryBirdsCustom).§;!1§.§`!K§ = true;
         this.§]Q§.close();
         (§-O§.§5!1§ as AngryBirdsCustom).§9]§.§;!D§();
      }
      
      private function §,i§(param1:LoginHandlerEvent) : void
      {
         this.§]Q§.§-""§.removeEventListener(LoginHandlerEvent.ERROR,this.§,i§);
         this.§]Q§.§-""§.removeEventListener(LoginHandlerEvent.§%P§,this.§%!s§);
         if(param1.§%!,§ == §8K§.PLAYER_ID_USED && param1.field.length > 0)
         {
            this.§9;§(param1.field);
         }
         else
         {
            this.reportError(param1.§%!,§);
         }
      }
      
      private function §9;§(param1:String) : void
      {
         var _loc2_:TextField = (this.§7P§.getItemByName("TextField_NickNameField_Register") as §"!I§).§6s§ as TextField;
         this.§]Q§.stage.focus = _loc2_;
         _loc2_.setSelection(_loc2_.text.length,_loc2_.text.length);
         this.§7P§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
         (§-O§.§5!1§ as AngryBirdsCustom).§-6§.closePopup(§4&§.§;!C§);
         this.§6!"§ = new §'!<§(§8K§.PLAYER_ID_USED_SUGGESTION,§'!<§.§%!v§,true);
         §-O§.§5!1§.§-6§.openPopup(this.§6!"§);
         (this.§6!"§.container.getItemByName("TextField_NicknameSuggestion") as §"!I§).setText(param1);
         this.§6!"§.container.getItemByName("TextField_NicknameSuggestion").visible = true;
         this.§]Q§.stage.addEventListener(FocusEvent.KEY_FOCUS_CHANGE,this.§'!a§);
         this.§]Q§.stage.addEventListener(FocusEvent.MOUSE_FOCUS_CHANGE,this.§]!Q§);
      }
      
      private function §'!a§(param1:FocusEvent) : void
      {
         if(this.§6!"§)
         {
            this.§6!"§.§#!^§();
            this.§]Q§.stage.removeEventListener(FocusEvent.KEY_FOCUS_CHANGE,this.§'!a§);
            this.§]Q§.stage.removeEventListener(FocusEvent.MOUSE_FOCUS_CHANGE,this.§]!Q§);
         }
      }
      
      private function §]!Q§(param1:FocusEvent) : void
      {
         var _loc2_:TextField = (this.§7P§.getItemByName("TextField_PasswordField_Register") as §"!I§).§6s§ as TextField;
         var _loc3_:TextField = (this.§7P§.getItemByName("TextField_PasswordFieldRepeat_Register") as §"!I§).§6s§ as TextField;
         if(this.§6!"§ && (param1.relatedObject == _loc2_ || param1.relatedObject == _loc3_))
         {
            this.§6!"§.§#!^§();
            this.§]Q§.stage.removeEventListener(FocusEvent.KEY_FOCUS_CHANGE,this.§'!a§);
            this.§]Q§.stage.removeEventListener(FocusEvent.MOUSE_FOCUS_CHANGE,this.§]!Q§);
         }
      }
      
      private function reportError(param1:String) : void
      {
         switch(param1)
         {
            case §8K§.CONNECTION_ERROR_RETRY:
               this.§7P§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               this.§7P§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(true);
               this.§7P§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            case §8K§.NICKNAME_LENGTH:
            case §8K§.NOT_ALLOWED_TO_PUT_ONLY_NUMBERS_IN_NICKNAME:
               this.§7P§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            case §8K§.PASSWORD_LENGTH:
            case §8K§.PASSWORD_MISSING:
               this.§7P§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               break;
            case §8K§.PASSWORDS_DONT_MATCH:
               this.§7P§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               this.§7P§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(true);
               break;
            case §8K§.FIELD_LENGTH:
               this.§7P§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            case §8K§.FIELD_NOT_VALID:
               this.§7P§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            default:
               this.§7P§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               this.§7P§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(true);
               this.§7P§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
         }
         §-O§.§5!1§.§-6§.openPopup(new §'!<§(param1,§'!<§.§%!v§));
      }
      
      private function §]"#§() : void
      {
         this.§7P§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         this.§7P§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         this.§7P§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
      }
      
      private function §;v§(param1:uint, param2:uint, param3:RegExp, param4:String) : void
      {
         var _loc5_:String = String.fromCharCode(param1);
         if(param2 == Keyboard.BACKSPACE || param2 == Keyboard.SHIFT || param2 == Keyboard.CAPS_LOCK || param2 == Keyboard.TAB || param2 == Keyboard.LEFT || param2 == Keyboard.RIGHT || param2 == Keyboard.ENTER)
         {
            return;
         }
         if(!_loc5_.match(param3) && param4)
         {
            (§-O§.§5!1§ as AngryBirdsCustom).§-6§.openPopup(new §'!<§(param4,§'!<§.§%!v§));
         }
      }
      
      private function §!!#§(param1:KeyboardEvent) : void
      {
         var _loc2_:uint = param1.charCode;
         var _loc3_:uint = param1.keyCode;
         var _loc4_:RegExp = /[A-Za-z0-9]/;
         this.§;v§(_loc2_,_loc3_,_loc4_,§8K§.ONLY_LETTERS_AND_NUMBERS_ALLOWED);
      }
      
      private function §@M§(param1:KeyboardEvent) : void
      {
         var _loc2_:uint = param1.charCode;
         var _loc3_:uint = param1.keyCode;
         var _loc4_:RegExp = /[*]/;
         this.§;v§(_loc2_,_loc3_,_loc4_,null);
      }
      
      private function § !?§(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.ENTER)
         {
            (§-O§.§5!1§ as AngryBirdsCustom).§-6§.closePopup(§4&§.§;!C§);
            this.§]Q§.stage.removeEventListener(FocusEvent.KEY_FOCUS_CHANGE,this.§'!a§);
            this.§]Q§.stage.removeEventListener(FocusEvent.MOUSE_FOCUS_CHANGE,this.§]!Q§);
            this.§ use§();
            return;
         }
      }
   }
}
