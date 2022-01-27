package §4!@§
{
   import §1!K§.§2!h§;
   import §5"@§.LoginHandlerEvent;
   import §7!6§.§"!O§;
   import §7!6§.§^l§;
   import §="<§.§#`§;
   import §="<§.§,"$§;
   import §]!x§.§&A§;
   import §`>§.§>7§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextLineMetrics;
   import flash.ui.Keyboard;
   
   public class §;!`§
   {
       
      
      private var §%"D§:§,"$§;
      
      private var §?@§:§2!h§;
      
      public function §;!`§(param1:§,"$§, param2:§2!h§)
      {
         super();
         this.§%"D§ = param1;
         this.§?@§ = param2;
      }
      
      public function §'"$§() : void
      {
         var _loc1_:§^l§ = this.§%"D§.getItemByName("Checkbox_RememberMe") as §^l§;
         if(this.§?@§.rememberMeToggled)
         {
            _loc1_.setComponentState(§^l§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc1_.setComponentState(§^l§.§,Z§);
         }
         (this.§%"D§.getItemByName("TextField_UserNameField") as §#`§).§';§.addEventListener(MouseEvent.MOUSE_DOWN,this.§<!$§);
         (this.§%"D§.getItemByName("TextField_PasswordField") as §#`§).§';§.addEventListener(MouseEvent.MOUSE_DOWN,this.§<!$§);
         (this.§%"D§.getItemByName("TextField_UserNameField") as §#`§).§';§.restrict = §2!h§.§'!-§;
         (this.§%"D§.getItemByName("TextField_UserNameField") as §#`§).§';§.maxChars = §2!h§.§7!B§;
         this.§3G§();
      }
      
      private function §'5§(param1:TextField) : Number
      {
         var _loc2_:TextLineMetrics = param1.getLineMetrics(0);
         return _loc2_.width;
      }
      
      public function §3G§() : void
      {
         var _loc1_:TextField = this.§%"D§.getItemByName("Button_ForgotPassword").mClip.text;
         var _loc2_:MovieClip = this.§%"D§.getItemByName("Button_ForgotPassword").mClip.MovieClip_Forgot_Underline;
         var _loc3_:MovieClip = this.§%"D§.getItemByName("Button_ForgotPassword").mClip.MouseHitArea;
         _loc2_.width = this.§'5§(_loc1_);
         _loc3_.width = _loc2_.width;
         this.§-"C§(_loc1_);
      }
      
      private function §-"C§(param1:TextField) : void
      {
         var _loc2_:TextFormat = new TextFormat();
         _loc2_.italic = true;
         param1.setTextFormat(_loc2_);
      }
      
      public function dispose() : void
      {
         this.deActivate();
         this.§?@§.§]U§.removeEventListener(LoginHandlerEvent.§["4§,this.§`"0§);
         this.§?@§.§]U§.removeEventListener(LoginHandlerEvent.ERROR,this.§ !c§);
         (this.§%"D§.getItemByName("TextField_UserNameField") as §#`§).§';§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§<!$§);
         (this.§%"D§.getItemByName("TextField_PasswordField") as §#`§).§';§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§<!$§);
         this.§?@§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§`!d§);
      }
      
      public function activate() : void
      {
         var _loc1_:§"!O§ = this.§%"D§.getItemByName("Container_Login_Tab");
         this.§%"D§.setObjectToFront(_loc1_);
         this.§?@§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§`!d§);
         this.§%"D§.getItemByName("TextField_UserNameField").setVisibility(true);
         this.§%"D§.getItemByName("TextField_PasswordField").setVisibility(true);
         this.§%"D§.getItemByName("Button_Submit").setVisibility(true);
         this.§%"D§.getItemByName("Checkbox_RememberMe").setVisibility(true);
         this.§%"D§.getItemByName("Checkbox_Marketing").setVisibility(true);
         this.§%"D§.getItemByName("Button_ForgotPassword").setVisibility(true);
         this.§%"D§.getItemByName("TextField_EmailField_Register").setVisibility(false);
         this.§%"D§.getItemByName("TextField_PasswordField_Register").setVisibility(false);
         this.§%"D§.getItemByName("TextField_PasswordFieldRepeat_Register").setVisibility(false);
         this.§%"D§.getItemByName("TextField_NickNameField_Register").setVisibility(false);
         this.§%"D§.getItemByName("Checkbox_RememberMe_Register").setVisibility(false);
         this.§%"D§.getItemByName("Checkbox_Marketing").setVisibility(false);
         this.§%"D§.getItemByName("Checkbox_ExtMarketing").setVisibility(false);
         this.§%"D§.getItemByName("Button_Submit_Register").setVisibility(false);
      }
      
      public function deActivate() : void
      {
         this.§?@§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§`!d§);
      }
      
      private function §<!$§(param1:MouseEvent) : void
      {
         this.§%"D§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(false);
         this.§%"D§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(false);
      }
      
      public function §3!q§() : void
      {
         var _loc1_:String = (this.§%"D§.getItemByName("TextField_UserNameField") as §#`§).§';§.text;
         _loc1_ = _loc1_.toLowerCase();
         var _loc2_:String = (this.§%"D§.getItemByName("TextField_PasswordField") as §#`§).§';§.text;
         this.§%"D§.setObjectToFront(this.§%"D§.getItemByName("WaitingPopupLogin"));
         this.§%"D§.getItemByName("WaitingPopupLogin").setVisibility(true);
         this.§?@§.§]U§.addEventListener(LoginHandlerEvent.§["4§,this.§`"0§);
         this.§?@§.§]U§.addEventListener(LoginHandlerEvent.ERROR,this.§ !c§);
         this.§?@§.§]U§.§3!Y§(_loc1_,_loc2_,this.§?@§.rememberMeToggled);
      }
      
      private function §`"0§(param1:LoginHandlerEvent) : void
      {
         this.§?@§.§]U§.removeEventListener(LoginHandlerEvent.§["4§,this.§`"0§);
         this.§?@§.§]U§.removeEventListener(LoginHandlerEvent.ERROR,this.§ !c§);
         this.§?@§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§`!d§);
         this.§%"D§.getItemByName("WaitingPopupLogin").setVisibility(false);
         this.§?@§.close();
      }
      
      private function § !c§(param1:LoginHandlerEvent) : void
      {
         this.§?@§.§]U§.removeEventListener(LoginHandlerEvent.§["4§,this.§`"0§);
         this.§?@§.§]U§.removeEventListener(LoginHandlerEvent.ERROR,this.§ !c§);
         this.§4" §(param1.§+%§);
         this.§%"D§.getItemByName("WaitingPopupLogin").setVisibility(false);
      }
      
      private function §4" §(param1:String) : void
      {
         this.§%"D§.getItemByName("WaitingPopupLogin").setVisibility(false);
         switch(param1)
         {
            case §>7§.INVALID_EMAIL:
               this.§%"D§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(true);
               break;
            case §>7§.PASSWORD_MISSING:
               this.§%"D§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(true);
               break;
            case §>7§.CONNECTION_ERROR_RETRY:
               this.§%"D§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(true);
               this.§%"D§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(true);
               break;
            default:
               this.§%"D§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(true);
               this.§%"D§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(true);
         }
         §2&§.§6o§.§^7§.openPopup(new §&A§(param1,§&A§.§?!d§));
      }
      
      private function §`!d§(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.ENTER)
         {
            this.§3!q§();
            return;
         }
      }
   }
}
