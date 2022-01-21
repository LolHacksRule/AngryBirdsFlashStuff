package §6V§
{
   import § e§.§#!N§;
   import § e§.§&!&§;
   import §31§.§?![§;
   import §6@§.§>n§;
   import §6Y§.§>!F§;
   import §7!Q§.§;_§;
   import §7!Q§.§=!G§;
   import §7!Q§.LoginHandlerEvent;
   import §<!R§.§&?§;
   import §<!R§.§>!9§;
   import §[l§.§ A§;
   import §[l§.§,Q§;
   import §`!@§.§#e§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextField;
   
   public class §'=§
   {
       
      
      private var §+V§:§>!F§;
      
      private var §<!P§:§>!9§;
      
      private var §5P§:§&?§;
      
      private var §+!"§:§&?§;
      
      public function §'=§(param1:§>!F§)
      {
         super();
         this.§+V§ = param1;
      }
      
      public function §^!l§() : void
      {
         var _loc1_:§>n§ = this.§+V§.currentUIView.getItemByName("Checkbox_RememberMe_Register") as §>n§;
         if(this.§+V§.rememberMeToggled)
         {
            _loc1_.setComponentState(§>n§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc1_.setComponentState(§>n§.§`w§);
         }
         _loc1_ = this.§+V§.currentUIView.getItemByName("Checkbox_Marketing") as §>n§;
         if(this.§+V§.§"l§)
         {
            _loc1_.setComponentState(§>n§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc1_.setComponentState(§>n§.§`w§);
         }
         (this.§+V§.currentUIView.getItemByName("TextField_EmailField_Register") as §?![§).§&t§.addEventListener(MouseEvent.MOUSE_DOWN,this.§2U§);
         (this.§+V§.currentUIView.getItemByName("TextField_PasswordField_Register") as §?![§).§&t§.addEventListener(MouseEvent.MOUSE_DOWN,this.§2U§);
         (this.§+V§.currentUIView.getItemByName("TextField_PasswordFieldRepeat_Register") as §?![§).§&t§.addEventListener(MouseEvent.MOUSE_DOWN,this.§2U§);
         (this.§+V§.currentUIView.getItemByName("TextField_NickNameField_Register") as §?![§).§&t§.addEventListener(MouseEvent.MOUSE_DOWN,this.§2U§);
         new §#!N§((this.§+V§.currentUIView.getItemByName("TextField_EmailField_Register") as §?![§).§&t§,§ 4§.§5x§,§ 4§.§!!l§,§ 4§.§9!`§);
         new §#!N§((this.§+V§.currentUIView.getItemByName("TextField_PasswordField_Register") as §?![§).§&t§,§ 4§.§5x§,§ 4§.§!!l§,§ 4§.§9!`§);
         new §#!N§((this.§+V§.currentUIView.getItemByName("TextField_PasswordFieldRepeat_Register") as §?![§).§&t§,§ 4§.§5x§,§ 4§.§!!l§,§ 4§.§9!`§);
         new §#!N§((this.§+V§.currentUIView.getItemByName("TextField_NickNameField_Register") as §?![§).§&t§,§ 4§.§5x§,§ 4§.§!!l§,§ 4§.§9!`§);
         var _loc2_:TextField = (this.§+V§.currentUIView.getItemByName("TextField_Legal") as §?![§).mClip.text;
         this.§<!P§ = new §>!9§(_loc2_,"",_loc2_.parent);
         this.§<!P§.update();
         var _loc3_:String = §&!&§.§+j§.§'f§("Login_Popup","Button_PrivacyPolicy");
         this.§5P§ = this.§<!P§.§0@§(_loc3_);
         var _loc4_:String = §&!&§.§+j§.§'f§("Login_Popup","Button_Eula");
         this.§+!"§ = this.§<!P§.§0@§(_loc4_);
         this.§5P§.addEventListener(MouseEvent.MOUSE_UP,this.§#w§);
         this.§+!"§.addEventListener(MouseEvent.MOUSE_UP,this.§^=§);
         if(§&!&§.§+j§.getLanguage() == "zh")
         {
            this.§5P§.§%[§ = 1;
            this.§+!"§.§%[§ = 1;
         }
         this.§<!P§.update();
         this.§"!+§(false);
      }
      
      public function §"!+§(param1:Boolean) : void
      {
         if(this.§5P§ != null)
         {
            this.§5P§.enabled = param1;
            this.§+!"§.enabled = param1;
         }
      }
      
      public function updateTextFields() : void
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         if(this.§<!P§ != null)
         {
            _loc1_ = §&!&§.§+j§.§'f§("Login_Popup","Button_PrivacyPolicy");
            this.§5P§.text = _loc1_;
            _loc2_ = §&!&§.§+j§.§'f§("Login_Popup","Button_Eula");
            this.§+!"§.text = _loc2_;
            if(§&!&§.§+j§.getLanguage() == "zh")
            {
               this.§5P§.§%[§ = 1;
               this.§+!"§.§%[§ = 1;
            }
            else
            {
               this.§5P§.§%[§ = 0;
               this.§+!"§.§%[§ = 0;
            }
            this.§<!P§.update();
         }
      }
      
      public function deActivate() : void
      {
         this.§5P§.removeEventListener(MouseEvent.MOUSE_UP,this.§#w§);
         this.§+!"§.removeEventListener(MouseEvent.MOUSE_UP,this.§^=§);
      }
      
      private function §^=§(param1:Event) : void
      {
         navigateToURL(new URLRequest("http://www.rovio.com/eula/"),"_blank");
      }
      
      private function §#w§(param1:Event) : void
      {
         navigateToURL(new URLRequest("http://www.rovio.com/Privacy"),"_blank");
      }
      
      public function dispose() : void
      {
         §=!G§.§+j§.removeEventListener(LoginHandlerEvent.ERROR,this.§,!I§);
         §=!G§.§+j§.removeEventListener(LoginHandlerEvent.§^!%§,this.§]&§);
         (this.§+V§.currentUIView.getItemByName("TextField_EmailField_Register") as §?![§).§&t§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§2U§);
         (this.§+V§.currentUIView.getItemByName("TextField_PasswordField_Register") as §?![§).§&t§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§2U§);
         (this.§+V§.currentUIView.getItemByName("TextField_PasswordFieldRepeat_Register") as §?![§).§&t§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§2U§);
         (this.§+V§.currentUIView.getItemByName("TextField_NickNameField_Register") as §?![§).§&t§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§2U§);
      }
      
      private function §2U§(param1:MouseEvent) : void
      {
         this.§+V§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(false);
         this.§+V§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         this.§+V§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         this.§+V§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         this.§+V§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         this.§+V§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
         (this.§+V§.§"w§ as § A§).§8O§.hide();
      }
      
      public function activate() : void
      {
         this.§+V§.setObjectToFront(this.§+V§.currentUIView.getItemByName("Container_Register_Tab"));
         this.§+V§.currentUIView.getItemByName("TextField_UserNameField").setVisibility(false);
         this.§+V§.currentUIView.getItemByName("TextField_PasswordField").setVisibility(false);
         this.§+V§.currentUIView.getItemByName("Button_Submit").setVisibility(false);
         this.§+V§.currentUIView.getItemByName("Checkbox_RememberMe").setVisibility(false);
         this.§+V§.currentUIView.getItemByName("Checkbox_Marketing").setVisibility(false);
         this.§+V§.currentUIView.getItemByName("Button_ForgotPassword").setVisibility(false);
         this.§+V§.currentUIView.getItemByName("TextField_EmailField_Register").setVisibility(true);
         this.§+V§.currentUIView.getItemByName("TextField_PasswordField_Register").setVisibility(true);
         this.§+V§.currentUIView.getItemByName("TextField_PasswordFieldRepeat_Register").setVisibility(true);
         this.§+V§.currentUIView.getItemByName("TextField_NickNameField_Register").setVisibility(true);
         this.§+V§.currentUIView.getItemByName("Checkbox_RememberMe_Register").setVisibility(true);
         this.§+V§.currentUIView.getItemByName("Checkbox_Marketing").setVisibility(true);
         this.§+V§.currentUIView.getItemByName("Button_Submit_Register").setVisibility(true);
         var _loc1_:§?![§ = this.§+V§.currentUIView.getItemByName("TextField_NickNameField_Register") as §?![§;
         var _loc2_:§?![§ = this.§+V§.currentUIView.getItemByName("TextField_EmailField_Register") as §?![§;
         var _loc3_:§?![§ = this.§+V§.currentUIView.getItemByName("TextField_PasswordField_Register") as §?![§;
         var _loc4_:§?![§ = this.§+V§.currentUIView.getItemByName("TextField_PasswordFieldRepeat_Register") as §?![§;
         _loc1_.§&t§.restrict = §>!F§.§-J§;
         _loc4_.§&t§.restrict = §>!F§.§',§;
         _loc3_.§&t§.restrict = §>!F§.§',§;
         _loc2_.§&t§.restrict = §>!F§.§>!d§;
         _loc1_.§&t§.maxChars = 12;
         _loc2_.§&t§.maxChars = §>!F§.§]!M§;
         _loc2_.§&t§.tabIndex = 1;
         _loc3_.§&t§.tabIndex = 2;
         _loc4_.§&t§.tabIndex = 3;
         _loc1_.§&t§.tabIndex = 4;
      }
      
      public function §#q§() : void
      {
         var _loc2_:String = this.§+V§.currentUIView.getText("TextField_NickNameField_Register");
         var _loc3_:String = this.§+V§.currentUIView.getText("TextField_PasswordField_Register");
         var _loc4_:String = this.§+V§.currentUIView.getText("TextField_PasswordFieldRepeat_Register");
         var _loc5_:String = this.§+V§.currentUIView.getText("TextField_EmailField_Register");
         this.§2!o§();
         this.§+V§.§#a§ = _loc5_;
         this.§+V§.§,X§ = _loc3_;
         var _loc6_:int = 5;
         var _loc9_:RegExp;
         if(!(_loc9_ = /^[a-z0-9_.-]+@[a-z0-9-]+[.][a-z0-9-.]+$/).test(_loc5_))
         {
            this.§+!Q§(§#e§.INVALID_EMAIL);
            return;
         }
         if(_loc5_.length < 1)
         {
            this.§+!Q§(§#e§.INVALID_EMAIL);
            return;
         }
         if(_loc3_.length < 5)
         {
            this.§+!Q§(§#e§.PASSWORD_LENGTH);
            return;
         }
         if(_loc4_.length < 5)
         {
            this.§+!Q§(§#e§.PASSWORDS_DONT_MATCH);
            return;
         }
         if(_loc3_ != _loc4_)
         {
            this.§+!Q§(§#e§.PASSWORDS_DONT_MATCH);
            return;
         }
         if(_loc2_.length < _loc6_)
         {
            this.§+!Q§(§#e§.NICKNAME_LENGTH);
            return;
         }
         var _loc10_:Object;
         (_loc10_ = {}).nickName = _loc2_;
         _loc10_.password = _loc3_;
         _loc10_.email = _loc5_;
         _loc10_.marketing = this.§+V§.§"l§;
         var _loc11_:Object = {
            "type":"registerPlayer",
            "player":_loc10_
         };
         §=!G§.§+j§.addEventListener(LoginHandlerEvent.§^!%§,this.§]&§);
         §=!G§.§+j§.addEventListener(LoginHandlerEvent.ERROR,this.§,!I§);
         §=!G§.§+j§.§'v§(_loc11_);
         this.§+V§.setObjectToFront(this.§+V§.currentUIView.getItemByName("WaitingPopupLogin"));
         this.§+V§.currentUIView.getItemByName("WaitingPopupLogin").setVisibility(true);
         § 4§.§?H§ = new §;_§("");
         §,Q§.sHighscoreSidebar.enableCreditsButton(false);
      }
      
      private function §]&§(param1:LoginHandlerEvent) : void
      {
         § A§.§+!E§ = true;
         §=!G§.§+j§.removeEventListener(LoginHandlerEvent.ERROR,this.§,!I§);
         §=!G§.§+j§.removeEventListener(LoginHandlerEvent.§^!%§,this.§]&§);
         this.§+V§.currentUIView.getItemByName("WaitingPopupLogin").setVisibility(false);
         this.§+V§.§ !4§();
         this.§+V§.§ E§.mNextState = § A§.§!_§;
         this.§+V§.preClose();
      }
      
      private function §,!I§(param1:LoginHandlerEvent) : void
      {
         §=!G§.§+j§.removeEventListener(LoginHandlerEvent.ERROR,this.§,!I§);
         §=!G§.§+j§.removeEventListener(LoginHandlerEvent.§^!%§,this.§]&§);
         this.§+V§.currentUIView.getItemByName("WaitingPopupLogin").setVisibility(false);
         this.§+!Q§(param1.§]!a§);
      }
      
      private function §+!Q§(param1:String) : void
      {
         this.§+V§.currentUIView.getItemByName("WaitingPopupLogin").setVisibility(false);
         switch(param1)
         {
            case §#e§.CONNECTION_ERROR_RETRY:
               this.§+V§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(true);
               this.§+V§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               this.§+V§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(true);
               this.§+V§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            case §#e§.NICKNAME_LENGTH:
               this.§+V§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            case §#e§.PASSWORD_LENGTH:
               this.§+V§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               break;
            case §#e§.PASSWORDS_DONT_MATCH:
               this.§+V§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               this.§+V§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(true);
               break;
            case §#e§.INVALID_EMAIL:
               this.§+V§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(true);
               break;
            case §#e§.FIELD_LENGTH:
               this.§+V§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            case §#e§.FIELD_NOT_VALID:
               this.§+V§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
               break;
            default:
               this.§+V§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(true);
               this.§+V§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(true);
               this.§+V§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(true);
               this.§+V§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(true);
         }
         (this.§+V§.§"w§ as § A§).§8O§.show(param1);
      }
      
      private function §2!o§() : void
      {
         this.§+V§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(false);
         this.§+V§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         this.§+V§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         this.§+V§.currentUIView.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
      }
   }
}
