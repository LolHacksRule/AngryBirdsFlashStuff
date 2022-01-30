package §<!B§
{
   import §!!&§.§`!$§;
   import §"q§.LoginHandlerEvent;
   import §%r§.§ L§;
   import §;!y§.§4![§;
   import §<!0§.§ !B§;
   import §<!0§.§3!W§;
   import §>P§.§%`§;
   import §>P§.§]"4§;
   import §@!l§.§,!D§;
   import §]!V§.§&g§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextLineMetrics;
   import flash.ui.Keyboard;
   
   public class §!,§
   {
       
      
      private var §5!^§:§]"4§;
      
      private var §^!5§:§ L§;
      
      public function §!,§(param1:§]"4§, param2:§ L§)
      {
         super();
         this.§5!^§ = param1;
         this.§^!5§ = param2;
      }
      
      public function §`!7§() : void
      {
         var _loc1_:§3!W§ = this.§5!^§.getItemByName("Checkbox_RememberMe") as §3!W§;
         if(this.§^!5§.rememberMeToggled)
         {
            _loc1_.setComponentState(§3!W§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc1_.setComponentState(§3!W§.§9k§);
         }
         (this.§5!^§.getItemByName("TextField_UserNameField") as §%`§).§=!=§.addEventListener(MouseEvent.MOUSE_DOWN,this.§'Y§);
         (this.§5!^§.getItemByName("TextField_PasswordField") as §%`§).§=!=§.addEventListener(MouseEvent.MOUSE_DOWN,this.§'Y§);
         (this.§5!^§.getItemByName("TextField_UserNameField") as §%`§).§=!=§.restrict = § L§.§-"§;
         (this.§5!^§.getItemByName("TextField_UserNameField") as §%`§).§=!=§.maxChars = § L§.§1y§;
         (this.§5!^§.getItemByName("TextField_PasswordField") as §%`§).§=!=§.maxChars = § L§.§3!=§;
      }
      
      private function §2l§(param1:TextField) : Number
      {
         var _loc2_:TextLineMetrics = param1.getLineMetrics(0);
         return _loc2_.width;
      }
      
      private function §6!j§(param1:TextField) : void
      {
         var _loc2_:TextFormat = new TextFormat();
         _loc2_.italic = true;
         param1.setTextFormat(_loc2_);
      }
      
      public function dispose() : void
      {
         this.deActivate();
         this.§^!5§.§@!&§.removeEventListener(LoginHandlerEvent.§=!5§,this.§&!#§);
         this.§^!5§.§@!&§.removeEventListener(LoginHandlerEvent.ERROR,this.§2<§);
         (this.§5!^§.getItemByName("TextField_UserNameField") as §%`§).§=!=§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§'Y§);
         (this.§5!^§.getItemByName("TextField_PasswordField") as §%`§).§=!=§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§'Y§);
         this.§^!5§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§&M§);
      }
      
      public function activate() : void
      {
         var _loc1_:§ !B§ = this.§5!^§.getItemByName("Container_Login_Tab");
         this.§5!^§.setObjectToFront(_loc1_);
         this.§^!5§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§&M§);
         this.§5!^§.getItemByName("TextField_UserNameField").setVisibility(true);
         this.§5!^§.getItemByName("TextField_PasswordField").setVisibility(true);
         this.§5!^§.getItemByName("Button_Submit").setVisibility(true);
         this.§5!^§.getItemByName("Checkbox_RememberMe").setVisibility(true);
         this.§5!^§.getItemByName("TextField_PasswordField_Register").setVisibility(false);
         this.§5!^§.getItemByName("TextField_PasswordFieldRepeat_Register").setVisibility(false);
         this.§5!^§.getItemByName("TextField_NickNameField_Register").setVisibility(false);
         this.§5!^§.getItemByName("Checkbox_RememberMe_Register").setVisibility(false);
         this.§5!^§.getItemByName("Button_Submit_Register").setVisibility(false);
         this.§^!5§.§4[§();
         var _loc2_:§%`§ = this.§5!^§.getItemByName("TextField_UserNameField") as §%`§;
         var _loc3_:§%`§ = this.§5!^§.getItemByName("TextField_PasswordField") as §%`§;
         _loc2_.§=!=§.tabIndex = 1;
         _loc3_.§=!=§.tabIndex = 2;
      }
      
      public function deActivate() : void
      {
         this.§^!5§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§&M§);
      }
      
      private function §'Y§(param1:MouseEvent) : void
      {
         this.§5!^§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(false);
         this.§5!^§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(false);
      }
      
      public function §+M§() : void
      {
         var _loc1_:String = (this.§5!^§.getItemByName("TextField_UserNameField") as §%`§).§=!=§.text;
         var _loc2_:String = (this.§5!^§.getItemByName("TextField_PasswordField") as §%`§).§=!=§.text;
         var _loc3_:String = §`!$§.§>!P§.§?!2§();
         var _loc4_:String = §`!$§.§>!P§.§?""§();
         this.§^!5§.§@!&§.addEventListener(LoginHandlerEvent.§=!5§,this.§&!#§);
         this.§^!5§.§@!&§.addEventListener(LoginHandlerEvent.ERROR,this.§2<§);
         this.§^!5§.§@!&§.§^"§(_loc1_,_loc2_,_loc3_,_loc4_,this.§^!5§.rememberMeToggled);
      }
      
      private function §&!#§(param1:LoginHandlerEvent) : void
      {
         this.§^!5§.§@!&§.removeEventListener(LoginHandlerEvent.§=!5§,this.§&!#§);
         this.§^!5§.§@!&§.removeEventListener(LoginHandlerEvent.ERROR,this.§2<§);
         this.§^!5§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§&M§);
         this.§^!5§.close();
         (§,!X§.§>!G§ as AngryBirdsCustom).§8!`§(§&g§.§+a§);
      }
      
      private function §2<§(param1:LoginHandlerEvent) : void
      {
         this.§^!5§.§@!&§.removeEventListener(LoginHandlerEvent.§=!5§,this.§&!#§);
         this.§^!5§.§@!&§.removeEventListener(LoginHandlerEvent.ERROR,this.§2<§);
         this.reportError(param1.§;P§);
      }
      
      private function reportError(param1:String) : void
      {
         switch(param1)
         {
            case §4![§.PASSWORD_MISSING:
               this.§5!^§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(true);
               break;
            case §4![§.CONNECTION_ERROR_RETRY:
               this.§5!^§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(true);
               this.§5!^§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(true);
               break;
            default:
               this.§5!^§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(true);
               this.§5!^§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(true);
         }
         §,!X§.§>!G§.§5!K§.openPopup(new §,!D§(param1,§,!D§.§+]§));
      }
      
      private function §&M§(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.ENTER)
         {
            this.§+M§();
            return;
         }
      }
   }
}
