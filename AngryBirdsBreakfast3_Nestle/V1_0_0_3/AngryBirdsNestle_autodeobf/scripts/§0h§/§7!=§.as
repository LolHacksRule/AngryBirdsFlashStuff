package §0h§
{
   import §-!F§.§[!Q§;
   import §3!!§.§5" §;
   import §3!!§.native;
   import §;U§.§`"2§;
   import §=X§.LoginHandlerEvent;
   import §@f§.§4d§;
   import §@f§.§7h§;
   import §]K§.§>!I§;
   import §`!6§.§?E§;
   import §`q§.§!!U§;
   import flash.display.InteractiveObject;
   import flash.events.MouseEvent;
   import flash.events.TextEvent;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextLineMetrics;
   
   public class §7!=§
   {
       
      
      private var §7D§:§5" §;
      
      private var §#"!§:§`"2§;
      
      public function §7!=§(param1:§5" §, param2:§`"2§)
      {
         super();
         this.§7D§ = param1;
         this.§#"!§ = param2;
      }
      
      public function §,r§() : void
      {
         var _loc1_:§4d§ = this.§7D§.getItemByName("Checkbox_RememberMe") as §4d§;
         if(this.§#"!§.rememberMeToggled)
         {
            _loc1_.setComponentState(§4d§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc1_.setComponentState(§4d§.§&!i§);
         }
         (this.§7D§.getItemByName("TextField_UserNameField") as native).§&!K§.addEventListener(MouseEvent.MOUSE_DOWN,this.§@T§);
         (this.§7D§.getItemByName("TextField_PasswordField") as native).§&!K§.addEventListener(MouseEvent.MOUSE_DOWN,this.§@T§);
         (this.§7D§.getItemByName("TextField_UserNameField") as native).§&!K§.restrict = §`"2§.§>_§;
         (this.§7D§.getItemByName("TextField_UserNameField") as native).§&!K§.maxChars = §`"2§.§2T§;
         (this.§7D§.getItemByName("TextField_PasswordField") as native).§&!K§.maxChars = §`"2§.§@y§;
      }
      
      private function §%9§(param1:TextField) : Number
      {
         var _loc2_:TextLineMetrics = param1.getLineMetrics(0);
         return _loc2_.width;
      }
      
      private function §1!&§(param1:TextField) : void
      {
         var _loc2_:TextFormat = new TextFormat();
         _loc2_.italic = true;
         param1.setTextFormat(_loc2_);
      }
      
      public function dispose() : void
      {
         this.deActivate();
         this.§#"!§.§"§.removeEventListener(LoginHandlerEvent.§%T§,this.§#!1§);
         this.§#"!§.§"§.removeEventListener(LoginHandlerEvent.ERROR,this.§6a§);
         (this.§7D§.getItemByName("TextField_UserNameField") as native).§&!K§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§@T§);
         (this.§7D§.getItemByName("TextField_PasswordField") as native).§&!K§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§@T§);
         this.§#"!§.stage.removeEventListener(TextEvent.TEXT_INPUT,this.§]!§);
      }
      
      public function activate() : void
      {
         var _loc1_:§7h§ = this.§7D§.getItemByName("Container_Login_Tab");
         this.§7D§.setObjectToFront(_loc1_);
         this.§#"!§.stage.addEventListener(TextEvent.TEXT_INPUT,this.§]!§);
         this.§7D§.getItemByName("TextField_UserNameField").setVisibility(true);
         this.§7D§.getItemByName("TextField_PasswordField").setVisibility(true);
         this.§7D§.getItemByName("Button_Submit").setVisibility(true);
         this.§7D§.getItemByName("Checkbox_RememberMe").setVisibility(true);
         this.§7D§.getItemByName("TextField_PasswordField_Register").setVisibility(false);
         this.§7D§.getItemByName("TextField_PasswordFieldRepeat_Register").setVisibility(false);
         this.§7D§.getItemByName("TextField_NickNameField_Register").setVisibility(false);
         this.§7D§.getItemByName("Checkbox_RememberMe_Register").setVisibility(false);
         this.§7D§.getItemByName("Button_Submit_Register").setVisibility(false);
         this.§#"!§.§;!t§();
         var _loc2_:native = this.§7D§.getItemByName("TextField_UserNameField") as native;
         var _loc3_:native = this.§7D§.getItemByName("TextField_PasswordField") as native;
         InteractiveObject(_loc2_.§&!K§.getChildAt(1)).tabIndex = 1;
         InteractiveObject(_loc3_.§&!K§.getChildAt(1)).tabIndex = 2;
      }
      
      public function deActivate() : void
      {
         this.§#"!§.stage.removeEventListener(TextEvent.TEXT_INPUT,this.§]!§);
      }
      
      private function §@T§(param1:MouseEvent) : void
      {
         this.§7D§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(false);
         this.§7D§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(false);
      }
      
      public function §"U§() : void
      {
         var _loc1_:String = (this.§7D§.getItemByName("TextField_UserNameField") as native).§&!K§.text;
         var _loc2_:String = (this.§7D§.getItemByName("TextField_PasswordField") as native).§&!K§.text;
         var _loc3_:String = §[!Q§.§=J§.§"" §();
         var _loc4_:String = §[!Q§.§=J§.§%w§();
         this.§#"!§.§"§.addEventListener(LoginHandlerEvent.§%T§,this.§#!1§);
         this.§#"!§.§"§.addEventListener(LoginHandlerEvent.ERROR,this.§6a§);
         this.§#"!§.§"§.§switch§(_loc1_,_loc2_,_loc3_,_loc4_,this.§#"!§.rememberMeToggled);
      }
      
      private function §#!1§(param1:LoginHandlerEvent) : void
      {
         this.§#"!§.§"§.removeEventListener(LoginHandlerEvent.§%T§,this.§#!1§);
         this.§#"!§.§"§.removeEventListener(LoginHandlerEvent.ERROR,this.§6a§);
         this.§#"!§.stage.removeEventListener(TextEvent.TEXT_INPUT,this.§]!§);
         this.§#"!§.close();
         (§&N§.§#Y§ as AngryBirdsCustom).§8=§(§?E§.§]O§);
      }
      
      private function §6a§(param1:LoginHandlerEvent) : void
      {
         this.§#"!§.§"§.removeEventListener(LoginHandlerEvent.§%T§,this.§#!1§);
         this.§#"!§.§"§.removeEventListener(LoginHandlerEvent.ERROR,this.§6a§);
         this.reportError(param1.§?R§);
      }
      
      private function reportError(param1:String) : void
      {
         switch(param1)
         {
            case §>!I§.PASSWORD_MISSING:
               this.§7D§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(true);
               break;
            case §>!I§.CONNECTION_ERROR_RETRY:
               this.§7D§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(true);
               this.§7D§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(true);
               break;
            default:
               this.§7D§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(true);
               this.§7D§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(true);
         }
         §&N§.§#Y§.§@!H§.openPopup(new §!!U§(param1,§!!U§.§<&§));
      }
      
      private function §]!§(param1:TextEvent) : void
      {
         if(param1.text == "\n" || param1.text == "\r")
         {
            this.§"U§();
            return;
         }
      }
   }
}
