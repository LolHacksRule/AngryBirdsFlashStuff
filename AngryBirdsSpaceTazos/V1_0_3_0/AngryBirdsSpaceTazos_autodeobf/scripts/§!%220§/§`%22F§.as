package §!"0§
{
   import §!"4§.§]<§;
   import §'!n§.§[!I§;
   import §+"2§.§?d§;
   import §+"2§.§`B§;
   import §+"C§.§^"4§;
   import §,!7§.§2a§;
   import §-!a§.§32§;
   import §6!C§.§7[§;
   import §6B§.§5![§;
   import §6B§.§?"2§;
   import §^"8§.§%q§;
   import §^"8§.§>x§;
   import flash.display.Stage;
   
   public class §`"F§ extends §^"4§
   {
      
      public static const §+Q§:String = "a-z A-Z 0-9 \\-";
      
      public static const §^!k§:String = "a-zA-Z";
      
      public static const §&p§:String = "0-9";
      
      public static const § !e§:String = "a-z A-Z \'\\-.";
      
      public static const § !t§:String = "a-zA-Z0-9\'\\-_@.";
      
      public static const §3"C§:int = 60;
      
      private static var §1v§:Class = §+8§;
      
      public static var §1"H§:Boolean = false;
       
      
      private var § !u§:Boolean;
      
      private var §]f§:Boolean;
      
      private var §28§:Boolean;
      
      private var §9!M§:String;
      
      private var §^<§:String;
      
      private var §+!m§:String;
      
      private var §#!r§:String;
      
      private var §-!c§:§>x§;
      
      private var §7!b§:§%q§;
      
      private var §6f§:Boolean;
      
      private var §+d§:String = "";
      
      private var §#!=§:String = "";
      
      private var §<"8§:String = "";
      
      private var §3!w§:String = "";
      
      private var §!6§:String = "";
      
      private var §#">§:String = "";
      
      private var §^§:§]<§;
      
      public function §`"F§(param1:§]<§)
      {
         §^">§ = true;
         §6"B§ = true;
         super(§?d§.§5!?§,§`B§.§[s§,§7[§.§[!n§(§1v§));
         this.§^§ = param1;
      }
      
      override protected function init() : void
      {
         super.init();
         this.§-!c§ = new §>x§(§ 1§,this);
         this.§7!b§ = new §%q§(§ 1§,this);
         this.§%!-§();
         this.§7!b§.activate();
         this.updateTextFields();
         this.§7!b§.§]"&§();
         this.§-!c§.§=;§();
         (§&"<§.§<!7§ as §["!§).§^"<§.§^"@§(false);
         this.§6f§ = (§&"<§.§<!7§ as §["!§).§^"<§.§<<§();
      }
      
      override public function dispose() : void
      {
         (§&"<§.§<!7§ as §["!§).§^"<§.§^"@§(true);
         (§&"<§.§<!7§ as §["!§).§^"<§.§`!4§(this.§6f§);
         this.§-!c§.dispose();
         this.§7!b§.dispose();
         super.dispose();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§?"2§) : void
      {
         var _loc4_:§5![§ = null;
         switch(param2)
         {
            case "SUBMIT":
               this.§7!b§.§;!X§();
               break;
            case "CANCEL":
               close();
               break;
            case "SUBMIT_REGISTER":
               this.§-!c§.§;!X§();
               break;
            case "CANCEL_REGISTER":
               close();
               break;
            case "CHECKBOX_CHANGE":
               _loc4_ = § 1§.getItemByName("Checkbox_RememberMe") as §5![§;
               this.§ !u§ = !this.§ !u§;
               if(this.§ !u§)
               {
                  _loc4_.setComponentState(§5![§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc4_.setComponentState(§5![§.§`=§);
               }
               _loc4_ = § 1§.getItemByName("Checkbox_RememberMe_Register") as §5![§;
               if(this.§ !u§)
               {
                  _loc4_.setComponentState(§5![§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               _loc4_.setComponentState(§5![§.§`=§);
               break;
            case "CHECKBOX_MARKETING_CHANGE":
               _loc4_ = § 1§.getItemByName("Checkbox_Marketing") as §5![§;
               this.§]f§ = !this.§]f§;
               if(this.§]f§)
               {
                  _loc4_.setComponentState(§5![§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               _loc4_.setComponentState(§5![§.§`=§);
               break;
            case "CHECKBOX_EXT_MARKETING_CHANGE":
               _loc4_ = § 1§.getItemByName("Checkbox_ExtMarketing") as §5![§;
               this.§28§ = !this.§28§;
               if(this.§28§)
               {
                  _loc4_.setComponentState(§5![§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc4_.setComponentState(§5![§.§`=§);
               }
               break;
            case "FORGOT_PASSWORD":
               §&"<§.§<!7§.§1"0§.openPopup(new §32§());
               break;
            case "TAB_LOGIN":
               this.§finally§();
               this.§7!b§.activate();
               this.§-!c§.deActivate();
               break;
            case "TAB_REGISTER":
               this.§finally§();
               this.§-!c§.activate();
               this.§7!b§.deActivate();
         }
      }
      
      public function §6[§() : void
      {
         this.§finally§();
         this.§7!b§.activate();
      }
      
      private function §finally§() : void
      {
         § 1§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(false);
         § 1§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         § 1§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         § 1§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         § 1§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         § 1§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
         § 1§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(false);
         § 1§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(false);
      }
      
      override public function updateTextFields() : void
      {
         §[!I§.§8!J§.updateTextFields(§ 1§,"Login_Popup");
         this.§finally§();
         this.§-!c§.updateTextFields();
         this.§7!b§.§-n§();
      }
      
      private function §%!-§() : void
      {
         if(§1"H§)
         {
            this.§^!t§();
            this.§1!w§();
            this.§ !u§ = false;
            this.§]f§ = false;
            this.§28§ = false;
            this.§9!M§ = "";
            this.§^<§ = "";
            this.§+!m§ = "";
            this.§#!r§ = "";
         }
         §1"H§ = false;
         this.§[V§();
         if(this.§^<§ && this.§9!M§)
         {
            (§ 1§.getItemByName("TextField_UserNameField") as §2a§).§%!%§.text = this.§9!M§;
            (§ 1§.getItemByName("TextField_PasswordField") as §2a§).§%!%§.text = this.§^<§;
         }
      }
      
      private function §[V§() : void
      {
         if(this.§^§.§@"@§())
         {
            (§ 1§.getItemByName("TextField_UserNameField") as §2a§).§%!%§.text = this.§^§.name;
            (§ 1§.getItemByName("TextField_PasswordField") as §2a§).§%!%§.text = this.§^§.password;
            this.§ !u§ = this.§^§.rememberMeToggled;
         }
      }
      
      public function §1!w§() : void
      {
         (§ 1§.getItemByName("TextField_UserNameField") as §2a§).§%!%§.text = "";
         (§ 1§.getItemByName("TextField_PasswordField") as §2a§).§%!%§.text = "";
         § 1§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(false);
         § 1§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(false);
      }
      
      public function §^!t§() : void
      {
         (§ 1§.getItemByName("TextField_EmailField_Register") as §2a§).§%!%§.text = "";
         (§ 1§.getItemByName("TextField_PasswordField_Register") as §2a§).§%!%§.text = "";
         (§ 1§.getItemByName("TextField_PasswordFieldRepeat_Register") as §2a§).§%!%§.text = "";
         (§ 1§.getItemByName("TextField_NickNameField_Register") as §2a§).§%!%§.text = "";
         § 1§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(false);
         § 1§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         § 1§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         § 1§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
      }
      
      public function §?'§() : void
      {
         this.§9!M§ = this.§+!m§;
         this.§^<§ = this.§#!r§;
         (§ 1§.getItemByName("TextField_UserNameField") as §2a§).§%!%§.text = this.§9!M§;
         (§ 1§.getItemByName("TextField_PasswordField") as §2a§).§%!%§.text = this.§^<§;
         if(this.§ !u§)
         {
            this.§^§.§1"5§(this.§9!M§,this.§^<§,this.§ !u§);
         }
      }
      
      public function get rememberMeToggled() : Boolean
      {
         return this.§ !u§;
      }
      
      public function get §+!R§() : String
      {
         return this.§+!m§;
      }
      
      public function set §+!R§(param1:String) : void
      {
         this.§+!m§ = param1;
      }
      
      public function get §0"F§() : String
      {
         return this.§#!r§;
      }
      
      public function set §0"F§(param1:String) : void
      {
         this.§#!r§ = param1;
      }
      
      public function get §'!_§() : Boolean
      {
         return this.§]f§;
      }
      
      public function get §90§() : Boolean
      {
         return this.§28§;
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         super.hide(param1,param2);
      }
      
      public function get §&!I§() : §]<§
      {
         return this.§^§;
      }
      
      public function get stage() : Stage
      {
         return §1s§.stage;
      }
   }
}
