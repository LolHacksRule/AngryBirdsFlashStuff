package §5T§
{
   import § #§.§[!B§;
   import §2y§.§?`§;
   import §3!R§.§,=§;
   import §7-§.§-e§;
   import §7-§.§[!$§;
   import §<Z§.§1!X§;
   import §=b§.§!!Z§;
   import §=b§.§&!1§;
   import §=b§.LoginHandlerEvent;
   import §>!%§.§'!m§;
   import §>!%§.§2Q§;
   import §?I§.§^Z§;
   import §?I§.§`E§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextField;
   
   public class §5!m§
   {
       
      
      private var §0F§:§[!B§;
      
      private var §'!K§:§2Q§;
      
      private var §-N§:§'!m§;
      
      private var §7!H§:§'!m§;
      
      public function §5!m§(param1:§[!B§)
      {
         super();
         this.§0F§ = param1;
      }
      
      public function §5N§() : void
      {
         var _loc1_:§,=§ = this.§0F§.currentUIView.getItemByName("Checkbox_RememberMe_Register") as §,=§;
         if(this.§0F§.rememberMeToggled)
         {
            _loc1_.setComponentState(§,=§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc1_.setComponentState(§,=§.§!g§);
         }
         _loc1_ = this.§0F§.currentUIView.getItemByName("Checkbox_Marketing") as §,=§;
         if(this.§0F§.§0[§)
         {
            _loc1_.setComponentState(§,=§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc1_.setComponentState(§,=§.§!g§);
         }
         (this.§0F§.currentUIView.getItemByName("TextField_EmailField_Register") as §?`§).§0!j§.addEventListener(MouseEvent.MOUSE_DOWN,this.§%6§);
         (this.§0F§.currentUIView.getItemByName("TextField_PasswordField_Register") as §?`§).§0!j§.addEventListener(MouseEvent.MOUSE_DOWN,this.§%6§);
         (this.§0F§.currentUIView.getItemByName("TextField_PasswordFieldRepeat_Register") as §?`§).§0!j§.addEventListener(MouseEvent.MOUSE_DOWN,this.§%6§);
         (this.§0F§.currentUIView.getItemByName("TextField_NickNameField_Register") as §?`§).§0!j§.addEventListener(MouseEvent.MOUSE_DOWN,this.§%6§);
         new §^Z§((this.§0F§.currentUIView.getItemByName("TextField_EmailField_Register") as §?`§).§0!j§,§2!M§.§!!9§,§2!M§.§ J§,§2!M§.§@?§);
         new §^Z§((this.§0F§.currentUIView.getItemByName("TextField_PasswordField_Register") as §?`§).§0!j§,§2!M§.§!!9§,§2!M§.§ J§,§2!M§.§@?§);
         new §^Z§((this.§0F§.currentUIView.getItemByName("TextField_PasswordFieldRepeat_Register") as §?`§).§0!j§,§2!M§.§!!9§,§2!M§.§ J§,§2!M§.§@?§);
         new §^Z§((this.§0F§.currentUIView.getItemByName("TextField_NickNameField_Register") as §?`§).§0!j§,§2!M§.§!!9§,§2!M§.§ J§,§2!M§.§@?§);
         var _loc2_:TextField = (this.§0F§.currentUIView.getItemByName("TextField_Legal") as §?`§).mClip.text;
         this.§'!K§ = new §2Q§(_loc2_,"",_loc2_.parent);
         this.§'!K§.update();
         var _loc3_:String = §`E§.§@!7§.§!!>§("Login_Popup","Button_PrivacyPolicy");
         this.§-N§ = this.§'!K§.§@0§(_loc3_);
         var _loc4_:String = §`E§.§@!7§.§!!>§("Login_Popup","Button_Eula");
         this.§7!H§ = this.§'!K§.§@0§(_loc4_);
         this.§-N§.addEventListener(MouseEvent.MOUSE_UP,this.§0!9§);
         this.§7!H§.addEventListener(MouseEvent.MOUSE_UP,this.each);
         if(§`E§.§@!7§.getLanguage() == "zh")
         {
            this.§-N§.§,S§ = 1;
            this.§7!H§.§,S§ = 1;
         }
         this.§'!K§.update();
         this.§6!o§(false);
      }
      
      public function §6!o§(param1:Boolean) : void
      {
         if(this.§-N§ != null)
         {
            this.§-N§.enabled = param1;
            this.§7!H§.enabled = param1;
         }
      }
      
      public function updateTextFields() : void
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         if(this.§'!K§ != null)
         {
            _loc1_ = §`E§.§@!7§.§!!>§("Login_Popup","Button_PrivacyPolicy");
            this.§-N§.text = _loc1_;
            _loc2_ = §`E§.§@!7§.§!!>§("Login_Popup","Button_Eula");
            this.§7!H§.text = _loc2_;
            if(§`E§.§@!7§.getLanguage() == "zh")
            {
               this.§-N§.§,S§ = 1;
               this.§7!H§.§,S§ = 1;
            }
            else
            {
               this.§-N§.§,S§ = 0;
               this.§7!H§.§,S§ = 0;
            }
            this.§'!K§.update();
         }
      }
      
      public function deActivate() : void
      {
         this.§-N§.removeEventListener(MouseEvent.MOUSE_UP,this.§0!9§);
         this.§7!H§.removeEventListener(MouseEvent.MOUSE_UP,this.each);
      }
      
      private function each(param1:Event) : void
      {
         navigateToURL(new URLRequest("http://www.rovio.com/eula/"),"_blank");
      }
      
      private function §0!9§(param1:Event) : void
      {
         navigateToURL(new URLRequest("http://www.rovio.com/Privacy"),"_blank");
      }
      
      public function dispose() : void
      {
         §&!1§.§@!7§.removeEventListener(LoginHandlerEvent.ERROR,this.§#>§);
         §&!1§.§@!7§.removeEventListener(LoginHandlerEvent.§,![§,this.§^D§);
         (this.§0F§.currentUIView.getItemByName("TextField_EmailField_Register") as §?`§).§0!j§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§%6§);
         (this.§0F§.currentUIView.getItemByName("TextField_PasswordField_Register") as §?`§).§0!j§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§%6§);
         (this.§0F§.currentUIView.getItemByName("TextField_PasswordFieldRepeat_Register") as §?`§).§0!j§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§%6§);
         (this.§0F§.currentUIView.getItemByName("TextField_NickNameField_Register") as §?`§).§0!j§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§%6§);
      }
      
      private function §%6§(param1:MouseEvent) : void
      {
         this.§0F§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(false);
         this.§0F§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         this.§0F§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         this.§0F§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         this.§0F§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         this.§0F§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
         (this.§0F§.§>!d§ as §-e§).§5!0§.hide();
      }
      
      public function activate() : void
      {
         this.§0F§.setObjectToFront(this.§0F§.currentUIView.getItemByName("Container_Register_Tab"));
         this.§0F§.currentUIView.getItemByName("TextField_UserNameField").setVisibility(false);
         this.§0F§.currentUIView.getItemByName("TextField_PasswordField").setVisibility(false);
         this.§0F§.currentUIView.getItemByName("Button_Submit").setVisibility(false);
         this.§0F§.currentUIView.getItemByName("Checkbox_RememberMe").setVisibility(false);
         this.§0F§.currentUIView.getItemByName("Checkbox_Marketing").setVisibility(false);
         this.§0F§.currentUIView.getItemByName("Button_ForgotPassword").setVisibility(false);
         this.§0F§.currentUIView.getItemByName("TextField_EmailField_Register").setVisibility(true);
         this.§0F§.currentUIView.getItemByName("TextField_PasswordField_Register").setVisibility(true);
         this.§0F§.currentUIView.getItemByName("TextField_PasswordFieldRepeat_Register").setVisibility(true);
         this.§0F§.currentUIView.getItemByName("TextField_NickNameField_Register").setVisibility(true);
         this.§0F§.currentUIView.getItemByName("Checkbox_RememberMe_Register").setVisibility(true);
         this.§0F§.currentUIView.getItemByName("Checkbox_Marketing").setVisibility(true);
         this.§0F§.currentUIView.getItemByName("Button_Submit_Register").setVisibility(true);
         var _loc1_:§?`§ = this.§0F§.currentUIView.getItemByName("TextField_NickNameField_Register") as §?`§;
         var _loc2_:§?`§ = this.§0F§.currentUIView.getItemByName("TextField_EmailField_Register") as §?`§;
         var _loc3_:§?`§ = this.§0F§.currentUIView.getItemByName("TextField_PasswordField_Register") as §?`§;
         var _loc4_:§?`§ = this.§0F§.currentUIView.getItemByName("TextField_PasswordFieldRepeat_Register") as §?`§;
         _loc1_.§0!j§.restrict = §[!B§.§+!K§;
         _loc4_.§0!j§.restrict = §[!B§.§33§;
         _loc3_.§0!j§.restrict = §[!B§.§33§;
         _loc2_.§0!j§.restrict = §[!B§.§3b§;
         _loc1_.§0!j§.maxChars = 12;
         _loc2_.§0!j§.maxChars = §[!B§.§>=§;
         _loc2_.§0!j§.tabIndex = 1;
         _loc3_.§0!j§.tabIndex = 2;
         _loc4_.§0!j§.tabIndex = 3;
         _loc1_.§0!j§.tabIndex = 4;
      }
      
      public function §=!T§() : void
      {
         var _loc2_:String = this.§0F§.currentUIView.getText("TextField_NickNameField_Register");
         var _loc3_:String = this.§0F§.currentUIView.getText("TextField_PasswordField_Register");
         var _loc4_:String = this.§0F§.currentUIView.getText("TextField_PasswordFieldRepeat_Register");
         var _loc5_:String = this.§0F§.currentUIView.getText("TextField_EmailField_Register");
         this.§,A§();
         this.§0F§.§]y§ = _loc5_;
         this.§0F§.§9?§ = _loc3_;
         var _loc6_:int = 5;
         var _loc9_:RegExp;
         if(!(_loc9_ = /^[a-z0-9_.-]+@[a-z0-9-]+[.][a-z0-9-.]+$/).test(_loc5_))
         {
            this.§`!%§(§1!X§.INVALID_EMAIL);
            return;
         }
         if(_loc5_.length < 1)
         {
            this.§`!%§(§1!X§.INVALID_EMAIL);
            return;
         }
         if(_loc3_.length < 5)
         {
            this.§`!%§(§1!X§.PASSWORD_LENGTH);
            return;
         }
         if(_loc4_.length < 5)
         {
            this.§`!%§(§1!X§.PASSWORDS_DONT_MATCH);
            return;
         }
         if(_loc3_ != _loc4_)
         {
            this.§`!%§(§1!X§.PASSWORDS_DONT_MATCH);
            return;
         }
         if(_loc2_.length < _loc6_)
         {
            this.§`!%§(§1!X§.NICKNAME_LENGTH);
            return;
         }
         var _loc10_:Object;
         (_loc10_ = {}).nickName = _loc2_;
         _loc10_.password = _loc3_;
         _loc10_.email = _loc5_;
         _loc10_.marketing = this.§0F§.§0[§;
         var _loc11_:Object = {
            "type":"registerPlayer",
            "player":_loc10_
         };
         §&!1§.§@!7§.addEventListener(LoginHandlerEvent.§,![§,this.§^D§);
         §&!1§.§@!7§.addEventListener(LoginHandlerEvent.ERROR,this.§#>§);
         §&!1§.§@!7§.§@!V§(_loc11_);
         this.§0F§.setObjectToFront(this.§0F§.currentUIView.getItemByName("WaitingPopupLogin"));
         this.§0F§.currentUIView.getItemByName("WaitingPopupLogin").setVisibility(true);
         §2!M§.§&!#§ = new §!!Z§("");
         §[!$§.sHighscoreSidebar.enableCreditsButton(false);
      }
      
      private function §^D§(param1:LoginHandlerEvent) : void
      {
         §-e§.§-!J§ = true;
         §&!1§.§@!7§.removeEventListener(LoginHandlerEvent.ERROR,this.§#>§);
         §&!1§.§@!7§.removeEventListener(LoginHandlerEvent.§,![§,this.§^D§);
         this.§0F§.currentUIView.getItemByName("WaitingPopupLogin").setVisibility(false);
         this.§0F§.§-+§();
         this.§0F§.§+!+§.mNextState = §-e§.§<@§;
         this.§0F§.preClose();
      }
      
      private function §#>§(param1:LoginHandlerEvent) : void
      {
         §&!1§.§@!7§.removeEventListener(LoginHandlerEvent.ERROR,this.§#>§);
         §&!1§.§@!7§.removeEventListener(LoginHandlerEvent.§,![§,this.§^D§);
         this.§0F§.currentUIView.getItemByName("WaitingPopupLogin").setVisibility(false);
         this.§`!%§(param1.§`!L§);
      }
      
      private function §`!%§(param1:String) : void
      {
         this.§0F§.currentUIView.getItemByName("WaitingPopupLogin").setVisibility(false);
         switch(param1)
         {
            case §1!X§.CONNECTION_ERROR_RETRY:
               this.§0F§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(true);
               this.§0F§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               this.§0F§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(true);
               this.§0F§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            case §1!X§.NICKNAME_LENGTH:
               this.§0F§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            case §1!X§.PASSWORD_LENGTH:
               this.§0F§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               break;
            case §1!X§.PASSWORDS_DONT_MATCH:
               this.§0F§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               this.§0F§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(true);
               break;
            case §1!X§.INVALID_EMAIL:
               this.§0F§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(true);
               break;
            case §1!X§.FIELD_LENGTH:
               this.§0F§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            case §1!X§.FIELD_NOT_VALID:
               this.§0F§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            default:
               this.§0F§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(true);
               this.§0F§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               this.§0F§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(true);
               this.§0F§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
         }
         (this.§0F§.§>!d§ as §-e§).§5!0§.show(param1);
      }
      
      private function §,A§() : void
      {
         this.§0F§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(false);
         this.§0F§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         this.§0F§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         this.§0F§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
      }
   }
}
