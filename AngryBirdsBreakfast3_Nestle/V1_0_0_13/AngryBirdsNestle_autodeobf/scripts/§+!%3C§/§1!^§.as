package §+!<§
{
   import §!"§.LoginHandlerEvent;
   import §!R§.§-!T§;
   import §!R§.§9!8§;
   import §#!]§.§^!m§;
   import §2!,§.§>!F§;
   import §4"!§.§?!#§;
   import §4Y§.§%n§;
   import §4Y§.§&0§;
   import §^>§.§2"&§;
   import §`!s§.§^2§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextLineMetrics;
   import flash.ui.Keyboard;
   
   public class §1!^§
   {
       
      
      private var §=e§:§%n§;
      
      private var §#"7§:§?!#§;
      
      public function §1!^§(param1:§%n§, param2:§?!#§)
      {
         super();
         this.§=e§ = param1;
         this.§#"7§ = param2;
      }
      
      public function §,!v§() : void
      {
         var _loc1_:§-!T§ = this.§=e§.getItemByName("Checkbox_RememberMe") as §-!T§;
         if(this.§#"7§.rememberMeToggled)
         {
            _loc1_.setComponentState(§-!T§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc1_.setComponentState(§-!T§.§,!H§);
         }
         (this.§=e§.getItemByName("TextField_UserNameField") as §&0§).§"S§.addEventListener(MouseEvent.MOUSE_DOWN,this.§9?§);
         (this.§=e§.getItemByName("TextField_PasswordField") as §&0§).§"S§.addEventListener(MouseEvent.MOUSE_DOWN,this.§9?§);
         (this.§=e§.getItemByName("TextField_UserNameField") as §&0§).§"S§.restrict = §?!#§.§5!9§;
         (this.§=e§.getItemByName("TextField_UserNameField") as §&0§).§"S§.maxChars = §?!#§.§ !v§;
         (this.§=e§.getItemByName("TextField_PasswordField") as §&0§).§"S§.maxChars = §?!#§.§#+§;
      }
      
      private function §@;§(param1:TextField) : Number
      {
         var _loc2_:TextLineMetrics = param1.getLineMetrics(0);
         return _loc2_.width;
      }
      
      private function §6"$§(param1:TextField) : void
      {
         var _loc2_:TextFormat = new TextFormat();
         _loc2_.italic = true;
         param1.setTextFormat(_loc2_);
      }
      
      public function dispose() : void
      {
         this.deActivate();
         this.§#"7§.§'2§.removeEventListener(LoginHandlerEvent.§ %§,this.§"!o§);
         this.§#"7§.§'2§.removeEventListener(LoginHandlerEvent.ERROR,this.§;!c§);
         (this.§=e§.getItemByName("TextField_UserNameField") as §&0§).§"S§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§9?§);
         (this.§=e§.getItemByName("TextField_PasswordField") as §&0§).§"S§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§9?§);
         this.§#"7§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§'!U§);
      }
      
      public function activate() : void
      {
         var _loc1_:§9!8§ = this.§=e§.getItemByName("Container_Login_Tab");
         this.§=e§.setObjectToFront(_loc1_);
         this.§#"7§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§'!U§);
         this.§=e§.getItemByName("TextField_UserNameField").setVisibility(true);
         this.§=e§.getItemByName("TextField_PasswordField").setVisibility(true);
         this.§=e§.getItemByName("Button_Submit").setVisibility(true);
         this.§=e§.getItemByName("Checkbox_RememberMe").setVisibility(true);
         this.§=e§.getItemByName("TextField_PasswordField_Register").setVisibility(false);
         this.§=e§.getItemByName("TextField_PasswordFieldRepeat_Register").setVisibility(false);
         this.§=e§.getItemByName("TextField_NickNameField_Register").setVisibility(false);
         this.§=e§.getItemByName("Checkbox_RememberMe_Register").setVisibility(false);
         this.§=e§.getItemByName("Button_Submit_Register").setVisibility(false);
         this.§#"7§.§ N§();
         var _loc2_:§&0§ = this.§=e§.getItemByName("TextField_UserNameField") as §&0§;
         var _loc3_:§&0§ = this.§=e§.getItemByName("TextField_PasswordField") as §&0§;
         _loc2_.§"S§.tabIndex = 1;
         _loc3_.§"S§.tabIndex = 2;
      }
      
      public function deActivate() : void
      {
         this.§#"7§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§'!U§);
      }
      
      private function §9?§(param1:MouseEvent) : void
      {
         this.§=e§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(false);
         this.§=e§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(false);
      }
      
      public function §#!y§() : void
      {
         var _loc1_:String = (this.§=e§.getItemByName("TextField_UserNameField") as §&0§).§"S§.text;
         var _loc2_:String = (this.§=e§.getItemByName("TextField_PasswordField") as §&0§).§"S§.text;
         var _loc3_:String = §^2§.§&!;§.§1!a§();
         var _loc4_:String = §^2§.§&!;§.§]T§();
         this.§#"7§.§'2§.addEventListener(LoginHandlerEvent.§ %§,this.§"!o§);
         this.§#"7§.§'2§.addEventListener(LoginHandlerEvent.ERROR,this.§;!c§);
         this.§#"7§.§'2§.§>"6§(_loc1_,_loc2_,_loc3_,_loc4_,this.§#"7§.rememberMeToggled);
      }
      
      private function §"!o§(param1:LoginHandlerEvent) : void
      {
         this.§#"7§.§'2§.removeEventListener(LoginHandlerEvent.§ %§,this.§"!o§);
         this.§#"7§.§'2§.removeEventListener(LoginHandlerEvent.ERROR,this.§;!c§);
         this.§#"7§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§'!U§);
         this.§#"7§.close();
         (§-!2§.§7O§ as AngryBirdsCustom).§]a§(§^!m§.§]!y§);
      }
      
      private function §;!c§(param1:LoginHandlerEvent) : void
      {
         this.§#"7§.§'2§.removeEventListener(LoginHandlerEvent.§ %§,this.§"!o§);
         this.§#"7§.§'2§.removeEventListener(LoginHandlerEvent.ERROR,this.§;!c§);
         this.reportError(param1.§@I§);
      }
      
      private function reportError(param1:String) : void
      {
         switch(param1)
         {
            case §2"&§.PASSWORD_MISSING:
               this.§=e§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(true);
               break;
            case §2"&§.CONNECTION_ERROR_RETRY:
               this.§=e§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(true);
               this.§=e§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(true);
               break;
            default:
               this.§=e§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(true);
               this.§=e§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(true);
         }
         §-!2§.§7O§.§0!l§.openPopup(new §>!F§(param1,§>!F§.§6H§));
      }
      
      private function §'!U§(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.ENTER)
         {
            this.§#!y§();
            return;
         }
      }
   }
}
