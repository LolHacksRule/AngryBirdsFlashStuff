package §@!7§
{
   import §#!1§.§!!X§;
   import §'+§.§<@§;
   import §,!H§.§ for§;
   import §0$§.§8!K§;
   import §1H§.§5R§;
   import §1H§.§7!&§;
   import §2!G§.§-!3§;
   import §2!G§.Popup;
   import §2!G§.StatePopupManager;
   import §4!A§.§7#§;
   import §5!W§.§,!B§;
   import §5!W§.§`X§;
   import §7p§.§%g§;
   import §9s§.§!!`§;
   import §@-§.§ x§;
   import §@-§.§[y§;
   
   public class §+!O§ extends Popup
   {
      
      public static const § l§:String = "a-z A-Z 0-9 \\-";
      
      public static const §+!_§:String = "a-z A-Z 0-9";
      
      public static const §[!,§:String = "a-z     0-9  \'\\-_@.";
      
      public static const §continue§:int = 60;
      
      private static var §&![§:Class = §59§;
      
      public static var §=!L§:Boolean = false;
       
      
      private var §0d§:StatePopupManager;
      
      private var §9C§:Boolean;
      
      private var §6!!§:Boolean;
      
      private var §!e§:String;
      
      private var §^!T§:String;
      
      private var §'6§:String;
      
      private var §7!S§:String;
      
      private var §'!T§:§5R§;
      
      private var §1j§:§7!&§;
      
      private var §%!g§:§ for§;
      
      public function §+!O§(param1:§%g§, param2:StatePopupManager, param3:§ for§)
      {
         super(§<@§.§,'§(§&![§),param1);
         §7Y§ = param1;
         this.§0d§ = param2;
         this.§%!g§ = param3;
         this.§'!T§ = new §5R§(this);
         this.§1j§ = new §7!&§(this);
         this.§0d§.addEventListener(§!!`§.§5!R§,this.onUiInteraction);
         this.updateTextFields();
      }
      
      private function onUiInteraction(param1:§!!`§) : void
      {
         this.uiInteractionHandler(param1.§[K§,param1.§3x§,param1.§,a§);
         this.§%!g§.uiInteractionHandler(param1.§[K§,param1.§3x§,param1.§,a§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§[y§) : void
      {
         var _loc4_:§ x§ = null;
         switch(param2)
         {
            case "SUBMIT":
               this.§1j§.§4o§();
               break;
            case "CANCEL":
               this.preClose();
               break;
            case "SUBMIT_REGISTER":
               this.§'!T§.§4o§();
               break;
            case "CANCEL_REGISTER":
               this.preClose();
               break;
            case "CHECKBOX_CHANGE":
               _loc4_ = §7Y§.getItemByName("Checkbox_RememberMe") as § x§;
               this.§9C§ = !this.§9C§;
               if(this.§9C§)
               {
                  _loc4_.setComponentState(§ x§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc4_.setComponentState(§ x§.§%!"§);
               }
               _loc4_ = §7Y§.getItemByName("Checkbox_RememberMe_Register") as § x§;
               if(this.§9C§)
               {
                  _loc4_.setComponentState(§ x§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               _loc4_.setComponentState(§ x§.§%!"§);
               break;
            case "CHECKBOX_MARKETING_CHANGE":
               _loc4_ = §7Y§.getItemByName("Checkbox_Marketing") as § x§;
               this.§6!!§ = !this.§6!!§;
               if(this.§6!!§)
               {
                  _loc4_.setComponentState(§ x§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc4_.setComponentState(§ x§.§%!"§);
               }
               break;
            case "FORGOT_PASSWORD":
               §-!3§.§6^§(§7Y§);
               break;
            case "TAB_LOGIN":
               this.§"X§();
               this.§1j§.activate();
               this.§'!T§.§&%§(false);
               break;
            case "TAB_REGISTER":
               this.§"X§();
               this.§'!T§.activate();
               this.§'!T§.§&%§(true);
         }
      }
      
      private function §"X§() : void
      {
         §7Y§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(false);
         §7Y§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         §7Y§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         §7Y§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         §7Y§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         §7Y§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
         §7Y§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(false);
         §7Y§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(false);
         (this.§4X§ as §,!B§).§;![§.hide();
      }
      
      override public function updateTextFields() : void
      {
         §!!X§.§5!!§.updateTextFields(§7Y§,"Login_Popup");
         this.§"X§();
         this.§'!T§.updateTextFields();
         this.§1j§.§!!N§();
      }
      
      override public function close() : void
      {
         super.close();
         this.deActivate();
      }
      
      private function §7-§() : void
      {
         if(§=!L§)
         {
            this.§-!§();
            this.§<!i§();
            this.§9C§ = false;
            this.§6!!§ = false;
            this.§!e§ = "";
            this.§^!T§ = "";
            this.§'6§ = "";
            this.§7!S§ = "";
         }
         §=!L§ = false;
         this.§2!,§();
         this.§1j§.§2!%§();
         this.§'!T§.§-!h§();
         if(this.§^!T§ && this.§!e§)
         {
            §7Y§.setText(this.§!e§,"TextField_UserNameField");
            §7Y§.setText(this.§^!T§,"TextField_PasswordField");
         }
         if(§3![§.§-Z§())
         {
            §7Y§.getItemByName("Button_Mute").setVisibility(true);
            §7Y§.getItemByName("MovieClip_SoundOff").setVisibility(false);
            §3![§.§'S§();
         }
         else
         {
            §7Y§.getItemByName("Button_Mute").setVisibility(true);
            §7Y§.getItemByName("MovieClip_SoundOff").setVisibility(true);
         }
      }
      
      override public function open(param1:Boolean = true) : void
      {
         this.§7-§();
         this.§1j§.activate();
         §`X§.sHighscoreSidebar.enableLoginButton(false);
         §`X§.sHighscoreSidebar.enableCreditsButton(false);
         if(param1)
         {
            mClip.scaleX = 0;
            mClip.scaleY = 0;
            if(§]R§ != null)
            {
               §]R§.stop();
            }
            §]R§ = §7#§.§5!!§.§30§(this.mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },0.25,§7#§.§=Y§);
            §]R§.play();
         }
         super.open(param1);
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
         (this.§%!g§ as §,!B§).§;![§.hide();
         if(param1)
         {
            if(§]R§ != null)
            {
               §]R§.stop();
            }
            §]R§ = §7#§.§5!!§.§30§(this.mClip,{
               "scaleX":0,
               "scaleY":0
            },null,0.25,§7#§.§4@§);
            §]R§.play();
         }
      }
      
      override public function deActivate() : void
      {
         this.§'!T§.deActivate();
         this.§0d§.removeEventListener(§!!`§.§5!R§,this.onUiInteraction);
         super.deActivate();
         §`X§.sHighscoreSidebar.enableCreditsButton(true);
      }
      
      private function §2!,§() : void
      {
         if(§8!K§.§5!!§.§[!j§())
         {
            §7Y§.setText(§8!K§.§5!!§.name,"TextField_UserNameField");
            §7Y§.setText(§8!K§.§5!!§.password,"TextField_PasswordField");
            this.§9C§ = §8!K§.§5!!§.rememberMeToggled;
         }
      }
      
      public function §<!i§() : void
      {
         §7Y§.setText("","TextField_UserNameField");
         §7Y§.setText("","TextField_PasswordField");
         §7Y§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(false);
         §7Y§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(false);
      }
      
      public function §-!§() : void
      {
         §7Y§.setText("","TextField_EmailField_Register");
         §7Y§.setText("","TextField_PasswordField_Register");
         §7Y§.setText("","TextField_PasswordFieldRepeat_Register");
         §7Y§.setText("","TextField_NickNameField_Register");
         §7Y§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(false);
         §7Y§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
         §7Y§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
         §7Y§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
      }
      
      public function §%!S§() : void
      {
         this.§!e§ = this.§'6§;
         this.§^!T§ = this.§7!S§;
         §7Y§.setText(this.§!e§,"TextField_UserNameField");
         §7Y§.setText(this.§^!T§,"TextField_PasswordField");
         if(this.§9C§)
         {
            §8!K§.§5!!§.§[!S§(this.§!e§,this.§^!T§,this.§9C§);
         }
      }
      
      public function get §8y§() : StatePopupManager
      {
         return this.§0d§;
      }
      
      public function get rememberMeToggled() : Boolean
      {
         return this.§9C§;
      }
      
      public function get §>§() : String
      {
         return this.§'6§;
      }
      
      public function set §>§(param1:String) : void
      {
         this.§'6§ = param1;
      }
      
      public function get §=!J§() : String
      {
         return this.§7!S§;
      }
      
      public function set §=!J§(param1:String) : void
      {
         this.§7!S§ = param1;
      }
      
      public function get §'!^§() : Boolean
      {
         return this.§6!!§;
      }
      
      public function get §4X§() : § for§
      {
         return this.§%!g§;
      }
   }
}
