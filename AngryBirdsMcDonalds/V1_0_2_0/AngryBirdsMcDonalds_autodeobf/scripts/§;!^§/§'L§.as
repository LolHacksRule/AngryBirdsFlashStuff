package §;!^§
{
   import § v§.§%!^§;
   import § v§.§?!E§;
   import § v§.LoginHandlerEvent;
   import §"%§.§9j§;
   import §4%§.§%0§;
   import §4%§.§9!Z§;
   import §5<§.§-!a§;
   import §7"§.§8!#§;
   import §;!j§.§>6§;
   import §;!j§.§[!<§;
   import §>G§.§]!W§;
   import §]! §.§"A§;
   import §]! §.§0!#§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextField;
   
   public class §'L§
   {
       
      
      private var §=!M§:§-!a§;
      
      private var §!!i§:§"A§;
      
      private var §`!N§:§0!#§;
      
      private var §9!K§:§0!#§;
      
      public function §'L§(param1:§-!a§)
      {
         super();
         this.§=!M§ = param1;
      }
      
      public function §!!3§() : void
      {
         var _loc1_:§9j§ = this.§=!M§.currentUIView.getItemByName("Checkbox_RememberMe_Register") as §9j§;
         if(this.§=!M§.rememberMeToggled)
         {
            _loc1_.setComponentState(§9j§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc1_.setComponentState(§9j§.§'&§);
         }
         _loc1_ = this.§=!M§.currentUIView.getItemByName("Checkbox_Marketing") as §9j§;
         if(this.§=!M§.§%z§)
         {
            _loc1_.setComponentState(§9j§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc1_.setComponentState(§9j§.§'&§);
         }
         (this.§=!M§.currentUIView.getItemByName("TextField_EmailField_Register") as §]!W§).§^!m§.addEventListener(MouseEvent.MOUSE_DOWN,this.§>9§);
         (this.§=!M§.currentUIView.getItemByName("TextField_PasswordField_Register") as §]!W§).§^!m§.addEventListener(MouseEvent.MOUSE_DOWN,this.§>9§);
         (this.§=!M§.currentUIView.getItemByName("TextField_PasswordFieldRepeat_Register") as §]!W§).§^!m§.addEventListener(MouseEvent.MOUSE_DOWN,this.§>9§);
         (this.§=!M§.currentUIView.getItemByName("TextField_NickNameField_Register") as §]!W§).§^!m§.addEventListener(MouseEvent.MOUSE_DOWN,this.§>9§);
         new §>6§((this.§=!M§.currentUIView.getItemByName("TextField_EmailField_Register") as §]!W§).§^!m§,§'j§.§6!D§,§'j§.§3!<§,§'j§.§>5§);
         new §>6§((this.§=!M§.currentUIView.getItemByName("TextField_PasswordField_Register") as §]!W§).§^!m§,§'j§.§6!D§,§'j§.§3!<§,§'j§.§>5§);
         new §>6§((this.§=!M§.currentUIView.getItemByName("TextField_PasswordFieldRepeat_Register") as §]!W§).§^!m§,§'j§.§6!D§,§'j§.§3!<§,§'j§.§>5§);
         new §>6§((this.§=!M§.currentUIView.getItemByName("TextField_NickNameField_Register") as §]!W§).§^!m§,§'j§.§6!D§,§'j§.§3!<§,§'j§.§>5§);
         var _loc2_:TextField = (this.§=!M§.currentUIView.getItemByName("TextField_Legal") as §]!W§).mClip.text;
         this.§!!i§ = new §"A§(_loc2_,"",_loc2_.parent);
         this.§!!i§.update();
         var _loc3_:String = §[!<§.§'!S§.§-!B§("Login_Popup","Button_PrivacyPolicy");
         this.§`!N§ = this.§!!i§.§;[§(_loc3_);
         var _loc4_:String = §[!<§.§'!S§.§-!B§("Login_Popup","Button_Eula");
         this.§9!K§ = this.§!!i§.§;[§(_loc4_);
         this.§`!N§.addEventListener(MouseEvent.MOUSE_UP,this.§'!L§);
         this.§9!K§.addEventListener(MouseEvent.MOUSE_UP,this.§&]§);
         if(§[!<§.§'!S§.getLanguage() == "zh")
         {
            this.§`!N§.§<N§ = 1;
            this.§9!K§.§<N§ = 1;
         }
         this.§!!i§.update();
         this.§#m§(false);
      }
      
      public function §#m§(param1:Boolean) : void
      {
         if(this.§`!N§ != null)
         {
            this.§`!N§.enabled = param1;
            this.§9!K§.enabled = param1;
         }
      }
      
      public function updateTextFields() : void
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         if(this.§!!i§ != null)
         {
            _loc1_ = §[!<§.§'!S§.§-!B§("Login_Popup","Button_PrivacyPolicy");
            this.§`!N§.text = _loc1_;
            _loc2_ = §[!<§.§'!S§.§-!B§("Login_Popup","Button_Eula");
            this.§9!K§.text = _loc2_;
            if(§[!<§.§'!S§.getLanguage() == "zh")
            {
               this.§`!N§.§<N§ = 1;
               this.§9!K§.§<N§ = 1;
            }
            else
            {
               this.§`!N§.§<N§ = 0;
               this.§9!K§.§<N§ = 0;
            }
            this.§!!i§.update();
         }
      }
      
      public function deActivate() : void
      {
         this.§`!N§.removeEventListener(MouseEvent.MOUSE_UP,this.§'!L§);
         this.§9!K§.removeEventListener(MouseEvent.MOUSE_UP,this.§&]§);
      }
      
      private function §&]§(param1:Event) : void
      {
         navigateToURL(new URLRequest("http://www.rovio.com/eula/"),"_blank");
      }
      
      private function §'!L§(param1:Event) : void
      {
         navigateToURL(new URLRequest("http://www.rovio.com/Privacy"),"_blank");
      }
      
      public function dispose() : void
      {
         §?!E§.§'!S§.removeEventListener(LoginHandlerEvent.ERROR,this.§[!S§);
         §?!E§.§'!S§.removeEventListener(LoginHandlerEvent.§ !H§,this.§'U§);
         (this.§=!M§.currentUIView.getItemByName("TextField_EmailField_Register") as §]!W§).§^!m§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§>9§);
         (this.§=!M§.currentUIView.getItemByName("TextField_PasswordField_Register") as §]!W§).§^!m§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§>9§);
         (this.§=!M§.currentUIView.getItemByName("TextField_PasswordFieldRepeat_Register") as §]!W§).§^!m§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§>9§);
         (this.§=!M§.currentUIView.getItemByName("TextField_NickNameField_Register") as §]!W§).§^!m§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§>9§);
      }
      
      private function §>9§(param1:MouseEvent) : void
      {
         this.§=!M§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(false);
         this.§=!M§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         this.§=!M§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         this.§=!M§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         this.§=!M§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         this.§=!M§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
         (this.§=!M§.§<!S§ as §9!Z§).§]§.hide();
      }
      
      public function activate() : void
      {
         this.§=!M§.setObjectToFront(this.§=!M§.currentUIView.getItemByName("Container_Register_Tab"));
         this.§=!M§.currentUIView.getItemByName("TextField_UserNameField").setVisibility(false);
         this.§=!M§.currentUIView.getItemByName("TextField_PasswordField").setVisibility(false);
         this.§=!M§.currentUIView.getItemByName("Button_Submit").setVisibility(false);
         this.§=!M§.currentUIView.getItemByName("Checkbox_RememberMe").setVisibility(false);
         this.§=!M§.currentUIView.getItemByName("Checkbox_Marketing").setVisibility(false);
         this.§=!M§.currentUIView.getItemByName("Button_ForgotPassword").setVisibility(false);
         this.§=!M§.currentUIView.getItemByName("TextField_EmailField_Register").setVisibility(true);
         this.§=!M§.currentUIView.getItemByName("TextField_PasswordField_Register").setVisibility(true);
         this.§=!M§.currentUIView.getItemByName("TextField_PasswordFieldRepeat_Register").setVisibility(true);
         this.§=!M§.currentUIView.getItemByName("TextField_NickNameField_Register").setVisibility(true);
         this.§=!M§.currentUIView.getItemByName("Checkbox_RememberMe_Register").setVisibility(true);
         this.§=!M§.currentUIView.getItemByName("Checkbox_Marketing").setVisibility(true);
         this.§=!M§.currentUIView.getItemByName("Button_Submit_Register").setVisibility(true);
         var _loc1_:§]!W§ = this.§=!M§.currentUIView.getItemByName("TextField_NickNameField_Register") as §]!W§;
         var _loc2_:§]!W§ = this.§=!M§.currentUIView.getItemByName("TextField_EmailField_Register") as §]!W§;
         var _loc3_:§]!W§ = this.§=!M§.currentUIView.getItemByName("TextField_PasswordField_Register") as §]!W§;
         var _loc4_:§]!W§ = this.§=!M§.currentUIView.getItemByName("TextField_PasswordFieldRepeat_Register") as §]!W§;
         _loc1_.§^!m§.restrict = §-!a§.§@W§;
         _loc4_.§^!m§.restrict = §-!a§.§[!I§;
         _loc3_.§^!m§.restrict = §-!a§.§[!I§;
         _loc2_.§^!m§.restrict = §-!a§.§0!<§;
         _loc1_.§^!m§.maxChars = 12;
         _loc2_.§^!m§.maxChars = §-!a§.§<L§;
         _loc2_.§^!m§.tabIndex = 1;
         _loc3_.§^!m§.tabIndex = 2;
         _loc4_.§^!m§.tabIndex = 3;
         _loc1_.§^!m§.tabIndex = 4;
      }
      
      public function §0!e§() : void
      {
         var _loc2_:String = this.§=!M§.currentUIView.getText("TextField_NickNameField_Register");
         var _loc3_:String = this.§=!M§.currentUIView.getText("TextField_PasswordField_Register");
         var _loc4_:String = this.§=!M§.currentUIView.getText("TextField_PasswordFieldRepeat_Register");
         var _loc5_:String = this.§=!M§.currentUIView.getText("TextField_EmailField_Register");
         this.§5!&§();
         this.§=!M§.§2!2§ = _loc5_;
         this.§=!M§.§8!d§ = _loc3_;
         var _loc6_:int = 5;
         var _loc9_:RegExp;
         if(!(_loc9_ = /^[a-z0-9_.-]+@[a-z0-9-]+[.][a-z0-9-.]+$/).test(_loc5_))
         {
            this.§3Y§(§8!#§.INVALID_EMAIL);
            return;
         }
         if(_loc5_.length < 1)
         {
            this.§3Y§(§8!#§.INVALID_EMAIL);
            return;
         }
         if(_loc3_.length < 5)
         {
            this.§3Y§(§8!#§.PASSWORD_LENGTH);
            return;
         }
         if(_loc4_.length < 5)
         {
            this.§3Y§(§8!#§.PASSWORDS_DONT_MATCH);
            return;
         }
         if(_loc3_ != _loc4_)
         {
            this.§3Y§(§8!#§.PASSWORDS_DONT_MATCH);
            return;
         }
         if(_loc2_.length < _loc6_)
         {
            this.§3Y§(§8!#§.NICKNAME_LENGTH);
            return;
         }
         var _loc10_:Object;
         (_loc10_ = {}).nickName = _loc2_;
         _loc10_.password = _loc3_;
         _loc10_.email = _loc5_;
         _loc10_.marketing = this.§=!M§.§%z§;
         var _loc11_:Object = {
            "type":"registerPlayer",
            "player":_loc10_
         };
         §?!E§.§'!S§.addEventListener(LoginHandlerEvent.§ !H§,this.§'U§);
         §?!E§.§'!S§.addEventListener(LoginHandlerEvent.ERROR,this.§[!S§);
         §?!E§.§'!S§.§ H§(_loc11_);
         this.§=!M§.setObjectToFront(this.§=!M§.currentUIView.getItemByName("WaitingPopupLogin"));
         this.§=!M§.currentUIView.getItemByName("WaitingPopupLogin").setVisibility(true);
         §'j§.§%g§ = new §%!^§("");
         §%0§.sHighscoreSidebar.enableCreditsButton(false);
      }
      
      private function §'U§(param1:LoginHandlerEvent) : void
      {
         §9!Z§.§@H§ = true;
         §?!E§.§'!S§.removeEventListener(LoginHandlerEvent.ERROR,this.§[!S§);
         §?!E§.§'!S§.removeEventListener(LoginHandlerEvent.§ !H§,this.§'U§);
         this.§=!M§.currentUIView.getItemByName("WaitingPopupLogin").setVisibility(false);
         this.§=!M§.§#K§();
         this.§=!M§.§ !;§.mNextState = §9!Z§.§4D§;
         this.§=!M§.preClose();
      }
      
      private function §[!S§(param1:LoginHandlerEvent) : void
      {
         §?!E§.§'!S§.removeEventListener(LoginHandlerEvent.ERROR,this.§[!S§);
         §?!E§.§'!S§.removeEventListener(LoginHandlerEvent.§ !H§,this.§'U§);
         this.§=!M§.currentUIView.getItemByName("WaitingPopupLogin").setVisibility(false);
         this.§3Y§(param1.§7!F§);
      }
      
      private function §3Y§(param1:String) : void
      {
         this.§=!M§.currentUIView.getItemByName("WaitingPopupLogin").setVisibility(false);
         switch(param1)
         {
            case §8!#§.CONNECTION_ERROR_RETRY:
               this.§=!M§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(true);
               this.§=!M§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               this.§=!M§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(true);
               this.§=!M§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            case §8!#§.NICKNAME_LENGTH:
               this.§=!M§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            case §8!#§.PASSWORD_LENGTH:
               this.§=!M§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               break;
            case §8!#§.PASSWORDS_DONT_MATCH:
               this.§=!M§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               this.§=!M§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(true);
               break;
            case §8!#§.INVALID_EMAIL:
               this.§=!M§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(true);
               break;
            case §8!#§.FIELD_LENGTH:
               this.§=!M§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            case §8!#§.FIELD_NOT_VALID:
               this.§=!M§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            default:
               this.§=!M§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(true);
               this.§=!M§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               this.§=!M§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(true);
               this.§=!M§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
         }
         (this.§=!M§.§<!S§ as §9!Z§).§]§.show(param1);
      }
      
      private function §5!&§() : void
      {
         this.§=!M§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(false);
         this.§=!M§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         this.§=!M§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         this.§=!M§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
      }
   }
}
