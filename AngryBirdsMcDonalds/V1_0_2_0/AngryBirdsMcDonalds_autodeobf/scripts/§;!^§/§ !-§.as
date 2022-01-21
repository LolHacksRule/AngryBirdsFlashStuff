package §;!^§
{
   import § v§.§?!E§;
   import § v§.LoginHandlerEvent;
   import §"%§.§+!&§;
   import §"%§.§9j§;
   import §4%§.§9!Z§;
   import §5<§.§-!a§;
   import §7"§.§8!#§;
   import §>G§.§]!W§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   
   public class § !-§
   {
       
      
      private var §=!M§:§-!a§;
      
      public function § !-§(param1:§-!a§)
      {
         super();
         this.§=!M§ = param1;
      }
      
      public function § d§() : void
      {
         var _loc1_:§9j§ = this.§=!M§.currentUIView.getItemByName("Checkbox_RememberMe") as §9j§;
         if(this.§=!M§.rememberMeToggled)
         {
            _loc1_.setComponentState(§9j§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc1_.setComponentState(§9j§.§'&§);
         }
         (this.§=!M§.currentUIView.getItemByName("TextField_UserNameField") as §]!W§).§^!m§.addEventListener(MouseEvent.MOUSE_DOWN,this.§>9§);
         (this.§=!M§.currentUIView.getItemByName("TextField_PasswordField") as §]!W§).§^!m§.addEventListener(MouseEvent.MOUSE_DOWN,this.§>9§);
         (this.§=!M§.currentUIView.getItemByName("TextField_UserNameField") as §]!W§).§^!m§.restrict = §-!a§.§0!<§;
         (this.§=!M§.currentUIView.getItemByName("TextField_PasswordField") as §]!W§).§^!m§.restrict = §-!a§.§[!I§;
         (this.§=!M§.currentUIView.getItemByName("TextField_UserNameField") as §]!W§).§^!m§.maxChars = §-!a§.§<L§;
         (this.§=!M§.currentUIView.getItemByName("TextField_UserNameField") as §]!W§).§"h§(§'j§.§6!D§,§'j§.§3!<§,§'j§.§>5§);
         (this.§=!M§.currentUIView.getItemByName("TextField_PasswordField") as §]!W§).§"h§(§'j§.§6!D§,§'j§.§3!<§,§'j§.§>5§);
         this.§-W§();
      }
      
      private function §2!Y§(param1:TextField) : Number
      {
         var _loc2_:Rectangle = param1.getCharBoundaries(0);
         var _loc3_:Rectangle = param1.getCharBoundaries(param1.length - 1);
         return _loc3_.x + _loc3_.width - _loc2_.x + _loc2_.width / 2;
      }
      
      public function §-W§() : void
      {
         var _loc1_:TextField = this.§=!M§.currentUIView.getItemByName("Button_ForgotPassword").mClip.text;
         var _loc2_:MovieClip = this.§=!M§.currentUIView.getItemByName("Button_ForgotPassword").mClip.MovieClip_Forgot_Underline;
         var _loc3_:MovieClip = this.§=!M§.currentUIView.getItemByName("Button_ForgotPassword").mClip.MouseHitArea;
         _loc2_.width = this.§2!Y§(_loc1_);
         _loc3_.width = _loc2_.width;
      }
      
      public function dispose() : void
      {
         §?!E§.§'!S§.removeEventListener(LoginHandlerEvent.§`Y§,this.§^`§);
         §?!E§.§'!S§.removeEventListener(LoginHandlerEvent.ERROR,this.§6V§);
         (this.§=!M§.currentUIView.getItemByName("TextField_UserNameField") as §]!W§).§^!m§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§>9§);
         (this.§=!M§.currentUIView.getItemByName("TextField_PasswordField") as §]!W§).§^!m§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§>9§);
      }
      
      public function activate() : void
      {
         var _loc1_:§+!&§ = this.§=!M§.currentUIView.getItemByName("Container_Login_Tab");
         this.§=!M§.setObjectToFront(_loc1_);
         this.§=!M§.currentUIView.getItemByName("TextField_UserNameField").setVisibility(true);
         this.§=!M§.currentUIView.getItemByName("TextField_PasswordField").setVisibility(true);
         this.§=!M§.currentUIView.getItemByName("Button_Submit").setVisibility(true);
         this.§=!M§.currentUIView.getItemByName("Checkbox_RememberMe").setVisibility(true);
         this.§=!M§.currentUIView.getItemByName("Checkbox_Marketing").setVisibility(true);
         this.§=!M§.currentUIView.getItemByName("Button_ForgotPassword").setVisibility(true);
         this.§=!M§.currentUIView.getItemByName("TextField_EmailField_Register").setVisibility(false);
         this.§=!M§.currentUIView.getItemByName("TextField_PasswordField_Register").setVisibility(false);
         this.§=!M§.currentUIView.getItemByName("TextField_PasswordFieldRepeat_Register").setVisibility(false);
         this.§=!M§.currentUIView.getItemByName("TextField_NickNameField_Register").setVisibility(false);
         this.§=!M§.currentUIView.getItemByName("Checkbox_RememberMe_Register").setVisibility(false);
         this.§=!M§.currentUIView.getItemByName("Checkbox_Marketing").setVisibility(false);
         this.§=!M§.currentUIView.getItemByName("Button_Submit_Register").setVisibility(false);
      }
      
      private function §>9§(param1:MouseEvent) : void
      {
         this.§=!M§.currentUIView.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(false);
         this.§=!M§.currentUIView.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(false);
         (this.§=!M§.§<!S§ as §9!Z§).§]§.hide();
      }
      
      public function §0!e§() : void
      {
         var _loc1_:String = this.§=!M§.currentUIView.getText("TextField_UserNameField");
         var _loc2_:String = this.§=!M§.currentUIView.getText("TextField_PasswordField");
         this.§=!M§.setObjectToFront(this.§=!M§.currentUIView.getItemByName("WaitingPopupLogin"));
         this.§=!M§.currentUIView.getItemByName("WaitingPopupLogin").setVisibility(true);
         §?!E§.§'!S§.addEventListener(LoginHandlerEvent.§`Y§,this.§^`§);
         §?!E§.§'!S§.addEventListener(LoginHandlerEvent.ERROR,this.§6V§);
         §?!E§.§'!S§.§7!6§(_loc1_,_loc2_,this.§=!M§.rememberMeToggled);
      }
      
      private function §^`§(param1:LoginHandlerEvent) : void
      {
         §9!Z§.§@H§ = true;
         §?!E§.§'!S§.removeEventListener(LoginHandlerEvent.§`Y§,this.§^`§);
         §?!E§.§'!S§.removeEventListener(LoginHandlerEvent.ERROR,this.§6V§);
         this.§=!M§.currentUIView.getItemByName("WaitingPopupLogin").setVisibility(false);
         this.§=!M§.§ !;§.mNextState = §9!Z§.§4D§;
         this.§=!M§.preClose();
      }
      
      private function §6V§(param1:LoginHandlerEvent) : void
      {
         §?!E§.§'!S§.removeEventListener(LoginHandlerEvent.§`Y§,this.§^`§);
         §?!E§.§'!S§.removeEventListener(LoginHandlerEvent.ERROR,this.§6V§);
         this.§3Y§(param1.§7!F§);
         this.§=!M§.currentUIView.getItemByName("WaitingPopupLogin").setVisibility(false);
      }
      
      private function §3Y§(param1:String) : void
      {
         this.§=!M§.currentUIView.getItemByName("WaitingPopupLogin").setVisibility(false);
         switch(param1)
         {
            case §8!#§.INVALID_EMAIL:
               this.§=!M§.currentUIView.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(true);
               break;
            case §8!#§.PASSWORD_MISSING:
               this.§=!M§.currentUIView.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(true);
               break;
            case §8!#§.CONNECTION_ERROR_RETRY:
               this.§=!M§.currentUIView.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(true);
               this.§=!M§.currentUIView.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(true);
               break;
            default:
               this.§=!M§.currentUIView.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(true);
               this.§=!M§.currentUIView.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(true);
         }
         (this.§=!M§.§<!S§ as §9!Z§).§]§.show(param1);
      }
   }
}
