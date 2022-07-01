package §0h§
{
   import §-!F§.§[!Q§;
   import §3!!§.§5" §;
   import §3!!§.native;
   import §;U§.§`"2§;
   import §=X§.LoginHandlerEvent;
   import §@f§.§4d§;
   import §[<§.§%!T§;
   import §]K§.§>!I§;
   import §`q§.§!!U§;
   import fl.text.TLFTextField;
   import flash.display.InteractiveObject;
   import flash.events.FocusEvent;
   import flash.events.MouseEvent;
   import flash.events.TextEvent;
   
   public class §?",§
   {
       
      
      private var §7D§:§5" §;
      
      private var §#"!§:§`"2§;
      
      private var §[C§:§!!U§;
      
      public function §?",§(param1:§5" §, param2:§`"2§)
      {
         super();
         this.§7D§ = param1;
         this.§#"!§ = param2;
      }
      
      public function §5!H§() : void
      {
         var _loc1_:§4d§ = this.§7D§.getItemByName("Checkbox_RememberMe_Register") as §4d§;
         if(this.§#"!§.rememberMeToggled)
         {
            _loc1_.setComponentState(§4d§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc1_.setComponentState(§4d§.§&!i§);
         }
         (this.§7D§.getItemByName("TextField_PasswordField_Register") as native).§&!K§.addEventListener(MouseEvent.MOUSE_DOWN,this.§@T§);
         (this.§7D§.getItemByName("TextField_PasswordFieldRepeat_Register") as native).§&!K§.addEventListener(MouseEvent.MOUSE_DOWN,this.§@T§);
         (this.§7D§.getItemByName("TextField_NickNameField_Register") as native).§&!K§.addEventListener(MouseEvent.MOUSE_DOWN,this.§@T§);
      }
      
      public function updateTextFields() : void
      {
      }
      
      public function deActivate() : void
      {
         (this.§7D§.getItemByName("TextField_PasswordField_Register") as native).§&!K§.removeEventListener(TextEvent.TEXT_INPUT,this.§#"1§);
         (this.§7D§.getItemByName("TextField_PasswordFieldRepeat_Register") as native).§&!K§.removeEventListener(TextEvent.TEXT_INPUT,this.§#"1§);
         this.§#"!§.stage.removeEventListener(TextEvent.TEXT_INPUT,this.§]!§);
         this.§#"!§.stage.removeEventListener(FocusEvent.KEY_FOCUS_CHANGE,this.§ !&§);
         this.§#"!§.stage.removeEventListener(FocusEvent.MOUSE_FOCUS_CHANGE,this.§'I§);
      }
      
      public function dispose() : void
      {
         this.deActivate();
         this.§#"!§.§"§.removeEventListener(LoginHandlerEvent.ERROR,this.§#! §);
         this.§#"!§.§"§.removeEventListener(LoginHandlerEvent.§ !8§,this.§;!g§);
         (this.§7D§.getItemByName("TextField_PasswordField_Register") as native).§&!K§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§@T§);
         (this.§7D§.getItemByName("TextField_PasswordFieldRepeat_Register") as native).§&!K§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§@T§);
         (this.§7D§.getItemByName("TextField_NickNameField_Register") as native).§&!K§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§@T§);
         this.§#"!§.stage.removeEventListener(TextEvent.TEXT_INPUT,this.§]!§);
      }
      
      private function §@T§(param1:MouseEvent) : void
      {
         this.§7D§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         this.§7D§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         this.§7D§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
      }
      
      public function activate() : void
      {
         this.§7D§.setObjectToFront(this.§7D§.getItemByName("Container_Register_Tab"));
         this.§#"!§.stage.addEventListener(TextEvent.TEXT_INPUT,this.§]!§);
         this.§7D§.getItemByName("TextField_UserNameField").setVisibility(false);
         this.§7D§.getItemByName("TextField_PasswordField").setVisibility(false);
         this.§7D§.getItemByName("Button_Submit").setVisibility(false);
         this.§7D§.getItemByName("Checkbox_RememberMe").setVisibility(false);
         this.§7D§.getItemByName("TextField_PasswordField_Register").setVisibility(true);
         this.§7D§.getItemByName("TextField_PasswordFieldRepeat_Register").setVisibility(true);
         this.§7D§.getItemByName("TextField_NickNameField_Register").setVisibility(true);
         this.§7D§.getItemByName("Checkbox_RememberMe_Register").setVisibility(true);
         this.§7D§.getItemByName("Button_Submit_Register").setVisibility(true);
         var _loc1_:native = this.§7D§.getItemByName("TextField_NickNameField_Register") as native;
         var _loc2_:native = this.§7D§.getItemByName("TextField_PasswordField_Register") as native;
         var _loc3_:native = this.§7D§.getItemByName("TextField_PasswordFieldRepeat_Register") as native;
         _loc1_.§&!K§.restrict = §`"2§.§>_§;
         _loc1_.§&!K§.maxChars = §`"2§.§2T§;
         _loc2_.§&!K§.maxChars = §`"2§.§@y§;
         _loc3_.§&!K§.maxChars = §`"2§.§@y§;
         InteractiveObject(_loc1_.§&!K§.getChildAt(1)).tabIndex = 1;
         InteractiveObject(_loc2_.§&!K§.getChildAt(1)).tabIndex = 2;
         InteractiveObject(_loc3_.§&!K§.getChildAt(1)).tabIndex = 3;
         _loc1_.§&!K§.addEventListener(TextEvent.TEXT_INPUT,this.§5!j§);
         _loc2_.§&!K§.addEventListener(TextEvent.TEXT_INPUT,this.§#"1§);
         _loc3_.§&!K§.addEventListener(TextEvent.TEXT_INPUT,this.§#"1§);
         this.§#"!§.§;!t§();
      }
      
      public function §"U§() : void
      {
         var _loc2_:String = (this.§7D§.getItemByName("TextField_NickNameField_Register") as native).§&!K§.text;
         var _loc3_:String = (this.§7D§.getItemByName("TextField_PasswordField_Register") as native).§&!K§.text;
         var _loc4_:String = (this.§7D§.getItemByName("TextField_PasswordFieldRepeat_Register") as native).§&!K§.text;
         var _loc5_:String = §[!Q§.§=J§.§"" §();
         var _loc6_:String = §[!Q§.§=J§.§%w§();
         this.§">§();
         this.§#"!§.§[X§ = _loc2_;
         this.§#"!§.§[!!§ = _loc3_;
         var _loc7_:int = 5;
         if(_loc2_.length == 0)
         {
            this.reportError(§>!I§.NICKNAME_MISSING);
            return;
         }
         if(_loc2_.length < _loc7_)
         {
            this.reportError(§>!I§.NICKNAME_LENGTH);
            return;
         }
         if(!isNaN(Number(_loc2_)))
         {
            this.reportError(§>!I§.NOT_ALLOWED_TO_PUT_ONLY_NUMBERS_IN_NICKNAME);
            return;
         }
         if(_loc3_.length == 0)
         {
            this.reportError(§>!I§.PASSWORD_MISSING);
            return;
         }
         if(_loc3_.length < 5)
         {
            this.reportError(§>!I§.PASSWORD_LENGTH);
            return;
         }
         if(_loc4_.length < 5)
         {
            this.reportError(§>!I§.PASSWORDS_DONT_MATCH);
            return;
         }
         if(_loc3_ != _loc4_)
         {
            this.reportError(§>!I§.PASSWORDS_DONT_MATCH);
            return;
         }
         var _loc10_:Object = {
            "nickName":_loc2_,
            "password":_loc3_,
            "locale":_loc6_,
            "language":_loc5_
         };
         this.§#"!§.§"§.addEventListener(LoginHandlerEvent.§ !8§,this.§;!g§);
         this.§#"!§.§"§.addEventListener(LoginHandlerEvent.ERROR,this.§#! §);
         this.§#"!§.§"§.§!z§(_loc10_);
      }
      
      private function §;!g§(param1:LoginHandlerEvent) : void
      {
         this.§#"!§.§"§.removeEventListener(LoginHandlerEvent.ERROR,this.§#! §);
         this.§#"!§.§"§.removeEventListener(LoginHandlerEvent.§ !8§,this.§;!g§);
         this.§#"!§.stage.removeEventListener(TextEvent.TEXT_INPUT,this.§]!§);
         this.§#"!§.§3l§();
         (§&N§.§#Y§ as AngryBirdsCustom).§2Z§.§2!7§ = true;
         this.§#"!§.close();
         (§&N§.§#Y§ as AngryBirdsCustom).§#A§.§0"%§();
      }
      
      private function §#! §(param1:LoginHandlerEvent) : void
      {
         this.§#"!§.§"§.removeEventListener(LoginHandlerEvent.ERROR,this.§#! §);
         this.§#"!§.§"§.removeEventListener(LoginHandlerEvent.§ !8§,this.§;!g§);
         if(param1.§?R§ == §>!I§.PLAYER_ID_USED && param1.field.length > 0)
         {
            this.§=!6§(param1.field);
         }
         else
         {
            this.reportError(param1.§?R§);
         }
      }
      
      private function §=!6§(param1:String) : void
      {
         var _loc2_:TLFTextField = (this.§7D§.getItemByName("TextField_NickNameField_Register") as native).§&!K§ as TLFTextField;
         this.§#"!§.stage.focus = _loc2_;
         _loc2_.setSelection(_loc2_.text.length,_loc2_.text.length);
         this.§7D§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
         (§&N§.§#Y§ as AngryBirdsCustom).§@!H§.closePopup(§%!T§.§[!N§);
         this.§[C§ = new §!!U§(§>!I§.PLAYER_ID_USED_SUGGESTION,§!!U§.§<&§,true);
         §&N§.§#Y§.§@!H§.openPopup(this.§[C§);
         (this.§[C§.container.getItemByName("TextField_NicknameSuggestion") as native).setText(param1);
         this.§[C§.container.getItemByName("TextField_NicknameSuggestion").visible = true;
         this.§#"!§.stage.addEventListener(FocusEvent.KEY_FOCUS_CHANGE,this.§ !&§);
         this.§#"!§.stage.addEventListener(FocusEvent.MOUSE_FOCUS_CHANGE,this.§'I§);
      }
      
      private function § !&§(param1:FocusEvent) : void
      {
         if(this.§[C§)
         {
            this.§[C§.§ !B§();
            this.§#"!§.stage.removeEventListener(FocusEvent.KEY_FOCUS_CHANGE,this.§ !&§);
            this.§#"!§.stage.removeEventListener(FocusEvent.MOUSE_FOCUS_CHANGE,this.§'I§);
         }
      }
      
      private function §'I§(param1:FocusEvent) : void
      {
         var _loc2_:TLFTextField = (this.§7D§.getItemByName("TextField_PasswordField_Register") as native).§&!K§ as TLFTextField;
         var _loc3_:TLFTextField = (this.§7D§.getItemByName("TextField_PasswordFieldRepeat_Register") as native).§&!K§ as TLFTextField;
         if(this.§[C§ && (param1.relatedObject == _loc2_ || param1.relatedObject == _loc3_))
         {
            this.§[C§.§ !B§();
            this.§#"!§.stage.removeEventListener(FocusEvent.KEY_FOCUS_CHANGE,this.§ !&§);
            this.§#"!§.stage.removeEventListener(FocusEvent.MOUSE_FOCUS_CHANGE,this.§'I§);
         }
      }
      
      private function reportError(param1:String) : void
      {
         switch(param1)
         {
            case §>!I§.CONNECTION_ERROR_RETRY:
               this.§7D§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               this.§7D§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(true);
               this.§7D§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            case §>!I§.NICKNAME_LENGTH:
            case §>!I§.NOT_ALLOWED_TO_PUT_ONLY_NUMBERS_IN_NICKNAME:
               this.§7D§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            case §>!I§.PASSWORD_LENGTH:
            case §>!I§.PASSWORD_MISSING:
               this.§7D§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               break;
            case §>!I§.PASSWORDS_DONT_MATCH:
               this.§7D§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               this.§7D§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(true);
               break;
            case §>!I§.FIELD_LENGTH:
               this.§7D§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            case §>!I§.FIELD_NOT_VALID:
               this.§7D§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            default:
               this.§7D§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               this.§7D§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(true);
               this.§7D§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
         }
         §&N§.§#Y§.§@!H§.openPopup(new §!!U§(param1,§!!U§.§<&§));
      }
      
      private function §">§() : void
      {
         this.§7D§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         this.§7D§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         this.§7D§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
      }
      
      private function §=!g§(param1:uint, param2:RegExp, param3:String) : void
      {
         var _loc4_:String;
         if(!(_loc4_ = String.fromCharCode(param1)).match(param2) && param3)
         {
            (§&N§.§#Y§ as AngryBirdsCustom).§@!H§.openPopup(new §!!U§(param3,§!!U§.§<&§));
         }
      }
      
      private function §5!j§(param1:TextEvent) : void
      {
         var _loc2_:uint = param1.text.charCodeAt(0);
         var _loc3_:RegExp = /[A-Za-z0-9]/;
         this.§=!g§(_loc2_,_loc3_,§>!I§.ONLY_LETTERS_AND_NUMBERS_ALLOWED);
      }
      
      private function §#"1§(param1:TextEvent) : void
      {
         var _loc2_:uint = param1.text.charCodeAt(0);
         var _loc3_:RegExp = /[*]/;
         this.§=!g§(_loc2_,_loc3_,null);
      }
      
      private function §]!§(param1:TextEvent) : void
      {
         if(param1.text == "\n" || param1.text == "\r")
         {
            (§&N§.§#Y§ as AngryBirdsCustom).§@!H§.closePopup(§%!T§.§[!N§);
            this.§#"!§.stage.removeEventListener(FocusEvent.KEY_FOCUS_CHANGE,this.§ !&§);
            this.§#"!§.stage.removeEventListener(FocusEvent.MOUSE_FOCUS_CHANGE,this.§'I§);
            this.§"U§();
            return;
         }
      }
   }
}
