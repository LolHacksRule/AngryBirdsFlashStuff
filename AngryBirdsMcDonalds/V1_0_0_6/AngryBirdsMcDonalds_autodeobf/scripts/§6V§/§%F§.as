package §6V§
{
   import §31§.§?![§;
   import §6@§.§'!F§;
   import §6@§.§>n§;
   import §6Y§.§>!F§;
   import §7!Q§.§=!G§;
   import §7!Q§.LoginHandlerEvent;
   import §[l§.§ A§;
   import §`!@§.§#e§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   
   public class §%F§
   {
       
      
      private var §+V§:§>!F§;
      
      public function §%F§(param1:§>!F§)
      {
         super();
         this.§+V§ = param1;
      }
      
      public function §>Z§() : void
      {
         var _loc1_:§>n§ = this.§+V§.currentUIView.getItemByName("Checkbox_RememberMe") as §>n§;
         if(this.§+V§.rememberMeToggled)
         {
            _loc1_.setComponentState(§>n§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc1_.setComponentState(§>n§.§`w§);
         }
         (this.§+V§.currentUIView.getItemByName("TextField_UserNameField") as §?![§).§&t§.addEventListener(MouseEvent.MOUSE_DOWN,this.§2U§);
         (this.§+V§.currentUIView.getItemByName("TextField_PasswordField") as §?![§).§&t§.addEventListener(MouseEvent.MOUSE_DOWN,this.§2U§);
         (this.§+V§.currentUIView.getItemByName("TextField_UserNameField") as §?![§).§&t§.restrict = §>!F§.§>!d§;
         (this.§+V§.currentUIView.getItemByName("TextField_PasswordField") as §?![§).§&t§.restrict = §>!F§.§',§;
         (this.§+V§.currentUIView.getItemByName("TextField_UserNameField") as §?![§).§&t§.maxChars = §>!F§.§]!M§;
         (this.§+V§.currentUIView.getItemByName("TextField_UserNameField") as §?![§).§8!,§(§ 4§.§5x§,§ 4§.§!!l§,§ 4§.§9!`§);
         (this.§+V§.currentUIView.getItemByName("TextField_PasswordField") as §?![§).§8!,§(§ 4§.§5x§,§ 4§.§!!l§,§ 4§.§9!`§);
         this.§in §();
      }
      
      private function §4!8§(param1:TextField) : Number
      {
         var _loc2_:Rectangle = param1.getCharBoundaries(0);
         var _loc3_:Rectangle = param1.getCharBoundaries(param1.length - 1);
         return _loc3_.x + _loc3_.width - _loc2_.x + _loc2_.width / 2;
      }
      
      public function §in §() : void
      {
         var _loc1_:TextField = this.§+V§.currentUIView.getItemByName("Button_ForgotPassword").mClip.text;
         var _loc2_:MovieClip = this.§+V§.currentUIView.getItemByName("Button_ForgotPassword").mClip.MovieClip_Forgot_Underline;
         var _loc3_:MovieClip = this.§+V§.currentUIView.getItemByName("Button_ForgotPassword").mClip.MouseHitArea;
         _loc2_.width = this.§4!8§(_loc1_);
         _loc3_.width = _loc2_.width;
      }
      
      public function dispose() : void
      {
         §=!G§.§+j§.removeEventListener(LoginHandlerEvent.§=!J§,this.§&!_§);
         §=!G§.§+j§.removeEventListener(LoginHandlerEvent.ERROR,this.§1!B§);
         (this.§+V§.currentUIView.getItemByName("TextField_UserNameField") as §?![§).§&t§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§2U§);
         (this.§+V§.currentUIView.getItemByName("TextField_PasswordField") as §?![§).§&t§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§2U§);
      }
      
      public function activate() : void
      {
         var _loc1_:§'!F§ = this.§+V§.currentUIView.getItemByName("Container_Login_Tab");
         this.§+V§.setObjectToFront(_loc1_);
         this.§+V§.currentUIView.getItemByName("TextField_UserNameField").setVisibility(true);
         this.§+V§.currentUIView.getItemByName("TextField_PasswordField").setVisibility(true);
         this.§+V§.currentUIView.getItemByName("Button_Submit").setVisibility(true);
         this.§+V§.currentUIView.getItemByName("Checkbox_RememberMe").setVisibility(true);
         this.§+V§.currentUIView.getItemByName("Checkbox_Marketing").setVisibility(true);
         this.§+V§.currentUIView.getItemByName("Button_ForgotPassword").setVisibility(true);
         this.§+V§.currentUIView.getItemByName("TextField_EmailField_Register").setVisibility(false);
         this.§+V§.currentUIView.getItemByName("TextField_PasswordField_Register").setVisibility(false);
         this.§+V§.currentUIView.getItemByName("TextField_PasswordFieldRepeat_Register").setVisibility(false);
         this.§+V§.currentUIView.getItemByName("TextField_NickNameField_Register").setVisibility(false);
         this.§+V§.currentUIView.getItemByName("Checkbox_RememberMe_Register").setVisibility(false);
         this.§+V§.currentUIView.getItemByName("Checkbox_Marketing").setVisibility(false);
         this.§+V§.currentUIView.getItemByName("Button_Submit_Register").setVisibility(false);
      }
      
      private function §2U§(param1:MouseEvent) : void
      {
         this.§+V§.currentUIView.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(false);
         this.§+V§.currentUIView.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(false);
         (this.§+V§.§"w§ as § A§).§8O§.hide();
      }
      
      public function §#q§() : void
      {
         var _loc1_:String = this.§+V§.currentUIView.getText("TextField_UserNameField");
         var _loc2_:String = this.§+V§.currentUIView.getText("TextField_PasswordField");
         this.§+V§.setObjectToFront(this.§+V§.currentUIView.getItemByName("WaitingPopupLogin"));
         this.§+V§.currentUIView.getItemByName("WaitingPopupLogin").setVisibility(true);
         §=!G§.§+j§.addEventListener(LoginHandlerEvent.§=!J§,this.§&!_§);
         §=!G§.§+j§.addEventListener(LoginHandlerEvent.ERROR,this.§1!B§);
         §=!G§.§+j§.§4!L§(_loc1_,_loc2_,this.§+V§.rememberMeToggled);
      }
      
      private function §&!_§(param1:LoginHandlerEvent) : void
      {
         § A§.§+!E§ = true;
         §=!G§.§+j§.removeEventListener(LoginHandlerEvent.§=!J§,this.§&!_§);
         §=!G§.§+j§.removeEventListener(LoginHandlerEvent.ERROR,this.§1!B§);
         this.§+V§.currentUIView.getItemByName("WaitingPopupLogin").setVisibility(false);
         this.§+V§.§ E§.mNextState = § A§.§!_§;
         this.§+V§.preClose();
      }
      
      private function §1!B§(param1:LoginHandlerEvent) : void
      {
         §=!G§.§+j§.removeEventListener(LoginHandlerEvent.§=!J§,this.§&!_§);
         §=!G§.§+j§.removeEventListener(LoginHandlerEvent.ERROR,this.§1!B§);
         this.§+!Q§(param1.§]!a§);
         this.§+V§.currentUIView.getItemByName("WaitingPopupLogin").setVisibility(false);
      }
      
      private function §+!Q§(param1:String) : void
      {
         this.§+V§.currentUIView.getItemByName("WaitingPopupLogin").setVisibility(false);
         switch(param1)
         {
            case §#e§.INVALID_EMAIL:
               this.§+V§.currentUIView.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(true);
               break;
            case §#e§.PASSWORD_MISSING:
               this.§+V§.currentUIView.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(true);
               break;
            case §#e§.CONNECTION_ERROR_RETRY:
               this.§+V§.currentUIView.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(true);
               this.§+V§.currentUIView.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(true);
               break;
            default:
               this.§+V§.currentUIView.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(true);
               this.§+V§.currentUIView.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(true);
         }
         (this.§+V§.§"w§ as § A§).§8O§.show(param1);
      }
   }
}
