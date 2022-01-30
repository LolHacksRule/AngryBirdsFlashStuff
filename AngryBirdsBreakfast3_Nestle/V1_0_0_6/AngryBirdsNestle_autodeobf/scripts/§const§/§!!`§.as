package §const§
{
   import §&<§.§2!q§;
   import §&<§.§@j§;
   import §&<§.§^!#§;
   import §&_§.§-"!§;
   import §&_§.§6!z§;
   import §'-§.§9u§;
   import §0!$§.§2!K§;
   import §2W§.§+!d§;
   import §5u§.§+!]§;
   import §5u§.§^!=§;
   import §6!5§.§,!`§;
   import §6!5§.§2!E§;
   import §63§.§=7§;
   import §=!Y§.§6""§;
   import §=!Y§.§7!p§;
   import §@!6§.§3!5§;
   import §[!F§.§1c§;
   import flash.display.Stage;
   
   public class §!!`§ extends §-"!§
   {
      
      public static const §?f§:String = "a-zA-Z0-9\\";
      
      public static const §>D§:String = "a-zA-Z";
      
      public static const §do§:String = "0-9";
      
      public static const §<"$§:String = "a-z A-Z \'\\-.";
      
      public static const §+!7§:String = "a-zA-Z0-9\'\\-_@.";
      
      public static const §]!s§:int = 60;
      
      public static const §?!e§:int = 10;
      
      public static const §7u§:int = 30;
      
      private static var §9"$§:Class = §`M§;
      
      public static var §,i§:Boolean = false;
       
      
      private var §?!o§:Boolean;
      
      private var §@"'§:§,!`§;
      
      private var §,!t§:String;
      
      private var §5!,§:String;
      
      private var §=h§:String;
      
      private var §;L§:String;
      
      private var §--§:§7!p§;
      
      private var §%k§:§6""§;
      
      private var §-!d§:Boolean;
      
      private var §9R§:§=7§;
      
      public function §!!`§(param1:§=7§, param2:§,!`§)
      {
         §^c§ = false;
         §'[§ = false;
         §null§ = true;
         super(§^!=§.§0" §,§+!]§.§4Y§,this.§;!<§());
         this.§9R§ = param1;
         this.§@"'§ = param2;
      }
      
      protected function §;!<§() : XML
      {
         var _loc1_:XML = §2!K§.§5i§(§9"$§);
         return AngryBirdsCustom.§>@§(_loc1_);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§--§ = new §7!p§(§[!<§,this);
         this.§%k§ = new §6""§(§[!<§,this);
         this.§;$§();
         this.§%k§.activate();
         this.updateTextFields();
         this.§%k§.§1m§();
         this.§--§.§4x§();
         (§-!I§.§[f§ as AngryBirdsCustom).§=!F§.§70§(false);
         this.§-!d§ = (§-!I§.§[f§ as AngryBirdsCustom).§=!F§.§ !`§();
         this.§8M§();
      }
      
      public function §8M§() : void
      {
         var _loc1_:§2!q§ = §[!<§.getItemByName("MovieClip_BirdsAndCereals") as §2!q§;
         §[!<§.setObjectToFront(_loc1_);
         _loc1_.setEnabled(false);
      }
      
      override public function dispose() : void
      {
         if((§-!I§.§[f§ as AngryBirdsCustom).§=!F§)
         {
            (§-!I§.§[f§ as AngryBirdsCustom).§=!F§.§70§(true);
            (§-!I§.§[f§ as AngryBirdsCustom).§=!F§.§4!y§(this.§-!d§);
         }
         this.§--§.dispose();
         this.§%k§.dispose();
         super.dispose();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§^!#§) : void
      {
         var _loc4_:§@j§ = null;
         switch(param2)
         {
            case "SUBMIT":
               (§-!I§.§[f§ as AngryBirdsCustom).§@!C§.closePopup(§^!=§.§^"!§);
               this.§%k§.§+!,§();
               §3!5§.§<!9§("Menu_Confirm");
               break;
            case "CANCEL":
               close();
               this.§@"'§.§2J§(§2!E§.§7w§);
               §3!5§.§<!9§("Menu_Back");
               break;
            case "SUBMIT_REGISTER":
               (§-!I§.§[f§ as AngryBirdsCustom).§@!C§.closePopup(§^!=§.§^"!§);
               this.§--§.§+!,§();
               §3!5§.§<!9§("Menu_Confirm");
               break;
            case "CANCEL_REGISTER":
               close();
               this.§@"'§.§2J§(§2!E§.§7w§);
               §3!5§.§<!9§("Menu_Back");
               break;
            case "CHECKBOX_CHANGE":
               _loc4_ = §[!<§.getItemByName("Checkbox_RememberMe") as §@j§;
               this.§?!o§ = !this.§?!o§;
               if(this.§?!o§)
               {
                  _loc4_.setComponentState(§@j§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc4_.setComponentState(§@j§.§]P§);
               }
               _loc4_ = §[!<§.getItemByName("Checkbox_RememberMe_Register") as §@j§;
               if(this.§?!o§)
               {
                  _loc4_.setComponentState(§@j§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc4_.setComponentState(§@j§.§]P§);
               }
               break;
            case "TAB_LOGIN":
               this.§"!5§();
               this.§%k§.activate();
               this.§--§.deActivate();
               §3!5§.§<!9§("Menu_Confirm");
               break;
            case "TAB_REGISTER":
               this.§"!5§();
               this.§--§.activate();
               this.§%k§.deActivate();
               §3!5§.§<!9§("Menu_Confirm");
               break;
            case "NICKNAME_INFO":
               this.§"!5§();
               (§-!I§.§[f§ as AngryBirdsCustom).§@!C§.openPopup(new §6!z§(§9u§.NICKNAME_INFO,6000));
               §3!5§.§<!9§("Menu_Confirm");
         }
      }
      
      public function §`+§() : void
      {
         this.§"!5§();
         this.§%k§.activate();
      }
      
      private function §"!5§() : void
      {
         §[!<§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         §[!<§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         §[!<§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         §[!<§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         §[!<§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
         §[!<§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(false);
         §[!<§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(false);
         (§-!I§.§[f§ as AngryBirdsCustom).§@!C§.closePopup(§^!=§.§^"!§);
      }
      
      override public function updateTextFields() : void
      {
         §+!d§.§<"5§.updateTextFields(§[!<§,"Login_Popup");
         this.§"!5§();
         this.§--§.updateTextFields();
      }
      
      private function §;$§() : void
      {
         if(§,i§)
         {
            this.§]!+§();
            this.§6`§();
            this.§?!o§ = false;
            this.§,!t§ = "";
            this.§5!,§ = "";
            this.§=h§ = "";
            this.§;L§ = "";
         }
         §,i§ = false;
         this.§>!8§();
         if(this.§5!,§ && this.§,!t§)
         {
            (§[!<§.getItemByName("TextField_UserNameField") as §1c§).§ e§.text = this.§,!t§;
            (§[!<§.getItemByName("TextField_PasswordField") as §1c§).§ e§.text = this.§5!,§;
         }
      }
      
      private function §>!8§() : void
      {
         if(this.§9R§.§[<§())
         {
            (§[!<§.getItemByName("TextField_UserNameField") as §1c§).§ e§.text = this.§9R§.name;
            (§[!<§.getItemByName("TextField_PasswordField") as §1c§).§ e§.text = this.§9R§.password;
            this.§?!o§ = this.§9R§.rememberMeToggled;
         }
      }
      
      public function §6`§() : void
      {
         (§[!<§.getItemByName("TextField_UserNameField") as §1c§).§ e§.text = "";
         (§[!<§.getItemByName("TextField_PasswordField") as §1c§).§ e§.text = "";
         §[!<§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(false);
         §[!<§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(false);
      }
      
      public function §]!+§() : void
      {
         (§[!<§.getItemByName("TextField_PasswordField_Register") as §1c§).§ e§.text = "";
         (§[!<§.getItemByName("TextField_PasswordFieldRepeat_Register") as §1c§).§ e§.text = "";
         (§[!<§.getItemByName("TextField_NickNameField_Register") as §1c§).§ e§.text = "";
         §[!<§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         §[!<§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         §[!<§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
      }
      
      public function §6_§() : void
      {
         this.§,!t§ = this.§=h§;
         this.§5!,§ = this.§;L§;
         var _loc1_:String = §+!d§.§<"5§.§,!;§();
         var _loc2_:String = §+!d§.§<"5§.§'!G§();
         (§[!<§.getItemByName("TextField_UserNameField") as §1c§).§ e§.text = this.§,!t§;
         (§[!<§.getItemByName("TextField_PasswordField") as §1c§).§ e§.text = this.§5!,§;
         if(this.§?!o§)
         {
            this.§9R§.§@!,§(this.§,!t§,this.§5!,§,_loc1_,_loc2_,this.§?!o§);
         }
      }
      
      public function get rememberMeToggled() : Boolean
      {
         return this.§?!o§;
      }
      
      public function get §use §() : String
      {
         return this.§=h§;
      }
      
      public function set §use §(param1:String) : void
      {
         this.§=h§ = param1;
      }
      
      public function get §>y§() : String
      {
         return this.§;L§;
      }
      
      public function set §>y§(param1:String) : void
      {
         this.§;L§ = param1;
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         super.hide(param1,param2);
      }
      
      public function get §;"-§() : §=7§
      {
         return this.§9R§;
      }
      
      public function get stage() : Stage
      {
         return §&X§.stage;
      }
   }
}
