package §;+§
{
   import §!i§.§?"%§;
   import §""<§.§=Q§;
   import §"_§.§&r§;
   import §"_§.§3o§;
   import §'#§.§^4§;
   import §1!T§.§!!@§;
   import §1!T§.§`!p§;
   import §1!]§.§%"%§;
   import §4!t§.§95§;
   import §4!t§.§>r§;
   import §6"6§.§>o§;
   import §6#§.§5!o§;
   
   public class §3!n§ extends §%"%§
   {
      
      public static const §,!g§:String = "a-z A-Z 0-9 \\-";
      
      public static const §]"-§:String = "a-zA-Z";
      
      public static const §`!x§:String = "0-9";
      
      public static const §64§:String = "a-z A-Z \'\\-.";
      
      public static const §7!G§:String = "a-zA-Z0-9\'\\-_@.";
      
      public static const §7!m§:int = 60;
      
      private static var §0L§:Class = §"!o§;
      
      public static var §=c§:Boolean = false;
       
      
      private var §case§:Boolean;
      
      private var §"n§:Boolean;
      
      private var §^"E§:Boolean;
      
      private var §]!7§:String;
      
      private var §3D§:String;
      
      private var §-!B§:String;
      
      private var §'D§:String;
      
      private var §3!E§:§!!@§;
      
      private var §%a§:§`!p§;
      
      private var §@6§:Boolean;
      
      private var §`"G§:String = "";
      
      private var §=!s§:String = "";
      
      private var § !q§:String = "";
      
      private var §;! §:String = "";
      
      private var §-!K§:String = "";
      
      private var § q§:String = "";
      
      private var §1!^§:§>o§;
      
      public function §3!n§(param1:§>o§)
      {
         §&"<§ = true;
         § !z§ = true;
         super(§&r§.§="B§,§3o§.§%!V§,§=Q§.§%!g§(§0L§));
         this.§1!^§ = param1;
      }
      
      override protected function init() : void
      {
         super.init();
         this.§3!E§ = new §!!@§(§&#§,this);
         this.§%a§ = new §`!p§(§&#§,this);
         this.§8!>§();
         this.§%a§.activate();
         this.updateTextFields();
         this.§%a§.§@o§();
         this.§3!E§.§;"2§();
         (§&!h§.§ u§ as §^"=§).§?P§.§;j§(false);
         this.§@6§ = (§&!h§.§ u§ as §^"=§).§?P§.§`!t§();
      }
      
      override public function dispose() : void
      {
         (§&!h§.§ u§ as §^"=§).§?P§.§;j§(true);
         (§&!h§.§ u§ as §^"=§).§?P§.§%!P§(this.§@6§);
         super.dispose();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§95§) : void
      {
         var _loc4_:§>r§ = null;
         switch(param2)
         {
            case "SUBMIT":
               this.§%a§.§@!f§();
               break;
            case "CANCEL":
               close();
               break;
            case "SUBMIT_REGISTER":
               this.§3!E§.§@!f§();
               break;
            case "CANCEL_REGISTER":
               close();
               break;
            case "CHECKBOX_CHANGE":
               _loc4_ = §&#§.getItemByName("Checkbox_RememberMe") as §>r§;
               this.§case§ = !this.§case§;
               if(this.§case§)
               {
                  _loc4_.setComponentState(§>r§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc4_.setComponentState(§>r§.§""7§);
               }
               _loc4_ = §&#§.getItemByName("Checkbox_RememberMe_Register") as §>r§;
               if(this.§case§)
               {
                  _loc4_.setComponentState(§>r§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               _loc4_.setComponentState(§>r§.§""7§);
               break;
            case "CHECKBOX_MARKETING_CHANGE":
               _loc4_ = §&#§.getItemByName("Checkbox_Marketing") as §>r§;
               this.§"n§ = !this.§"n§;
               if(this.§"n§)
               {
                  _loc4_.setComponentState(§>r§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               _loc4_.setComponentState(§>r§.§""7§);
               break;
            case "CHECKBOX_EXT_MARKETING_CHANGE":
               _loc4_ = §&#§.getItemByName("Checkbox_ExtMarketing") as §>r§;
               this.§^"E§ = !this.§^"E§;
               if(this.§^"E§)
               {
                  _loc4_.setComponentState(§>r§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc4_.setComponentState(§>r§.§""7§);
               }
               break;
            case "FORGOT_PASSWORD":
               §&!h§.§ u§.§-"F§.openPopup(new §5!o§());
               break;
            case "TAB_LOGIN":
               this.§[!#§();
               this.§%a§.activate();
               break;
            case "TAB_REGISTER":
               this.§[!#§();
               this.§3!E§.activate();
         }
      }
      
      public function §1_§() : void
      {
         this.§[!#§();
         this.§%a§.activate();
      }
      
      private function §[!#§() : void
      {
         §&#§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(false);
         §&#§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         §&#§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         §&#§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         §&#§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         §&#§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
         §&#§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(false);
         §&#§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(false);
      }
      
      override public function updateTextFields() : void
      {
         §^4§.§<"B§.updateTextFields(§&#§,"Login_Popup");
         this.§[!#§();
         this.§3!E§.updateTextFields();
         this.§%a§.§?I§();
      }
      
      private function §8!>§() : void
      {
         if(§=c§)
         {
            this.§>!u§();
            this.§&!X§();
            this.§case§ = false;
            this.§"n§ = false;
            this.§^"E§ = false;
            this.§]!7§ = "";
            this.§3D§ = "";
            this.§-!B§ = "";
            this.§'D§ = "";
         }
         §=c§ = false;
         this.§`"3§();
         if(this.§3D§ && this.§]!7§)
         {
            (§&#§.getItemByName("TextField_UserNameField") as §?"%§).§8!o§.text = this.§]!7§;
            (§&#§.getItemByName("TextField_PasswordField") as §?"%§).§8!o§.text = this.§3D§;
         }
      }
      
      private function §`"3§() : void
      {
         if(this.§1!^§.§<"'§())
         {
            (§&#§.getItemByName("TextField_UserNameField") as §?"%§).§8!o§.text = this.§1!^§.name;
            (§&#§.getItemByName("TextField_PasswordField") as §?"%§).§8!o§.text = this.§1!^§.password;
            this.§case§ = this.§1!^§.rememberMeToggled;
         }
      }
      
      public function §&!X§() : void
      {
         (§&#§.getItemByName("TextField_UserNameField") as §?"%§).§8!o§.text = "";
         (§&#§.getItemByName("TextField_PasswordField") as §?"%§).§8!o§.text = "";
         §&#§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(false);
         §&#§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(false);
      }
      
      public function §>!u§() : void
      {
         (§&#§.getItemByName("TextField_EmailField_Register") as §?"%§).§8!o§.text = "";
         (§&#§.getItemByName("TextField_PasswordField_Register") as §?"%§).§8!o§.text = "";
         (§&#§.getItemByName("TextField_PasswordFieldRepeat_Register") as §?"%§).§8!o§.text = "";
         (§&#§.getItemByName("TextField_NickNameField_Register") as §?"%§).§8!o§.text = "";
         §&#§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(false);
         §&#§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         §&#§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         §&#§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
      }
      
      public function §-!m§() : void
      {
         this.§]!7§ = this.§-!B§;
         this.§3D§ = this.§'D§;
         (§&#§.getItemByName("TextField_UserNameField") as §?"%§).§8!o§.text = this.§]!7§;
         (§&#§.getItemByName("TextField_PasswordField") as §?"%§).§8!o§.text = this.§3D§;
         if(this.§case§)
         {
            this.§1!^§.§4a§(this.§]!7§,this.§3D§,this.§case§);
         }
      }
      
      public function get rememberMeToggled() : Boolean
      {
         return this.§case§;
      }
      
      public function get §^!p§() : String
      {
         return this.§-!B§;
      }
      
      public function set §^!p§(param1:String) : void
      {
         this.§-!B§ = param1;
      }
      
      public function get §3,§() : String
      {
         return this.§'D§;
      }
      
      public function set §3,§(param1:String) : void
      {
         this.§'D§ = param1;
      }
      
      public function get §2!1§() : Boolean
      {
         return this.§"n§;
      }
      
      public function get §&S§() : Boolean
      {
         return this.§^"E§;
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         super.hide(param1,param2);
      }
      
      public function get §5!d§() : §>o§
      {
         return this.§1!^§;
      }
   }
}
