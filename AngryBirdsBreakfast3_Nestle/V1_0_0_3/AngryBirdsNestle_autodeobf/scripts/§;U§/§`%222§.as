package §;U§
{
   import §-!F§.§[!Q§;
   import §0h§.§7!=§;
   import §0h§.§?",§;
   import §3!!§.native;
   import §=!7§.§%!%§;
   import §=X§.§`!3§;
   import §@f§.§&!"§;
   import §@f§.§4d§;
   import §@f§.§7h§;
   import §[<§.§#!q§;
   import §[<§.§%!T§;
   import §]K§.§>!I§;
   import §`!6§.§!s§;
   import §`!6§.§'3§;
   import §`q§.§!!U§;
   import §`q§.§'!O§;
   import flash.display.Stage;
   
   public class §`"2§ extends §'!O§
   {
      
      public static const §>_§:String = "a-zA-Z0-9\\";
      
      public static const §!!W§:String = "a-zA-Z";
      
      public static const §`!S§:String = "0-9";
      
      public static const §[!>§:String = "a-z A-Z \'\\-.";
      
      public static const §7!`§:String = "a-zA-Z0-9\'\\-_@.";
      
      public static const §<i§:int = 60;
      
      public static const §2T§:int = 10;
      
      public static const §@y§:int = 30;
      
      private static var §>!_§:Class = §1p§;
      
      public static var §#!w§:Boolean = false;
       
      
      private var §[7§:Boolean;
      
      private var §<!2§:§'3§;
      
      private var §&!@§:String;
      
      private var §;"1§:String;
      
      private var §5!J§:String;
      
      private var §4!x§:String;
      
      private var §@!7§:§?",§;
      
      private var §!"4§:§7!=§;
      
      private var §@",§:Boolean;
      
      private var §"!T§:§`!3§;
      
      public function §`"2§(param1:§`!3§, param2:§'3§)
      {
         §=!c§ = false;
         §1!b§ = false;
         §0!2§ = true;
         super(§%!T§.§8§,§#!q§.§"R§,this.§@A§());
         this.§"!T§ = param1;
         this.§<!2§ = param2;
      }
      
      protected function §@A§() : XML
      {
         var _loc1_:XML = §%!%§.§<!0§(§>!_§);
         return AngryBirdsCustom.§5!g§(_loc1_);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§@!7§ = new §?",§(§#t§,this);
         this.§!"4§ = new §7!=§(§#t§,this);
         this.§<!s§();
         this.§!"4§.activate();
         this.updateTextFields();
         this.§!"4§.§,r§();
         this.§@!7§.§5!H§();
         (§&N§.§#Y§ as AngryBirdsCustom).§#A§.§,v§(false);
         this.§@",§ = (§&N§.§#Y§ as AngryBirdsCustom).§#A§.§`"1§();
         this.§;!t§();
      }
      
      public function §;!t§() : void
      {
         var _loc1_:§7h§ = §#t§.getItemByName("MovieClip_BirdsAndCereals") as §7h§;
         §#t§.setObjectToFront(_loc1_);
         _loc1_.setEnabled(false);
      }
      
      override public function dispose() : void
      {
         if((§&N§.§#Y§ as AngryBirdsCustom).§#A§)
         {
            (§&N§.§#Y§ as AngryBirdsCustom).§#A§.§,v§(true);
            (§&N§.§#Y§ as AngryBirdsCustom).§#A§.§0"$§(this.§@",§);
         }
         this.§@!7§.dispose();
         this.§!"4§.dispose();
         super.dispose();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&!"§) : void
      {
         var _loc4_:§4d§ = null;
         switch(param2)
         {
            case "SUBMIT":
               (§&N§.§#Y§ as AngryBirdsCustom).§@!H§.closePopup(§%!T§.§[!N§);
               this.§!"4§.§"U§();
               break;
            case "CANCEL":
               close();
               this.§<!2§.§-"'§(§!s§.§]O§);
               break;
            case "SUBMIT_REGISTER":
               (§&N§.§#Y§ as AngryBirdsCustom).§@!H§.closePopup(§%!T§.§[!N§);
               this.§@!7§.§"U§();
               break;
            case "CANCEL_REGISTER":
               close();
               this.§<!2§.§-"'§(§!s§.§]O§);
               break;
            case "CHECKBOX_CHANGE":
               _loc4_ = §#t§.getItemByName("Checkbox_RememberMe") as §4d§;
               this.§[7§ = !this.§[7§;
               if(this.§[7§)
               {
                  _loc4_.setComponentState(§4d§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc4_.setComponentState(§4d§.§&!i§);
               }
               _loc4_ = §#t§.getItemByName("Checkbox_RememberMe_Register") as §4d§;
               if(this.§[7§)
               {
                  _loc4_.setComponentState(§4d§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc4_.setComponentState(§4d§.§&!i§);
               }
               break;
            case "TAB_LOGIN":
               this.§4-§();
               this.§!"4§.activate();
               this.§@!7§.deActivate();
               break;
            case "TAB_REGISTER":
               this.§4-§();
               this.§@!7§.activate();
               this.§!"4§.deActivate();
               break;
            case "NICKNAME_INFO":
               this.§4-§();
               (§&N§.§#Y§ as AngryBirdsCustom).§@!H§.openPopup(new §!!U§(§>!I§.NICKNAME_INFO,6000));
         }
      }
      
      public function §9q§() : void
      {
         this.§4-§();
         this.§!"4§.activate();
      }
      
      private function §4-§() : void
      {
         §#t§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         §#t§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         §#t§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         §#t§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         §#t§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
         §#t§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(false);
         §#t§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(false);
         (§&N§.§#Y§ as AngryBirdsCustom).§@!H§.closePopup(§%!T§.§[!N§);
      }
      
      override public function updateTextFields() : void
      {
         §[!Q§.§=J§.updateTextFields(§#t§,"Login_Popup");
         this.§4-§();
         this.§@!7§.updateTextFields();
      }
      
      private function §<!s§() : void
      {
         if(§#!w§)
         {
            this.§ set§();
            this.§3U§();
            this.§[7§ = false;
            this.§&!@§ = "";
            this.§;"1§ = "";
            this.§5!J§ = "";
            this.§4!x§ = "";
         }
         §#!w§ = false;
         this.§ ",§();
         if(this.§;"1§ && this.§&!@§)
         {
            (§#t§.getItemByName("TextField_UserNameField") as native).§&!K§.text = this.§&!@§;
            (§#t§.getItemByName("TextField_PasswordField") as native).§&!K§.text = this.§;"1§;
         }
      }
      
      private function § ",§() : void
      {
         if(this.§"!T§.§>"%§())
         {
            (§#t§.getItemByName("TextField_UserNameField") as native).§&!K§.text = this.§"!T§.name;
            (§#t§.getItemByName("TextField_PasswordField") as native).§&!K§.text = this.§"!T§.password;
            this.§[7§ = this.§"!T§.rememberMeToggled;
         }
      }
      
      public function §3U§() : void
      {
         (§#t§.getItemByName("TextField_UserNameField") as native).§&!K§.text = "";
         (§#t§.getItemByName("TextField_PasswordField") as native).§&!K§.text = "";
         §#t§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(false);
         §#t§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(false);
      }
      
      public function § set§() : void
      {
         (§#t§.getItemByName("TextField_PasswordField_Register") as native).§&!K§.text = "";
         (§#t§.getItemByName("TextField_PasswordFieldRepeat_Register") as native).§&!K§.text = "";
         (§#t§.getItemByName("TextField_NickNameField_Register") as native).§&!K§.text = "";
         §#t§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         §#t§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         §#t§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
      }
      
      public function §3l§() : void
      {
         this.§&!@§ = this.§5!J§;
         this.§;"1§ = this.§4!x§;
         var _loc1_:String = §[!Q§.§=J§.§"" §();
         var _loc2_:String = §[!Q§.§=J§.§%w§();
         (§#t§.getItemByName("TextField_UserNameField") as native).§&!K§.text = this.§&!@§;
         (§#t§.getItemByName("TextField_PasswordField") as native).§&!K§.text = this.§;"1§;
         if(this.§[7§)
         {
            this.§"!T§.§0!M§(this.§&!@§,this.§;"1§,_loc1_,_loc2_,this.§[7§);
         }
      }
      
      public function get rememberMeToggled() : Boolean
      {
         return this.§[7§;
      }
      
      public function get §[X§() : String
      {
         return this.§5!J§;
      }
      
      public function set §[X§(param1:String) : void
      {
         this.§5!J§ = param1;
      }
      
      public function get §[!!§() : String
      {
         return this.§4!x§;
      }
      
      public function set §[!!§(param1:String) : void
      {
         this.§4!x§ = param1;
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         super.hide(param1,param2);
      }
      
      public function get §"§() : §`!3§
      {
         return this.§"!T§;
      }
      
      public function get stage() : Stage
      {
         return §6R§.stage;
      }
   }
}
