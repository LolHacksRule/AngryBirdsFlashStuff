package §^"8§
{
   import §!"0§.§`"F§;
   import §!"4§.LoginHandlerEvent;
   import §&e§.§<x§;
   import §+"C§.§["G§;
   import §,!7§.§2a§;
   import §,!7§.§5!k§;
   import §6B§.§&9§;
   import §6B§.§5![§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextLineMetrics;
   import flash.ui.Keyboard;
   
   public class §%q§
   {
       
      
      private var §3X§:§5!k§;
      
      private var §"" §:§`"F§;
      
      public function §%q§(param1:§5!k§, param2:§`"F§)
      {
         super();
         this.§3X§ = param1;
         this.§"" § = param2;
      }
      
      public function §]"&§() : void
      {
         var _loc1_:§5![§ = this.§3X§.getItemByName("Checkbox_RememberMe") as §5![§;
         if(this.§"" §.rememberMeToggled)
         {
            _loc1_.setComponentState(§5![§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc1_.setComponentState(§5![§.§`=§);
         }
         (this.§3X§.getItemByName("TextField_UserNameField") as §2a§).§%!%§.addEventListener(MouseEvent.MOUSE_DOWN,this.§#<§);
         (this.§3X§.getItemByName("TextField_PasswordField") as §2a§).§%!%§.addEventListener(MouseEvent.MOUSE_DOWN,this.§#<§);
         (this.§3X§.getItemByName("TextField_UserNameField") as §2a§).§%!%§.restrict = §`"F§.§ !t§;
         (this.§3X§.getItemByName("TextField_UserNameField") as §2a§).§%!%§.maxChars = §`"F§.§3"C§;
         this.§-n§();
      }
      
      private function §@3§(param1:TextField) : Number
      {
         var _loc2_:TextLineMetrics = param1.getLineMetrics(0);
         return _loc2_.width;
      }
      
      public function §-n§() : void
      {
         var _loc1_:TextField = this.§3X§.getItemByName("Button_ForgotPassword").mClip.text;
         var _loc2_:MovieClip = this.§3X§.getItemByName("Button_ForgotPassword").mClip.MovieClip_Forgot_Underline;
         var _loc3_:MovieClip = this.§3X§.getItemByName("Button_ForgotPassword").mClip.MouseHitArea;
         _loc2_.width = this.§@3§(_loc1_);
         _loc3_.width = _loc2_.width;
         this.§=m§(_loc1_);
      }
      
      private function §=m§(param1:TextField) : void
      {
         var _loc2_:TextFormat = new TextFormat();
         _loc2_.italic = true;
         param1.setTextFormat(_loc2_);
      }
      
      public function dispose() : void
      {
         this.deActivate();
         this.§"" §.§&!I§.removeEventListener(LoginHandlerEvent.§=!,§,this.§'b§);
         this.§"" §.§&!I§.removeEventListener(LoginHandlerEvent.ERROR,this.§6+§);
         (this.§3X§.getItemByName("TextField_UserNameField") as §2a§).§%!%§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§#<§);
         (this.§3X§.getItemByName("TextField_PasswordField") as §2a§).§%!%§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§#<§);
         this.§"" §.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§8!b§);
      }
      
      public function activate() : void
      {
         var _loc1_:§&9§ = this.§3X§.getItemByName("Container_Login_Tab");
         this.§3X§.setObjectToFront(_loc1_);
         this.§"" §.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§8!b§);
         this.§3X§.getItemByName("TextField_UserNameField").setVisibility(true);
         this.§3X§.getItemByName("TextField_PasswordField").setVisibility(true);
         this.§3X§.getItemByName("Button_Submit").setVisibility(true);
         this.§3X§.getItemByName("Checkbox_RememberMe").setVisibility(true);
         this.§3X§.getItemByName("Checkbox_Marketing").setVisibility(true);
         this.§3X§.getItemByName("Button_ForgotPassword").setVisibility(true);
         this.§3X§.getItemByName("TextField_EmailField_Register").setVisibility(false);
         this.§3X§.getItemByName("TextField_PasswordField_Register").setVisibility(false);
         this.§3X§.getItemByName("TextField_PasswordFieldRepeat_Register").setVisibility(false);
         this.§3X§.getItemByName("TextField_NickNameField_Register").setVisibility(false);
         this.§3X§.getItemByName("Checkbox_RememberMe_Register").setVisibility(false);
         this.§3X§.getItemByName("Checkbox_Marketing").setVisibility(false);
         this.§3X§.getItemByName("Checkbox_ExtMarketing").setVisibility(false);
         this.§3X§.getItemByName("Button_Submit_Register").setVisibility(false);
      }
      
      public function deActivate() : void
      {
         this.§"" §.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§8!b§);
      }
      
      private function §#<§(param1:MouseEvent) : void
      {
         this.§3X§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(false);
         this.§3X§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(false);
      }
      
      public function §;!X§() : void
      {
         var _loc1_:String = (this.§3X§.getItemByName("TextField_UserNameField") as §2a§).§%!%§.text;
         _loc1_ = _loc1_.toLowerCase();
         var _loc2_:String = (this.§3X§.getItemByName("TextField_PasswordField") as §2a§).§%!%§.text;
         this.§3X§.setObjectToFront(this.§3X§.getItemByName("WaitingPopupLogin"));
         this.§3X§.getItemByName("WaitingPopupLogin").setVisibility(true);
         this.§"" §.§&!I§.addEventListener(LoginHandlerEvent.§=!,§,this.§'b§);
         this.§"" §.§&!I§.addEventListener(LoginHandlerEvent.ERROR,this.§6+§);
         this.§"" §.§&!I§.§["§(_loc1_,_loc2_,this.§"" §.rememberMeToggled);
      }
      
      private function §'b§(param1:LoginHandlerEvent) : void
      {
         this.§"" §.§&!I§.removeEventListener(LoginHandlerEvent.§=!,§,this.§'b§);
         this.§"" §.§&!I§.removeEventListener(LoginHandlerEvent.ERROR,this.§6+§);
         this.§"" §.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§8!b§);
         this.§3X§.getItemByName("WaitingPopupLogin").setVisibility(false);
         this.§"" §.close();
      }
      
      private function §6+§(param1:LoginHandlerEvent) : void
      {
         this.§"" §.§&!I§.removeEventListener(LoginHandlerEvent.§=!,§,this.§'b§);
         this.§"" §.§&!I§.removeEventListener(LoginHandlerEvent.ERROR,this.§6+§);
         this.§6N§(param1.§7!8§);
         this.§3X§.getItemByName("WaitingPopupLogin").setVisibility(false);
      }
      
      private function §6N§(param1:String) : void
      {
         this.§3X§.getItemByName("WaitingPopupLogin").setVisibility(false);
         switch(param1)
         {
            case §<x§.INVALID_EMAIL:
               this.§3X§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(true);
               break;
            case §<x§.PASSWORD_MISSING:
               this.§3X§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(true);
               break;
            case §<x§.CONNECTION_ERROR_RETRY:
               this.§3X§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(true);
               this.§3X§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(true);
               break;
            default:
               this.§3X§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(true);
               this.§3X§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(true);
         }
         §&"<§.§<!7§.§1"0§.openPopup(new §["G§(param1,§["G§.§[!r§));
      }
      
      private function §8!b§(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.ENTER)
         {
            this.§;!X§();
            return;
         }
      }
   }
}
