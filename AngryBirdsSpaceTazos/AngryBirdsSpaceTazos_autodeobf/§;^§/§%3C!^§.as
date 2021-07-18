package §;^§
{
   import §3C§.§^p§;
   import §5X§.§8n§;
   import §5X§.§@!!§;
   import §6"4§.§&a§;
   import §7!B§.LoginHandlerEvent;
   import §77§.§ ",§;
   import §77§.§&!>§;
   import §9y§.§8"3§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Keyboard;
   
   public class §<!^§
   {
       
      
      private var §-!C§:§ ",§;
      
      private var §@!e§:§&a§;
      
      public function §<!^§(param1:§ ",§, param2:§&a§)
      {
         super();
         this.§-!C§ = param1;
         this.§@!e§ = param2;
      }
      
      public function §8!E§() : void
      {
         var _loc1_:§@!!§ = this.§-!C§.getItemByName("Checkbox_RememberMe") as §@!!§;
         if(this.§@!e§.rememberMeToggled)
         {
            _loc1_.setComponentState(§@!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc1_.setComponentState(§@!!§.§else §);
         }
         (this.§-!C§.getItemByName("TextField_UserNameField") as §&!>§).§ !'§.addEventListener(MouseEvent.MOUSE_DOWN,this.§'h§);
         (this.§-!C§.getItemByName("TextField_PasswordField") as §&!>§).§ !'§.addEventListener(MouseEvent.MOUSE_DOWN,this.§'h§);
         (this.§-!C§.getItemByName("TextField_UserNameField") as §&!>§).§ !'§.restrict = §&a§.§'"<§;
         (this.§-!C§.getItemByName("TextField_UserNameField") as §&!>§).§ !'§.maxChars = §&a§.§%!!§;
         this.§[!]§();
      }
      
      private function §#I§(param1:TextField) : Number
      {
         var _loc2_:Rectangle = param1.getCharBoundaries(0);
         var _loc3_:Rectangle = param1.getCharBoundaries(param1.length - 1);
         return _loc3_.x + _loc3_.width - _loc2_.x + _loc2_.width / 2;
      }
      
      public function §[!]§() : void
      {
         var _loc1_:TextField = this.§-!C§.getItemByName("Button_ForgotPassword").mClip.text;
         var _loc2_:MovieClip = this.§-!C§.getItemByName("Button_ForgotPassword").mClip.MovieClip_Forgot_Underline;
         var _loc3_:MovieClip = this.§-!C§.getItemByName("Button_ForgotPassword").mClip.MouseHitArea;
         _loc2_.width = this.§#I§(_loc1_);
         _loc3_.width = _loc2_.width;
         this.§45§(_loc1_);
      }
      
      private function §45§(param1:TextField) : void
      {
         var _loc2_:TextFormat = new TextFormat();
         _loc2_.italic = true;
         param1.setTextFormat(_loc2_);
      }
      
      public function dispose() : void
      {
         this.§-!C§.getItemByName("TextField_UserNameField").removeEventListener(KeyboardEvent.KEY_UP,this.§>!T§);
         this.§-!C§.getItemByName("TextField_PasswordField").removeEventListener(KeyboardEvent.KEY_UP,this.§>!T§);
         this.§@!e§.§@!j§.removeEventListener(LoginHandlerEvent.§!"8§,this.§6!I§);
         this.§@!e§.§@!j§.removeEventListener(LoginHandlerEvent.ERROR,this.§#!X§);
         (this.§-!C§.getItemByName("TextField_UserNameField") as §&!>§).§ !'§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§'h§);
         (this.§-!C§.getItemByName("TextField_PasswordField") as §&!>§).§ !'§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§'h§);
      }
      
      public function activate() : void
      {
         var _loc1_:§8n§ = this.§-!C§.getItemByName("Container_Login_Tab");
         this.§-!C§.setObjectToFront(_loc1_);
         this.§-!C§.getItemByName("TextField_UserNameField").setVisibility(true);
         this.§-!C§.getItemByName("TextField_PasswordField").setVisibility(true);
         this.§-!C§.getItemByName("Button_Submit").setVisibility(true);
         this.§-!C§.getItemByName("Checkbox_RememberMe").setVisibility(true);
         this.§-!C§.getItemByName("Checkbox_Marketing").setVisibility(true);
         this.§-!C§.getItemByName("Button_ForgotPassword").setVisibility(true);
         this.§-!C§.getItemByName("TextField_EmailField_Register").setVisibility(false);
         this.§-!C§.getItemByName("TextField_PasswordField_Register").setVisibility(false);
         this.§-!C§.getItemByName("TextField_PasswordFieldRepeat_Register").setVisibility(false);
         this.§-!C§.getItemByName("TextField_NickNameField_Register").setVisibility(false);
         this.§-!C§.getItemByName("Checkbox_RememberMe_Register").setVisibility(false);
         this.§-!C§.getItemByName("Checkbox_Marketing").setVisibility(false);
         this.§-!C§.getItemByName("Checkbox_ExtMarketing").setVisibility(false);
         this.§-!C§.getItemByName("Button_Submit_Register").setVisibility(false);
         (this.§-!C§.getItemByName("TextField_UserNameField") as §&!>§).§ !'§.addEventListener(KeyboardEvent.KEY_UP,this.§>!T§);
         (this.§-!C§.getItemByName("TextField_PasswordField") as §&!>§).§ !'§.addEventListener(KeyboardEvent.KEY_UP,this.§>!T§);
      }
      
      private function §'h§(param1:MouseEvent) : void
      {
         this.§-!C§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(false);
         this.§-!C§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(false);
      }
      
      public function §8"@§() : void
      {
         var _loc1_:String = (this.§-!C§.getItemByName("TextField_UserNameField") as §&!>§).§ !'§.text;
         _loc1_ = _loc1_.toLowerCase();
         var _loc2_:String = (this.§-!C§.getItemByName("TextField_PasswordField") as §&!>§).§ !'§.text;
         this.§-!C§.setObjectToFront(this.§-!C§.getItemByName("WaitingPopupLogin"));
         this.§-!C§.getItemByName("WaitingPopupLogin").setVisibility(true);
         this.§@!e§.§@!j§.addEventListener(LoginHandlerEvent.§!"8§,this.§6!I§);
         this.§@!e§.§@!j§.addEventListener(LoginHandlerEvent.ERROR,this.§#!X§);
         this.§@!e§.§@!j§.§7j§(_loc1_,_loc2_,this.§@!e§.rememberMeToggled);
      }
      
      private function §6!I§(param1:LoginHandlerEvent) : void
      {
         this.§@!e§.§@!j§.removeEventListener(LoginHandlerEvent.§!"8§,this.§6!I§);
         this.§@!e§.§@!j§.removeEventListener(LoginHandlerEvent.ERROR,this.§#!X§);
         this.§-!C§.getItemByName("WaitingPopupLogin").setVisibility(false);
         this.§@!e§.close();
      }
      
      private function §#!X§(param1:LoginHandlerEvent) : void
      {
         this.§@!e§.§@!j§.removeEventListener(LoginHandlerEvent.§!"8§,this.§6!I§);
         this.§@!e§.§@!j§.removeEventListener(LoginHandlerEvent.ERROR,this.§#!X§);
         this.§1I§(param1.§#5§);
         this.§-!C§.getItemByName("WaitingPopupLogin").setVisibility(false);
      }
      
      private function §1I§(param1:String) : void
      {
         this.§-!C§.getItemByName("WaitingPopupLogin").setVisibility(false);
         switch(param1)
         {
            case §8"3§.INVALID_EMAIL:
               this.§-!C§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(true);
               break;
            case §8"3§.PASSWORD_MISSING:
               this.§-!C§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(true);
               break;
            case §8"3§.CONNECTION_ERROR_RETRY:
               this.§-!C§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(true);
               this.§-!C§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(true);
               break;
            default:
               this.§-!C§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(true);
               this.§-!C§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(true);
         }
         § !g§.§;!'§.§>";§.openPopup(new §^p§(param1,§^p§.§>F§));
      }
      
      private function §>!T§(param1:KeyboardEvent) : void
      {
         var _loc2_:uint = param1.keyCode;
         if(_loc2_ == Keyboard.ENTER)
         {
            this.§8"@§();
         }
      }
   }
}
