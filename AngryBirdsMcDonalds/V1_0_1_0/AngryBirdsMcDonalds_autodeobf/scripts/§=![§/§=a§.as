package §=![§
{
   import § !1§.§@!g§;
   import §"!§.§`!A§;
   import §%<§.§=@§;
   import §,![§.§'!S§;
   import §-1§.§3!%§;
   import §-1§.§>!6§;
   import §?H§.§>!X§;
   import §?H§.LoginHandlerEvent;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   
   public class §=a§
   {
       
      
      private var §6!?§:§`!A§;
      
      public function §=a§(param1:§`!A§)
      {
         super();
         this.§6!?§ = param1;
      }
      
      public function §@!e§() : void
      {
         var _loc1_:§>!6§ = this.§6!?§.currentUIView.getItemByName("Checkbox_RememberMe") as §>!6§;
         if(this.§6!?§.rememberMeToggled)
         {
            _loc1_.setComponentState(§>!6§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc1_.setComponentState(§>!6§.§?3§);
         }
         (this.§6!?§.currentUIView.getItemByName("TextField_UserNameField") as §'!S§).§'!Z§.addEventListener(MouseEvent.MOUSE_DOWN,this.§]4§);
         (this.§6!?§.currentUIView.getItemByName("TextField_PasswordField") as §'!S§).§'!Z§.addEventListener(MouseEvent.MOUSE_DOWN,this.§]4§);
         (this.§6!?§.currentUIView.getItemByName("TextField_UserNameField") as §'!S§).§'!Z§.restrict = §`!A§.§5O§;
         (this.§6!?§.currentUIView.getItemByName("TextField_PasswordField") as §'!S§).§'!Z§.restrict = §`!A§.§7V§;
         (this.§6!?§.currentUIView.getItemByName("TextField_UserNameField") as §'!S§).§'!Z§.maxChars = §`!A§.§3?§;
         (this.§6!?§.currentUIView.getItemByName("TextField_UserNameField") as §'!S§).§<j§(§;!4§.§]s§,§;!4§.§,!g§,§;!4§.§[N§);
         (this.§6!?§.currentUIView.getItemByName("TextField_PasswordField") as §'!S§).§<j§(§;!4§.§]s§,§;!4§.§,!g§,§;!4§.§[N§);
         this.§,M§();
      }
      
      private function § _§(param1:TextField) : Number
      {
         var _loc2_:Rectangle = param1.getCharBoundaries(0);
         var _loc3_:Rectangle = param1.getCharBoundaries(param1.length - 1);
         return _loc3_.x + _loc3_.width - _loc2_.x + _loc2_.width / 2;
      }
      
      public function §,M§() : void
      {
         var _loc1_:TextField = this.§6!?§.currentUIView.getItemByName("Button_ForgotPassword").mClip.text;
         var _loc2_:MovieClip = this.§6!?§.currentUIView.getItemByName("Button_ForgotPassword").mClip.MovieClip_Forgot_Underline;
         var _loc3_:MovieClip = this.§6!?§.currentUIView.getItemByName("Button_ForgotPassword").mClip.MouseHitArea;
         _loc2_.width = this.§ _§(_loc1_);
         _loc3_.width = _loc2_.width;
      }
      
      public function dispose() : void
      {
         §>!X§.§>E§.removeEventListener(LoginHandlerEvent.§2t§,this.§,a§);
         §>!X§.§>E§.removeEventListener(LoginHandlerEvent.ERROR,this.§,!Q§);
         (this.§6!?§.currentUIView.getItemByName("TextField_UserNameField") as §'!S§).§'!Z§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§]4§);
         (this.§6!?§.currentUIView.getItemByName("TextField_PasswordField") as §'!S§).§'!Z§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§]4§);
      }
      
      public function activate() : void
      {
         var _loc1_:§3!%§ = this.§6!?§.currentUIView.getItemByName("Container_Login_Tab");
         this.§6!?§.setObjectToFront(_loc1_);
         this.§6!?§.currentUIView.getItemByName("TextField_UserNameField").setVisibility(true);
         this.§6!?§.currentUIView.getItemByName("TextField_PasswordField").setVisibility(true);
         this.§6!?§.currentUIView.getItemByName("Button_Submit").setVisibility(true);
         this.§6!?§.currentUIView.getItemByName("Checkbox_RememberMe").setVisibility(true);
         this.§6!?§.currentUIView.getItemByName("Checkbox_Marketing").setVisibility(true);
         this.§6!?§.currentUIView.getItemByName("Button_ForgotPassword").setVisibility(true);
         this.§6!?§.currentUIView.getItemByName("TextField_EmailField_Register").setVisibility(false);
         this.§6!?§.currentUIView.getItemByName("TextField_PasswordField_Register").setVisibility(false);
         this.§6!?§.currentUIView.getItemByName("TextField_PasswordFieldRepeat_Register").setVisibility(false);
         this.§6!?§.currentUIView.getItemByName("TextField_NickNameField_Register").setVisibility(false);
         this.§6!?§.currentUIView.getItemByName("Checkbox_RememberMe_Register").setVisibility(false);
         this.§6!?§.currentUIView.getItemByName("Checkbox_Marketing").setVisibility(false);
         this.§6!?§.currentUIView.getItemByName("Button_Submit_Register").setVisibility(false);
      }
      
      private function §]4§(param1:MouseEvent) : void
      {
         this.§6!?§.currentUIView.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(false);
         this.§6!?§.currentUIView.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(false);
         (this.§6!?§.§@!o§ as §=@§).§9!"§.hide();
      }
      
      public function §0!9§() : void
      {
         var _loc1_:String = this.§6!?§.currentUIView.getText("TextField_UserNameField");
         var _loc2_:String = this.§6!?§.currentUIView.getText("TextField_PasswordField");
         this.§6!?§.setObjectToFront(this.§6!?§.currentUIView.getItemByName("WaitingPopupLogin"));
         this.§6!?§.currentUIView.getItemByName("WaitingPopupLogin").setVisibility(true);
         §>!X§.§>E§.addEventListener(LoginHandlerEvent.§2t§,this.§,a§);
         §>!X§.§>E§.addEventListener(LoginHandlerEvent.ERROR,this.§,!Q§);
         §>!X§.§>E§.§[!X§(_loc1_,_loc2_,this.§6!?§.rememberMeToggled);
      }
      
      private function §,a§(param1:LoginHandlerEvent) : void
      {
         §=@§.§5,§ = true;
         §>!X§.§>E§.removeEventListener(LoginHandlerEvent.§2t§,this.§,a§);
         §>!X§.§>E§.removeEventListener(LoginHandlerEvent.ERROR,this.§,!Q§);
         this.§6!?§.currentUIView.getItemByName("WaitingPopupLogin").setVisibility(false);
         this.§6!?§.§-!,§.mNextState = §=@§.§<P§;
         this.§6!?§.preClose();
      }
      
      private function §,!Q§(param1:LoginHandlerEvent) : void
      {
         §>!X§.§>E§.removeEventListener(LoginHandlerEvent.§2t§,this.§,a§);
         §>!X§.§>E§.removeEventListener(LoginHandlerEvent.ERROR,this.§,!Q§);
         this.§ !L§(param1.§5z§);
         this.§6!?§.currentUIView.getItemByName("WaitingPopupLogin").setVisibility(false);
      }
      
      private function § !L§(param1:String) : void
      {
         this.§6!?§.currentUIView.getItemByName("WaitingPopupLogin").setVisibility(false);
         switch(param1)
         {
            case §@!g§.INVALID_EMAIL:
               this.§6!?§.currentUIView.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(true);
               break;
            case §@!g§.PASSWORD_MISSING:
               this.§6!?§.currentUIView.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(true);
               break;
            case §@!g§.CONNECTION_ERROR_RETRY:
               this.§6!?§.currentUIView.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(true);
               this.§6!?§.currentUIView.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(true);
               break;
            default:
               this.§6!?§.currentUIView.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(true);
               this.§6!?§.currentUIView.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(true);
         }
         (this.§6!?§.§@!o§ as §=@§).§9!"§.show(param1);
      }
   }
}
