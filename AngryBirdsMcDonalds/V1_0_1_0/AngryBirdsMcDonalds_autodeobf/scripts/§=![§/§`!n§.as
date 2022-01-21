package §=![§
{
   import § !1§.§@!g§;
   import §"!§.§`!A§;
   import §%<§.§+V§;
   import §%<§.§=@§;
   import §,![§.§'!S§;
   import §-1§.§>!6§;
   import §1!D§.§0S§;
   import §1!D§.§65§;
   import §3#§.§2k§;
   import §3#§.§7b§;
   import §?H§.§3!X§;
   import §?H§.§>!X§;
   import §?H§.LoginHandlerEvent;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextField;
   
   public class §`!n§
   {
       
      
      private var §6!?§:§`!A§;
      
      private var §5!d§:§2k§;
      
      private var §[m§:§7b§;
      
      private var § !;§:§7b§;
      
      public function §`!n§(param1:§`!A§)
      {
         super();
         this.§6!?§ = param1;
      }
      
      public function §'?§() : void
      {
         var _loc1_:§>!6§ = this.§6!?§.currentUIView.getItemByName("Checkbox_RememberMe_Register") as §>!6§;
         if(this.§6!?§.rememberMeToggled)
         {
            _loc1_.setComponentState(§>!6§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc1_.setComponentState(§>!6§.§?3§);
         }
         _loc1_ = this.§6!?§.currentUIView.getItemByName("Checkbox_Marketing") as §>!6§;
         if(this.§6!?§.§"&§)
         {
            _loc1_.setComponentState(§>!6§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc1_.setComponentState(§>!6§.§?3§);
         }
         (this.§6!?§.currentUIView.getItemByName("TextField_EmailField_Register") as §'!S§).§'!Z§.addEventListener(MouseEvent.MOUSE_DOWN,this.§]4§);
         (this.§6!?§.currentUIView.getItemByName("TextField_PasswordField_Register") as §'!S§).§'!Z§.addEventListener(MouseEvent.MOUSE_DOWN,this.§]4§);
         (this.§6!?§.currentUIView.getItemByName("TextField_PasswordFieldRepeat_Register") as §'!S§).§'!Z§.addEventListener(MouseEvent.MOUSE_DOWN,this.§]4§);
         (this.§6!?§.currentUIView.getItemByName("TextField_NickNameField_Register") as §'!S§).§'!Z§.addEventListener(MouseEvent.MOUSE_DOWN,this.§]4§);
         new §65§((this.§6!?§.currentUIView.getItemByName("TextField_EmailField_Register") as §'!S§).§'!Z§,§;!4§.§]s§,§;!4§.§,!g§,§;!4§.§[N§);
         new §65§((this.§6!?§.currentUIView.getItemByName("TextField_PasswordField_Register") as §'!S§).§'!Z§,§;!4§.§]s§,§;!4§.§,!g§,§;!4§.§[N§);
         new §65§((this.§6!?§.currentUIView.getItemByName("TextField_PasswordFieldRepeat_Register") as §'!S§).§'!Z§,§;!4§.§]s§,§;!4§.§,!g§,§;!4§.§[N§);
         new §65§((this.§6!?§.currentUIView.getItemByName("TextField_NickNameField_Register") as §'!S§).§'!Z§,§;!4§.§]s§,§;!4§.§,!g§,§;!4§.§[N§);
         var _loc2_:TextField = (this.§6!?§.currentUIView.getItemByName("TextField_Legal") as §'!S§).mClip.text;
         this.§5!d§ = new §2k§(_loc2_,"",_loc2_.parent);
         this.§5!d§.update();
         var _loc3_:String = §0S§.§>E§.§4Z§("Login_Popup","Button_PrivacyPolicy");
         this.§[m§ = this.§5!d§.§9F§(_loc3_);
         var _loc4_:String = §0S§.§>E§.§4Z§("Login_Popup","Button_Eula");
         this.§ !;§ = this.§5!d§.§9F§(_loc4_);
         this.§[m§.addEventListener(MouseEvent.MOUSE_UP,this.§2![§);
         this.§ !;§.addEventListener(MouseEvent.MOUSE_UP,this.§@S§);
         if(§0S§.§>E§.getLanguage() == "zh")
         {
            this.§[m§.§6$§ = 1;
            this.§ !;§.§6$§ = 1;
         }
         this.§5!d§.update();
         this.§-!^§(false);
      }
      
      public function §-!^§(param1:Boolean) : void
      {
         if(this.§[m§ != null)
         {
            this.§[m§.enabled = param1;
            this.§ !;§.enabled = param1;
         }
      }
      
      public function updateTextFields() : void
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         if(this.§5!d§ != null)
         {
            _loc1_ = §0S§.§>E§.§4Z§("Login_Popup","Button_PrivacyPolicy");
            this.§[m§.text = _loc1_;
            _loc2_ = §0S§.§>E§.§4Z§("Login_Popup","Button_Eula");
            this.§ !;§.text = _loc2_;
            if(§0S§.§>E§.getLanguage() == "zh")
            {
               this.§[m§.§6$§ = 1;
               this.§ !;§.§6$§ = 1;
            }
            else
            {
               this.§[m§.§6$§ = 0;
               this.§ !;§.§6$§ = 0;
            }
            this.§5!d§.update();
         }
      }
      
      public function deActivate() : void
      {
         this.§[m§.removeEventListener(MouseEvent.MOUSE_UP,this.§2![§);
         this.§ !;§.removeEventListener(MouseEvent.MOUSE_UP,this.§@S§);
      }
      
      private function §@S§(param1:Event) : void
      {
         navigateToURL(new URLRequest("http://www.rovio.com/eula/"),"_blank");
      }
      
      private function §2![§(param1:Event) : void
      {
         navigateToURL(new URLRequest("http://www.rovio.com/Privacy"),"_blank");
      }
      
      public function dispose() : void
      {
         §>!X§.§>E§.removeEventListener(LoginHandlerEvent.ERROR,this.§9!Q§);
         §>!X§.§>E§.removeEventListener(LoginHandlerEvent.§'!;§,this.§1G§);
         (this.§6!?§.currentUIView.getItemByName("TextField_EmailField_Register") as §'!S§).§'!Z§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§]4§);
         (this.§6!?§.currentUIView.getItemByName("TextField_PasswordField_Register") as §'!S§).§'!Z§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§]4§);
         (this.§6!?§.currentUIView.getItemByName("TextField_PasswordFieldRepeat_Register") as §'!S§).§'!Z§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§]4§);
         (this.§6!?§.currentUIView.getItemByName("TextField_NickNameField_Register") as §'!S§).§'!Z§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§]4§);
      }
      
      private function §]4§(param1:MouseEvent) : void
      {
         this.§6!?§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(false);
         this.§6!?§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         this.§6!?§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         this.§6!?§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         this.§6!?§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         this.§6!?§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
         (this.§6!?§.§@!o§ as §=@§).§9!"§.hide();
      }
      
      public function activate() : void
      {
         this.§6!?§.setObjectToFront(this.§6!?§.currentUIView.getItemByName("Container_Register_Tab"));
         this.§6!?§.currentUIView.getItemByName("TextField_UserNameField").setVisibility(false);
         this.§6!?§.currentUIView.getItemByName("TextField_PasswordField").setVisibility(false);
         this.§6!?§.currentUIView.getItemByName("Button_Submit").setVisibility(false);
         this.§6!?§.currentUIView.getItemByName("Checkbox_RememberMe").setVisibility(false);
         this.§6!?§.currentUIView.getItemByName("Checkbox_Marketing").setVisibility(false);
         this.§6!?§.currentUIView.getItemByName("Button_ForgotPassword").setVisibility(false);
         this.§6!?§.currentUIView.getItemByName("TextField_EmailField_Register").setVisibility(true);
         this.§6!?§.currentUIView.getItemByName("TextField_PasswordField_Register").setVisibility(true);
         this.§6!?§.currentUIView.getItemByName("TextField_PasswordFieldRepeat_Register").setVisibility(true);
         this.§6!?§.currentUIView.getItemByName("TextField_NickNameField_Register").setVisibility(true);
         this.§6!?§.currentUIView.getItemByName("Checkbox_RememberMe_Register").setVisibility(true);
         this.§6!?§.currentUIView.getItemByName("Checkbox_Marketing").setVisibility(true);
         this.§6!?§.currentUIView.getItemByName("Button_Submit_Register").setVisibility(true);
         var _loc1_:§'!S§ = this.§6!?§.currentUIView.getItemByName("TextField_NickNameField_Register") as §'!S§;
         var _loc2_:§'!S§ = this.§6!?§.currentUIView.getItemByName("TextField_EmailField_Register") as §'!S§;
         var _loc3_:§'!S§ = this.§6!?§.currentUIView.getItemByName("TextField_PasswordField_Register") as §'!S§;
         var _loc4_:§'!S§ = this.§6!?§.currentUIView.getItemByName("TextField_PasswordFieldRepeat_Register") as §'!S§;
         _loc1_.§'!Z§.restrict = §`!A§.§;f§;
         _loc4_.§'!Z§.restrict = §`!A§.§7V§;
         _loc3_.§'!Z§.restrict = §`!A§.§7V§;
         _loc2_.§'!Z§.restrict = §`!A§.§5O§;
         _loc1_.§'!Z§.maxChars = 12;
         _loc2_.§'!Z§.maxChars = §`!A§.§3?§;
         _loc2_.§'!Z§.tabIndex = 1;
         _loc3_.§'!Z§.tabIndex = 2;
         _loc4_.§'!Z§.tabIndex = 3;
         _loc1_.§'!Z§.tabIndex = 4;
      }
      
      public function §0!9§() : void
      {
         var _loc2_:String = this.§6!?§.currentUIView.getText("TextField_NickNameField_Register");
         var _loc3_:String = this.§6!?§.currentUIView.getText("TextField_PasswordField_Register");
         var _loc4_:String = this.§6!?§.currentUIView.getText("TextField_PasswordFieldRepeat_Register");
         var _loc5_:String = this.§6!?§.currentUIView.getText("TextField_EmailField_Register");
         this.§?!@§();
         this.§6!?§.§8Z§ = _loc5_;
         this.§6!?§.§%!O§ = _loc3_;
         var _loc6_:int = 5;
         var _loc9_:RegExp;
         if(!(_loc9_ = /^[a-z0-9_.-]+@[a-z0-9-]+[.][a-z0-9-.]+$/).test(_loc5_))
         {
            this.§ !L§(§@!g§.INVALID_EMAIL);
            return;
         }
         if(_loc5_.length < 1)
         {
            this.§ !L§(§@!g§.INVALID_EMAIL);
            return;
         }
         if(_loc3_.length < 5)
         {
            this.§ !L§(§@!g§.PASSWORD_LENGTH);
            return;
         }
         if(_loc4_.length < 5)
         {
            this.§ !L§(§@!g§.PASSWORDS_DONT_MATCH);
            return;
         }
         if(_loc3_ != _loc4_)
         {
            this.§ !L§(§@!g§.PASSWORDS_DONT_MATCH);
            return;
         }
         if(_loc2_.length < _loc6_)
         {
            this.§ !L§(§@!g§.NICKNAME_LENGTH);
            return;
         }
         var _loc10_:Object;
         (_loc10_ = {}).nickName = _loc2_;
         _loc10_.password = _loc3_;
         _loc10_.email = _loc5_;
         _loc10_.marketing = this.§6!?§.§"&§;
         var _loc11_:Object = {
            "type":"registerPlayer",
            "player":_loc10_
         };
         §>!X§.§>E§.addEventListener(LoginHandlerEvent.§'!;§,this.§1G§);
         §>!X§.§>E§.addEventListener(LoginHandlerEvent.ERROR,this.§9!Q§);
         §>!X§.§>E§.§0!5§(_loc11_);
         this.§6!?§.setObjectToFront(this.§6!?§.currentUIView.getItemByName("WaitingPopupLogin"));
         this.§6!?§.currentUIView.getItemByName("WaitingPopupLogin").setVisibility(true);
         §;!4§.§8'§ = new §3!X§("");
         §+V§.sHighscoreSidebar.enableCreditsButton(false);
      }
      
      private function §1G§(param1:LoginHandlerEvent) : void
      {
         §=@§.§5,§ = true;
         §>!X§.§>E§.removeEventListener(LoginHandlerEvent.ERROR,this.§9!Q§);
         §>!X§.§>E§.removeEventListener(LoginHandlerEvent.§'!;§,this.§1G§);
         this.§6!?§.currentUIView.getItemByName("WaitingPopupLogin").setVisibility(false);
         this.§6!?§.§2!§();
         this.§6!?§.§-!,§.mNextState = §=@§.§<P§;
         this.§6!?§.preClose();
      }
      
      private function §9!Q§(param1:LoginHandlerEvent) : void
      {
         §>!X§.§>E§.removeEventListener(LoginHandlerEvent.ERROR,this.§9!Q§);
         §>!X§.§>E§.removeEventListener(LoginHandlerEvent.§'!;§,this.§1G§);
         this.§6!?§.currentUIView.getItemByName("WaitingPopupLogin").setVisibility(false);
         this.§ !L§(param1.§5z§);
      }
      
      private function § !L§(param1:String) : void
      {
         this.§6!?§.currentUIView.getItemByName("WaitingPopupLogin").setVisibility(false);
         switch(param1)
         {
            case §@!g§.CONNECTION_ERROR_RETRY:
               this.§6!?§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(true);
               this.§6!?§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               this.§6!?§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(true);
               this.§6!?§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            case §@!g§.NICKNAME_LENGTH:
               this.§6!?§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            case §@!g§.PASSWORD_LENGTH:
               this.§6!?§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               break;
            case §@!g§.PASSWORDS_DONT_MATCH:
               this.§6!?§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               this.§6!?§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(true);
               break;
            case §@!g§.INVALID_EMAIL:
               this.§6!?§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(true);
               break;
            case §@!g§.FIELD_LENGTH:
               this.§6!?§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            case §@!g§.FIELD_NOT_VALID:
               this.§6!?§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            default:
               this.§6!?§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(true);
               this.§6!?§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               this.§6!?§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(true);
               this.§6!?§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
         }
         (this.§6!?§.§@!o§ as §=@§).§9!"§.show(param1);
      }
      
      private function §?!@§() : void
      {
         this.§6!?§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(false);
         this.§6!?§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         this.§6!?§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         this.§6!?§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
      }
   }
}
