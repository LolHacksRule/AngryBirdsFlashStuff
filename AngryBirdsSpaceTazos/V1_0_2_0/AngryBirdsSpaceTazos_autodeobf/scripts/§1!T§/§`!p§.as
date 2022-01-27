package §1!T§
{
   import §!i§.§1s§;
   import §!i§.§?"%§;
   import §1!]§.§,!_§;
   import §4!t§.§>r§;
   import §4!t§.§?i§;
   import §5s§.§ !_§;
   import §6"6§.LoginHandlerEvent;
   import §;+§.§3!n§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Keyboard;
   
   public class §`!p§
   {
       
      
      private var §%!M§:§1s§;
      
      private var §8!+§:§3!n§;
      
      public function §`!p§(param1:§1s§, param2:§3!n§)
      {
         super();
         this.§%!M§ = param1;
         this.§8!+§ = param2;
      }
      
      public function §@o§() : void
      {
         var _loc1_:§>r§ = this.§%!M§.getItemByName("Checkbox_RememberMe") as §>r§;
         if(this.§8!+§.rememberMeToggled)
         {
            _loc1_.setComponentState(§>r§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc1_.setComponentState(§>r§.§""7§);
         }
         (this.§%!M§.getItemByName("TextField_UserNameField") as §?"%§).§8!o§.addEventListener(MouseEvent.MOUSE_DOWN,this.§else §);
         (this.§%!M§.getItemByName("TextField_PasswordField") as §?"%§).§8!o§.addEventListener(MouseEvent.MOUSE_DOWN,this.§else §);
         (this.§%!M§.getItemByName("TextField_UserNameField") as §?"%§).§8!o§.restrict = §3!n§.§7!G§;
         (this.§%!M§.getItemByName("TextField_UserNameField") as §?"%§).§8!o§.maxChars = §3!n§.§7!m§;
         this.§?I§();
      }
      
      private function §3!M§(param1:TextField) : Number
      {
         var _loc2_:Rectangle = param1.getCharBoundaries(0);
         var _loc3_:Rectangle = param1.getCharBoundaries(param1.length - 1);
         return _loc3_.x + _loc3_.width - _loc2_.x + _loc2_.width / 2;
      }
      
      public function §?I§() : void
      {
         var _loc1_:TextField = this.§%!M§.getItemByName("Button_ForgotPassword").mClip.text;
         var _loc2_:MovieClip = this.§%!M§.getItemByName("Button_ForgotPassword").mClip.MovieClip_Forgot_Underline;
         var _loc3_:MovieClip = this.§%!M§.getItemByName("Button_ForgotPassword").mClip.MouseHitArea;
         _loc2_.width = this.§3!M§(_loc1_);
         _loc3_.width = _loc2_.width;
         this.§=3§(_loc1_);
      }
      
      private function §=3§(param1:TextField) : void
      {
         var _loc2_:TextFormat = new TextFormat();
         _loc2_.italic = true;
         param1.setTextFormat(_loc2_);
      }
      
      public function dispose() : void
      {
         this.§%!M§.getItemByName("TextField_UserNameField").removeEventListener(KeyboardEvent.KEY_UP,this.§=!V§);
         this.§%!M§.getItemByName("TextField_PasswordField").removeEventListener(KeyboardEvent.KEY_UP,this.§=!V§);
         this.§8!+§.§5!d§.removeEventListener(LoginHandlerEvent.§8"1§,this.§[!$§);
         this.§8!+§.§5!d§.removeEventListener(LoginHandlerEvent.ERROR,this.§6!f§);
         (this.§%!M§.getItemByName("TextField_UserNameField") as §?"%§).§8!o§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§else §);
         (this.§%!M§.getItemByName("TextField_PasswordField") as §?"%§).§8!o§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§else §);
      }
      
      public function activate() : void
      {
         var _loc1_:§?i§ = this.§%!M§.getItemByName("Container_Login_Tab");
         this.§%!M§.setObjectToFront(_loc1_);
         this.§%!M§.getItemByName("TextField_UserNameField").setVisibility(true);
         this.§%!M§.getItemByName("TextField_PasswordField").setVisibility(true);
         this.§%!M§.getItemByName("Button_Submit").setVisibility(true);
         this.§%!M§.getItemByName("Checkbox_RememberMe").setVisibility(true);
         this.§%!M§.getItemByName("Checkbox_Marketing").setVisibility(true);
         this.§%!M§.getItemByName("Button_ForgotPassword").setVisibility(true);
         this.§%!M§.getItemByName("TextField_EmailField_Register").setVisibility(false);
         this.§%!M§.getItemByName("TextField_PasswordField_Register").setVisibility(false);
         this.§%!M§.getItemByName("TextField_PasswordFieldRepeat_Register").setVisibility(false);
         this.§%!M§.getItemByName("TextField_NickNameField_Register").setVisibility(false);
         this.§%!M§.getItemByName("Checkbox_RememberMe_Register").setVisibility(false);
         this.§%!M§.getItemByName("Checkbox_Marketing").setVisibility(false);
         this.§%!M§.getItemByName("Checkbox_ExtMarketing").setVisibility(false);
         this.§%!M§.getItemByName("Button_Submit_Register").setVisibility(false);
         (this.§%!M§.getItemByName("TextField_UserNameField") as §?"%§).§8!o§.addEventListener(KeyboardEvent.KEY_UP,this.§=!V§);
         (this.§%!M§.getItemByName("TextField_PasswordField") as §?"%§).§8!o§.addEventListener(KeyboardEvent.KEY_UP,this.§=!V§);
      }
      
      private function §else §(param1:MouseEvent) : void
      {
         this.§%!M§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(false);
         this.§%!M§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(false);
      }
      
      public function §@!f§() : void
      {
         var _loc1_:String = (this.§%!M§.getItemByName("TextField_UserNameField") as §?"%§).§8!o§.text;
         _loc1_ = _loc1_.toLowerCase();
         var _loc2_:String = (this.§%!M§.getItemByName("TextField_PasswordField") as §?"%§).§8!o§.text;
         this.§%!M§.setObjectToFront(this.§%!M§.getItemByName("WaitingPopupLogin"));
         this.§%!M§.getItemByName("WaitingPopupLogin").setVisibility(true);
         this.§8!+§.§5!d§.addEventListener(LoginHandlerEvent.§8"1§,this.§[!$§);
         this.§8!+§.§5!d§.addEventListener(LoginHandlerEvent.ERROR,this.§6!f§);
         this.§8!+§.§5!d§.§ s§(_loc1_,_loc2_,this.§8!+§.rememberMeToggled);
      }
      
      private function §[!$§(param1:LoginHandlerEvent) : void
      {
         this.§8!+§.§5!d§.removeEventListener(LoginHandlerEvent.§8"1§,this.§[!$§);
         this.§8!+§.§5!d§.removeEventListener(LoginHandlerEvent.ERROR,this.§6!f§);
         this.§%!M§.getItemByName("WaitingPopupLogin").setVisibility(false);
         this.§8!+§.close();
      }
      
      private function §6!f§(param1:LoginHandlerEvent) : void
      {
         this.§8!+§.§5!d§.removeEventListener(LoginHandlerEvent.§8"1§,this.§[!$§);
         this.§8!+§.§5!d§.removeEventListener(LoginHandlerEvent.ERROR,this.§6!f§);
         this.§]8§(param1.§5"F§);
         this.§%!M§.getItemByName("WaitingPopupLogin").setVisibility(false);
      }
      
      private function §]8§(param1:String) : void
      {
         this.§%!M§.getItemByName("WaitingPopupLogin").setVisibility(false);
         switch(param1)
         {
            case § !_§.INVALID_EMAIL:
               this.§%!M§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(true);
               break;
            case § !_§.PASSWORD_MISSING:
               this.§%!M§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(true);
               break;
            case § !_§.CONNECTION_ERROR_RETRY:
               this.§%!M§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(true);
               this.§%!M§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(true);
               break;
            default:
               this.§%!M§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(true);
               this.§%!M§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(true);
         }
         §&!h§.§ u§.§-"F§.openPopup(new §,!_§(param1,§,!_§.§;V§));
      }
      
      private function §=!V§(param1:KeyboardEvent) : void
      {
         var _loc2_:uint = param1.keyCode;
         if(_loc2_ == Keyboard.ENTER)
         {
            this.§@!f§();
         }
      }
   }
}
