package §%r§
{
   import § !Q§.§=!3§;
   import §!!&§.§`!$§;
   import §!!`§.§4!f§;
   import §!!`§.§>!&§;
   import §"q§.§8[§;
   import §;!y§.§4![§;
   import §;s§.§%!c§;
   import §<!0§.§ !B§;
   import §<!0§.§'!%§;
   import §<!0§.§3!W§;
   import §<!B§.§!,§;
   import §<!B§.§66§;
   import §>P§.§%`§;
   import §@!l§.§,!D§;
   import §@!l§.§-"+§;
   import §]!V§.§@j§;
   import §]!V§.§`'§;
   import flash.display.Stage;
   
   public class § L§ extends §-"+§
   {
      
      public static const §-"§:String = "a-zA-Z0-9\\";
      
      public static const §-y§:String = "a-zA-Z";
      
      public static const §@d§:String = "0-9";
      
      public static const §"[§:String = "a-z A-Z \'\\-.";
      
      public static const §2!J§:String = "a-zA-Z0-9\'\\-_@.";
      
      public static const §,"1§:int = 60;
      
      public static const §1y§:int = 10;
      
      public static const §3!=§:int = 30;
      
      private static var §;S§:Class = § j§;
      
      public static var §-w§:Boolean = false;
       
      
      private var §;"5§:Boolean;
      
      private var §1!X§:§`'§;
      
      private var §8![§:String;
      
      private var §3!6§:String;
      
      private var §0o§:String;
      
      private var §'"$§:String;
      
      private var §!U§:§66§;
      
      private var §9!r§:§!,§;
      
      private var §@!Q§:Boolean;
      
      private var §8l§:§8[§;
      
      public function § L§(param1:§8[§, param2:§`'§)
      {
         §@_§ = false;
         §!"6§ = false;
         §>,§ = true;
         super(§>!&§.§;A§,§4!f§.§`s§,this.§[x§());
         this.§8l§ = param1;
         this.§1!X§ = param2;
      }
      
      protected function §[x§() : XML
      {
         var _loc1_:XML = §=!3§.§0I§(§;S§);
         return AngryBirdsCustom.§^Z§(_loc1_);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§!U§ = new §66§(§-"1§,this);
         this.§9!r§ = new §!,§(§-"1§,this);
         this.§,!=§();
         this.§9!r§.activate();
         this.updateTextFields();
         this.§9!r§.§`!7§();
         this.§!U§.§ !r§();
         (§,!X§.§>!G§ as AngryBirdsCustom).§@b§.§?q§(false);
         this.§@!Q§ = (§,!X§.§>!G§ as AngryBirdsCustom).§@b§.§^D§();
         this.§4[§();
      }
      
      public function §4[§() : void
      {
         var _loc1_:§ !B§ = §-"1§.getItemByName("MovieClip_BirdsAndCereals") as § !B§;
         §-"1§.setObjectToFront(_loc1_);
         _loc1_.setEnabled(false);
      }
      
      override public function dispose() : void
      {
         if((§,!X§.§>!G§ as AngryBirdsCustom).§@b§)
         {
            (§,!X§.§>!G§ as AngryBirdsCustom).§@b§.§?q§(true);
            (§,!X§.§>!G§ as AngryBirdsCustom).§@b§.§5!D§(this.§@!Q§);
         }
         this.§!U§.dispose();
         this.§9!r§.dispose();
         super.dispose();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'!%§) : void
      {
         var _loc4_:§3!W§ = null;
         switch(param2)
         {
            case "SUBMIT":
               (§,!X§.§>!G§ as AngryBirdsCustom).§5!K§.closePopup(§>!&§.§0?§);
               this.§9!r§.§+M§();
               §%!c§.§8" §("Menu_Confirm");
               break;
            case "CANCEL":
               close();
               this.§1!X§.§;v§(§@j§.§+a§);
               §%!c§.§8" §("Menu_Back");
               break;
            case "SUBMIT_REGISTER":
               (§,!X§.§>!G§ as AngryBirdsCustom).§5!K§.closePopup(§>!&§.§0?§);
               this.§!U§.§+M§();
               §%!c§.§8" §("Menu_Confirm");
               break;
            case "CANCEL_REGISTER":
               close();
               this.§1!X§.§;v§(§@j§.§+a§);
               §%!c§.§8" §("Menu_Back");
               break;
            case "CHECKBOX_CHANGE":
               _loc4_ = §-"1§.getItemByName("Checkbox_RememberMe") as §3!W§;
               this.§;"5§ = !this.§;"5§;
               if(this.§;"5§)
               {
                  _loc4_.setComponentState(§3!W§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc4_.setComponentState(§3!W§.§9k§);
               }
               _loc4_ = §-"1§.getItemByName("Checkbox_RememberMe_Register") as §3!W§;
               if(this.§;"5§)
               {
                  _loc4_.setComponentState(§3!W§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc4_.setComponentState(§3!W§.§9k§);
               }
               break;
            case "TAB_LOGIN":
               this.§9!f§();
               this.§9!r§.activate();
               this.§!U§.deActivate();
               §%!c§.§8" §("Menu_Confirm");
               break;
            case "TAB_REGISTER":
               this.§9!f§();
               this.§!U§.activate();
               this.§9!r§.deActivate();
               §%!c§.§8" §("Menu_Confirm");
               break;
            case "NICKNAME_INFO":
               this.§9!f§();
               (§,!X§.§>!G§ as AngryBirdsCustom).§5!K§.openPopup(new §,!D§(§4![§.NICKNAME_INFO,6000));
               §%!c§.§8" §("Menu_Confirm");
         }
      }
      
      public function §9"!§() : void
      {
         this.§9!f§();
         this.§9!r§.activate();
      }
      
      private function §9!f§() : void
      {
         §-"1§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         §-"1§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         §-"1§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         §-"1§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         §-"1§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
         §-"1§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(false);
         §-"1§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(false);
         (§,!X§.§>!G§ as AngryBirdsCustom).§5!K§.closePopup(§>!&§.§0?§);
      }
      
      override public function updateTextFields() : void
      {
         §`!$§.§>!P§.updateTextFields(§-"1§,"Login_Popup");
         this.§9!f§();
         this.§!U§.updateTextFields();
      }
      
      private function §,!=§() : void
      {
         if(§-w§)
         {
            this.§#v§();
            this.§ !'§();
            this.§;"5§ = false;
            this.§8![§ = "";
            this.§3!6§ = "";
            this.§0o§ = "";
            this.§'"$§ = "";
         }
         §-w§ = false;
         this.§4!s§();
         if(this.§3!6§ && this.§8![§)
         {
            (§-"1§.getItemByName("TextField_UserNameField") as §%`§).§=!=§.text = this.§8![§;
            (§-"1§.getItemByName("TextField_PasswordField") as §%`§).§=!=§.text = this.§3!6§;
         }
      }
      
      private function §4!s§() : void
      {
         if(this.§8l§.§^l§())
         {
            (§-"1§.getItemByName("TextField_UserNameField") as §%`§).§=!=§.text = this.§8l§.name;
            (§-"1§.getItemByName("TextField_PasswordField") as §%`§).§=!=§.text = this.§8l§.password;
            this.§;"5§ = this.§8l§.rememberMeToggled;
         }
      }
      
      public function § !'§() : void
      {
         (§-"1§.getItemByName("TextField_UserNameField") as §%`§).§=!=§.text = "";
         (§-"1§.getItemByName("TextField_PasswordField") as §%`§).§=!=§.text = "";
         §-"1§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(false);
         §-"1§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(false);
      }
      
      public function §#v§() : void
      {
         (§-"1§.getItemByName("TextField_PasswordField_Register") as §%`§).§=!=§.text = "";
         (§-"1§.getItemByName("TextField_PasswordFieldRepeat_Register") as §%`§).§=!=§.text = "";
         (§-"1§.getItemByName("TextField_NickNameField_Register") as §%`§).§=!=§.text = "";
         §-"1§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         §-"1§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         §-"1§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
      }
      
      public function §+"&§() : void
      {
         this.§8![§ = this.§0o§;
         this.§3!6§ = this.§'"$§;
         var _loc1_:String = §`!$§.§>!P§.§?!2§();
         var _loc2_:String = §`!$§.§>!P§.§?""§();
         (§-"1§.getItemByName("TextField_UserNameField") as §%`§).§=!=§.text = this.§8![§;
         (§-"1§.getItemByName("TextField_PasswordField") as §%`§).§=!=§.text = this.§3!6§;
         if(this.§;"5§)
         {
            this.§8l§.§]!c§(this.§8![§,this.§3!6§,_loc1_,_loc2_,this.§;"5§);
         }
      }
      
      public function get rememberMeToggled() : Boolean
      {
         return this.§;"5§;
      }
      
      public function get §0p§() : String
      {
         return this.§0o§;
      }
      
      public function set §0p§(param1:String) : void
      {
         this.§0o§ = param1;
      }
      
      public function get §@J§() : String
      {
         return this.§'"$§;
      }
      
      public function set §@J§(param1:String) : void
      {
         this.§'"$§ = param1;
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         super.hide(param1,param2);
      }
      
      public function get §@!&§() : §8[§
      {
         return this.§8l§;
      }
      
      public function get stage() : Stage
      {
         return §6!x§.stage;
      }
   }
}
