package §5T§
{
   import § #§.§[!B§;
   import §2y§.§?`§;
   import §3!R§.§,=§;
   import §3!R§.§0!R§;
   import §7-§.§-e§;
   import §<Z§.§1!X§;
   import §=b§.§&!1§;
   import §=b§.LoginHandlerEvent;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   
   public class §?a§
   {
       
      
      private var §0F§:§[!B§;
      
      public function §?a§(param1:§[!B§)
      {
         super();
         this.§0F§ = param1;
      }
      
      public function §%!j§() : void
      {
         var _loc1_:§,=§ = this.§0F§.currentUIView.getItemByName("Checkbox_RememberMe") as §,=§;
         if(this.§0F§.rememberMeToggled)
         {
            _loc1_.setComponentState(§,=§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc1_.setComponentState(§,=§.§!g§);
         }
         (this.§0F§.currentUIView.getItemByName("TextField_UserNameField") as §?`§).§0!j§.addEventListener(MouseEvent.MOUSE_DOWN,this.§%6§);
         (this.§0F§.currentUIView.getItemByName("TextField_PasswordField") as §?`§).§0!j§.addEventListener(MouseEvent.MOUSE_DOWN,this.§%6§);
         (this.§0F§.currentUIView.getItemByName("TextField_UserNameField") as §?`§).§0!j§.restrict = §[!B§.§3b§;
         (this.§0F§.currentUIView.getItemByName("TextField_PasswordField") as §?`§).§0!j§.restrict = §[!B§.§33§;
         (this.§0F§.currentUIView.getItemByName("TextField_UserNameField") as §?`§).§0!j§.maxChars = §[!B§.§>=§;
         (this.§0F§.currentUIView.getItemByName("TextField_UserNameField") as §?`§).§;!!§(§2!M§.§!!9§,§2!M§.§ J§,§2!M§.§@?§);
         (this.§0F§.currentUIView.getItemByName("TextField_PasswordField") as §?`§).§;!!§(§2!M§.§!!9§,§2!M§.§ J§,§2!M§.§@?§);
         this.§;!6§();
      }
      
      private function §8!L§(param1:TextField) : Number
      {
         var _loc2_:Rectangle = param1.getCharBoundaries(0);
         var _loc3_:Rectangle = param1.getCharBoundaries(param1.length - 1);
         return _loc3_.x + _loc3_.width - _loc2_.x + _loc2_.width / 2;
      }
      
      public function §;!6§() : void
      {
         var _loc1_:TextField = this.§0F§.currentUIView.getItemByName("Button_ForgotPassword").mClip.text;
         var _loc2_:MovieClip = this.§0F§.currentUIView.getItemByName("Button_ForgotPassword").mClip.MovieClip_Forgot_Underline;
         var _loc3_:MovieClip = this.§0F§.currentUIView.getItemByName("Button_ForgotPassword").mClip.MouseHitArea;
         _loc2_.width = this.§8!L§(_loc1_);
         _loc3_.width = _loc2_.width;
      }
      
      public function dispose() : void
      {
         §&!1§.§@!7§.removeEventListener(LoginHandlerEvent.§>!F§,this.§8C§);
         §&!1§.§@!7§.removeEventListener(LoginHandlerEvent.ERROR,this.§ !j§);
         (this.§0F§.currentUIView.getItemByName("TextField_UserNameField") as §?`§).§0!j§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§%6§);
         (this.§0F§.currentUIView.getItemByName("TextField_PasswordField") as §?`§).§0!j§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§%6§);
      }
      
      public function activate() : void
      {
         var _loc1_:§0!R§ = this.§0F§.currentUIView.getItemByName("Container_Login_Tab");
         this.§0F§.setObjectToFront(_loc1_);
         this.§0F§.currentUIView.getItemByName("TextField_UserNameField").setVisibility(true);
         this.§0F§.currentUIView.getItemByName("TextField_PasswordField").setVisibility(true);
         this.§0F§.currentUIView.getItemByName("Button_Submit").setVisibility(true);
         this.§0F§.currentUIView.getItemByName("Checkbox_RememberMe").setVisibility(true);
         this.§0F§.currentUIView.getItemByName("Checkbox_Marketing").setVisibility(true);
         this.§0F§.currentUIView.getItemByName("Button_ForgotPassword").setVisibility(true);
         this.§0F§.currentUIView.getItemByName("TextField_EmailField_Register").setVisibility(false);
         this.§0F§.currentUIView.getItemByName("TextField_PasswordField_Register").setVisibility(false);
         this.§0F§.currentUIView.getItemByName("TextField_PasswordFieldRepeat_Register").setVisibility(false);
         this.§0F§.currentUIView.getItemByName("TextField_NickNameField_Register").setVisibility(false);
         this.§0F§.currentUIView.getItemByName("Checkbox_RememberMe_Register").setVisibility(false);
         this.§0F§.currentUIView.getItemByName("Checkbox_Marketing").setVisibility(false);
         this.§0F§.currentUIView.getItemByName("Button_Submit_Register").setVisibility(false);
      }
      
      private function §%6§(param1:MouseEvent) : void
      {
         this.§0F§.currentUIView.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(false);
         this.§0F§.currentUIView.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(false);
         (this.§0F§.§>!d§ as §-e§).§5!0§.hide();
      }
      
      public function §=!T§() : void
      {
         var _loc1_:String = this.§0F§.currentUIView.getText("TextField_UserNameField");
         var _loc2_:String = this.§0F§.currentUIView.getText("TextField_PasswordField");
         this.§0F§.setObjectToFront(this.§0F§.currentUIView.getItemByName("WaitingPopupLogin"));
         this.§0F§.currentUIView.getItemByName("WaitingPopupLogin").setVisibility(true);
         §&!1§.§@!7§.addEventListener(LoginHandlerEvent.§>!F§,this.§8C§);
         §&!1§.§@!7§.addEventListener(LoginHandlerEvent.ERROR,this.§ !j§);
         §&!1§.§@!7§.§&!l§(_loc1_,_loc2_,this.§0F§.rememberMeToggled);
      }
      
      private function §8C§(param1:LoginHandlerEvent) : void
      {
         §-e§.§-!J§ = true;
         §&!1§.§@!7§.removeEventListener(LoginHandlerEvent.§>!F§,this.§8C§);
         §&!1§.§@!7§.removeEventListener(LoginHandlerEvent.ERROR,this.§ !j§);
         this.§0F§.currentUIView.getItemByName("WaitingPopupLogin").setVisibility(false);
         this.§0F§.§+!+§.mNextState = §-e§.§<@§;
         this.§0F§.preClose();
      }
      
      private function § !j§(param1:LoginHandlerEvent) : void
      {
         §&!1§.§@!7§.removeEventListener(LoginHandlerEvent.§>!F§,this.§8C§);
         §&!1§.§@!7§.removeEventListener(LoginHandlerEvent.ERROR,this.§ !j§);
         this.§`!%§(param1.§`!L§);
         this.§0F§.currentUIView.getItemByName("WaitingPopupLogin").setVisibility(false);
      }
      
      private function §`!%§(param1:String) : void
      {
         this.§0F§.currentUIView.getItemByName("WaitingPopupLogin").setVisibility(false);
         switch(param1)
         {
            case §1!X§.INVALID_EMAIL:
               this.§0F§.currentUIView.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(true);
               break;
            case §1!X§.PASSWORD_MISSING:
               this.§0F§.currentUIView.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(true);
               break;
            case §1!X§.CONNECTION_ERROR_RETRY:
               this.§0F§.currentUIView.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(true);
               this.§0F§.currentUIView.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(true);
               break;
            default:
               this.§0F§.currentUIView.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(true);
               this.§0F§.currentUIView.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(true);
         }
         (this.§0F§.§>!d§ as §-e§).§5!0§.show(param1);
      }
   }
}
