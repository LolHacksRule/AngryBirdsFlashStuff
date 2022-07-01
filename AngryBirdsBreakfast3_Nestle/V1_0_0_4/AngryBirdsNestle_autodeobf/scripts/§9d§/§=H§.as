package §9d§
{
   import §%9§.§'F§;
   import §,!9§.§>"$§;
   import §-!G§.LoginHandlerEvent;
   import §8D§.§ " §;
   import §?N§.§9r§;
   import §@#§.§9!'§;
   import §@#§.§>L§;
   import §[!b§.§]"-§;
   import §`6§.§!!]§;
   import flash.events.FocusEvent;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   
   public class §=H§
   {
       
      
      private var §3j§:§9!'§;
      
      private var §7j§:§ " §;
      
      private var §`n§:§'F§;
      
      public function §=H§(param1:§9!'§, param2:§ " §)
      {
         super();
         this.§3j§ = param1;
         this.§7j§ = param2;
      }
      
      public function §#!i§() : void
      {
         var _loc1_:§]"-§ = this.§3j§.getItemByName("Checkbox_RememberMe_Register") as §]"-§;
         if(this.§7j§.rememberMeToggled)
         {
            _loc1_.setComponentState(§]"-§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc1_.setComponentState(§]"-§.§2"0§);
         }
         (this.§3j§.getItemByName("TextField_PasswordField_Register") as §>L§).§<!=§.addEventListener(MouseEvent.MOUSE_DOWN,this.§9!t§);
         (this.§3j§.getItemByName("TextField_PasswordFieldRepeat_Register") as §>L§).§<!=§.addEventListener(MouseEvent.MOUSE_DOWN,this.§9!t§);
         (this.§3j§.getItemByName("TextField_NickNameField_Register") as §>L§).§<!=§.addEventListener(MouseEvent.MOUSE_DOWN,this.§9!t§);
      }
      
      public function updateTextFields() : void
      {
      }
      
      public function deActivate() : void
      {
         (this.§3j§.getItemByName("TextField_PasswordField_Register") as §>L§).§<!=§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§!!1§);
         (this.§3j§.getItemByName("TextField_PasswordFieldRepeat_Register") as §>L§).§<!=§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§!!1§);
         this.§7j§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§!!r§);
         this.§7j§.stage.removeEventListener(FocusEvent.KEY_FOCUS_CHANGE,this.§]!h§);
         this.§7j§.stage.removeEventListener(FocusEvent.MOUSE_FOCUS_CHANGE,this.§2!6§);
      }
      
      public function dispose() : void
      {
         this.deActivate();
         this.§7j§.§4d§.removeEventListener(LoginHandlerEvent.ERROR,this.§=!§);
         this.§7j§.§4d§.removeEventListener(LoginHandlerEvent.§9!>§,this.§1>§);
         (this.§3j§.getItemByName("TextField_PasswordField_Register") as §>L§).§<!=§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§9!t§);
         (this.§3j§.getItemByName("TextField_PasswordFieldRepeat_Register") as §>L§).§<!=§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§9!t§);
         (this.§3j§.getItemByName("TextField_NickNameField_Register") as §>L§).§<!=§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§9!t§);
         this.§7j§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§!!r§);
      }
      
      private function §9!t§(param1:MouseEvent) : void
      {
         this.§3j§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         this.§3j§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         this.§3j§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
      }
      
      public function activate() : void
      {
         this.§3j§.setObjectToFront(this.§3j§.getItemByName("Container_Register_Tab"));
         this.§7j§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§!!r§);
         this.§3j§.getItemByName("TextField_UserNameField").setVisibility(false);
         this.§3j§.getItemByName("TextField_PasswordField").setVisibility(false);
         this.§3j§.getItemByName("Button_Submit").setVisibility(false);
         this.§3j§.getItemByName("Checkbox_RememberMe").setVisibility(false);
         this.§3j§.getItemByName("TextField_PasswordField_Register").setVisibility(true);
         this.§3j§.getItemByName("TextField_PasswordFieldRepeat_Register").setVisibility(true);
         this.§3j§.getItemByName("TextField_NickNameField_Register").setVisibility(true);
         this.§3j§.getItemByName("Checkbox_RememberMe_Register").setVisibility(true);
         this.§3j§.getItemByName("Button_Submit_Register").setVisibility(true);
         var _loc1_:§>L§ = this.§3j§.getItemByName("TextField_NickNameField_Register") as §>L§;
         var _loc2_:§>L§ = this.§3j§.getItemByName("TextField_PasswordField_Register") as §>L§;
         var _loc3_:§>L§ = this.§3j§.getItemByName("TextField_PasswordFieldRepeat_Register") as §>L§;
         _loc1_.§<!=§.restrict = § " §.§6!"§;
         _loc1_.§<!=§.maxChars = § " §.§!!c§;
         _loc2_.§<!=§.maxChars = § " §.§!E§;
         _loc3_.§<!=§.maxChars = § " §.§!E§;
         _loc1_.§<!=§.tabIndex = 1;
         _loc2_.§<!=§.tabIndex = 2;
         _loc3_.§<!=§.tabIndex = 3;
         _loc1_.§<!=§.addEventListener(KeyboardEvent.KEY_DOWN,this.§<b§);
         _loc2_.§<!=§.addEventListener(KeyboardEvent.KEY_DOWN,this.§!!1§);
         _loc3_.§<!=§.addEventListener(KeyboardEvent.KEY_DOWN,this.§!!1§);
         this.§7j§.§-<§();
      }
      
      public function §?S§() : void
      {
         var _loc2_:String = (this.§3j§.getItemByName("TextField_NickNameField_Register") as §>L§).§<!=§.text;
         var _loc3_:String = (this.§3j§.getItemByName("TextField_PasswordField_Register") as §>L§).§<!=§.text;
         var _loc4_:String = (this.§3j§.getItemByName("TextField_PasswordFieldRepeat_Register") as §>L§).§<!=§.text;
         var _loc5_:String = §!!]§.§?!+§.§[!;§();
         var _loc6_:String = §!!]§.§?!+§.§<N§();
         this.§^!h§();
         this.§7j§.§]L§ = _loc2_;
         this.§7j§.§ "3§ = _loc3_;
         var _loc7_:int = 5;
         if(_loc2_.length == 0)
         {
            this.reportError(§>"$§.NICKNAME_MISSING);
            return;
         }
         if(_loc2_.length < _loc7_)
         {
            this.reportError(§>"$§.NICKNAME_LENGTH);
            return;
         }
         if(!isNaN(Number(_loc2_)))
         {
            this.reportError(§>"$§.NOT_ALLOWED_TO_PUT_ONLY_NUMBERS_IN_NICKNAME);
            return;
         }
         if(_loc3_.length == 0)
         {
            this.reportError(§>"$§.PASSWORD_MISSING);
            return;
         }
         if(_loc3_.length < 5)
         {
            this.reportError(§>"$§.PASSWORD_LENGTH);
            return;
         }
         if(_loc4_.length < 5)
         {
            this.reportError(§>"$§.PASSWORDS_DONT_MATCH);
            return;
         }
         if(_loc3_ != _loc4_)
         {
            this.reportError(§>"$§.PASSWORDS_DONT_MATCH);
            return;
         }
         var _loc10_:Object = {
            "nickName":_loc2_,
            "password":_loc3_,
            "locale":_loc6_,
            "language":_loc5_
         };
         this.§7j§.§4d§.addEventListener(LoginHandlerEvent.§9!>§,this.§1>§);
         this.§7j§.§4d§.addEventListener(LoginHandlerEvent.ERROR,this.§=!§);
         this.§7j§.§4d§.§"N§(_loc10_);
      }
      
      private function §1>§(param1:LoginHandlerEvent) : void
      {
         this.§7j§.§4d§.removeEventListener(LoginHandlerEvent.ERROR,this.§=!§);
         this.§7j§.§4d§.removeEventListener(LoginHandlerEvent.§9!>§,this.§1>§);
         this.§7j§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§!!r§);
         this.§7j§.§`i§();
         (§-!l§.§"x§ as AngryBirdsCustom).§7f§.§&!P§ = true;
         this.§7j§.close();
         (§-!l§.§"x§ as AngryBirdsCustom).§catch§.§6c§();
      }
      
      private function §=!§(param1:LoginHandlerEvent) : void
      {
         this.§7j§.§4d§.removeEventListener(LoginHandlerEvent.ERROR,this.§=!§);
         this.§7j§.§4d§.removeEventListener(LoginHandlerEvent.§9!>§,this.§1>§);
         if(param1.§@!;§ == §>"$§.PLAYER_ID_USED && param1.field.length > 0)
         {
            this.§2z§(param1.field);
         }
         else
         {
            this.reportError(param1.§@!;§);
         }
      }
      
      private function §2z§(param1:String) : void
      {
         var _loc2_:TextField = (this.§3j§.getItemByName("TextField_NickNameField_Register") as §>L§).§<!=§ as TextField;
         this.§7j§.stage.focus = _loc2_;
         _loc2_.setSelection(_loc2_.text.length,_loc2_.text.length);
         this.§3j§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
         (§-!l§.§"x§ as AngryBirdsCustom).§,!W§.closePopup(§9r§.§"F§);
         this.§`n§ = new §'F§(§>"$§.PLAYER_ID_USED_SUGGESTION,§'F§.§8!7§,true);
         §-!l§.§"x§.§,!W§.openPopup(this.§`n§);
         (this.§`n§.container.getItemByName("TextField_NicknameSuggestion") as §>L§).setText(param1);
         this.§`n§.container.getItemByName("TextField_NicknameSuggestion").visible = true;
         this.§7j§.stage.addEventListener(FocusEvent.KEY_FOCUS_CHANGE,this.§]!h§);
         this.§7j§.stage.addEventListener(FocusEvent.MOUSE_FOCUS_CHANGE,this.§2!6§);
      }
      
      private function §]!h§(param1:FocusEvent) : void
      {
         if(this.§`n§)
         {
            this.§`n§.§;z§();
            this.§7j§.stage.removeEventListener(FocusEvent.KEY_FOCUS_CHANGE,this.§]!h§);
            this.§7j§.stage.removeEventListener(FocusEvent.MOUSE_FOCUS_CHANGE,this.§2!6§);
         }
      }
      
      private function §2!6§(param1:FocusEvent) : void
      {
         var _loc2_:TextField = (this.§3j§.getItemByName("TextField_PasswordField_Register") as §>L§).§<!=§ as TextField;
         var _loc3_:TextField = (this.§3j§.getItemByName("TextField_PasswordFieldRepeat_Register") as §>L§).§<!=§ as TextField;
         if(this.§`n§ && (param1.relatedObject == _loc2_ || param1.relatedObject == _loc3_))
         {
            this.§`n§.§;z§();
            this.§7j§.stage.removeEventListener(FocusEvent.KEY_FOCUS_CHANGE,this.§]!h§);
            this.§7j§.stage.removeEventListener(FocusEvent.MOUSE_FOCUS_CHANGE,this.§2!6§);
         }
      }
      
      private function reportError(param1:String) : void
      {
         switch(param1)
         {
            case §>"$§.CONNECTION_ERROR_RETRY:
               this.§3j§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               this.§3j§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(true);
               this.§3j§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            case §>"$§.NICKNAME_LENGTH:
            case §>"$§.NOT_ALLOWED_TO_PUT_ONLY_NUMBERS_IN_NICKNAME:
               this.§3j§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            case §>"$§.PASSWORD_LENGTH:
            case §>"$§.PASSWORD_MISSING:
               this.§3j§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               break;
            case §>"$§.PASSWORDS_DONT_MATCH:
               this.§3j§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               this.§3j§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(true);
               break;
            case §>"$§.FIELD_LENGTH:
               this.§3j§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            case §>"$§.FIELD_NOT_VALID:
               this.§3j§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            default:
               this.§3j§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               this.§3j§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(true);
               this.§3j§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
         }
         §-!l§.§"x§.§,!W§.openPopup(new §'F§(param1,§'F§.§8!7§));
      }
      
      private function §^!h§() : void
      {
         this.§3j§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         this.§3j§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         this.§3j§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
      }
      
      private function §5!T§(param1:uint, param2:uint, param3:RegExp, param4:String) : void
      {
         var _loc5_:String = String.fromCharCode(param1);
         if(param2 == Keyboard.BACKSPACE || param2 == Keyboard.SHIFT || param2 == Keyboard.CAPS_LOCK || param2 == Keyboard.TAB || param2 == Keyboard.LEFT || param2 == Keyboard.RIGHT || param2 == Keyboard.ENTER)
         {
            return;
         }
         if(!_loc5_.match(param3) && param4)
         {
            (§-!l§.§"x§ as AngryBirdsCustom).§,!W§.openPopup(new §'F§(param4,§'F§.§8!7§));
         }
      }
      
      private function §<b§(param1:KeyboardEvent) : void
      {
         var _loc2_:uint = param1.charCode;
         var _loc3_:uint = param1.keyCode;
         var _loc4_:RegExp = /[A-Za-z0-9]/;
         this.§5!T§(_loc2_,_loc3_,_loc4_,§>"$§.ONLY_LETTERS_AND_NUMBERS_ALLOWED);
      }
      
      private function §!!1§(param1:KeyboardEvent) : void
      {
         var _loc2_:uint = param1.charCode;
         var _loc3_:uint = param1.keyCode;
         var _loc4_:RegExp = /[*]/;
         this.§5!T§(_loc2_,_loc3_,_loc4_,null);
      }
      
      private function §!!r§(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.ENTER)
         {
            (§-!l§.§"x§ as AngryBirdsCustom).§,!W§.closePopup(§9r§.§"F§);
            this.§7j§.stage.removeEventListener(FocusEvent.KEY_FOCUS_CHANGE,this.§]!h§);
            this.§7j§.stage.removeEventListener(FocusEvent.MOUSE_FOCUS_CHANGE,this.§2!6§);
            this.§?S§();
            return;
         }
      }
   }
}
