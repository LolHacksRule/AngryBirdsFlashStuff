package §'&§
{
   import § S§.§ !+§;
   import § S§.§4&§;
   import §%f§.§[@§;
   import §&!>§.§'!x§;
   import §,"3§.§-k§;
   import §,"3§.§>e§;
   import §,#§.§=!8§;
   import §,#§.§>!e§;
   import §2!"§.§8K§;
   import §8q§.§]d§;
   import §;"+§.§"!I§;
   import §;4§.§%@§;
   import §>P§.§,3§;
   import §>P§.§-U§;
   import §>P§.§3!Z§;
   import §?I§.§'!<§;
   import §?I§.§1>§;
   import flash.display.Stage;
   
   public class §3W§ extends §1>§
   {
      
      public static const §`0§:String = "a-zA-Z0-9\\";
      
      public static const §;!K§:String = "a-zA-Z";
      
      public static const §?!S§:String = "0-9";
      
      public static const §7'§:String = "a-z A-Z \'\\-.";
      
      public static const §?"2§:String = "a-zA-Z0-9\'\\-_@.";
      
      public static const §6!Z§:int = 60;
      
      public static const §6!i§:int = 10;
      
      public static const §0§:int = 30;
      
      private static var §7!e§:Class = §^g§;
      
      public static var §2-§:Boolean = false;
       
      
      private var §=d§:Boolean;
      
      private var §;r§:§=!8§;
      
      private var §<!>§:String;
      
      private var §`c§:String;
      
      private var §;"7§:String;
      
      private var §6"$§:String;
      
      private var §8!d§:§>e§;
      
      private var §4!]§:§-k§;
      
      private var § ]§:Boolean;
      
      private var §2" §:§'!x§;
      
      public function §3W§(param1:§'!x§, param2:§=!8§)
      {
         §2!b§ = false;
         §@n§ = false;
         §!d§ = true;
         super(§4&§.§>!y§,§ !+§.§3"8§,this.§'!N§());
         this.§2" § = param1;
         this.§;r§ = param2;
      }
      
      protected function §'!N§() : XML
      {
         var _loc1_:XML = §%@§.set(§7!e§);
         return AngryBirdsCustom.§3!z§(_loc1_);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§8!d§ = new §>e§(§@!U§,this);
         this.§4!]§ = new §-k§(§@!U§,this);
         this.§4[§();
         this.§4!]§.activate();
         this.updateTextFields();
         this.§4!]§.§4h§();
         this.§8!d§.§=!s§();
         (§-O§.§5!1§ as AngryBirdsCustom).§9]§.§+;§(false);
         this.§ ]§ = (§-O§.§5!1§ as AngryBirdsCustom).§9]§.§`!E§();
         this.§1!Y§();
      }
      
      public function §1!Y§() : void
      {
         var _loc1_:§3!Z§ = §@!U§.getItemByName("MovieClip_BirdsAndCereals") as §3!Z§;
         §@!U§.setObjectToFront(_loc1_);
         _loc1_.setEnabled(false);
      }
      
      override public function dispose() : void
      {
         if((§-O§.§5!1§ as AngryBirdsCustom).§9]§)
         {
            (§-O§.§5!1§ as AngryBirdsCustom).§9]§.§+;§(true);
            (§-O§.§5!1§ as AngryBirdsCustom).§9]§.§%!b§(this.§ ]§);
         }
         this.§8!d§.dispose();
         this.§4!]§.dispose();
         super.dispose();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§,3§) : void
      {
         var _loc4_:§-U§ = null;
         switch(param2)
         {
            case "SUBMIT":
               (§-O§.§5!1§ as AngryBirdsCustom).§-6§.closePopup(§4&§.§;!C§);
               this.§4!]§.§ use§();
               §]d§.§^!J§("Menu_Confirm");
               break;
            case "CANCEL":
               close();
               this.§;r§.§7I§(§>!e§.§'u§);
               §]d§.§^!J§("Menu_Back");
               break;
            case "SUBMIT_REGISTER":
               (§-O§.§5!1§ as AngryBirdsCustom).§-6§.closePopup(§4&§.§;!C§);
               this.§8!d§.§ use§();
               §]d§.§^!J§("Menu_Confirm");
               break;
            case "CANCEL_REGISTER":
               close();
               this.§;r§.§7I§(§>!e§.§'u§);
               §]d§.§^!J§("Menu_Back");
               break;
            case "CHECKBOX_CHANGE":
               _loc4_ = §@!U§.getItemByName("Checkbox_RememberMe") as §-U§;
               this.§=d§ = !this.§=d§;
               if(this.§=d§)
               {
                  _loc4_.setComponentState(§-U§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc4_.setComponentState(§-U§.§;!G§);
               }
               _loc4_ = §@!U§.getItemByName("Checkbox_RememberMe_Register") as §-U§;
               if(this.§=d§)
               {
                  _loc4_.setComponentState(§-U§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc4_.setComponentState(§-U§.§;!G§);
               }
               break;
            case "TAB_LOGIN":
               this.§03§();
               this.§4!]§.activate();
               this.§8!d§.deActivate();
               §]d§.§^!J§("Menu_Confirm");
               break;
            case "TAB_REGISTER":
               this.§03§();
               this.§8!d§.activate();
               this.§4!]§.deActivate();
               §]d§.§^!J§("Menu_Confirm");
               break;
            case "NICKNAME_INFO":
               this.§03§();
               (§-O§.§5!1§ as AngryBirdsCustom).§-6§.openPopup(new §'!<§(§8K§.NICKNAME_INFO,6000));
               §]d§.§^!J§("Menu_Confirm");
         }
      }
      
      public function §7!&§() : void
      {
         this.§03§();
         this.§4!]§.activate();
      }
      
      private function §03§() : void
      {
         §@!U§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         §@!U§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         §@!U§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         §@!U§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         §@!U§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
         §@!U§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(false);
         §@!U§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(false);
         (§-O§.§5!1§ as AngryBirdsCustom).§-6§.closePopup(§4&§.§;!C§);
      }
      
      override public function updateTextFields() : void
      {
         §[@§.§"e§.updateTextFields(§@!U§,"Login_Popup");
         this.§03§();
         this.§8!d§.updateTextFields();
      }
      
      private function §4[§() : void
      {
         if(§2-§)
         {
            this.§3B§();
            this.§%!A§();
            this.§=d§ = false;
            this.§<!>§ = "";
            this.§`c§ = "";
            this.§;"7§ = "";
            this.§6"$§ = "";
         }
         §2-§ = false;
         this.§^Q§();
         if(this.§`c§ && this.§<!>§)
         {
            (§@!U§.getItemByName("TextField_UserNameField") as §"!I§).§6s§.text = this.§<!>§;
            (§@!U§.getItemByName("TextField_PasswordField") as §"!I§).§6s§.text = this.§`c§;
         }
      }
      
      private function §^Q§() : void
      {
         if(this.§2" §.§6!k§())
         {
            (§@!U§.getItemByName("TextField_UserNameField") as §"!I§).§6s§.text = this.§2" §.name;
            (§@!U§.getItemByName("TextField_PasswordField") as §"!I§).§6s§.text = this.§2" §.password;
            this.§=d§ = this.§2" §.rememberMeToggled;
         }
      }
      
      public function §%!A§() : void
      {
         (§@!U§.getItemByName("TextField_UserNameField") as §"!I§).§6s§.text = "";
         (§@!U§.getItemByName("TextField_PasswordField") as §"!I§).§6s§.text = "";
         §@!U§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(false);
         §@!U§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(false);
      }
      
      public function §3B§() : void
      {
         (§@!U§.getItemByName("TextField_PasswordField_Register") as §"!I§).§6s§.text = "";
         (§@!U§.getItemByName("TextField_PasswordFieldRepeat_Register") as §"!I§).§6s§.text = "";
         (§@!U§.getItemByName("TextField_NickNameField_Register") as §"!I§).§6s§.text = "";
         §@!U§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         §@!U§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         §@!U§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
      }
      
      public function §in §() : void
      {
         this.§<!>§ = this.§;"7§;
         this.§`c§ = this.§6"$§;
         var _loc1_:String = §[@§.§"e§.§1-§();
         var _loc2_:String = §[@§.§"e§.§]f§();
         (§@!U§.getItemByName("TextField_UserNameField") as §"!I§).§6s§.text = this.§<!>§;
         (§@!U§.getItemByName("TextField_PasswordField") as §"!I§).§6s§.text = this.§`c§;
         if(this.§=d§)
         {
            this.§2" §.§,1§(this.§<!>§,this.§`c§,_loc1_,_loc2_,this.§=d§);
         }
      }
      
      public function get rememberMeToggled() : Boolean
      {
         return this.§=d§;
      }
      
      public function get §^"-§() : String
      {
         return this.§;"7§;
      }
      
      public function set §^"-§(param1:String) : void
      {
         this.§;"7§ = param1;
      }
      
      public function get §"!W§() : String
      {
         return this.§6"$§;
      }
      
      public function set §"!W§(param1:String) : void
      {
         this.§6"$§ = param1;
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         super.hide(param1,param2);
      }
      
      public function get §-""§() : §'!x§
      {
         return this.§2" §;
      }
      
      public function get stage() : Stage
      {
         return §>!t§.stage;
      }
   }
}
