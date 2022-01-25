package §9X§
{
   import §#!q§.§]I§;
   import §#!q§.§`q§;
   import §'!B§.§1!R§;
   import §+$§.§"!p§;
   import §7!N§.§3!0§;
   import §7!N§.§9!o§;
   import §7!N§.LoginHandlerEvent;
   import §9!$§.§'W§;
   import §9!$§.§-O§;
   import §<! §.§#!b§;
   import §[h§.§ set§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextField;
   
   public class §if§
   {
       
      
      private var §;G§:§1!R§;
      
      private var §]!W§:§-O§;
      
      private var §13§:§'W§;
      
      private var §!`§:§'W§;
      
      public function §if§(param1:§1!R§)
      {
         super();
         this.§;G§ = param1;
      }
      
      public function § s§() : void
      {
         var _loc1_:§"!p§ = this.§;G§.currentUIView.getItemByName("Checkbox_RememberMe_Register") as §"!p§;
         if(this.§;G§.rememberMeToggled)
         {
            _loc1_.setComponentState(§"!p§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc1_.setComponentState(§"!p§.§`!Q§);
         }
         _loc1_ = this.§;G§.currentUIView.getItemByName("Checkbox_Marketing") as §"!p§;
         if(this.§;G§.§=>§)
         {
            _loc1_.setComponentState(§"!p§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc1_.setComponentState(§"!p§.§`!Q§);
         }
         (this.§;G§.currentUIView.getItemByName("TextField_EmailField_Register") as § set§).§ !K§.addEventListener(MouseEvent.MOUSE_DOWN,this.§'!j§);
         (this.§;G§.currentUIView.getItemByName("TextField_PasswordField_Register") as § set§).§ !K§.addEventListener(MouseEvent.MOUSE_DOWN,this.§'!j§);
         (this.§;G§.currentUIView.getItemByName("TextField_PasswordFieldRepeat_Register") as § set§).§ !K§.addEventListener(MouseEvent.MOUSE_DOWN,this.§'!j§);
         (this.§;G§.currentUIView.getItemByName("TextField_NickNameField_Register") as § set§).§ !K§.addEventListener(MouseEvent.MOUSE_DOWN,this.§'!j§);
         new §]I§((this.§;G§.currentUIView.getItemByName("TextField_EmailField_Register") as § set§).§ !K§,§9!_§.§7O§,§9!_§.§=!n§,§9!_§.§8!X§);
         new §]I§((this.§;G§.currentUIView.getItemByName("TextField_PasswordField_Register") as § set§).§ !K§,§9!_§.§7O§,§9!_§.§=!n§,§9!_§.§8!X§);
         new §]I§((this.§;G§.currentUIView.getItemByName("TextField_PasswordFieldRepeat_Register") as § set§).§ !K§,§9!_§.§7O§,§9!_§.§=!n§,§9!_§.§8!X§);
         new §]I§((this.§;G§.currentUIView.getItemByName("TextField_NickNameField_Register") as § set§).§ !K§,§9!_§.§7O§,§9!_§.§=!n§,§9!_§.§8!X§);
         var _loc2_:TextField = (this.§;G§.currentUIView.getItemByName("TextField_Legal") as § set§).mClip.text;
         this.§]!W§ = new §-O§(_loc2_,"",_loc2_.parent);
         this.§]!W§.update();
         var _loc3_:String = §`q§.§9$§.§&7§("Login_Popup","Button_PrivacyPolicy");
         this.§13§ = this.§]!W§.§3;§(_loc3_);
         var _loc4_:String = §`q§.§9$§.§&7§("Login_Popup","Button_Eula");
         this.§!`§ = this.§]!W§.§3;§(_loc4_);
         this.§13§.addEventListener(MouseEvent.MOUSE_UP,this.§ o§);
         this.§!`§.addEventListener(MouseEvent.MOUSE_UP,this.§#@§);
         if(§`q§.§9$§.getLanguage() == "zh")
         {
            this.§13§.§8!9§ = 1;
            this.§!`§.§8!9§ = 1;
         }
         this.§]!W§.update();
         this.§^!8§(false);
      }
      
      public function §^!8§(param1:Boolean) : void
      {
         if(this.§13§ != null)
         {
            this.§13§.enabled = param1;
            this.§!`§.enabled = param1;
         }
      }
      
      public function updateTextFields() : void
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         if(this.§]!W§ != null)
         {
            _loc1_ = §`q§.§9$§.§&7§("Login_Popup","Button_PrivacyPolicy");
            this.§13§.text = _loc1_;
            _loc2_ = §`q§.§9$§.§&7§("Login_Popup","Button_Eula");
            this.§!`§.text = _loc2_;
            if(§`q§.§9$§.getLanguage() == "zh")
            {
               this.§13§.§8!9§ = 1;
               this.§!`§.§8!9§ = 1;
            }
            else
            {
               this.§13§.§8!9§ = 0;
               this.§!`§.§8!9§ = 0;
            }
            this.§]!W§.update();
         }
      }
      
      public function deActivate() : void
      {
         this.§13§.removeEventListener(MouseEvent.MOUSE_UP,this.§ o§);
         this.§!`§.removeEventListener(MouseEvent.MOUSE_UP,this.§#@§);
      }
      
      private function §#@§(param1:Event) : void
      {
         navigateToURL(new URLRequest("http://www.rovio.com/eula/"),"_blank");
      }
      
      private function § o§(param1:Event) : void
      {
         navigateToURL(new URLRequest("http://www.rovio.com/Privacy"),"_blank");
      }
      
      public function dispose() : void
      {
         §3!0§.§9$§.removeEventListener(LoginHandlerEvent.ERROR,this.§`!_§);
         §3!0§.§9$§.removeEventListener(LoginHandlerEvent.§<>§,this.§9!L§);
         (this.§;G§.currentUIView.getItemByName("TextField_EmailField_Register") as § set§).§ !K§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§'!j§);
         (this.§;G§.currentUIView.getItemByName("TextField_PasswordField_Register") as § set§).§ !K§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§'!j§);
         (this.§;G§.currentUIView.getItemByName("TextField_PasswordFieldRepeat_Register") as § set§).§ !K§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§'!j§);
         (this.§;G§.currentUIView.getItemByName("TextField_NickNameField_Register") as § set§).§ !K§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§'!j§);
      }
      
      private function §'!j§(param1:MouseEvent) : void
      {
         this.§;G§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(false);
         this.§;G§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         this.§;G§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         this.§;G§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         this.§;G§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         this.§;G§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
         (this.§;G§.§+!_§ as § try§).§2M§.hide();
      }
      
      public function activate() : void
      {
         this.§;G§.setObjectToFront(this.§;G§.currentUIView.getItemByName("Container_Register_Tab"));
         this.§;G§.currentUIView.getItemByName("TextField_UserNameField").setVisibility(false);
         this.§;G§.currentUIView.getItemByName("TextField_PasswordField").setVisibility(false);
         this.§;G§.currentUIView.getItemByName("Button_Submit").setVisibility(false);
         this.§;G§.currentUIView.getItemByName("Checkbox_RememberMe").setVisibility(false);
         this.§;G§.currentUIView.getItemByName("Checkbox_Marketing").setVisibility(false);
         this.§;G§.currentUIView.getItemByName("Button_ForgotPassword").setVisibility(false);
         this.§;G§.currentUIView.getItemByName("TextField_EmailField_Register").setVisibility(true);
         this.§;G§.currentUIView.getItemByName("TextField_PasswordField_Register").setVisibility(true);
         this.§;G§.currentUIView.getItemByName("TextField_PasswordFieldRepeat_Register").setVisibility(true);
         this.§;G§.currentUIView.getItemByName("TextField_NickNameField_Register").setVisibility(true);
         this.§;G§.currentUIView.getItemByName("Checkbox_RememberMe_Register").setVisibility(true);
         this.§;G§.currentUIView.getItemByName("Checkbox_Marketing").setVisibility(true);
         this.§;G§.currentUIView.getItemByName("Button_Submit_Register").setVisibility(true);
         var _loc1_:§ set§ = this.§;G§.currentUIView.getItemByName("TextField_NickNameField_Register") as § set§;
         var _loc2_:§ set§ = this.§;G§.currentUIView.getItemByName("TextField_EmailField_Register") as § set§;
         var _loc3_:§ set§ = this.§;G§.currentUIView.getItemByName("TextField_PasswordField_Register") as § set§;
         var _loc4_:§ set§ = this.§;G§.currentUIView.getItemByName("TextField_PasswordFieldRepeat_Register") as § set§;
         _loc1_.§ !K§.restrict = §1!R§.§-!U§;
         _loc4_.§ !K§.restrict = §1!R§.§#!-§;
         _loc3_.§ !K§.restrict = §1!R§.§#!-§;
         _loc2_.§ !K§.restrict = §1!R§.§!!n§;
         _loc1_.§ !K§.maxChars = 12;
         _loc2_.§ !K§.maxChars = §1!R§.§<!I§;
         _loc2_.§ !K§.tabIndex = 1;
         _loc3_.§ !K§.tabIndex = 2;
         _loc4_.§ !K§.tabIndex = 3;
         _loc1_.§ !K§.tabIndex = 4;
      }
      
      public function §6!8§() : void
      {
         var _loc2_:String = this.§;G§.currentUIView.getText("TextField_NickNameField_Register");
         var _loc3_:String = this.§;G§.currentUIView.getText("TextField_PasswordField_Register");
         var _loc4_:String = this.§;G§.currentUIView.getText("TextField_PasswordFieldRepeat_Register");
         var _loc5_:String = this.§;G§.currentUIView.getText("TextField_EmailField_Register");
         this.§+O§();
         this.§;G§.§=y§ = _loc5_;
         this.§;G§.§8#§ = _loc3_;
         var _loc6_:int = 5;
         var _loc9_:RegExp;
         if(!(_loc9_ = /^[a-z0-9_.-]+@[a-z0-9-]+[.][a-z0-9-.]+$/).test(_loc5_))
         {
            this.§2!P§(§#!b§.INVALID_EMAIL);
            return;
         }
         if(_loc5_.length < 1)
         {
            this.§2!P§(§#!b§.INVALID_EMAIL);
            return;
         }
         if(_loc3_.length < 5)
         {
            this.§2!P§(§#!b§.PASSWORD_LENGTH);
            return;
         }
         if(_loc4_.length < 5)
         {
            this.§2!P§(§#!b§.PASSWORDS_DONT_MATCH);
            return;
         }
         if(_loc3_ != _loc4_)
         {
            this.§2!P§(§#!b§.PASSWORDS_DONT_MATCH);
            return;
         }
         if(_loc2_.length < _loc6_)
         {
            this.§2!P§(§#!b§.NICKNAME_LENGTH);
            return;
         }
         var _loc10_:Object;
         (_loc10_ = {}).nickName = _loc2_;
         _loc10_.password = _loc3_;
         _loc10_.email = _loc5_;
         _loc10_.marketing = this.§;G§.§=>§;
         var _loc11_:Object = {
            "type":"registerPlayer",
            "player":_loc10_
         };
         §3!0§.§9$§.addEventListener(LoginHandlerEvent.§<>§,this.§9!L§);
         §3!0§.§9$§.addEventListener(LoginHandlerEvent.ERROR,this.§`!_§);
         §3!0§.§9$§.§2!1§(_loc11_);
         this.§;G§.setObjectToFront(this.§;G§.currentUIView.getItemByName("WaitingPopupLogin"));
         this.§;G§.currentUIView.getItemByName("WaitingPopupLogin").setVisibility(true);
         §9!_§.§1!?§ = new §9!o§("");
         §2'§.sHighscoreSidebar.enableCreditsButton(false);
      }
      
      private function §9!L§(param1:LoginHandlerEvent) : void
      {
         § try§.§6!4§ = true;
         §3!0§.§9$§.removeEventListener(LoginHandlerEvent.ERROR,this.§`!_§);
         §3!0§.§9$§.removeEventListener(LoginHandlerEvent.§<>§,this.§9!L§);
         this.§;G§.currentUIView.getItemByName("WaitingPopupLogin").setVisibility(false);
         this.§;G§.§8^§();
         this.§;G§.§5b§.mNextState = § try§.§[!1§;
         this.§;G§.preClose();
      }
      
      private function §`!_§(param1:LoginHandlerEvent) : void
      {
         §3!0§.§9$§.removeEventListener(LoginHandlerEvent.ERROR,this.§`!_§);
         §3!0§.§9$§.removeEventListener(LoginHandlerEvent.§<>§,this.§9!L§);
         this.§;G§.currentUIView.getItemByName("WaitingPopupLogin").setVisibility(false);
         this.§2!P§(param1.§+!K§);
      }
      
      private function §2!P§(param1:String) : void
      {
         this.§;G§.currentUIView.getItemByName("WaitingPopupLogin").setVisibility(false);
         switch(param1)
         {
            case §#!b§.CONNECTION_ERROR_RETRY:
               this.§;G§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(true);
               this.§;G§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               this.§;G§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(true);
               this.§;G§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            case §#!b§.NICKNAME_LENGTH:
               this.§;G§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            case §#!b§.PASSWORD_LENGTH:
               this.§;G§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               break;
            case §#!b§.PASSWORDS_DONT_MATCH:
               this.§;G§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               this.§;G§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(true);
               break;
            case §#!b§.INVALID_EMAIL:
               this.§;G§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(true);
               break;
            case §#!b§.FIELD_LENGTH:
               this.§;G§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            case §#!b§.FIELD_NOT_VALID:
               this.§;G§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            default:
               this.§;G§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(true);
               this.§;G§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               this.§;G§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(true);
               this.§;G§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
         }
         (this.§;G§.§+!_§ as § try§).§2M§.show(param1);
      }
      
      private function §+O§() : void
      {
         this.§;G§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(false);
         this.§;G§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         this.§;G§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         this.§;G§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
      }
   }
}
