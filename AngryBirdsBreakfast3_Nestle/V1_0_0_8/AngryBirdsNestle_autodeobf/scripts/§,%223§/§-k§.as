package §,"3§
{
   import §%f§.§[@§;
   import §&!>§.LoginHandlerEvent;
   import §'&§.§3W§;
   import §,#§.§=%§;
   import §2!"§.§8K§;
   import §;"+§.§"!I§;
   import §;"+§.§^!i§;
   import §>P§.§-U§;
   import §>P§.§3!Z§;
   import §?I§.§'!<§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextLineMetrics;
   import flash.ui.Keyboard;
   
   public class §-k§
   {
       
      
      private var §7P§:§^!i§;
      
      private var §]Q§:§3W§;
      
      public function §-k§(param1:§^!i§, param2:§3W§)
      {
         super();
         this.§7P§ = param1;
         this.§]Q§ = param2;
      }
      
      public function §4h§() : void
      {
         var _loc1_:§-U§ = this.§7P§.getItemByName("Checkbox_RememberMe") as §-U§;
         if(this.§]Q§.rememberMeToggled)
         {
            _loc1_.setComponentState(§-U§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc1_.setComponentState(§-U§.§;!G§);
         }
         (this.§7P§.getItemByName("TextField_UserNameField") as §"!I§).§6s§.addEventListener(MouseEvent.MOUSE_DOWN,this.§""$§);
         (this.§7P§.getItemByName("TextField_PasswordField") as §"!I§).§6s§.addEventListener(MouseEvent.MOUSE_DOWN,this.§""$§);
         (this.§7P§.getItemByName("TextField_UserNameField") as §"!I§).§6s§.restrict = §3W§.§`0§;
         (this.§7P§.getItemByName("TextField_UserNameField") as §"!I§).§6s§.maxChars = §3W§.§6!i§;
         (this.§7P§.getItemByName("TextField_PasswordField") as §"!I§).§6s§.maxChars = §3W§.§0§;
      }
      
      private function §`"&§(param1:TextField) : Number
      {
         var _loc2_:TextLineMetrics = param1.getLineMetrics(0);
         return _loc2_.width;
      }
      
      private function §2"7§(param1:TextField) : void
      {
         var _loc2_:TextFormat = new TextFormat();
         _loc2_.italic = true;
         param1.setTextFormat(_loc2_);
      }
      
      public function dispose() : void
      {
         this.deActivate();
         this.§]Q§.§-""§.removeEventListener(LoginHandlerEvent.§`O§,this.§1N§);
         this.§]Q§.§-""§.removeEventListener(LoginHandlerEvent.ERROR,this.§?!U§);
         (this.§7P§.getItemByName("TextField_UserNameField") as §"!I§).§6s§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§""$§);
         (this.§7P§.getItemByName("TextField_PasswordField") as §"!I§).§6s§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§""$§);
         this.§]Q§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§ !?§);
      }
      
      public function activate() : void
      {
         var _loc1_:§3!Z§ = this.§7P§.getItemByName("Container_Login_Tab");
         this.§7P§.setObjectToFront(_loc1_);
         this.§]Q§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§ !?§);
         this.§7P§.getItemByName("TextField_UserNameField").setVisibility(true);
         this.§7P§.getItemByName("TextField_PasswordField").setVisibility(true);
         this.§7P§.getItemByName("Button_Submit").setVisibility(true);
         this.§7P§.getItemByName("Checkbox_RememberMe").setVisibility(true);
         this.§7P§.getItemByName("TextField_PasswordField_Register").setVisibility(false);
         this.§7P§.getItemByName("TextField_PasswordFieldRepeat_Register").setVisibility(false);
         this.§7P§.getItemByName("TextField_NickNameField_Register").setVisibility(false);
         this.§7P§.getItemByName("Checkbox_RememberMe_Register").setVisibility(false);
         this.§7P§.getItemByName("Button_Submit_Register").setVisibility(false);
         this.§]Q§.§1!Y§();
         var _loc2_:§"!I§ = this.§7P§.getItemByName("TextField_UserNameField") as §"!I§;
         var _loc3_:§"!I§ = this.§7P§.getItemByName("TextField_PasswordField") as §"!I§;
         _loc2_.§6s§.tabIndex = 1;
         _loc3_.§6s§.tabIndex = 2;
      }
      
      public function deActivate() : void
      {
         this.§]Q§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§ !?§);
      }
      
      private function §""$§(param1:MouseEvent) : void
      {
         this.§7P§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(false);
         this.§7P§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(false);
      }
      
      public function § use§() : void
      {
         var _loc1_:String = (this.§7P§.getItemByName("TextField_UserNameField") as §"!I§).§6s§.text;
         var _loc2_:String = (this.§7P§.getItemByName("TextField_PasswordField") as §"!I§).§6s§.text;
         var _loc3_:String = §[@§.§"e§.§1-§();
         var _loc4_:String = §[@§.§"e§.§]f§();
         this.§]Q§.§-""§.addEventListener(LoginHandlerEvent.§`O§,this.§1N§);
         this.§]Q§.§-""§.addEventListener(LoginHandlerEvent.ERROR,this.§?!U§);
         this.§]Q§.§-""§.§^p§(_loc1_,_loc2_,_loc3_,_loc4_,this.§]Q§.rememberMeToggled);
      }
      
      private function §1N§(param1:LoginHandlerEvent) : void
      {
         this.§]Q§.§-""§.removeEventListener(LoginHandlerEvent.§`O§,this.§1N§);
         this.§]Q§.§-""§.removeEventListener(LoginHandlerEvent.ERROR,this.§?!U§);
         this.§]Q§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§ !?§);
         this.§]Q§.close();
         (§-O§.§5!1§ as AngryBirdsCustom).§'"6§(§=%§.§'u§);
      }
      
      private function §?!U§(param1:LoginHandlerEvent) : void
      {
         this.§]Q§.§-""§.removeEventListener(LoginHandlerEvent.§`O§,this.§1N§);
         this.§]Q§.§-""§.removeEventListener(LoginHandlerEvent.ERROR,this.§?!U§);
         this.reportError(param1.§%!,§);
      }
      
      private function reportError(param1:String) : void
      {
         switch(param1)
         {
            case §8K§.PASSWORD_MISSING:
               this.§7P§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(true);
               break;
            case §8K§.CONNECTION_ERROR_RETRY:
               this.§7P§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(true);
               this.§7P§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(true);
               break;
            default:
               this.§7P§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(true);
               this.§7P§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(true);
         }
         §-O§.§5!1§.§-6§.openPopup(new §'!<§(param1,§'!<§.§%!v§));
      }
      
      private function § !?§(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.ENTER)
         {
            this.§ use§();
            return;
         }
      }
   }
}
