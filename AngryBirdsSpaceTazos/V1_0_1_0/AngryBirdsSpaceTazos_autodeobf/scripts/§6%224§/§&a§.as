package §6"4§
{
   import § !Y§.§&$§;
   import §0N§.§0!g§;
   import §3"!§.§7!U§;
   import §3C§.§9!;§;
   import §5X§.§+!#§;
   import §5X§.§@!!§;
   import §7!B§.§@"@§;
   import §7!H§.§1#§;
   import §7!H§.§8"6§;
   import §77§.§&!>§;
   import §;^§.§<!^§;
   import §;^§.§`>§;
   
   public class §&a§ extends §9!;§
   {
      
      public static const §+S§:String = "a-z A-Z 0-9 \\-";
      
      public static const §7!4§:String = "a-zA-Z";
      
      public static const §-D§:String = "0-9";
      
      public static const §?!_§:String = "a-z A-Z \'\\-.";
      
      public static const §'"<§:String = "a-zA-Z0-9\'\\-_@.";
      
      public static const §%!!§:int = 60;
      
      private static var §^!Q§:Class = §=X§;
      
      public static var §"!c§:Boolean = false;
       
      
      private var §^,§:Boolean;
      
      private var §?W§:Boolean;
      
      private var §0r§:Boolean;
      
      private var §>X§:String;
      
      private var §%8§:String;
      
      private var § !T§:String;
      
      private var §9§:String;
      
      private var §+"D§:§`>§;
      
      private var §!x§:§<!^§;
      
      private var §;j§:Boolean;
      
      private var §-!N§:String = "";
      
      private var §+!D§:String = "";
      
      private var §0m§:String = "";
      
      private var §,"0§:String = "";
      
      private var §"h§:String = "";
      
      private var §-"7§:String = "";
      
      private var §6">§:§@"@§;
      
      public function §&a§(param1:§@"@§)
      {
         §>"2§ = true;
         §1"$§ = true;
         super(§1#§.§["C§,§8"6§.§8p§,§0!g§.§[!y§(§^!Q§));
         this.§6">§ = param1;
      }
      
      override protected function init() : void
      {
         super.init();
         this.§+"D§ = new §`>§(§[S§,this);
         this.§!x§ = new §<!^§(§[S§,this);
         this.§="C§();
         this.§!x§.activate();
         this.updateTextFields();
         this.§!x§.§8!E§();
         this.§+"D§.§`p§();
         (§ !g§.§;!'§ as §`Y§).§&,§.§4"1§(false);
         this.§;j§ = (§ !g§.§;!'§ as §`Y§).§&,§.§ w§();
      }
      
      override public function dispose() : void
      {
         (§ !g§.§;!'§ as §`Y§).§&,§.§4"1§(true);
         (§ !g§.§;!'§ as §`Y§).§&,§.§<U§(this.§;j§);
         super.dispose();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+!#§) : void
      {
         var _loc4_:§@!!§ = null;
         switch(param2)
         {
            case "SUBMIT":
               this.§!x§.§8"@§();
               break;
            case "CANCEL":
               close();
               break;
            case "SUBMIT_REGISTER":
               this.§+"D§.§8"@§();
               break;
            case "CANCEL_REGISTER":
               close();
               break;
            case "CHECKBOX_CHANGE":
               _loc4_ = §[S§.getItemByName("Checkbox_RememberMe") as §@!!§;
               this.§^,§ = !this.§^,§;
               if(this.§^,§)
               {
                  _loc4_.setComponentState(§@!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc4_.setComponentState(§@!!§.§else §);
               }
               _loc4_ = §[S§.getItemByName("Checkbox_RememberMe_Register") as §@!!§;
               if(this.§^,§)
               {
                  _loc4_.setComponentState(§@!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               _loc4_.setComponentState(§@!!§.§else §);
               break;
            case "CHECKBOX_MARKETING_CHANGE":
               _loc4_ = §[S§.getItemByName("Checkbox_Marketing") as §@!!§;
               this.§?W§ = !this.§?W§;
               if(this.§?W§)
               {
                  _loc4_.setComponentState(§@!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               _loc4_.setComponentState(§@!!§.§else §);
               break;
            case "CHECKBOX_EXT_MARKETING_CHANGE":
               _loc4_ = §[S§.getItemByName("Checkbox_ExtMarketing") as §@!!§;
               this.§0r§ = !this.§0r§;
               if(this.§0r§)
               {
                  _loc4_.setComponentState(§@!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc4_.setComponentState(§@!!§.§else §);
               }
               break;
            case "FORGOT_PASSWORD":
               § !g§.§;!'§.§>";§.openPopup(new §7!U§());
               break;
            case "TAB_LOGIN":
               this.§"!t§();
               this.§!x§.activate();
               break;
            case "TAB_REGISTER":
               this.§"!t§();
               this.§+"D§.activate();
         }
      }
      
      public function § !6§() : void
      {
         this.§"!t§();
         this.§!x§.activate();
      }
      
      private function §"!t§() : void
      {
         §[S§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(false);
         §[S§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         §[S§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         §[S§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         §[S§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         §[S§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
         §[S§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(false);
         §[S§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(false);
      }
      
      override public function updateTextFields() : void
      {
         §&$§.§[!1§.updateTextFields(§[S§,"Login_Popup");
         this.§"!t§();
         this.§+"D§.updateTextFields();
         this.§!x§.§[!]§();
      }
      
      private function §="C§() : void
      {
         if(§"!c§)
         {
            this.§-!o§();
            this.§;!%§();
            this.§^,§ = false;
            this.§?W§ = false;
            this.§0r§ = false;
            this.§>X§ = "";
            this.§%8§ = "";
            this.§ !T§ = "";
            this.§9§ = "";
         }
         §"!c§ = false;
         this.§#""§();
         if(this.§%8§ && this.§>X§)
         {
            (§[S§.getItemByName("TextField_UserNameField") as §&!>§).§ !'§.text = this.§>X§;
            (§[S§.getItemByName("TextField_PasswordField") as §&!>§).§ !'§.text = this.§%8§;
         }
      }
      
      private function §#""§() : void
      {
         if(this.§6">§.§+!T§())
         {
            (§[S§.getItemByName("TextField_UserNameField") as §&!>§).§ !'§.text = this.§6">§.name;
            (§[S§.getItemByName("TextField_PasswordField") as §&!>§).§ !'§.text = this.§6">§.password;
            this.§^,§ = this.§6">§.rememberMeToggled;
         }
      }
      
      public function §;!%§() : void
      {
         (§[S§.getItemByName("TextField_UserNameField") as §&!>§).§ !'§.text = "";
         (§[S§.getItemByName("TextField_PasswordField") as §&!>§).§ !'§.text = "";
         §[S§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(false);
         §[S§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(false);
      }
      
      public function §-!o§() : void
      {
         (§[S§.getItemByName("TextField_EmailField_Register") as §&!>§).§ !'§.text = "";
         (§[S§.getItemByName("TextField_PasswordField_Register") as §&!>§).§ !'§.text = "";
         (§[S§.getItemByName("TextField_PasswordFieldRepeat_Register") as §&!>§).§ !'§.text = "";
         (§[S§.getItemByName("TextField_NickNameField_Register") as §&!>§).§ !'§.text = "";
         §[S§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(false);
         §[S§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         §[S§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         §[S§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
      }
      
      public function §9P§() : void
      {
         this.§>X§ = this.§ !T§;
         this.§%8§ = this.§9§;
         (§[S§.getItemByName("TextField_UserNameField") as §&!>§).§ !'§.text = this.§>X§;
         (§[S§.getItemByName("TextField_PasswordField") as §&!>§).§ !'§.text = this.§%8§;
         if(this.§^,§)
         {
            this.§6">§.§#Q§(this.§>X§,this.§%8§,this.§^,§);
         }
      }
      
      public function get rememberMeToggled() : Boolean
      {
         return this.§^,§;
      }
      
      public function get §>!x§() : String
      {
         return this.§ !T§;
      }
      
      public function set §>!x§(param1:String) : void
      {
         this.§ !T§ = param1;
      }
      
      public function get §-!<§() : String
      {
         return this.§9§;
      }
      
      public function set §-!<§(param1:String) : void
      {
         this.§9§ = param1;
      }
      
      public function get §'!;§() : Boolean
      {
         return this.§?W§;
      }
      
      public function get §!!@§() : Boolean
      {
         return this.§0r§;
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         super.hide(param1,param2);
      }
      
      public function get §@!j§() : §@"@§
      {
         return this.§6">§;
      }
   }
}
