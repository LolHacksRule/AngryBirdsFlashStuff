package §9d§
{
   import §%9§.§'F§;
   import §,!9§.§>"$§;
   import §-!G§.LoginHandlerEvent;
   import §8D§.§ " §;
   import §?!E§.§]l§;
   import §@#§.§9!'§;
   import §@#§.§>L§;
   import §[!b§.§2!O§;
   import §[!b§.§]"-§;
   import §`6§.§!!]§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextLineMetrics;
   import flash.ui.Keyboard;
   
   public class § ,§
   {
       
      
      private var §3j§:§9!'§;
      
      private var §7j§:§ " §;
      
      public function § ,§(param1:§9!'§, param2:§ " §)
      {
         super();
         this.§3j§ = param1;
         this.§7j§ = param2;
      }
      
      public function §5i§() : void
      {
         var _loc1_:§]"-§ = this.§3j§.getItemByName("Checkbox_RememberMe") as §]"-§;
         if(this.§7j§.rememberMeToggled)
         {
            _loc1_.setComponentState(§]"-§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc1_.setComponentState(§]"-§.§2"0§);
         }
         (this.§3j§.getItemByName("TextField_UserNameField") as §>L§).§<!=§.addEventListener(MouseEvent.MOUSE_DOWN,this.§9!t§);
         (this.§3j§.getItemByName("TextField_PasswordField") as §>L§).§<!=§.addEventListener(MouseEvent.MOUSE_DOWN,this.§9!t§);
         (this.§3j§.getItemByName("TextField_UserNameField") as §>L§).§<!=§.restrict = § " §.§6!"§;
         (this.§3j§.getItemByName("TextField_UserNameField") as §>L§).§<!=§.maxChars = § " §.§!!c§;
         (this.§3j§.getItemByName("TextField_PasswordField") as §>L§).§<!=§.maxChars = § " §.§!E§;
      }
      
      private function §4K§(param1:TextField) : Number
      {
         var _loc2_:TextLineMetrics = param1.getLineMetrics(0);
         return _loc2_.width;
      }
      
      private function §!!,§(param1:TextField) : void
      {
         var _loc2_:TextFormat = new TextFormat();
         _loc2_.italic = true;
         param1.setTextFormat(_loc2_);
      }
      
      public function dispose() : void
      {
         this.deActivate();
         this.§7j§.§4d§.removeEventListener(LoginHandlerEvent.§6!$§,this.§?![§);
         this.§7j§.§4d§.removeEventListener(LoginHandlerEvent.ERROR,this.§3!F§);
         (this.§3j§.getItemByName("TextField_UserNameField") as §>L§).§<!=§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§9!t§);
         (this.§3j§.getItemByName("TextField_PasswordField") as §>L§).§<!=§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§9!t§);
         this.§7j§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§!!r§);
      }
      
      public function activate() : void
      {
         var _loc1_:§2!O§ = this.§3j§.getItemByName("Container_Login_Tab");
         this.§3j§.setObjectToFront(_loc1_);
         this.§7j§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§!!r§);
         this.§3j§.getItemByName("TextField_UserNameField").setVisibility(true);
         this.§3j§.getItemByName("TextField_PasswordField").setVisibility(true);
         this.§3j§.getItemByName("Button_Submit").setVisibility(true);
         this.§3j§.getItemByName("Checkbox_RememberMe").setVisibility(true);
         this.§3j§.getItemByName("TextField_PasswordField_Register").setVisibility(false);
         this.§3j§.getItemByName("TextField_PasswordFieldRepeat_Register").setVisibility(false);
         this.§3j§.getItemByName("TextField_NickNameField_Register").setVisibility(false);
         this.§3j§.getItemByName("Checkbox_RememberMe_Register").setVisibility(false);
         this.§3j§.getItemByName("Button_Submit_Register").setVisibility(false);
         this.§7j§.§-<§();
         var _loc2_:§>L§ = this.§3j§.getItemByName("TextField_UserNameField") as §>L§;
         var _loc3_:§>L§ = this.§3j§.getItemByName("TextField_PasswordField") as §>L§;
         _loc2_.§<!=§.tabIndex = 1;
         _loc3_.§<!=§.tabIndex = 2;
      }
      
      public function deActivate() : void
      {
         this.§7j§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§!!r§);
      }
      
      private function §9!t§(param1:MouseEvent) : void
      {
         this.§3j§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(false);
         this.§3j§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(false);
      }
      
      public function §?S§() : void
      {
         var _loc1_:String = (this.§3j§.getItemByName("TextField_UserNameField") as §>L§).§<!=§.text;
         var _loc2_:String = (this.§3j§.getItemByName("TextField_PasswordField") as §>L§).§<!=§.text;
         var _loc3_:String = §!!]§.§?!+§.§[!;§();
         var _loc4_:String = §!!]§.§?!+§.§<N§();
         this.§7j§.§4d§.addEventListener(LoginHandlerEvent.§6!$§,this.§?![§);
         this.§7j§.§4d§.addEventListener(LoginHandlerEvent.ERROR,this.§3!F§);
         this.§7j§.§4d§.§2!j§(_loc1_,_loc2_,_loc3_,_loc4_,this.§7j§.rememberMeToggled);
      }
      
      private function §?![§(param1:LoginHandlerEvent) : void
      {
         this.§7j§.§4d§.removeEventListener(LoginHandlerEvent.§6!$§,this.§?![§);
         this.§7j§.§4d§.removeEventListener(LoginHandlerEvent.ERROR,this.§3!F§);
         this.§7j§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§!!r§);
         this.§7j§.close();
         (§-!l§.§"x§ as AngryBirdsCustom).§0!w§(§]l§.§+B§);
      }
      
      private function §3!F§(param1:LoginHandlerEvent) : void
      {
         this.§7j§.§4d§.removeEventListener(LoginHandlerEvent.§6!$§,this.§?![§);
         this.§7j§.§4d§.removeEventListener(LoginHandlerEvent.ERROR,this.§3!F§);
         this.reportError(param1.§@!;§);
      }
      
      private function reportError(param1:String) : void
      {
         switch(param1)
         {
            case §>"$§.PASSWORD_MISSING:
               this.§3j§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(true);
               break;
            case §>"$§.CONNECTION_ERROR_RETRY:
               this.§3j§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(true);
               this.§3j§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(true);
               break;
            default:
               this.§3j§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(true);
               this.§3j§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(true);
         }
         §-!l§.§"x§.§,!W§.openPopup(new §'F§(param1,§'F§.§8!7§));
      }
      
      private function §!!r§(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.ENTER)
         {
            this.§?S§();
            return;
         }
      }
   }
}
