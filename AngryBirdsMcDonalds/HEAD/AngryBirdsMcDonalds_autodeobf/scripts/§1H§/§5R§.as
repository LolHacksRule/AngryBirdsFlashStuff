package §1H§
{
   import §#!1§.§!!X§;
   import §#!1§.§!,§;
   import §&6§.§,!Y§;
   import §,!C§.§3!&§;
   import §0$§.§8!K§;
   import §0$§.§;L§;
   import §0$§.LoginHandlerEvent;
   import §5!W§.§,!B§;
   import §5!W§.§`X§;
   import §5!q§.§ !U§;
   import §5!q§.§true§;
   import §@!7§.§+!O§;
   import §@-§.§ x§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextField;
   
   public class §5R§
   {
       
      
      private var §0d§:§+!O§;
      
      private var §4!=§:§ !U§;
      
      private var §%!l§:§true§;
      
      private var §8!S§:§true§;
      
      public function §5R§(param1:§+!O§)
      {
         super();
         this.§0d§ = param1;
      }
      
      public function §-!h§() : void
      {
         var _loc1_:§ x§ = this.§0d§.currentUIView.getItemByName("Checkbox_RememberMe_Register") as § x§;
         if(this.§0d§.rememberMeToggled)
         {
            _loc1_.setComponentState(§ x§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc1_.setComponentState(§ x§.§%!"§);
         }
         _loc1_ = this.§0d§.currentUIView.getItemByName("Checkbox_Marketing") as § x§;
         if(this.§0d§.§'!^§)
         {
            _loc1_.setComponentState(§ x§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc1_.setComponentState(§ x§.§%!"§);
         }
         (this.§0d§.currentUIView.getItemByName("TextField_EmailField_Register") as §3!&§).§>!3§.addEventListener(MouseEvent.MOUSE_DOWN,this.§1!B§);
         (this.§0d§.currentUIView.getItemByName("TextField_PasswordField_Register") as §3!&§).§>!3§.addEventListener(MouseEvent.MOUSE_DOWN,this.§1!B§);
         (this.§0d§.currentUIView.getItemByName("TextField_PasswordFieldRepeat_Register") as §3!&§).§>!3§.addEventListener(MouseEvent.MOUSE_DOWN,this.§1!B§);
         (this.§0d§.currentUIView.getItemByName("TextField_NickNameField_Register") as §3!&§).§>!3§.addEventListener(MouseEvent.MOUSE_DOWN,this.§1!B§);
         new §!,§((this.§0d§.currentUIView.getItemByName("TextField_EmailField_Register") as §3!&§).§>!3§,§3![§.§<!5§,§3![§.§;W§,§3![§.§<]§);
         new §!,§((this.§0d§.currentUIView.getItemByName("TextField_PasswordField_Register") as §3!&§).§>!3§,§3![§.§<!5§,§3![§.§;W§,§3![§.§<]§);
         new §!,§((this.§0d§.currentUIView.getItemByName("TextField_PasswordFieldRepeat_Register") as §3!&§).§>!3§,§3![§.§<!5§,§3![§.§;W§,§3![§.§<]§);
         new §!,§((this.§0d§.currentUIView.getItemByName("TextField_NickNameField_Register") as §3!&§).§>!3§,§3![§.§<!5§,§3![§.§;W§,§3![§.§<]§);
         var _loc2_:TextField = (this.§0d§.currentUIView.getItemByName("TextField_Legal") as §3!&§).mClip.text;
         this.§4!=§ = new § !U§(_loc2_,"",_loc2_.parent);
         this.§4!=§.update();
         var _loc3_:String = §!!X§.§5!!§.§"9§("Login_Popup","Button_PrivacyPolicy");
         this.§%!l§ = this.§4!=§.§0<§(_loc3_);
         var _loc4_:String = §!!X§.§5!!§.§"9§("Login_Popup","Button_Eula");
         this.§8!S§ = this.§4!=§.§0<§(_loc4_);
         this.§%!l§.addEventListener(MouseEvent.MOUSE_UP,this.§ !O§);
         this.§8!S§.addEventListener(MouseEvent.MOUSE_UP,this.§!1§);
         if(§!!X§.§5!!§.getLanguage() == "zh")
         {
            this.§%!l§.§@N§ = 1;
            this.§8!S§.§@N§ = 1;
         }
         this.§4!=§.update();
         this.§&%§(false);
      }
      
      public function §&%§(param1:Boolean) : void
      {
         if(this.§%!l§ != null)
         {
            this.§%!l§.enabled = param1;
            this.§8!S§.enabled = param1;
         }
      }
      
      public function updateTextFields() : void
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         if(this.§4!=§ != null)
         {
            _loc1_ = §!!X§.§5!!§.§"9§("Login_Popup","Button_PrivacyPolicy");
            this.§%!l§.text = _loc1_;
            _loc2_ = §!!X§.§5!!§.§"9§("Login_Popup","Button_Eula");
            this.§8!S§.text = _loc2_;
            if(§!!X§.§5!!§.getLanguage() == "zh")
            {
               this.§%!l§.§@N§ = 1;
               this.§8!S§.§@N§ = 1;
            }
            else
            {
               this.§%!l§.§@N§ = 0;
               this.§8!S§.§@N§ = 0;
            }
            this.§4!=§.update();
         }
      }
      
      public function deActivate() : void
      {
         this.§%!l§.removeEventListener(MouseEvent.MOUSE_UP,this.§ !O§);
         this.§8!S§.removeEventListener(MouseEvent.MOUSE_UP,this.§!1§);
      }
      
      private function §!1§(param1:Event) : void
      {
         navigateToURL(new URLRequest("http://www.rovio.com/eula/"),"_blank");
      }
      
      private function § !O§(param1:Event) : void
      {
         navigateToURL(new URLRequest("http://www.rovio.com/Privacy"),"_blank");
      }
      
      public function dispose() : void
      {
         §8!K§.§5!!§.removeEventListener(LoginHandlerEvent.ERROR,this.§@f§);
         §8!K§.§5!!§.removeEventListener(LoginHandlerEvent.§?f§,this.§`!@§);
         (this.§0d§.currentUIView.getItemByName("TextField_EmailField_Register") as §3!&§).§>!3§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§1!B§);
         (this.§0d§.currentUIView.getItemByName("TextField_PasswordField_Register") as §3!&§).§>!3§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§1!B§);
         (this.§0d§.currentUIView.getItemByName("TextField_PasswordFieldRepeat_Register") as §3!&§).§>!3§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§1!B§);
         (this.§0d§.currentUIView.getItemByName("TextField_NickNameField_Register") as §3!&§).§>!3§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§1!B§);
      }
      
      private function §1!B§(param1:MouseEvent) : void
      {
         this.§0d§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(false);
         this.§0d§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         this.§0d§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         this.§0d§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         this.§0d§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         this.§0d§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
         (this.§0d§.§4X§ as §,!B§).§;![§.hide();
      }
      
      public function activate() : void
      {
         this.§0d§.setObjectToFront(this.§0d§.currentUIView.getItemByName("Container_Register_Tab"));
         this.§0d§.currentUIView.getItemByName("TextField_UserNameField").setVisibility(false);
         this.§0d§.currentUIView.getItemByName("TextField_PasswordField").setVisibility(false);
         this.§0d§.currentUIView.getItemByName("Button_Submit").setVisibility(false);
         this.§0d§.currentUIView.getItemByName("Checkbox_RememberMe").setVisibility(false);
         this.§0d§.currentUIView.getItemByName("Checkbox_Marketing").setVisibility(false);
         this.§0d§.currentUIView.getItemByName("Button_ForgotPassword").setVisibility(false);
         this.§0d§.currentUIView.getItemByName("TextField_EmailField_Register").setVisibility(true);
         this.§0d§.currentUIView.getItemByName("TextField_PasswordField_Register").setVisibility(true);
         this.§0d§.currentUIView.getItemByName("TextField_PasswordFieldRepeat_Register").setVisibility(true);
         this.§0d§.currentUIView.getItemByName("TextField_NickNameField_Register").setVisibility(true);
         this.§0d§.currentUIView.getItemByName("Checkbox_RememberMe_Register").setVisibility(true);
         this.§0d§.currentUIView.getItemByName("Checkbox_Marketing").setVisibility(true);
         this.§0d§.currentUIView.getItemByName("Button_Submit_Register").setVisibility(true);
         var _loc1_:§3!&§ = this.§0d§.currentUIView.getItemByName("TextField_NickNameField_Register") as §3!&§;
         var _loc2_:§3!&§ = this.§0d§.currentUIView.getItemByName("TextField_EmailField_Register") as §3!&§;
         var _loc3_:§3!&§ = this.§0d§.currentUIView.getItemByName("TextField_PasswordField_Register") as §3!&§;
         var _loc4_:§3!&§ = this.§0d§.currentUIView.getItemByName("TextField_PasswordFieldRepeat_Register") as §3!&§;
         _loc1_.§>!3§.restrict = §+!O§.§ l§;
         _loc4_.§>!3§.restrict = §+!O§.§+!_§;
         _loc3_.§>!3§.restrict = §+!O§.§+!_§;
         _loc2_.§>!3§.restrict = §+!O§.§[!,§;
         _loc1_.§>!3§.maxChars = 12;
         _loc2_.§>!3§.maxChars = §+!O§.§continue§;
         _loc2_.§>!3§.tabIndex = 1;
         _loc3_.§>!3§.tabIndex = 2;
         _loc4_.§>!3§.tabIndex = 3;
         _loc1_.§>!3§.tabIndex = 4;
      }
      
      public function §4o§() : void
      {
         var _loc2_:String = this.§0d§.currentUIView.getText("TextField_NickNameField_Register");
         var _loc3_:String = this.§0d§.currentUIView.getText("TextField_PasswordField_Register");
         var _loc4_:String = this.§0d§.currentUIView.getText("TextField_PasswordFieldRepeat_Register");
         var _loc5_:String = this.§0d§.currentUIView.getText("TextField_EmailField_Register");
         this.§>!2§();
         this.§0d§.§>§ = _loc5_;
         this.§0d§.§=!J§ = _loc3_;
         var _loc6_:int = 5;
         var _loc9_:RegExp;
         if(!(_loc9_ = /^[a-z0-9_.-]+@[a-z0-9-]+[.][a-z0-9-.]+$/).test(_loc5_))
         {
            this.§>m§(§,!Y§.INVALID_EMAIL);
            return;
         }
         if(_loc5_.length < 1)
         {
            this.§>m§(§,!Y§.INVALID_EMAIL);
            return;
         }
         if(_loc3_.length < 5)
         {
            this.§>m§(§,!Y§.PASSWORD_LENGTH);
            return;
         }
         if(_loc4_.length < 5)
         {
            this.§>m§(§,!Y§.PASSWORDS_DONT_MATCH);
            return;
         }
         if(_loc3_ != _loc4_)
         {
            this.§>m§(§,!Y§.PASSWORDS_DONT_MATCH);
            return;
         }
         if(_loc2_.length < _loc6_)
         {
            this.§>m§(§,!Y§.NICKNAME_LENGTH);
            return;
         }
         var _loc10_:Object;
         (_loc10_ = {}).nickName = _loc2_;
         _loc10_.password = _loc3_;
         _loc10_.email = _loc5_;
         _loc10_.marketing = this.§0d§.§'!^§;
         var _loc11_:Object = {
            "type":"registerPlayer",
            "player":_loc10_
         };
         §8!K§.§5!!§.addEventListener(LoginHandlerEvent.§?f§,this.§`!@§);
         §8!K§.§5!!§.addEventListener(LoginHandlerEvent.ERROR,this.§@f§);
         §8!K§.§5!!§.§&!+§(_loc11_);
         this.§0d§.setObjectToFront(this.§0d§.currentUIView.getItemByName("WaitingPopupLogin"));
         this.§0d§.currentUIView.getItemByName("WaitingPopupLogin").setVisibility(true);
         §3![§.§5!6§ = new §;L§("");
         §`X§.sHighscoreSidebar.enableCreditsButton(false);
      }
      
      private function §`!@§(param1:LoginHandlerEvent) : void
      {
         §,!B§.§!F§ = true;
         §8!K§.§5!!§.removeEventListener(LoginHandlerEvent.ERROR,this.§@f§);
         §8!K§.§5!!§.removeEventListener(LoginHandlerEvent.§?f§,this.§`!@§);
         this.§0d§.currentUIView.getItemByName("WaitingPopupLogin").setVisibility(false);
         this.§0d§.§%!S§();
         this.§0d§.§8y§.mNextState = §,!B§.§>d§;
         this.§0d§.preClose();
      }
      
      private function §@f§(param1:LoginHandlerEvent) : void
      {
         §8!K§.§5!!§.removeEventListener(LoginHandlerEvent.ERROR,this.§@f§);
         §8!K§.§5!!§.removeEventListener(LoginHandlerEvent.§?f§,this.§`!@§);
         this.§0d§.currentUIView.getItemByName("WaitingPopupLogin").setVisibility(false);
         this.§>m§(param1.§15§);
      }
      
      private function §>m§(param1:String) : void
      {
         this.§0d§.currentUIView.getItemByName("WaitingPopupLogin").setVisibility(false);
         switch(param1)
         {
            case §,!Y§.CONNECTION_ERROR_RETRY:
               this.§0d§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(true);
               this.§0d§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               this.§0d§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(true);
               this.§0d§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            case §,!Y§.NICKNAME_LENGTH:
               this.§0d§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            case §,!Y§.PASSWORD_LENGTH:
               this.§0d§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               break;
            case §,!Y§.PASSWORDS_DONT_MATCH:
               this.§0d§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               this.§0d§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(true);
               break;
            case §,!Y§.INVALID_EMAIL:
               this.§0d§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(true);
               break;
            case §,!Y§.FIELD_LENGTH:
               this.§0d§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            case §,!Y§.FIELD_NOT_VALID:
               this.§0d§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            default:
               this.§0d§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(true);
               this.§0d§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               this.§0d§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(true);
               this.§0d§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
         }
         (this.§0d§.§4X§ as §,!B§).§;![§.show(param1);
      }
      
      private function §>!2§() : void
      {
         this.§0d§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(false);
         this.§0d§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         this.§0d§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         this.§0d§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
      }
   }
}
