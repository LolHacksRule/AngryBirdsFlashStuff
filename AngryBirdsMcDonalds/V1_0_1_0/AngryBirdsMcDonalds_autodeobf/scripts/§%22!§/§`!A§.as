package §"!§
{
   import §%<§.§+V§;
   import §%<§.§=@§;
   import §-1§.§%#§;
   import §-1§.§>!6§;
   import §1!D§.§0S§;
   import §3l§.§9m§;
   import §8!X§.§'f§;
   import §9!8§.§0!7§;
   import §=![§.§=a§;
   import §=![§.§`!n§;
   import §=T§.§0!%§;
   import §=T§.Popup;
   import §=T§.StatePopupManager;
   import §?H§.§>!X§;
   import §^5§.§]!,§;
   import §`!W§.§^!e§;
   
   public class §`!A§ extends Popup
   {
      
      public static const §;f§:String = "a-z A-Z 0-9 \\-";
      
      public static const §7V§:String = "a-z A-Z 0-9";
      
      public static const §5O§:String = "a-z     0-9  \'\\-_@.";
      
      public static const §3?§:int = 60;
      
      private static var §"!X§:Class = §^=§;
      
      public static var §7F§:Boolean = false;
       
      
      private var §6!?§:StatePopupManager;
      
      private var §1I§:Boolean;
      
      private var §-!E§:Boolean;
      
      private var §-!T§:String;
      
      private var § set§:String;
      
      private var §<L§:String;
      
      private var §+!M§:String;
      
      private var §,!Z§:§`!n§;
      
      private var §&t§:§=a§;
      
      private var §%O§:§]!,§;
      
      public function §`!A§(param1:§0!7§, param2:StatePopupManager, param3:§]!,§)
      {
         super(§^!e§.§=j§(§"!X§),param1);
         §+!H§ = param1;
         this.§6!?§ = param2;
         this.§%O§ = param3;
         this.§,!Z§ = new §`!n§(this);
         this.§&t§ = new §=a§(this);
         this.§6!?§.addEventListener(§'f§.§5a§,this.onUiInteraction);
         this.updateTextFields();
      }
      
      private function onUiInteraction(param1:§'f§) : void
      {
         this.uiInteractionHandler(param1.§7v§,param1.§;!'§,param1.§>!2§);
         this.§%O§.uiInteractionHandler(param1.§7v§,param1.§;!'§,param1.§>!2§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§%#§) : void
      {
         var _loc4_:§>!6§ = null;
         switch(param2)
         {
            case "SUBMIT":
               this.§&t§.§0!9§();
               break;
            case "CANCEL":
               this.preClose();
               break;
            case "SUBMIT_REGISTER":
               this.§,!Z§.§0!9§();
               break;
            case "CANCEL_REGISTER":
               this.preClose();
               break;
            case "CHECKBOX_CHANGE":
               _loc4_ = §+!H§.getItemByName("Checkbox_RememberMe") as §>!6§;
               this.§1I§ = !this.§1I§;
               if(this.§1I§)
               {
                  _loc4_.setComponentState(§>!6§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc4_.setComponentState(§>!6§.§?3§);
               }
               _loc4_ = §+!H§.getItemByName("Checkbox_RememberMe_Register") as §>!6§;
               if(this.§1I§)
               {
                  _loc4_.setComponentState(§>!6§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               _loc4_.setComponentState(§>!6§.§?3§);
               break;
            case "CHECKBOX_MARKETING_CHANGE":
               _loc4_ = §+!H§.getItemByName("Checkbox_Marketing") as §>!6§;
               this.§-!E§ = !this.§-!E§;
               if(this.§-!E§)
               {
                  _loc4_.setComponentState(§>!6§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc4_.setComponentState(§>!6§.§?3§);
               }
               break;
            case "FORGOT_PASSWORD":
               §0!%§.§1!c§(§+!H§);
               break;
            case "TAB_LOGIN":
               this.§5!n§();
               this.§&t§.activate();
               this.§,!Z§.§-!^§(false);
               break;
            case "TAB_REGISTER":
               this.§5!n§();
               this.§,!Z§.activate();
               this.§,!Z§.§-!^§(true);
         }
      }
      
      private function §5!n§() : void
      {
         §+!H§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(false);
         §+!H§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         §+!H§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         §+!H§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         §+!H§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         §+!H§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
         §+!H§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(false);
         §+!H§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(false);
         (this.§@!o§ as §=@§).§9!"§.hide();
      }
      
      override public function updateTextFields() : void
      {
         §0S§.§>E§.updateTextFields(§+!H§,"Login_Popup");
         this.§5!n§();
         this.§,!Z§.updateTextFields();
         this.§&t§.§,M§();
      }
      
      override public function close() : void
      {
         super.close();
         this.deActivate();
      }
      
      private function §-!R§() : void
      {
         if(§7F§)
         {
            this.§6!Z§();
            this.§&g§();
            this.§1I§ = false;
            this.§-!E§ = false;
            this.§-!T§ = "";
            this.§ set§ = "";
            this.§<L§ = "";
            this.§+!M§ = "";
         }
         §7F§ = false;
         this.§]!b§();
         this.§&t§.§@!e§();
         this.§,!Z§.§'?§();
         if(this.§ set§ && this.§-!T§)
         {
            §+!H§.setText(this.§-!T§,"TextField_UserNameField");
            §+!H§.setText(this.§ set§,"TextField_PasswordField");
         }
         if(§;!4§.§=!N§())
         {
            §+!H§.getItemByName("Button_Mute").setVisibility(true);
            §+!H§.getItemByName("MovieClip_SoundOff").setVisibility(false);
            §;!4§.§#3§();
         }
         else
         {
            §+!H§.getItemByName("Button_Mute").setVisibility(true);
            §+!H§.getItemByName("MovieClip_SoundOff").setVisibility(true);
         }
      }
      
      override public function open(param1:Boolean = true) : void
      {
         this.§-!R§();
         this.§&t§.activate();
         §+V§.sHighscoreSidebar.enableLoginButton(false);
         §+V§.sHighscoreSidebar.enableCreditsButton(false);
         if(param1)
         {
            mClip.scaleX = 0;
            mClip.scaleY = 0;
            if(§>]§ != null)
            {
               §>]§.stop();
            }
            §>]§ = §9m§.§>E§.§"0§(this.mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },0.25,§9m§.§'e§);
            §>]§.play();
         }
         super.open(param1);
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
         (this.§%O§ as §=@§).§9!"§.hide();
         if(param1)
         {
            if(§>]§ != null)
            {
               §>]§.stop();
            }
            §>]§ = §9m§.§>E§.§"0§(this.mClip,{
               "scaleX":0,
               "scaleY":0
            },null,0.25,§9m§.§+y§);
            §>]§.play();
         }
      }
      
      override public function deActivate() : void
      {
         this.§,!Z§.deActivate();
         this.§6!?§.removeEventListener(§'f§.§5a§,this.onUiInteraction);
         super.deActivate();
         §+V§.sHighscoreSidebar.enableCreditsButton(true);
      }
      
      private function §]!b§() : void
      {
         if(§>!X§.§>E§.§%U§())
         {
            §+!H§.setText(§>!X§.§>E§.name,"TextField_UserNameField");
            §+!H§.setText(§>!X§.§>E§.password,"TextField_PasswordField");
            this.§1I§ = §>!X§.§>E§.rememberMeToggled;
         }
      }
      
      public function §&g§() : void
      {
         §+!H§.setText("","TextField_UserNameField");
         §+!H§.setText("","TextField_PasswordField");
         §+!H§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(false);
         §+!H§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(false);
      }
      
      public function §6!Z§() : void
      {
         §+!H§.setText("","TextField_EmailField_Register");
         §+!H§.setText("","TextField_PasswordField_Register");
         §+!H§.setText("","TextField_PasswordFieldRepeat_Register");
         §+!H§.setText("","TextField_NickNameField_Register");
         §+!H§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(false);
         §+!H§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         §+!H§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         §+!H§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
      }
      
      public function §2!§() : void
      {
         this.§-!T§ = this.§<L§;
         this.§ set§ = this.§+!M§;
         §+!H§.setText(this.§-!T§,"TextField_UserNameField");
         §+!H§.setText(this.§ set§,"TextField_PasswordField");
         if(this.§1I§)
         {
            §>!X§.§>E§.§?!_§(this.§-!T§,this.§ set§,this.§1I§);
         }
      }
      
      public function get §-!,§() : StatePopupManager
      {
         return this.§6!?§;
      }
      
      public function get rememberMeToggled() : Boolean
      {
         return this.§1I§;
      }
      
      public function get §8Z§() : String
      {
         return this.§<L§;
      }
      
      public function set §8Z§(param1:String) : void
      {
         this.§<L§ = param1;
      }
      
      public function get §%!O§() : String
      {
         return this.§+!M§;
      }
      
      public function set §%!O§(param1:String) : void
      {
         this.§+!M§ = param1;
      }
      
      public function get §"&§() : Boolean
      {
         return this.§-!E§;
      }
      
      public function get §@!o§() : §]!,§
      {
         return this.§%O§;
      }
   }
}
