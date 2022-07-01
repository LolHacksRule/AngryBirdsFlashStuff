package §4"!§
{
   import §!"§.§@]§;
   import §!R§.§#!L§;
   import §!R§.§-!T§;
   import §!R§.§9!8§;
   import §#!]§.§!!P§;
   import §#!]§.§+!a§;
   import §+!<§.§,!v§;
   import §+!<§.§4",§;
   import §1!s§.§8!f§;
   import §1!s§.§finally§;
   import §2!,§.§,!#§;
   import §2!,§.§>!F§;
   import §4Y§.§&0§;
   import §8!$§.§1b§;
   import §;X§.§4!@§;
   import §^>§.§2"&§;
   import §`!s§.§^2§;
   import flash.display.Stage;
   
   public class §?!#§ extends §,!#§
   {
      
      public static const §5!9§:String = "a-zA-Z0-9\\";
      
      public static const §-0§:String = "a-zA-Z";
      
      public static const §3!E§:String = "0-9";
      
      public static const §#g§:String = "a-z A-Z \'\\-.";
      
      public static const §8j§:String = "a-zA-Z0-9\'\\-_@.";
      
      public static const §4C§:int = 60;
      
      public static const § !v§:int = 10;
      
      public static const §#+§:int = 30;
      
      private static var §7"3§:Class = § !+§;
      
      public static var §^"&§:Boolean = false;
       
      
      private var §0t§:Boolean;
      
      private var §3F§:§+!a§;
      
      private var §`Y§:String;
      
      private var §!1§:String;
      
      private var §67§:String;
      
      private var §`@§:String;
      
      private var §try§:§4",§;
      
      private var §-!G§:§,!v§;
      
      private var §&Q§:Boolean;
      
      private var §&I§:§@]§;
      
      public function §?!#§(param1:§@]§, param2:§+!a§)
      {
         §&5§ = false;
         §2L§ = false;
         §[!k§ = true;
         super(§8!f§.§^!D§,§finally§.§,C§,this.§';§());
         this.§&I§ = param1;
         this.§3F§ = param2;
      }
      
      protected function §';§() : XML
      {
         var _loc1_:XML = §1b§.§?!R§(§7"3§);
         return AngryBirdsCustom.§6-§(_loc1_);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§try§ = new §4",§(§;"#§,this);
         this.§-!G§ = new §,!v§(§;"#§,this);
         this.§[X§();
         this.§-!G§.activate();
         this.updateTextFields();
         this.§-!G§.§@;§();
         this.§try§.§%3§();
         (§-!2§.§7O§ as AngryBirdsCustom).§6!<§.§?!§(false);
         this.§&Q§ = (§-!2§.§7O§ as AngryBirdsCustom).§6!<§.§;9§();
         this.§ N§();
      }
      
      public function § N§() : void
      {
         var _loc1_:§9!8§ = §;"#§.getItemByName("MovieClip_BirdsAndCereals") as §9!8§;
         §;"#§.setObjectToFront(_loc1_);
         _loc1_.setEnabled(false);
      }
      
      override public function dispose() : void
      {
         if((§-!2§.§7O§ as AngryBirdsCustom).§6!<§)
         {
            (§-!2§.§7O§ as AngryBirdsCustom).§6!<§.§?!§(true);
            (§-!2§.§7O§ as AngryBirdsCustom).§6!<§.§,!a§(this.§&Q§);
         }
         this.§try§.dispose();
         this.§-!G§.dispose();
         super.dispose();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§#!L§) : void
      {
         var _loc4_:§-!T§ = null;
         switch(param2)
         {
            case "SUBMIT":
               (§-!2§.§7O§ as AngryBirdsCustom).§0!l§.closePopup(§8!f§.§3!G§);
               this.§-!G§.§?!i§();
               §4!@§.§`!w§("Menu_Confirm");
               break;
            case "CANCEL":
               close();
               this.§3F§.§]?§(§!!P§.§]!y§);
               §4!@§.§`!w§("Menu_Back");
               break;
            case "SUBMIT_REGISTER":
               (§-!2§.§7O§ as AngryBirdsCustom).§0!l§.closePopup(§8!f§.§3!G§);
               this.§try§.§?!i§();
               §4!@§.§`!w§("Menu_Confirm");
               break;
            case "CANCEL_REGISTER":
               close();
               this.§3F§.§]?§(§!!P§.§]!y§);
               §4!@§.§`!w§("Menu_Back");
               break;
            case "CHECKBOX_CHANGE":
               _loc4_ = §;"#§.getItemByName("Checkbox_RememberMe") as §-!T§;
               this.§0t§ = !this.§0t§;
               if(this.§0t§)
               {
                  _loc4_.setComponentState(§-!T§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc4_.setComponentState(§-!T§.§,!H§);
               }
               _loc4_ = §;"#§.getItemByName("Checkbox_RememberMe_Register") as §-!T§;
               if(this.§0t§)
               {
                  _loc4_.setComponentState(§-!T§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc4_.setComponentState(§-!T§.§,!H§);
               }
               break;
            case "TAB_LOGIN":
               this.§>!b§();
               this.§-!G§.activate();
               this.§try§.deActivate();
               §4!@§.§`!w§("Menu_Confirm");
               break;
            case "TAB_REGISTER":
               this.§>!b§();
               this.§try§.activate();
               this.§-!G§.deActivate();
               §4!@§.§`!w§("Menu_Confirm");
               break;
            case "NICKNAME_INFO":
               this.§>!b§();
               (§-!2§.§7O§ as AngryBirdsCustom).§0!l§.openPopup(new §>!F§(§2"&§.NICKNAME_INFO,6000));
               §4!@§.§`!w§("Menu_Confirm");
         }
      }
      
      public function §`! §() : void
      {
         this.§>!b§();
         this.§-!G§.activate();
      }
      
      private function §>!b§() : void
      {
         §;"#§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         §;"#§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         §;"#§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         §;"#§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         §;"#§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
         §;"#§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(false);
         §;"#§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(false);
         (§-!2§.§7O§ as AngryBirdsCustom).§0!l§.closePopup(§8!f§.§3!G§);
      }
      
      override public function updateTextFields() : void
      {
         §^2§.§&!;§.updateTextFields(§;"#§,"Login_Popup");
         this.§>!b§();
         this.§try§.updateTextFields();
      }
      
      private function §[X§() : void
      {
         if(§^"&§)
         {
            this.§`;§();
            this.§`!D§();
            this.§0t§ = false;
            this.§`Y§ = "";
            this.§!1§ = "";
            this.§67§ = "";
            this.§`@§ = "";
         }
         §^"&§ = false;
         this.§<!9§();
         if(this.§!1§ && this.§`Y§)
         {
            (§;"#§.getItemByName("TextField_UserNameField") as §&0§).§"S§.text = this.§`Y§;
            (§;"#§.getItemByName("TextField_PasswordField") as §&0§).§"S§.text = this.§!1§;
         }
      }
      
      private function §<!9§() : void
      {
         if(this.§&I§.§[!l§())
         {
            (§;"#§.getItemByName("TextField_UserNameField") as §&0§).§"S§.text = this.§&I§.name;
            (§;"#§.getItemByName("TextField_PasswordField") as §&0§).§"S§.text = this.§&I§.password;
            this.§0t§ = this.§&I§.rememberMeToggled;
         }
      }
      
      public function §`!D§() : void
      {
         (§;"#§.getItemByName("TextField_UserNameField") as §&0§).§"S§.text = "";
         (§;"#§.getItemByName("TextField_PasswordField") as §&0§).§"S§.text = "";
         §;"#§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(false);
         §;"#§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(false);
      }
      
      public function §`;§() : void
      {
         (§;"#§.getItemByName("TextField_PasswordField_Register") as §&0§).§"S§.text = "";
         (§;"#§.getItemByName("TextField_PasswordFieldRepeat_Register") as §&0§).§"S§.text = "";
         (§;"#§.getItemByName("TextField_NickNameField_Register") as §&0§).§"S§.text = "";
         §;"#§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         §;"#§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         §;"#§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
      }
      
      public function §4V§() : void
      {
         this.§`Y§ = this.§67§;
         this.§!1§ = this.§`@§;
         var _loc1_:String = §^2§.§&!;§.§1!a§();
         var _loc2_:String = §^2§.§&!;§.§]T§();
         (§;"#§.getItemByName("TextField_UserNameField") as §&0§).§"S§.text = this.§`Y§;
         (§;"#§.getItemByName("TextField_PasswordField") as §&0§).§"S§.text = this.§!1§;
         if(this.§0t§)
         {
            this.§&I§.§!!q§(this.§`Y§,this.§!1§,_loc1_,_loc2_,this.§0t§);
         }
      }
      
      public function get rememberMeToggled() : Boolean
      {
         return this.§0t§;
      }
      
      public function get §3b§() : String
      {
         return this.§67§;
      }
      
      public function set §3b§(param1:String) : void
      {
         this.§67§ = param1;
      }
      
      public function get §[!j§() : String
      {
         return this.§`@§;
      }
      
      public function set §[!j§(param1:String) : void
      {
         this.§`@§ = param1;
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         super.hide(param1,param2);
      }
      
      public function get §'2§() : §@]§
      {
         return this.§&I§;
      }
      
      public function get stage() : Stage
      {
         return §1!!§.stage;
      }
   }
}
