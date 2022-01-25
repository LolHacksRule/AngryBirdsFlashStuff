package §9X§
{
   import §'!B§.§1!R§;
   import §+$§.§"!p§;
   import §+$§.§5"§;
   import §7!N§.§3!0§;
   import §7!N§.LoginHandlerEvent;
   import §<! §.§#!b§;
   import §[h§.§ set§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   
   public class §^!]§
   {
       
      
      private var §;G§:§1!R§;
      
      public function §^!]§(param1:§1!R§)
      {
         super();
         this.§;G§ = param1;
      }
      
      public function §^v§() : void
      {
         var _loc1_:§"!p§ = this.§;G§.currentUIView.getItemByName("Checkbox_RememberMe") as §"!p§;
         if(this.§;G§.rememberMeToggled)
         {
            _loc1_.setComponentState(§"!p§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc1_.setComponentState(§"!p§.§`!Q§);
         }
         (this.§;G§.currentUIView.getItemByName("TextField_UserNameField") as § set§).§ !K§.addEventListener(MouseEvent.MOUSE_DOWN,this.§'!j§);
         (this.§;G§.currentUIView.getItemByName("TextField_PasswordField") as § set§).§ !K§.addEventListener(MouseEvent.MOUSE_DOWN,this.§'!j§);
         (this.§;G§.currentUIView.getItemByName("TextField_UserNameField") as § set§).§ !K§.restrict = §1!R§.§!!n§;
         (this.§;G§.currentUIView.getItemByName("TextField_PasswordField") as § set§).§ !K§.restrict = §1!R§.§#!-§;
         (this.§;G§.currentUIView.getItemByName("TextField_UserNameField") as § set§).§ !K§.maxChars = §1!R§.§<!I§;
         (this.§;G§.currentUIView.getItemByName("TextField_UserNameField") as § set§).§,O§(§9!_§.§7O§,§9!_§.§=!n§,§9!_§.§8!X§);
         (this.§;G§.currentUIView.getItemByName("TextField_PasswordField") as § set§).§,O§(§9!_§.§7O§,§9!_§.§=!n§,§9!_§.§8!X§);
         this.§]!-§();
      }
      
      private function §"!1§(param1:TextField) : Number
      {
         var _loc2_:Rectangle = param1.getCharBoundaries(0);
         var _loc3_:Rectangle = param1.getCharBoundaries(param1.length - 1);
         return _loc3_.x + _loc3_.width - _loc2_.x + _loc2_.width / 2;
      }
      
      public function §]!-§() : void
      {
         var _loc1_:TextField = this.§;G§.currentUIView.getItemByName("Button_ForgotPassword").mClip.text;
         var _loc2_:MovieClip = this.§;G§.currentUIView.getItemByName("Button_ForgotPassword").mClip.MovieClip_Forgot_Underline;
         var _loc3_:MovieClip = this.§;G§.currentUIView.getItemByName("Button_ForgotPassword").mClip.MouseHitArea;
         _loc2_.width = this.§"!1§(_loc1_);
         _loc3_.width = _loc2_.width;
      }
      
      public function dispose() : void
      {
         §3!0§.§9$§.removeEventListener(LoginHandlerEvent.§!b§,this.§ !m§);
         §3!0§.§9$§.removeEventListener(LoginHandlerEvent.ERROR,this.§"F§);
         (this.§;G§.currentUIView.getItemByName("TextField_UserNameField") as § set§).§ !K§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§'!j§);
         (this.§;G§.currentUIView.getItemByName("TextField_PasswordField") as § set§).§ !K§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§'!j§);
      }
      
      public function activate() : void
      {
         var _loc1_:§5"§ = this.§;G§.currentUIView.getItemByName("Container_Login_Tab");
         this.§;G§.setObjectToFront(_loc1_);
         this.§;G§.currentUIView.getItemByName("TextField_UserNameField").setVisibility(true);
         this.§;G§.currentUIView.getItemByName("TextField_PasswordField").setVisibility(true);
         this.§;G§.currentUIView.getItemByName("Button_Submit").setVisibility(true);
         this.§;G§.currentUIView.getItemByName("Checkbox_RememberMe").setVisibility(true);
         this.§;G§.currentUIView.getItemByName("Checkbox_Marketing").setVisibility(true);
         this.§;G§.currentUIView.getItemByName("Button_ForgotPassword").setVisibility(true);
         this.§;G§.currentUIView.getItemByName("TextField_EmailField_Register").setVisibility(false);
         this.§;G§.currentUIView.getItemByName("TextField_PasswordField_Register").setVisibility(false);
         this.§;G§.currentUIView.getItemByName("TextField_PasswordFieldRepeat_Register").setVisibility(false);
         this.§;G§.currentUIView.getItemByName("TextField_NickNameField_Register").setVisibility(false);
         this.§;G§.currentUIView.getItemByName("Checkbox_RememberMe_Register").setVisibility(false);
         this.§;G§.currentUIView.getItemByName("Checkbox_Marketing").setVisibility(false);
         this.§;G§.currentUIView.getItemByName("Button_Submit_Register").setVisibility(false);
      }
      
      private function §'!j§(param1:MouseEvent) : void
      {
         this.§;G§.currentUIView.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(false);
         this.§;G§.currentUIView.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(false);
         (this.§;G§.§+!_§ as § try§).§2M§.hide();
      }
      
      public function §6!8§() : void
      {
         var _loc1_:String = this.§;G§.currentUIView.getText("TextField_UserNameField");
         var _loc2_:String = this.§;G§.currentUIView.getText("TextField_PasswordField");
         this.§;G§.setObjectToFront(this.§;G§.currentUIView.getItemByName("WaitingPopupLogin"));
         this.§;G§.currentUIView.getItemByName("WaitingPopupLogin").setVisibility(true);
         §3!0§.§9$§.addEventListener(LoginHandlerEvent.§!b§,this.§ !m§);
         §3!0§.§9$§.addEventListener(LoginHandlerEvent.ERROR,this.§"F§);
         §3!0§.§9$§.§`n§(_loc1_,_loc2_,this.§;G§.rememberMeToggled);
      }
      
      private function § !m§(param1:LoginHandlerEvent) : void
      {
         § try§.§6!4§ = true;
         §3!0§.§9$§.removeEventListener(LoginHandlerEvent.§!b§,this.§ !m§);
         §3!0§.§9$§.removeEventListener(LoginHandlerEvent.ERROR,this.§"F§);
         this.§;G§.currentUIView.getItemByName("WaitingPopupLogin").setVisibility(false);
         this.§;G§.§5b§.mNextState = § try§.§[!1§;
         this.§;G§.preClose();
      }
      
      private function §"F§(param1:LoginHandlerEvent) : void
      {
         §3!0§.§9$§.removeEventListener(LoginHandlerEvent.§!b§,this.§ !m§);
         §3!0§.§9$§.removeEventListener(LoginHandlerEvent.ERROR,this.§"F§);
         this.§2!P§(param1.§+!K§);
         this.§;G§.currentUIView.getItemByName("WaitingPopupLogin").setVisibility(false);
      }
      
      private function §2!P§(param1:String) : void
      {
         this.§;G§.currentUIView.getItemByName("WaitingPopupLogin").setVisibility(false);
         switch(param1)
         {
            case §#!b§.INVALID_EMAIL:
               this.§;G§.currentUIView.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(true);
               break;
            case §#!b§.PASSWORD_MISSING:
               this.§;G§.currentUIView.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(true);
               break;
            case §#!b§.CONNECTION_ERROR_RETRY:
               this.§;G§.currentUIView.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(true);
               this.§;G§.currentUIView.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(true);
               break;
            default:
               this.§;G§.currentUIView.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(true);
               this.§;G§.currentUIView.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(true);
         }
         (this.§;G§.§+!_§ as § try§).§2M§.show(param1);
      }
   }
}
