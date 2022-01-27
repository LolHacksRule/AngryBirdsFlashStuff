package §1!K§
{
   import §-!r§.§'!h§;
   import §-!r§.§>§;
   import §4!@§.§;!`§;
   import §4!@§.§[!$§;
   import §4u§.§!H§;
   import §5"@§.§0x§;
   import §7!6§.§@Y§;
   import §7!6§.§^l§;
   import §="<§.§#`§;
   import §]!x§.§5!O§;
   import §]p§.§for§;
   import §`!w§.§?!U§;
   import flash.display.Stage;
   
   public class §2!h§ extends §5!O§
   {
      
      public static const §%Q§:String = "a-z A-Z 0-9 \\-";
      
      public static const §8!+§:String = "a-zA-Z";
      
      public static const §7!?§:String = "0-9";
      
      public static const §=s§:String = "a-z A-Z \'\\-.";
      
      public static const §'!-§:String = "a-zA-Z0-9\'\\-_@.";
      
      public static const §7!B§:int = 60;
      
      private static var §=!R§:Class = §'6§;
      
      public static var §?3§:Boolean = false;
       
      
      private var §[^§:Boolean;
      
      private var §!!>§:Boolean;
      
      private var §0!^§:Boolean;
      
      private var §1!n§:String;
      
      private var §^K§:String;
      
      private var §1!-§:String;
      
      private var §&<§:String;
      
      private var §6!d§:§[!$§;
      
      private var §>!-§:§;!`§;
      
      private var §2"!§:Boolean;
      
      private var §<!W§:String = "";
      
      private var §0p§:String = "";
      
      private var §,!H§:String = "";
      
      private var §`@§:String = "";
      
      private var §3b§:String = "";
      
      private var §8n§:String = "";
      
      private var §>!Z§:§0x§;
      
      public function §2!h§(param1:§0x§)
      {
         §<"5§ = true;
         §8!X§ = true;
         super(§>§.§<=§,§'!h§.§%H§,§?!U§.§3!c§(§=!R§));
         this.§>!Z§ = param1;
      }
      
      override protected function init() : void
      {
         super.init();
         this.§6!d§ = new §[!$§(§3!a§,this);
         this.§>!-§ = new §;!`§(§3!a§,this);
         this.§]I§();
         this.§>!-§.activate();
         this.updateTextFields();
         this.§>!-§.§'"$§();
         this.§6!d§.§8"4§();
         (§2&§.§6o§ as §@T§).§56§.§,j§(false);
         this.§2"!§ = (§2&§.§6o§ as §@T§).§56§.§,1§();
      }
      
      override public function dispose() : void
      {
         (§2&§.§6o§ as §@T§).§56§.§,j§(true);
         (§2&§.§6o§ as §@T§).§56§.§!!5§(this.§2"!§);
         this.§6!d§.dispose();
         this.§>!-§.dispose();
         super.dispose();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§@Y§) : void
      {
         var _loc4_:§^l§ = null;
         switch(param2)
         {
            case "SUBMIT":
               this.§>!-§.§3!q§();
               break;
            case "CANCEL":
               close();
               break;
            case "SUBMIT_REGISTER":
               this.§6!d§.§3!q§();
               break;
            case "CANCEL_REGISTER":
               close();
               break;
            case "CHECKBOX_CHANGE":
               _loc4_ = §3!a§.getItemByName("Checkbox_RememberMe") as §^l§;
               this.§[^§ = !this.§[^§;
               if(this.§[^§)
               {
                  _loc4_.setComponentState(§^l§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc4_.setComponentState(§^l§.§,Z§);
               }
               _loc4_ = §3!a§.getItemByName("Checkbox_RememberMe_Register") as §^l§;
               if(this.§[^§)
               {
                  _loc4_.setComponentState(§^l§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               _loc4_.setComponentState(§^l§.§,Z§);
               break;
            case "CHECKBOX_MARKETING_CHANGE":
               _loc4_ = §3!a§.getItemByName("Checkbox_Marketing") as §^l§;
               this.§!!>§ = !this.§!!>§;
               if(this.§!!>§)
               {
                  _loc4_.setComponentState(§^l§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               _loc4_.setComponentState(§^l§.§,Z§);
               break;
            case "CHECKBOX_EXT_MARKETING_CHANGE":
               _loc4_ = §3!a§.getItemByName("Checkbox_ExtMarketing") as §^l§;
               this.§0!^§ = !this.§0!^§;
               if(this.§0!^§)
               {
                  _loc4_.setComponentState(§^l§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc4_.setComponentState(§^l§.§,Z§);
               }
               break;
            case "FORGOT_PASSWORD":
               §2&§.§6o§.§^7§.openPopup(new §for§());
               break;
            case "TAB_LOGIN":
               this.§&>§();
               this.§>!-§.activate();
               this.§6!d§.deActivate();
               break;
            case "TAB_REGISTER":
               this.§&>§();
               this.§6!d§.activate();
               this.§>!-§.deActivate();
         }
      }
      
      public function § !S§() : void
      {
         this.§&>§();
         this.§>!-§.activate();
      }
      
      private function §&>§() : void
      {
         §3!a§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(false);
         §3!a§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         §3!a§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         §3!a§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         §3!a§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         §3!a§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
         §3!a§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(false);
         §3!a§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(false);
      }
      
      override public function updateTextFields() : void
      {
         §!H§.§3R§.updateTextFields(§3!a§,"Login_Popup");
         this.§&>§();
         this.§6!d§.updateTextFields();
         this.§>!-§.§3G§();
      }
      
      private function §]I§() : void
      {
         if(§?3§)
         {
            this.§ !x§();
            this.§<<§();
            this.§[^§ = false;
            this.§!!>§ = false;
            this.§0!^§ = false;
            this.§1!n§ = "";
            this.§^K§ = "";
            this.§1!-§ = "";
            this.§&<§ = "";
         }
         §?3§ = false;
         this.§>!p§();
         if(this.§^K§ && this.§1!n§)
         {
            (§3!a§.getItemByName("TextField_UserNameField") as §#`§).§';§.text = this.§1!n§;
            (§3!a§.getItemByName("TextField_PasswordField") as §#`§).§';§.text = this.§^K§;
         }
      }
      
      private function §>!p§() : void
      {
         if(this.§>!Z§.§=!A§())
         {
            (§3!a§.getItemByName("TextField_UserNameField") as §#`§).§';§.text = this.§>!Z§.name;
            (§3!a§.getItemByName("TextField_PasswordField") as §#`§).§';§.text = this.§>!Z§.password;
            this.§[^§ = this.§>!Z§.rememberMeToggled;
         }
      }
      
      public function §<<§() : void
      {
         (§3!a§.getItemByName("TextField_UserNameField") as §#`§).§';§.text = "";
         (§3!a§.getItemByName("TextField_PasswordField") as §#`§).§';§.text = "";
         §3!a§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(false);
         §3!a§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(false);
      }
      
      public function § !x§() : void
      {
         (§3!a§.getItemByName("TextField_EmailField_Register") as §#`§).§';§.text = "";
         (§3!a§.getItemByName("TextField_PasswordField_Register") as §#`§).§';§.text = "";
         (§3!a§.getItemByName("TextField_PasswordFieldRepeat_Register") as §#`§).§';§.text = "";
         (§3!a§.getItemByName("TextField_NickNameField_Register") as §#`§).§';§.text = "";
         §3!a§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(false);
         §3!a§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         §3!a§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         §3!a§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
      }
      
      public function §%L§() : void
      {
         this.§1!n§ = this.§1!-§;
         this.§^K§ = this.§&<§;
         (§3!a§.getItemByName("TextField_UserNameField") as §#`§).§';§.text = this.§1!n§;
         (§3!a§.getItemByName("TextField_PasswordField") as §#`§).§';§.text = this.§^K§;
         if(this.§[^§)
         {
            this.§>!Z§.§+t§(this.§1!n§,this.§^K§,this.§[^§);
         }
      }
      
      public function get rememberMeToggled() : Boolean
      {
         return this.§[^§;
      }
      
      public function get §;a§() : String
      {
         return this.§1!-§;
      }
      
      public function set §;a§(param1:String) : void
      {
         this.§1!-§ = param1;
      }
      
      public function get §#"?§() : String
      {
         return this.§&<§;
      }
      
      public function set §#"?§(param1:String) : void
      {
         this.§&<§ = param1;
      }
      
      public function get §#!4§() : Boolean
      {
         return this.§!!>§;
      }
      
      public function get §2"0§() : Boolean
      {
         return this.§0!^§;
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         super.hide(param1,param2);
      }
      
      public function get §]U§() : §0x§
      {
         return this.§>!Z§;
      }
      
      public function get stage() : Stage
      {
         return §3!L§.stage;
      }
   }
}
