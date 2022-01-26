package §&!y§
{
   import §'!3§.§ !3§;
   import §'!3§.§;!o§;
   import §'"!§.§+§;
   import §'"!§.§-!g§;
   import §'"!§.§<!7§;
   import §-!Y§.§2O§;
   import §-!Y§.§>?§;
   import §1!c§.§%!<§;
   import §1!c§.§?"7§;
   import §1!i§.§4z§;
   import §1!i§.§`!t§;
   import §24§.§4!H§;
   import §2u§.§7!&§;
   import §4!i§.§@"#§;
   import §4[§.§4Z§;
   import §[!5§.§2p§;
   import §[!Z§.§>D§;
   import flash.display.Stage;
   
   public class §14§ extends §;!o§
   {
      
      public static const §4i§:String = "a-zA-Z0-9\\";
      
      public static const §;I§:String = "a-zA-Z";
      
      public static const §#B§:String = "0-9";
      
      public static const §7!9§:String = "a-z A-Z \'\\-.";
      
      public static const §>!D§:String = "a-zA-Z0-9\'\\-_@.";
      
      public static const §;!?§:int = 60;
      
      public static const §@u§:int = 10;
      
      public static const §+]§:int = 30;
      
      private static var §5!s§:Class = §0'§;
      
      public static var §>c§:Boolean = false;
       
      
      private var §^T§:Boolean;
      
      private var §-!j§:§%!<§;
      
      private var §`!n§:String;
      
      private var §!M§:String;
      
      private var §=!z§:String;
      
      private var §"!C§:String;
      
      private var §"!D§:§2O§;
      
      private var §0"%§:§>?§;
      
      private var §8<§:Boolean;
      
      private var §3!+§:§4Z§;
      
      public function §14§(param1:§4Z§, param2:§%!<§)
      {
         §9p§ = false;
         §]G§ = false;
         §^J§ = true;
         super(§`!t§.§3"1§,§4z§.§&-§,this.§'!,§());
         this.§3!+§ = param1;
         this.§-!j§ = param2;
      }
      
      protected function §'!,§() : XML
      {
         var _loc1_:XML = §4!H§.§7o§(§5!s§);
         return AngryBirdsCustom.§9!>§(_loc1_);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§"!D§ = new §2O§(§29§,this);
         this.§0"%§ = new §>?§(§29§,this);
         this.§2!'§();
         this.§0"%§.activate();
         this.updateTextFields();
         this.§0"%§.§5<§();
         this.§"!D§.§'!u§();
         (§ !4§.§%"7§ as AngryBirdsCustom).§<=§.§;!I§(false);
         this.§8<§ = (§ !4§.§%"7§ as AngryBirdsCustom).§<=§.§8!E§();
         this.§^o§();
      }
      
      public function §^o§() : void
      {
         var _loc1_:§<!7§ = §29§.getItemByName("MovieClip_BirdsAndCereals") as §<!7§;
         §29§.setObjectToFront(_loc1_);
         _loc1_.setEnabled(false);
      }
      
      override public function dispose() : void
      {
         if((§ !4§.§%"7§ as AngryBirdsCustom).§<=§)
         {
            (§ !4§.§%"7§ as AngryBirdsCustom).§<=§.§;!I§(true);
            (§ !4§.§%"7§ as AngryBirdsCustom).§<=§.§9!z§(this.§8<§);
         }
         this.§"!D§.dispose();
         this.§0"%§.dispose();
         super.dispose();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+§) : void
      {
         var _loc4_:§-!g§ = null;
         switch(param2)
         {
            case "SUBMIT":
               (§ !4§.§%"7§ as AngryBirdsCustom).§+!J§.closePopup(§`!t§.§9r§);
               this.§0"%§.§>!m§();
               §>D§.§9!q§("Menu_Confirm");
               break;
            case "CANCEL":
               close();
               this.§-!j§.§'l§(§?"7§.§8"%§);
               §>D§.§9!q§("Menu_Back");
               break;
            case "SUBMIT_REGISTER":
               (§ !4§.§%"7§ as AngryBirdsCustom).§+!J§.closePopup(§`!t§.§9r§);
               this.§"!D§.§>!m§();
               §>D§.§9!q§("Menu_Confirm");
               break;
            case "CANCEL_REGISTER":
               close();
               this.§-!j§.§'l§(§?"7§.§8"%§);
               §>D§.§9!q§("Menu_Back");
               break;
            case "CHECKBOX_CHANGE":
               _loc4_ = §29§.getItemByName("Checkbox_RememberMe") as §-!g§;
               this.§^T§ = !this.§^T§;
               if(this.§^T§)
               {
                  _loc4_.setComponentState(§-!g§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc4_.setComponentState(§-!g§.§+O§);
               }
               _loc4_ = §29§.getItemByName("Checkbox_RememberMe_Register") as §-!g§;
               if(this.§^T§)
               {
                  _loc4_.setComponentState(§-!g§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc4_.setComponentState(§-!g§.§+O§);
               }
               break;
            case "TAB_LOGIN":
               this.§>",§();
               this.§0"%§.activate();
               this.§"!D§.deActivate();
               §>D§.§9!q§("Menu_Confirm");
               break;
            case "TAB_REGISTER":
               this.§>",§();
               this.§"!D§.activate();
               this.§0"%§.deActivate();
               §>D§.§9!q§("Menu_Confirm");
               break;
            case "NICKNAME_INFO":
               this.§>",§();
               (§ !4§.§%"7§ as AngryBirdsCustom).§+!J§.openPopup(new § !3§(§2p§.NICKNAME_INFO,6000));
               §>D§.§9!q§("Menu_Confirm");
         }
      }
      
      public function §%!;§() : void
      {
         this.§>",§();
         this.§0"%§.activate();
      }
      
      private function §>",§() : void
      {
         §29§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         §29§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         §29§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         §29§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         §29§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
         §29§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(false);
         §29§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(false);
         (§ !4§.§%"7§ as AngryBirdsCustom).§+!J§.closePopup(§`!t§.§9r§);
      }
      
      override public function updateTextFields() : void
      {
         §@"#§.§,2§.updateTextFields(§29§,"Login_Popup");
         this.§>",§();
         this.§"!D§.updateTextFields();
      }
      
      private function §2!'§() : void
      {
         if(§>c§)
         {
            this.§?L§();
            this.§=!Q§();
            this.§^T§ = false;
            this.§`!n§ = "";
            this.§!M§ = "";
            this.§=!z§ = "";
            this.§"!C§ = "";
         }
         §>c§ = false;
         this.§0I§();
         if(this.§!M§ && this.§`!n§)
         {
            (§29§.getItemByName("TextField_UserNameField") as §7!&§).§'!"§.text = this.§`!n§;
            (§29§.getItemByName("TextField_PasswordField") as §7!&§).§'!"§.text = this.§!M§;
         }
      }
      
      private function §0I§() : void
      {
         if(this.§3!+§.§8"§())
         {
            (§29§.getItemByName("TextField_UserNameField") as §7!&§).§'!"§.text = this.§3!+§.name;
            (§29§.getItemByName("TextField_PasswordField") as §7!&§).§'!"§.text = this.§3!+§.password;
            this.§^T§ = this.§3!+§.rememberMeToggled;
         }
      }
      
      public function §=!Q§() : void
      {
         (§29§.getItemByName("TextField_UserNameField") as §7!&§).§'!"§.text = "";
         (§29§.getItemByName("TextField_PasswordField") as §7!&§).§'!"§.text = "";
         §29§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(false);
         §29§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(false);
      }
      
      public function §?L§() : void
      {
         (§29§.getItemByName("TextField_PasswordField_Register") as §7!&§).§'!"§.text = "";
         (§29§.getItemByName("TextField_PasswordFieldRepeat_Register") as §7!&§).§'!"§.text = "";
         (§29§.getItemByName("TextField_NickNameField_Register") as §7!&§).§'!"§.text = "";
         §29§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         §29§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         §29§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
      }
      
      public function §-<§() : void
      {
         this.§`!n§ = this.§=!z§;
         this.§!M§ = this.§"!C§;
         var _loc1_:String = §@"#§.§,2§.§2"2§();
         var _loc2_:String = §@"#§.§,2§.§0!x§();
         (§29§.getItemByName("TextField_UserNameField") as §7!&§).§'!"§.text = this.§`!n§;
         (§29§.getItemByName("TextField_PasswordField") as §7!&§).§'!"§.text = this.§!M§;
         if(this.§^T§)
         {
            this.§3!+§.§!!z§(this.§`!n§,this.§!M§,_loc1_,_loc2_,this.§^T§);
         }
      }
      
      public function get rememberMeToggled() : Boolean
      {
         return this.§^T§;
      }
      
      public function get §=!%§() : String
      {
         return this.§=!z§;
      }
      
      public function set §=!%§(param1:String) : void
      {
         this.§=!z§ = param1;
      }
      
      public function get §-!6§() : String
      {
         return this.§"!C§;
      }
      
      public function set §-!6§(param1:String) : void
      {
         this.§"!C§ = param1;
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         super.hide(param1,param2);
      }
      
      public function get §6!"§() : §4Z§
      {
         return this.§3!+§;
      }
      
      public function get stage() : Stage
      {
         return §-p§.stage;
      }
   }
}
