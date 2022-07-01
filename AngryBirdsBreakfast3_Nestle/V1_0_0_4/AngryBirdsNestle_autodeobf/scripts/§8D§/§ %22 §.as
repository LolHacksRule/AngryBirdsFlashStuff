package §8D§
{
   import §"I§.§ !R§;
   import §%9§.§'F§;
   import §%9§.§<a§;
   import §,!9§.§>"$§;
   import §-!G§.§]!V§;
   import §9d§.§ ,§;
   import §9d§.§=H§;
   import §?!E§.§3!i§;
   import §?!E§.§^"!§;
   import §?N§.§9r§;
   import §?N§.§>!H§;
   import §@#§.§>L§;
   import §[!b§.§'!R§;
   import §[!b§.§2!O§;
   import §[!b§.§]"-§;
   import §`6§.§!!]§;
   import flash.display.Stage;
   
   public class § " § extends §<a§
   {
      
      public static const §6!"§:String = "a-zA-Z0-9\\";
      
      public static const §?'§:String = "a-zA-Z";
      
      public static const §?!N§:String = "0-9";
      
      public static const §]!%§:String = "a-z A-Z \'\\-.";
      
      public static const §@!#§:String = "a-zA-Z0-9\'\\-_@.";
      
      public static const §4;§:int = 60;
      
      public static const §!!c§:int = 10;
      
      public static const §!E§:int = 30;
      
      private static var §0p§:Class = §-7§;
      
      public static var §4"0§:Boolean = false;
       
      
      private var §95§:Boolean;
      
      private var §'!4§:§^"!§;
      
      private var §"u§:String;
      
      private var §"!B§:String;
      
      private var §?!`§:String;
      
      private var §90§:String;
      
      private var §+!u§:§=H§;
      
      private var §#S§:§ ,§;
      
      private var §?!'§:Boolean;
      
      private var §2!b§:§]!V§;
      
      public function § " §(param1:§]!V§, param2:§^"!§)
      {
         §?!^§ = false;
         §+!X§ = false;
         §8!^§ = true;
         super(§9r§.§2!V§,§>!H§.§,"0§,this.§^!!§());
         this.§2!b§ = param1;
         this.§'!4§ = param2;
      }
      
      protected function §^!!§() : XML
      {
         var _loc1_:XML = § !R§.§`G§(§0p§);
         return AngryBirdsCustom.§+Z§(_loc1_);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§+!u§ = new §=H§(§0+§,this);
         this.§#S§ = new § ,§(§0+§,this);
         this.§^F§();
         this.§#S§.activate();
         this.updateTextFields();
         this.§#S§.§5i§();
         this.§+!u§.§#!i§();
         (§-!l§.§"x§ as AngryBirdsCustom).§catch§.§!!g§(false);
         this.§?!'§ = (§-!l§.§"x§ as AngryBirdsCustom).§catch§.§4!2§();
         this.§-<§();
      }
      
      public function §-<§() : void
      {
         var _loc1_:§2!O§ = §0+§.getItemByName("MovieClip_BirdsAndCereals") as §2!O§;
         §0+§.setObjectToFront(_loc1_);
         _loc1_.setEnabled(false);
      }
      
      override public function dispose() : void
      {
         if((§-!l§.§"x§ as AngryBirdsCustom).§catch§)
         {
            (§-!l§.§"x§ as AngryBirdsCustom).§catch§.§!!g§(true);
            (§-!l§.§"x§ as AngryBirdsCustom).§catch§.§;!m§(this.§?!'§);
         }
         this.§+!u§.dispose();
         this.§#S§.dispose();
         super.dispose();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'!R§) : void
      {
         var _loc4_:§]"-§ = null;
         switch(param2)
         {
            case "SUBMIT":
               (§-!l§.§"x§ as AngryBirdsCustom).§,!W§.closePopup(§9r§.§"F§);
               this.§#S§.§?S§();
               break;
            case "CANCEL":
               close();
               this.§'!4§.§2w§(§3!i§.§+B§);
               break;
            case "SUBMIT_REGISTER":
               (§-!l§.§"x§ as AngryBirdsCustom).§,!W§.closePopup(§9r§.§"F§);
               this.§+!u§.§?S§();
               break;
            case "CANCEL_REGISTER":
               close();
               this.§'!4§.§2w§(§3!i§.§+B§);
               break;
            case "CHECKBOX_CHANGE":
               _loc4_ = §0+§.getItemByName("Checkbox_RememberMe") as §]"-§;
               this.§95§ = !this.§95§;
               if(this.§95§)
               {
                  _loc4_.setComponentState(§]"-§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc4_.setComponentState(§]"-§.§2"0§);
               }
               _loc4_ = §0+§.getItemByName("Checkbox_RememberMe_Register") as §]"-§;
               if(this.§95§)
               {
                  _loc4_.setComponentState(§]"-§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc4_.setComponentState(§]"-§.§2"0§);
               }
               break;
            case "TAB_LOGIN":
               this.§"T§();
               this.§#S§.activate();
               this.§+!u§.deActivate();
               break;
            case "TAB_REGISTER":
               this.§"T§();
               this.§+!u§.activate();
               this.§#S§.deActivate();
               break;
            case "NICKNAME_INFO":
               this.§"T§();
               (§-!l§.§"x§ as AngryBirdsCustom).§,!W§.openPopup(new §'F§(§>"$§.NICKNAME_INFO,6000));
         }
      }
      
      public function §8M§() : void
      {
         this.§"T§();
         this.§#S§.activate();
      }
      
      private function §"T§() : void
      {
         §0+§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         §0+§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         §0+§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         §0+§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         §0+§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
         §0+§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(false);
         §0+§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(false);
         (§-!l§.§"x§ as AngryBirdsCustom).§,!W§.closePopup(§9r§.§"F§);
      }
      
      override public function updateTextFields() : void
      {
         §!!]§.§?!+§.updateTextFields(§0+§,"Login_Popup");
         this.§"T§();
         this.§+!u§.updateTextFields();
      }
      
      private function §^F§() : void
      {
         if(§4"0§)
         {
            this.§^!]§();
            this.§-!=§();
            this.§95§ = false;
            this.§"u§ = "";
            this.§"!B§ = "";
            this.§?!`§ = "";
            this.§90§ = "";
         }
         §4"0§ = false;
         this.§9v§();
         if(this.§"!B§ && this.§"u§)
         {
            (§0+§.getItemByName("TextField_UserNameField") as §>L§).§<!=§.text = this.§"u§;
            (§0+§.getItemByName("TextField_PasswordField") as §>L§).§<!=§.text = this.§"!B§;
         }
      }
      
      private function §9v§() : void
      {
         if(this.§2!b§.§7!I§())
         {
            (§0+§.getItemByName("TextField_UserNameField") as §>L§).§<!=§.text = this.§2!b§.name;
            (§0+§.getItemByName("TextField_PasswordField") as §>L§).§<!=§.text = this.§2!b§.password;
            this.§95§ = this.§2!b§.rememberMeToggled;
         }
      }
      
      public function §-!=§() : void
      {
         (§0+§.getItemByName("TextField_UserNameField") as §>L§).§<!=§.text = "";
         (§0+§.getItemByName("TextField_PasswordField") as §>L§).§<!=§.text = "";
         §0+§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(false);
         §0+§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(false);
      }
      
      public function §^!]§() : void
      {
         (§0+§.getItemByName("TextField_PasswordField_Register") as §>L§).§<!=§.text = "";
         (§0+§.getItemByName("TextField_PasswordFieldRepeat_Register") as §>L§).§<!=§.text = "";
         (§0+§.getItemByName("TextField_NickNameField_Register") as §>L§).§<!=§.text = "";
         §0+§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         §0+§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         §0+§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
      }
      
      public function §`i§() : void
      {
         this.§"u§ = this.§?!`§;
         this.§"!B§ = this.§90§;
         var _loc1_:String = §!!]§.§?!+§.§[!;§();
         var _loc2_:String = §!!]§.§?!+§.§<N§();
         (§0+§.getItemByName("TextField_UserNameField") as §>L§).§<!=§.text = this.§"u§;
         (§0+§.getItemByName("TextField_PasswordField") as §>L§).§<!=§.text = this.§"!B§;
         if(this.§95§)
         {
            this.§2!b§.§>"4§(this.§"u§,this.§"!B§,_loc1_,_loc2_,this.§95§);
         }
      }
      
      public function get rememberMeToggled() : Boolean
      {
         return this.§95§;
      }
      
      public function get §]L§() : String
      {
         return this.§?!`§;
      }
      
      public function set §]L§(param1:String) : void
      {
         this.§?!`§ = param1;
      }
      
      public function get § "3§() : String
      {
         return this.§90§;
      }
      
      public function set § "3§(param1:String) : void
      {
         this.§90§ = param1;
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         super.hide(param1,param2);
      }
      
      public function get §4d§() : §]!V§
      {
         return this.§2!b§;
      }
      
      public function get stage() : Stage
      {
         return §9!1§.stage;
      }
   }
}
