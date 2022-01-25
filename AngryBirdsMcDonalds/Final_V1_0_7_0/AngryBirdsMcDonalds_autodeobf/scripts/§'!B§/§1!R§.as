package §'!B§
{
   import §#!q§.§`q§;
   import §+$§.§"!p§;
   import §+$§.§[!a§;
   import §0i§.§@^§;
   import §3!S§.§-!^§;
   import §37§.§&!;§;
   import §37§.Popup;
   import §37§.StatePopupManager;
   import §3<§.§-2§;
   import §7!N§.§3!0§;
   import §7E§.§ =§;
   import §9X§.§^!]§;
   import §9X§.§if§;
   import §^m§.§=!a§;
   
   public class §1!R§ extends Popup
   {
      
      public static const §-!U§:String = "a-z A-Z 0-9 \\-";
      
      public static const §#!-§:String = "a-z A-Z 0-9";
      
      public static const §!!n§:String = "a-z     0-9  \'\\-_@.";
      
      public static const §<!I§:int = 60;
      
      private static var §4!C§:Class = §[!k§;
      
      public static var §;W§:Boolean = false;
       
      
      private var §;G§:StatePopupManager;
      
      private var §&o§:Boolean;
      
      private var §-!h§:Boolean;
      
      private var §@!F§:String;
      
      private var §]!c§:String;
      
      private var §6s§:String;
      
      private var §0!C§:String;
      
      private var §6S§:§if§;
      
      private var §,!m§:§^!]§;
      
      private var §8p§:§ =§;
      
      public function §1!R§(param1:§-2§, param2:StatePopupManager, param3:§ =§)
      {
         super(§@^§.§'K§(§4!C§),param1);
         §9K§ = param1;
         this.§;G§ = param2;
         this.§8p§ = param3;
         this.§6S§ = new §if§(this);
         this.§,!m§ = new §^!]§(this);
         this.§;G§.addEventListener(§-!^§.§?!G§,this.onUiInteraction);
         this.updateTextFields();
      }
      
      private function onUiInteraction(param1:§-!^§) : void
      {
         this.uiInteractionHandler(param1.§`[§,param1.§&!F§,param1.§?B§);
         this.§8p§.uiInteractionHandler(param1.§`[§,param1.§&!F§,param1.§?B§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§[!a§) : void
      {
         var _loc4_:§"!p§ = null;
         switch(param2)
         {
            case "SUBMIT":
               this.§,!m§.§6!8§();
               break;
            case "CANCEL":
               this.preClose();
               break;
            case "SUBMIT_REGISTER":
               this.§6S§.§6!8§();
               break;
            case "CANCEL_REGISTER":
               this.preClose();
               break;
            case "CHECKBOX_CHANGE":
               _loc4_ = §9K§.getItemByName("Checkbox_RememberMe") as §"!p§;
               this.§&o§ = !this.§&o§;
               if(this.§&o§)
               {
                  _loc4_.setComponentState(§"!p§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc4_.setComponentState(§"!p§.§`!Q§);
               }
               _loc4_ = §9K§.getItemByName("Checkbox_RememberMe_Register") as §"!p§;
               if(this.§&o§)
               {
                  _loc4_.setComponentState(§"!p§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               _loc4_.setComponentState(§"!p§.§`!Q§);
               break;
            case "CHECKBOX_MARKETING_CHANGE":
               _loc4_ = §9K§.getItemByName("Checkbox_Marketing") as §"!p§;
               this.§-!h§ = !this.§-!h§;
               if(this.§-!h§)
               {
                  _loc4_.setComponentState(§"!p§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc4_.setComponentState(§"!p§.§`!Q§);
               }
               break;
            case "FORGOT_PASSWORD":
               §&!;§.§9!V§(§9K§);
               break;
            case "TAB_LOGIN":
               this.§2§();
               this.§,!m§.activate();
               this.§6S§.§^!8§(false);
               break;
            case "TAB_REGISTER":
               this.§2§();
               this.§6S§.activate();
               this.§6S§.§^!8§(true);
         }
      }
      
      private function §2§() : void
      {
         §9K§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(false);
         §9K§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         §9K§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         §9K§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         §9K§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         §9K§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
         §9K§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(false);
         §9K§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(false);
         (this.§+!_§ as § try§).§2M§.hide();
      }
      
      override public function updateTextFields() : void
      {
         §`q§.§9$§.updateTextFields(§9K§,"Login_Popup");
         this.§2§();
         this.§6S§.updateTextFields();
         this.§,!m§.§]!-§();
      }
      
      override public function close() : void
      {
         super.close();
         this.deActivate();
      }
      
      private function §]!R§() : void
      {
         if(§;W§)
         {
            this.§95§();
            this.§4y§();
            this.§&o§ = false;
            this.§-!h§ = false;
            this.§@!F§ = "";
            this.§]!c§ = "";
            this.§6s§ = "";
            this.§0!C§ = "";
         }
         §;W§ = false;
         this.§9Z§();
         this.§,!m§.§^v§();
         this.§6S§.§ s§();
         if(this.§]!c§ && this.§@!F§)
         {
            §9K§.setText(this.§@!F§,"TextField_UserNameField");
            §9K§.setText(this.§]!c§,"TextField_PasswordField");
         }
         if(§9!_§.§+!W§())
         {
            §9K§.getItemByName("Button_Mute").setVisibility(true);
            §9K§.getItemByName("MovieClip_SoundOff").setVisibility(false);
            §9!_§.§>!X§();
         }
         else
         {
            §9K§.getItemByName("Button_Mute").setVisibility(true);
            §9K§.getItemByName("MovieClip_SoundOff").setVisibility(true);
         }
      }
      
      override public function open(param1:Boolean = true) : void
      {
         this.§]!R§();
         this.§,!m§.activate();
         §2'§.sHighscoreSidebar.enableLoginButton(false);
         §2'§.sHighscoreSidebar.enableCreditsButton(false);
         if(param1)
         {
            mClip.scaleX = 0;
            mClip.scaleY = 0;
            if(§+!Y§ != null)
            {
               §+!Y§.stop();
            }
            §+!Y§ = §=!a§.§9$§.§9!H§(this.mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },0.25,§=!a§.§@!m§);
            §+!Y§.play();
         }
         super.open(param1);
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
         (this.§8p§ as § try§).§2M§.hide();
         if(param1)
         {
            if(§+!Y§ != null)
            {
               §+!Y§.stop();
            }
            §+!Y§ = §=!a§.§9$§.§9!H§(this.mClip,{
               "scaleX":0,
               "scaleY":0
            },null,0.25,§=!a§.§%!R§);
            §+!Y§.play();
         }
      }
      
      override public function deActivate() : void
      {
         this.§6S§.deActivate();
         this.§;G§.removeEventListener(§-!^§.§?!G§,this.onUiInteraction);
         super.deActivate();
         §2'§.sHighscoreSidebar.enableCreditsButton(true);
      }
      
      private function §9Z§() : void
      {
         if(§3!0§.§9$§.§break§())
         {
            §9K§.setText(§3!0§.§9$§.name,"TextField_UserNameField");
            §9K§.setText(§3!0§.§9$§.password,"TextField_PasswordField");
            this.§&o§ = §3!0§.§9$§.rememberMeToggled;
         }
      }
      
      public function §4y§() : void
      {
         §9K§.setText("","TextField_UserNameField");
         §9K§.setText("","TextField_PasswordField");
         §9K§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(false);
         §9K§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(false);
      }
      
      public function §95§() : void
      {
         §9K§.setText("","TextField_EmailField_Register");
         §9K§.setText("","TextField_PasswordField_Register");
         §9K§.setText("","TextField_PasswordFieldRepeat_Register");
         §9K§.setText("","TextField_NickNameField_Register");
         §9K§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(false);
         §9K§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         §9K§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         §9K§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
      }
      
      public function §8^§() : void
      {
         this.§@!F§ = this.§6s§;
         this.§]!c§ = this.§0!C§;
         §9K§.setText(this.§@!F§,"TextField_UserNameField");
         §9K§.setText(this.§]!c§,"TextField_PasswordField");
         if(this.§&o§)
         {
            §3!0§.§9$§.§1!'§(this.§@!F§,this.§]!c§,this.§&o§);
         }
      }
      
      public function get §5b§() : StatePopupManager
      {
         return this.§;G§;
      }
      
      public function get rememberMeToggled() : Boolean
      {
         return this.§&o§;
      }
      
      public function get §=y§() : String
      {
         return this.§6s§;
      }
      
      public function set §=y§(param1:String) : void
      {
         this.§6s§ = param1;
      }
      
      public function get §8#§() : String
      {
         return this.§0!C§;
      }
      
      public function set §8#§(param1:String) : void
      {
         this.§0!C§ = param1;
      }
      
      public function get §=>§() : Boolean
      {
         return this.§-!h§;
      }
      
      public function get §+!_§() : § =§
      {
         return this.§8p§;
      }
   }
}
