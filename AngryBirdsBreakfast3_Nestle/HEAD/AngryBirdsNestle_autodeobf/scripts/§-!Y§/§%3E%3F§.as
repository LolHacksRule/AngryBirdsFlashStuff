package §-!Y§
{
   import §&!y§.§14§;
   import §'!3§.§ !3§;
   import §'"!§.§-!g§;
   import §'"!§.§<!7§;
   import §1!c§.§^j§;
   import §2u§.§,6§;
   import §2u§.§7!&§;
   import §4!i§.§@"#§;
   import §4[§.LoginHandlerEvent;
   import §[!5§.§2p§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextLineMetrics;
   import flash.ui.Keyboard;
   
   public class §>?§
   {
       
      
      private var §;"7§:§,6§;
      
      private var §8!"§:§14§;
      
      public function §>?§(param1:§,6§, param2:§14§)
      {
         super();
         this.§;"7§ = param1;
         this.§8!"§ = param2;
      }
      
      public function §5<§() : void
      {
         var _loc1_:§-!g§ = this.§;"7§.getItemByName("Checkbox_RememberMe") as §-!g§;
         if(this.§8!"§.rememberMeToggled)
         {
            _loc1_.setComponentState(§-!g§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc1_.setComponentState(§-!g§.§+O§);
         }
         (this.§;"7§.getItemByName("TextField_UserNameField") as §7!&§).§'!"§.addEventListener(MouseEvent.MOUSE_DOWN,this.§7N§);
         (this.§;"7§.getItemByName("TextField_PasswordField") as §7!&§).§'!"§.addEventListener(MouseEvent.MOUSE_DOWN,this.§7N§);
         (this.§;"7§.getItemByName("TextField_UserNameField") as §7!&§).§'!"§.restrict = §14§.§4i§;
         (this.§;"7§.getItemByName("TextField_UserNameField") as §7!&§).§'!"§.maxChars = §14§.§@u§;
         (this.§;"7§.getItemByName("TextField_PasswordField") as §7!&§).§'!"§.maxChars = §14§.§+]§;
      }
      
      private function §4!?§(param1:TextField) : Number
      {
         var _loc2_:TextLineMetrics = param1.getLineMetrics(0);
         return _loc2_.width;
      }
      
      private function §,v§(param1:TextField) : void
      {
         var _loc2_:TextFormat = new TextFormat();
         _loc2_.italic = true;
         param1.setTextFormat(_loc2_);
      }
      
      public function dispose() : void
      {
         this.deActivate();
         this.§8!"§.§6!"§.removeEventListener(LoginHandlerEvent.§8h§,this.§3k§);
         this.§8!"§.§6!"§.removeEventListener(LoginHandlerEvent.ERROR,this.§%!2§);
         (this.§;"7§.getItemByName("TextField_UserNameField") as §7!&§).§'!"§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§7N§);
         (this.§;"7§.getItemByName("TextField_PasswordField") as §7!&§).§'!"§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§7N§);
         this.§8!"§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§!!d§);
      }
      
      public function activate() : void
      {
         var _loc1_:§<!7§ = this.§;"7§.getItemByName("Container_Login_Tab");
         this.§;"7§.setObjectToFront(_loc1_);
         this.§8!"§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§!!d§);
         this.§;"7§.getItemByName("TextField_UserNameField").setVisibility(true);
         this.§;"7§.getItemByName("TextField_PasswordField").setVisibility(true);
         this.§;"7§.getItemByName("Button_Submit").setVisibility(true);
         this.§;"7§.getItemByName("Checkbox_RememberMe").setVisibility(true);
         this.§;"7§.getItemByName("TextField_PasswordField_Register").setVisibility(false);
         this.§;"7§.getItemByName("TextField_PasswordFieldRepeat_Register").setVisibility(false);
         this.§;"7§.getItemByName("TextField_NickNameField_Register").setVisibility(false);
         this.§;"7§.getItemByName("Checkbox_RememberMe_Register").setVisibility(false);
         this.§;"7§.getItemByName("Button_Submit_Register").setVisibility(false);
         this.§8!"§.§^o§();
         var _loc2_:§7!&§ = this.§;"7§.getItemByName("TextField_UserNameField") as §7!&§;
         var _loc3_:§7!&§ = this.§;"7§.getItemByName("TextField_PasswordField") as §7!&§;
         _loc2_.§'!"§.tabIndex = 1;
         _loc3_.§'!"§.tabIndex = 2;
      }
      
      public function deActivate() : void
      {
         this.§8!"§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§!!d§);
      }
      
      private function §7N§(param1:MouseEvent) : void
      {
         this.§;"7§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(false);
         this.§;"7§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(false);
      }
      
      public function §>!m§() : void
      {
         var _loc1_:String = (this.§;"7§.getItemByName("TextField_UserNameField") as §7!&§).§'!"§.text;
         var _loc2_:String = (this.§;"7§.getItemByName("TextField_PasswordField") as §7!&§).§'!"§.text;
         var _loc3_:String = §@"#§.§,2§.§2"2§();
         var _loc4_:String = §@"#§.§,2§.§0!x§();
         this.§8!"§.§6!"§.addEventListener(LoginHandlerEvent.§8h§,this.§3k§);
         this.§8!"§.§6!"§.addEventListener(LoginHandlerEvent.ERROR,this.§%!2§);
         this.§8!"§.§6!"§.§]"#§(_loc1_,_loc2_,_loc3_,_loc4_,this.§8!"§.rememberMeToggled);
      }
      
      private function §3k§(param1:LoginHandlerEvent) : void
      {
         this.§8!"§.§6!"§.removeEventListener(LoginHandlerEvent.§8h§,this.§3k§);
         this.§8!"§.§6!"§.removeEventListener(LoginHandlerEvent.ERROR,this.§%!2§);
         this.§8!"§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§!!d§);
         this.§8!"§.close();
         (§ !4§.§%"7§ as AngryBirdsCustom).§7"6§(§^j§.§8"%§);
      }
      
      private function §%!2§(param1:LoginHandlerEvent) : void
      {
         this.§8!"§.§6!"§.removeEventListener(LoginHandlerEvent.§8h§,this.§3k§);
         this.§8!"§.§6!"§.removeEventListener(LoginHandlerEvent.ERROR,this.§%!2§);
         this.reportError(param1.§1X§);
      }
      
      private function reportError(param1:String) : void
      {
         switch(param1)
         {
            case §2p§.PASSWORD_MISSING:
               this.§;"7§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(true);
               break;
            case §2p§.CONNECTION_ERROR_RETRY:
               this.§;"7§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(true);
               this.§;"7§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(true);
               break;
            default:
               this.§;"7§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(true);
               this.§;"7§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(true);
         }
         § !4§.§%"7§.§+!J§.openPopup(new § !3§(param1,§ !3§.§0!3§));
      }
      
      private function §!!d§(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.ENTER)
         {
            this.§>!m§();
            return;
         }
      }
   }
}
