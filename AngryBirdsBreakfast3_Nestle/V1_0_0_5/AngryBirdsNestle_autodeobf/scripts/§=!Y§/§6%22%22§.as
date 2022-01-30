package §=!Y§
{
   import §&<§.§2!q§;
   import §&<§.§@j§;
   import §&_§.§6!z§;
   import §'-§.§9u§;
   import §2W§.§+!d§;
   import §6!5§.§^!+§;
   import §63§.LoginHandlerEvent;
   import §[!F§.§1c§;
   import §[!F§.§3j§;
   import §const§.§!!`§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextLineMetrics;
   import flash.ui.Keyboard;
   
   public class §6""§
   {
       
      
      private var §,u§:§3j§;
      
      private var §7"!§:§!!`§;
      
      public function §6""§(param1:§3j§, param2:§!!`§)
      {
         super();
         this.§,u§ = param1;
         this.§7"!§ = param2;
      }
      
      public function §1m§() : void
      {
         var _loc1_:§@j§ = this.§,u§.getItemByName("Checkbox_RememberMe") as §@j§;
         if(this.§7"!§.rememberMeToggled)
         {
            _loc1_.setComponentState(§@j§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc1_.setComponentState(§@j§.§]P§);
         }
         (this.§,u§.getItemByName("TextField_UserNameField") as §1c§).§ e§.addEventListener(MouseEvent.MOUSE_DOWN,this.§8"4§);
         (this.§,u§.getItemByName("TextField_PasswordField") as §1c§).§ e§.addEventListener(MouseEvent.MOUSE_DOWN,this.§8"4§);
         (this.§,u§.getItemByName("TextField_UserNameField") as §1c§).§ e§.restrict = §!!`§.§?f§;
         (this.§,u§.getItemByName("TextField_UserNameField") as §1c§).§ e§.maxChars = §!!`§.§?!e§;
         (this.§,u§.getItemByName("TextField_PasswordField") as §1c§).§ e§.maxChars = §!!`§.§7u§;
      }
      
      private function §5a§(param1:TextField) : Number
      {
         var _loc2_:TextLineMetrics = param1.getLineMetrics(0);
         return _loc2_.width;
      }
      
      private function §?#§(param1:TextField) : void
      {
         var _loc2_:TextFormat = new TextFormat();
         _loc2_.italic = true;
         param1.setTextFormat(_loc2_);
      }
      
      public function dispose() : void
      {
         this.deActivate();
         this.§7"!§.§;"-§.removeEventListener(LoginHandlerEvent.§@!v§,this.§7z§);
         this.§7"!§.§;"-§.removeEventListener(LoginHandlerEvent.ERROR,this.§ F§);
         (this.§,u§.getItemByName("TextField_UserNameField") as §1c§).§ e§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§8"4§);
         (this.§,u§.getItemByName("TextField_PasswordField") as §1c§).§ e§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§8"4§);
         this.§7"!§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§2v§);
      }
      
      public function activate() : void
      {
         var _loc1_:§2!q§ = this.§,u§.getItemByName("Container_Login_Tab");
         this.§,u§.setObjectToFront(_loc1_);
         this.§7"!§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§2v§);
         this.§,u§.getItemByName("TextField_UserNameField").setVisibility(true);
         this.§,u§.getItemByName("TextField_PasswordField").setVisibility(true);
         this.§,u§.getItemByName("Button_Submit").setVisibility(true);
         this.§,u§.getItemByName("Checkbox_RememberMe").setVisibility(true);
         this.§,u§.getItemByName("TextField_PasswordField_Register").setVisibility(false);
         this.§,u§.getItemByName("TextField_PasswordFieldRepeat_Register").setVisibility(false);
         this.§,u§.getItemByName("TextField_NickNameField_Register").setVisibility(false);
         this.§,u§.getItemByName("Checkbox_RememberMe_Register").setVisibility(false);
         this.§,u§.getItemByName("Button_Submit_Register").setVisibility(false);
         this.§7"!§.§8M§();
         var _loc2_:§1c§ = this.§,u§.getItemByName("TextField_UserNameField") as §1c§;
         var _loc3_:§1c§ = this.§,u§.getItemByName("TextField_PasswordField") as §1c§;
         _loc2_.§ e§.tabIndex = 1;
         _loc3_.§ e§.tabIndex = 2;
      }
      
      public function deActivate() : void
      {
         this.§7"!§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§2v§);
      }
      
      private function §8"4§(param1:MouseEvent) : void
      {
         this.§,u§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(false);
         this.§,u§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(false);
      }
      
      public function §+!,§() : void
      {
         var _loc1_:String = (this.§,u§.getItemByName("TextField_UserNameField") as §1c§).§ e§.text;
         var _loc2_:String = (this.§,u§.getItemByName("TextField_PasswordField") as §1c§).§ e§.text;
         var _loc3_:String = §+!d§.§<"5§.§,!;§();
         var _loc4_:String = §+!d§.§<"5§.§'!G§();
         this.§7"!§.§;"-§.addEventListener(LoginHandlerEvent.§@!v§,this.§7z§);
         this.§7"!§.§;"-§.addEventListener(LoginHandlerEvent.ERROR,this.§ F§);
         this.§7"!§.§;"-§.§<!7§(_loc1_,_loc2_,_loc3_,_loc4_,this.§7"!§.rememberMeToggled);
      }
      
      private function §7z§(param1:LoginHandlerEvent) : void
      {
         this.§7"!§.§;"-§.removeEventListener(LoginHandlerEvent.§@!v§,this.§7z§);
         this.§7"!§.§;"-§.removeEventListener(LoginHandlerEvent.ERROR,this.§ F§);
         this.§7"!§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§2v§);
         this.§7"!§.close();
         (§-!I§.§[f§ as AngryBirdsCustom).§?n§(§^!+§.§7w§);
      }
      
      private function § F§(param1:LoginHandlerEvent) : void
      {
         this.§7"!§.§;"-§.removeEventListener(LoginHandlerEvent.§@!v§,this.§7z§);
         this.§7"!§.§;"-§.removeEventListener(LoginHandlerEvent.ERROR,this.§ F§);
         this.reportError(param1.§;>§);
      }
      
      private function reportError(param1:String) : void
      {
         switch(param1)
         {
            case §9u§.PASSWORD_MISSING:
               this.§,u§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(true);
               break;
            case §9u§.CONNECTION_ERROR_RETRY:
               this.§,u§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(true);
               this.§,u§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(true);
               break;
            default:
               this.§,u§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(true);
               this.§,u§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(true);
         }
         §-!I§.§[f§.§@!C§.openPopup(new §6!z§(param1,§6!z§.§%p§));
      }
      
      private function §2v§(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.ENTER)
         {
            this.§+!,§();
            return;
         }
      }
   }
}
