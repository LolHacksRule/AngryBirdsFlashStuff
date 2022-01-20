package §1H§
{
   import §&6§.§,!Y§;
   import §,!C§.§3!&§;
   import §0$§.§8!K§;
   import §0$§.LoginHandlerEvent;
   import §5!W§.§,!B§;
   import §@!7§.§+!O§;
   import §@-§.§ x§;
   import §@-§.§-m§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   
   public class §7!&§
   {
       
      
      private var §0d§:§+!O§;
      
      public function §7!&§(param1:§+!O§)
      {
         super();
         this.§0d§ = param1;
      }
      
      public function §2!%§() : void
      {
         var _loc1_:§ x§ = this.§0d§.currentUIView.getItemByName("Checkbox_RememberMe") as § x§;
         if(this.§0d§.rememberMeToggled)
         {
            _loc1_.setComponentState(§ x§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc1_.setComponentState(§ x§.§%!"§);
         }
         (this.§0d§.currentUIView.getItemByName("TextField_UserNameField") as §3!&§).§>!3§.addEventListener(MouseEvent.MOUSE_DOWN,this.§1!B§);
         (this.§0d§.currentUIView.getItemByName("TextField_PasswordField") as §3!&§).§>!3§.addEventListener(MouseEvent.MOUSE_DOWN,this.§1!B§);
         (this.§0d§.currentUIView.getItemByName("TextField_UserNameField") as §3!&§).§>!3§.restrict = §+!O§.§[!,§;
         (this.§0d§.currentUIView.getItemByName("TextField_PasswordField") as §3!&§).§>!3§.restrict = §+!O§.§+!_§;
         (this.§0d§.currentUIView.getItemByName("TextField_UserNameField") as §3!&§).§>!3§.maxChars = §+!O§.§continue§;
         (this.§0d§.currentUIView.getItemByName("TextField_UserNameField") as §3!&§).§1S§(§3![§.§<!5§,§3![§.§;W§,§3![§.§<]§);
         (this.§0d§.currentUIView.getItemByName("TextField_PasswordField") as §3!&§).§1S§(§3![§.§<!5§,§3![§.§;W§,§3![§.§<]§);
         this.§!!N§();
      }
      
      private function §;9§(param1:TextField) : Number
      {
         var _loc2_:Rectangle = param1.getCharBoundaries(0);
         var _loc3_:Rectangle = param1.getCharBoundaries(param1.length - 1);
         return _loc3_.x + _loc3_.width - _loc2_.x + _loc2_.width / 2;
      }
      
      public function §!!N§() : void
      {
         var _loc1_:TextField = this.§0d§.currentUIView.getItemByName("Button_ForgotPassword").mClip.text;
         var _loc2_:MovieClip = this.§0d§.currentUIView.getItemByName("Button_ForgotPassword").mClip.MovieClip_Forgot_Underline;
         var _loc3_:MovieClip = this.§0d§.currentUIView.getItemByName("Button_ForgotPassword").mClip.MouseHitArea;
         _loc2_.width = this.§;9§(_loc1_);
         _loc3_.width = _loc2_.width;
      }
      
      public function dispose() : void
      {
         §8!K§.§5!!§.removeEventListener(LoginHandlerEvent.§16§,this.§]!n§);
         §8!K§.§5!!§.removeEventListener(LoginHandlerEvent.ERROR,this.§"!G§);
         (this.§0d§.currentUIView.getItemByName("TextField_UserNameField") as §3!&§).§>!3§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§1!B§);
         (this.§0d§.currentUIView.getItemByName("TextField_PasswordField") as §3!&§).§>!3§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§1!B§);
      }
      
      public function activate() : void
      {
         var _loc1_:§-m§ = this.§0d§.currentUIView.getItemByName("Container_Login_Tab");
         this.§0d§.setObjectToFront(_loc1_);
         this.§0d§.currentUIView.getItemByName("TextField_UserNameField").setVisibility(true);
         this.§0d§.currentUIView.getItemByName("TextField_PasswordField").setVisibility(true);
         this.§0d§.currentUIView.getItemByName("Button_Submit").setVisibility(true);
         this.§0d§.currentUIView.getItemByName("Checkbox_RememberMe").setVisibility(true);
         this.§0d§.currentUIView.getItemByName("Checkbox_Marketing").setVisibility(true);
         this.§0d§.currentUIView.getItemByName("Button_ForgotPassword").setVisibility(true);
         this.§0d§.currentUIView.getItemByName("TextField_EmailField_Register").setVisibility(false);
         this.§0d§.currentUIView.getItemByName("TextField_PasswordField_Register").setVisibility(false);
         this.§0d§.currentUIView.getItemByName("TextField_PasswordFieldRepeat_Register").setVisibility(false);
         this.§0d§.currentUIView.getItemByName("TextField_NickNameField_Register").setVisibility(false);
         this.§0d§.currentUIView.getItemByName("Checkbox_RememberMe_Register").setVisibility(false);
         this.§0d§.currentUIView.getItemByName("Checkbox_Marketing").setVisibility(false);
         this.§0d§.currentUIView.getItemByName("Button_Submit_Register").setVisibility(false);
      }
      
      private function §1!B§(param1:MouseEvent) : void
      {
         this.§0d§.currentUIView.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(false);
         this.§0d§.currentUIView.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(false);
         (this.§0d§.§4X§ as §,!B§).§;![§.hide();
      }
      
      public function §4o§() : void
      {
         var _loc1_:String = this.§0d§.currentUIView.getText("TextField_UserNameField");
         var _loc2_:String = this.§0d§.currentUIView.getText("TextField_PasswordField");
         this.§0d§.setObjectToFront(this.§0d§.currentUIView.getItemByName("WaitingPopupLogin"));
         this.§0d§.currentUIView.getItemByName("WaitingPopupLogin").setVisibility(true);
         §8!K§.§5!!§.addEventListener(LoginHandlerEvent.§16§,this.§]!n§);
         §8!K§.§5!!§.addEventListener(LoginHandlerEvent.ERROR,this.§"!G§);
         §8!K§.§5!!§.§5M§(_loc1_,_loc2_,this.§0d§.rememberMeToggled);
      }
      
      private function §]!n§(param1:LoginHandlerEvent) : void
      {
         §,!B§.§!F§ = true;
         §8!K§.§5!!§.removeEventListener(LoginHandlerEvent.§16§,this.§]!n§);
         §8!K§.§5!!§.removeEventListener(LoginHandlerEvent.ERROR,this.§"!G§);
         this.§0d§.currentUIView.getItemByName("WaitingPopupLogin").setVisibility(false);
         this.§0d§.§8y§.mNextState = §,!B§.§>d§;
         this.§0d§.preClose();
      }
      
      private function §"!G§(param1:LoginHandlerEvent) : void
      {
         §8!K§.§5!!§.removeEventListener(LoginHandlerEvent.§16§,this.§]!n§);
         §8!K§.§5!!§.removeEventListener(LoginHandlerEvent.ERROR,this.§"!G§);
         this.§>m§(param1.§15§);
         this.§0d§.currentUIView.getItemByName("WaitingPopupLogin").setVisibility(false);
      }
      
      private function §>m§(param1:String) : void
      {
         this.§0d§.currentUIView.getItemByName("WaitingPopupLogin").setVisibility(false);
         switch(param1)
         {
            case §,!Y§.INVALID_EMAIL:
               this.§0d§.currentUIView.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(true);
               break;
            case §,!Y§.PASSWORD_MISSING:
               this.§0d§.currentUIView.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(true);
               break;
            case §,!Y§.CONNECTION_ERROR_RETRY:
               this.§0d§.currentUIView.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(true);
               this.§0d§.currentUIView.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(true);
               break;
            default:
               this.§0d§.currentUIView.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(true);
               this.§0d§.currentUIView.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(true);
         }
         (this.§0d§.§4X§ as §,!B§).§;![§.show(param1);
      }
   }
}
